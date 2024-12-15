`timescale 1ns / 1ps
module alu(
	input [31:0] dataa, input [31:0] datab, input [3:0]  ALUctr,
	output less, output zero, output reg [31:0] aluresult );

    reg addsub;
    wire [31:0] F;
    wire of, sf, cf, zf;
    reg lr, al;
    wire [31:0] sh_out;
    adder_32 ad(.A(dataa), .b(datab), .addsub(addsub), .F(F), .of(of), .sf(sf), .cf(cf), .zf(zf));
    barrel ba(.indata(dataa), .shamt(datab[4:0]), .lr(lr), .al(al), .outdata(sh_out));
    always @ * begin
        casez(ALUctr)
        4'b0000: begin addsub = 1'b0; aluresult = F; lr = 1; al = 1; end
        4'b1000: begin addsub = 1'b1; aluresult = F; lr = 1; al = 1; end
        4'bz001: begin lr = 1'b1; al = 1'b0; aluresult = sh_out; addsub = 1; end
        4'b0010: begin addsub = 1'b1; aluresult = (F[31] ^ of) ? 32'b1 : 32'b0; lr = 1; al = 1; end
        4'b1010: begin addsub = 1'b1; aluresult = (cf) ? 32'b1 : 32'b0; lr = 1; al = 1; end
        4'bz011: begin aluresult = datab; lr = 1; al = 1; addsub = 1; end
        4'bz100: begin aluresult = dataa ^ datab; lr = 1; al = 1; addsub = 1; end
        4'b0101: begin lr = 1'b0; al = 1'b0; aluresult = sh_out; addsub = 1; end
        4'b1101: begin lr = 1'b0; al = 1'b1; aluresult = sh_out; addsub = 1; end
        4'bz110: begin aluresult = dataa | datab; lr = 1; al = 1; addsub = 1; end
        4'bz111: begin aluresult = dataa & datab; lr = 1; al = 1; addsub = 1; end
        default: begin addsub = 1; aluresult = 32'hffffffff; lr = 1; al = 1; end
        endcase
    end
    assign zero = (ALUctr[2:0] == 3'b010) ? zf : ~|aluresult;
    assign less = (ALUctr[2:0] == 3'b010) ? aluresult[0] : 32'b0;
endmodule

module adder_32(
    input [31:0] A, b, input addsub,
    output [31:0] F, output of, sf, cf, zf
);
    wire [31:0] B;
    wire [1:0] ca;
    assign B = (addsub) ? (~b) : b;
    adder_16 ad0(A[15:0], B[15:0], addsub, F[15:0], ca[0]);
    adder_16 ad1(A[31:16], B[31:16], ca[0], F[31:16], ca[1]);
    assign of = (F[31] & ~A[31] & ~B[31]) | (~F[31] & A[31] & B[31]);
    assign sf = F[31];
    assign cf = ca[1] ^ addsub;
    assign zf = ~|F;
endmodule

module adder_16(
    input [15:0] A, input [15:0] B, input addsub,
    output [15:0] F, output ca_out
);
    wire [4:1] ca, p, g;
    adder_4 ad0(A[3:0], B[3:0], addsub, F[3:0], p[1], g[1]);
    adder_4 ad1(A[7:4], B[7:4], ca[1], F[7:4], p[2], g[2]);
    adder_4 ad2(A[11:8], B[11:8], ca[2], F[11:8], p[3], g[3]);
    adder_4 ad3(A[15:12], B[15:12], ca[3], F[15:12], p[4], g[4]);
    CLU clu(p, g, addsub, ca);
    assign ca_out = ca[4];
endmodule

module adder_4(
	input [3:0] A, input [3:0] B, input addsub,
	output [3:0] F, output p, g
	);
    wire [4:1] ca, pr, ge;
    FA fa0(A[0], B[0], addsub, F[0], pr[1], ge[1]);
    FA fa1(A[1], B[1], ca[1], F[1], pr[2], ge[2]);
    FA fa2(A[2], B[2], ca[2], F[2], pr[3], ge[3]);
    FA fa3(A[3], B[3], ca[3], F[3], pr[4], ge[4]);
    CLU clu(pr, ge, addsub, ca);
    assign p = pr[4] & pr[3] & pr[2] & pr[1];
    assign g = ge[4] | pr[4] & ge[3] | pr[4] & pr[3] & ge[2] | pr[4] & pr[3] & pr[2] & ge[1];
endmodule

module FA(
    input x, y, cin,
    output f, p, g
);
    assign f = x ^ y ^ cin;
    assign p = x | y;
    assign g = x & y;
endmodule

module CLU(
    input [4:1] p, g, input c0,
    output [4:1] c
);
    assign c[1] = g[1] | (p[1] & c0);
    assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & c0);
    assign c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & c0);
    assign c[4] = g[4] | (p[4] & g[3]) | (p[4] & p[3] & g[2]) | (p[4] & p[3] & p[2] & g[1]) | (p[4] & p[3] & p[2] & p[1] & c0);
endmodule

module barrel(
    input [31:0] indata, input [4:0] shamt, input lr, input al,
	output reg [31:0] outdata
);
    reg [31:0] out [3:0];
    always @* begin
        if(shamt[0]) begin
            if(lr) begin
                out[0] = {indata[30:0], 1'b0};
            end
            else if(al) begin
                if(indata[31]) begin
                    out[0] = {1'b1, indata[31:1]};
                end
                else begin
                    out[0] = {1'b0, indata[31:1]};
                end
            end
            else begin
                out[0] = {1'b0, indata[31:1]};
            end
        end
        else begin
            out[0] = indata;
        end
    end
    always @ * begin
        if(shamt[1]) begin
            if(lr) begin
                out[1] = {out[0][29:0], 2'b0};
            end
            else if(al) begin
                if(indata[31]) begin
                    out[1] = {2'b11, out[0][31:2]};
                end
                else begin
                    out[1] = {2'b00, out[0][31:2]};
                end
            end
            else begin
                out[1] = {2'b0, out[0][31:2]};
            end
        end
        else begin
            out[1] = out[0];
        end
    end
    always @ * begin
        if(shamt[2]) begin
            if(lr) begin
                out[2] = {out[1][27:0], 4'b0};
            end
            else if(al) begin
                if(indata[31]) begin
                    out[2] = {4'b1111, out[1][31:4]};
                end
                else begin
                    out[2] = {4'b0000, out[1][31:4]};
                end
            end
            else begin
                out[2] = {4'b0, out[1][31:4]};
            end
        end
        else begin
            out[2] = out[1];
        end
    end
    always @ * begin
        if(shamt[3]) begin
            if(lr) begin
                out[3] = {out[2][23:0], 8'b0};
            end
            else if(al) begin
                if(indata[31]) begin
                    out[3] = {8'b1111_1111, out[2][31:8]};
                end
                else begin
                    out[3] = {8'b0000_0000, out[2][31:8]};
                end
            end
            else begin
                out[3] = {8'b0, out[2][31:8]};
            end
        end
        else begin
            out[3] = out[2];
        end
    end
    always @ * begin
        if(shamt[4]) begin
            if(lr) begin
                outdata = {out[3][15:0], 16'b0};
            end
            else if(al) begin
                if(indata[31]) begin
                    outdata = {16'b1111_1111_1111_1111, out[3][31:16]};
                end
                else begin
                    outdata = {16'b0000_0000_0000_0000, out[3][31:16]};
                end
            end
            else begin
                outdata = {16'b0, out[3][31:16]};
            end
        end
        else begin
            outdata = out[3];
        end
    end
endmodule