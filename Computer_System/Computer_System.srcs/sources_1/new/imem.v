`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 03:04:16 PM
// Design Name: 
// Module Name: imem
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


module imem(
    input clk,
    input [31:0] addr,
    input [31:0] datain,
    input we,
    output [31:0] dataout
    );
    blk_mem_gen_1 blk_instmem(.addra(addr[17:2]), .clka(clk), .douta(dataout), .dina(datain), .ena(1'b1), .wea(we));
endmodule
