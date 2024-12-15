`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 05:31:30 PM
// Design Name: 
// Module Name: SSD
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


module SSD(
    input wrclk,
    input we,
    input [2:0] memop,
    input [31:0] wraddr,
    input [31:0] datain,
    input SSD_clk,
    output [7:0] SEG,
    output [7:0] AN
    );
    wire [7:0] en;
    wire [63:0] segcode;
    wire [1:0] SSDstate_addr;
    wire SSDstate_addr_valid;
    wire SSDstate_wrvalid;
    wire [31:0] SSDstate_wrdata;

    reg [31:0] SSDstate [2:0];

    assign SSDstate_adddr_valid = (wraddr[31:4] == 28'h0050000 && SSDstate_addr != 2'b11) ? 1'b1 : 1'b0;
    assign SSDstate_addr = wraddr[3:2];
    write_32bit VGAstate_write(.memop(memop), .wraddr(wraddr[1:0]), .datain(datain), .datapre(SSDstate[SSDstate_addr]), 
        .wrvalid(SSDstate_wrvalid), .wrdata(SSDstate_wrdata));
    always @ (posedge wrclk) begin
        if(we && SSDstate_addr_valid && SSDstate_wrvalid) begin
            SSDstate[SSDstate_addr] <= SSDstate_wrdata;
        end
    end

    assign en = SSDstate[2][7:0];
    assign segcode = {SSDstate[1], SSDstate[0]};
    seg7_display seg7_display_0(.clk(clk), .en(en), .segcode(segcode), .seg_7seg(SEG), .sel_7seg(AN));
endmodule

module seg7_display(
    input clk,
    input [7:0] en,
    input [63:0] segcode,
    output reg [7:0] seg_7seg,
    output reg [7:0] sel_7seg
    );
    wire seg7_clk;
    reg [2:0] cnt;
    low_freq_clk #(1000) seg7_clk_gen(.clkin(clk), .rst(1'b0), .clken(1'b1), .clkout(seg7_clk));
    always @ (posedge seg7_clk) begin
        if(cnt == 7) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt + 1;
        end
    end
    always @ * begin
        case(cnt)
        0: begin seg_7seg = en[0] ? segcode[7:0] : 8'hff; sel_7seg = 8'b11111110; end
        1: begin seg_7seg = en[1] ? segcode[15:8] : 8'hff; sel_7seg = 8'b11111101; end
        2: begin seg_7seg = en[2] ? segcode[23:16] : 8'hff; sel_7seg = 8'b11111011; end
        3: begin seg_7seg = en[3] ? segcode[31:24] : 8'hff; sel_7seg = 8'b11110111; end
        4: begin seg_7seg = en[4] ? segcode[39:32] : 8'hff; sel_7seg = 8'b11101111; end
        5: begin seg_7seg = en[5] ? segcode[47:40] : 8'hff; sel_7seg = 8'b11011111; end
        6: begin seg_7seg = en[6] ? segcode[55:48] : 8'hff; sel_7seg = 8'b10111111; end
        7: begin seg_7seg = en[7] ? segcode[63:56] : 8'hff; sel_7seg = 8'b01111111; end
        default: begin seg_7seg = 8'hff; sel_7seg = 8'hff; end
        endcase
    end
endmodule

module seg7_display_number(
    input clk,
    input [7:0] en,
    input [31:0] data,
    output reg [7:0] seg_7seg,
    output reg [7:0] sel_7seg
    );
    wire seg7_clk;
    reg [3:0] number;
    reg [7:0] segcode;
    reg [2:0] cnt;
    low_freq_clk #(1000) seg7_clk_gen_2(.clkin(clk), .rst(1'b0), .clken(1'b1), .clkout(seg7_clk));
    always @ (posedge seg7_clk) begin
        if(cnt == 7) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt + 1;
        end
    end
    always @ * begin
        case(number)
        4'h0: segcode = 8'b11000000;
        4'h1: segcode = 8'b11111001;
        4'h2: segcode = 8'b10100100;
        4'h3: segcode = 8'b10110000;
        4'h4: segcode = 8'b10011001;
        4'h5: segcode = 8'b10010010;
        4'h6: segcode = 8'b10000010;
        4'h7: segcode = 8'b11111000;
        4'h8: segcode = 8'b10000000;
        4'h9: segcode = 8'b10010000;
        4'ha: segcode = 8'b10001000;
        4'hb: segcode = 8'b10000011;
        4'hc: segcode = 8'b11000110;
        4'hd: segcode = 8'b10100001;
        4'he: segcode = 8'b10000110;
        4'hf: segcode = 8'b10001110;
        default: segcode = 8'hff;
        endcase
    end
    always @ * begin
        case(cnt)
        0: begin number = data[3:0]; seg_7seg = en[0] ? segcode : 8'hff; sel_7seg = 8'b11111110; end
        1: begin number = data[7:4]; seg_7seg = en[1] ? segcode : 8'hff; sel_7seg = 8'b11111101; end
        2: begin number = data[11:8]; seg_7seg = en[2] ? segcode : 8'hff; sel_7seg = 8'b11111011; end
        3: begin number = data[15:12]; seg_7seg = en[3] ? segcode : 8'hff; sel_7seg = 8'b11110111; end
        4: begin number = data[19:16]; seg_7seg = en[4] ? segcode : 8'hff; sel_7seg = 8'b11101111; end
        5: begin number = data[23:20]; seg_7seg = en[5] ? segcode : 8'hff; sel_7seg = 8'b11011111; end
        6: begin number = data[27:24]; seg_7seg = en[6] ? segcode : 8'hff; sel_7seg = 8'b10111111; end
        7: begin number = data[31:28]; seg_7seg = en[7] ? segcode : 8'hff; sel_7seg = 8'b01111111; end
        default: begin seg_7seg = 8'hff; sel_7seg = 8'hff; end
        endcase
    end
endmodule