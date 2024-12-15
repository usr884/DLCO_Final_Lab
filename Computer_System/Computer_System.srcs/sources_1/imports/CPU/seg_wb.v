`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:50:51 PM
// Design Name: 
// Module Name: seg_wb
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


module seg_wb(
    input clk,
    input [70:0] mem_reg,
    output RegWr,
    output [4:0] rd,
    output [31:0] RegIn,
    output [4:0] fw_rd,
    output [31:0] fw_data
    );

    wire MemtoReg;
    wire [31:0] MemOut, ALUresult;
    assign RegWr = mem_reg[70];
    assign MemtoReg = mem_reg[69];
    assign rd = mem_reg[68:64];
    assign MemOut = mem_reg[63:32];
    assign ALUresult = mem_reg[31:0];
    assign RegIn = MemtoReg ? MemOut : ALUresult;

    assign fw_rd = RegWr ? rd : 5'b0;
    assign fw_data = RegIn;
endmodule
