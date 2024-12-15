`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 10:58:24 AM
// Design Name: 
// Module Name: ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ctrl(
    input [31:0] inst_in,
    output RegWr, output ALUAsrc, output [1:0] ALUBsrc, output reg [3:0] ALUctr,
    output MemtoReg, output MemWr, output [2:0] MemOp,
    output [4:0] rs1, rs2, rd, output reg [31:0] imm, output reg [2:0] branch
    );
    
    wire [31:0] inst;
    assign inst = (inst_in == 32'b0) ? 32'h00000013 : inst_in;

    wire [6:0] op; wire [2:0] func3; wire [6:0] func7;
    wire [31:0] immI, immU, immS, immB, immJ;

    assign op = inst[6:0];
    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];
    assign func3 = inst[14:12];
    assign func7 = inst[31:25];
    
    assign immI = {{20{inst[31]}}, inst[31:20]};
    assign immU = {inst[31:12], 12'b0};
    assign immS = {{20{inst[31]}}, inst[31:25], inst[11:7]};
    assign immB = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
    assign immJ = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
    
    always @ * begin
        casez(op)
            7'b0z10111: begin imm = immU; end
            7'b1100011: begin imm = immB; end
            7'b1101111: begin imm = immJ; end
            7'b0100011: begin imm = immS; end
            7'b0010011: begin imm = immI; end
            7'b0000011: begin imm = immI; end
            7'b1100111: begin imm = immI; end
            7'b0110011: begin imm = 32'b1; end
            default: begin imm = 32'b1; end
        endcase
    end
    
    assign RegWr = (op == 7'b0100011 || op == 7'b1100011) ? 1'b0 : 1'b1;
    assign MemtoReg = (op == 7'b0000011) ? 1'b1 : 1'b0;
    assign MemWr = (op == 7'b0100011) ? 1'b1 : 1'b0;
    assign MemOp = func3;
    assign ALUAsrc = ((op[6] == 1'b0 && op[4:0] == 6'b10111) || op == 7'b1101111 || op == 7'b1100111) ? 1'b1 : 1'b0;
    assign ALUBsrc = (op == 7'b0110011 || op == 7'b1100011) ? 2'b00 : ((op == 7'b1101111 || op == 7'b1100111) ? 2'b10 : 2'b01);
    always @ * begin
        if(op == 7'b0010111 || (op == 7'b0010011 && func3 == 3'b000) || 
            (op == 7'b0110011 && func3 == 3'b000 && func7[5] == 1'b0) || op == 7'b1101111 || op == 7'b1100111 ||
            op == 7'b0000011 || op == 7'b0100011)
            ALUctr = 4'b0000;
        else if((op == 7'b0010011 && func3 == 3'b001) || (op == 7'b0110011 && func3 == 3'b001))
            ALUctr = 4'b0001;
        else if((op == 7'b0010011 && func3 == 3'b010) || (op == 7'b0110011 && func3 == 3'b010) || 
            (op == 7'b1100011 && (func3 == 3'b000 || func3 == 3'b001 || func3 == 3'b100 || func3 == 3'b101)))
            ALUctr = 4'b0010;
        else if(op == 7'b0110111)
            ALUctr = 4'b0011;
        else if((op == 7'b0010011 && func3 == 3'b100) || (op == 7'b0110011 && func3 == 3'b100))
            ALUctr = 4'b0100;
        else if((op == 7'b0010011 && func3 == 3'b101 && func7[5] == 1'b0) || 
            (op == 7'b0110011 && func3 == 3'b101 && func7[5] == 1'b0))
            ALUctr = 4'b0101;
        else if((op == 7'b0010011 && func3 == 3'b110) || (op == 7'b0110011 && func3 == 3'b110))
            ALUctr = 4'b0110;
        else if((op == 7'b0010011 && func3 == 3'b111) || (op == 7'b0110011 && func3 == 3'b111))
            ALUctr = 4'b0111;
        else if(op == 7'b0110011 && func3 == 3'b000 && func7[5] == 1'b1)
            ALUctr = 4'b1000;
        else if((op == 7'b0010011 && func3 == 3'b011) || (op == 7'b0110011 && func3 == 3'b011) || 
            (op == 7'b1100011 && (func3 == 3'b110 || func3 == 3'b111)))
            ALUctr = 4'b1010;
        else if((op == 7'b0010011 && func3 == 3'b101 && func7[5] == 1'b1) || 
            (op == 7'b0110011 && func3 == 3'b101 && func7[5] == 1'b1))
            ALUctr = 4'b1101;
        else
            ALUctr = 4'b1111;
    end
    
    always @ * begin
        if(op == 7'b1101111)
            branch = 3'b001;
        else if(op == 7'b1100111)
            branch = 3'b010;
        else if(op == 7'b1100011) begin
            if(func3 == 3'b000)
                branch = 3'b100;
            else if(func3 == 3'b001)
                branch = 3'b101;
            else if(func3 == 3'b100 || func3 == 3'b110)
                branch = 3'b110;
            else if(func3 == 3'b101 || func3 == 3'b111)
                branch = 3'b111;
            else
                branch = 3'b111;
        end
        else
            branch = 3'b000;
    end
endmodule