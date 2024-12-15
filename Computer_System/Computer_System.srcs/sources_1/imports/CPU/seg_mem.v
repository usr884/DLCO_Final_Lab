`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:50:29 PM
// Design Name: 
// Module Name: seg_mem
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


module seg_mem(
    input clk,
    input [74:0] ex_reg,
    input [31:0] MemOut,
    output [2:0] MemOp,
    output MemWr, 
    output [31:0] MemAddr, MemIn,
    output reg [70:0] wb_reg,    // [70:69] wb_ctl, [68:64] rd, [63:32] MemOut, [31:0] ALUresult
    output is_read,
    output [4:0] fw_rd,
    output [31:0] fw_data
    );

    assign MemOp = ex_reg[72:70];
    assign MemWr = ex_reg[69];
    assign MemAddr = ex_reg[31:0];
    assign MemIn = ex_reg[63:32];
    always @ (negedge clk) begin
        wb_reg <= {ex_reg[74:73], ex_reg[68:64], MemOut, ex_reg[31:0]};
    end

    assign is_read = ex_reg[73];
    assign fw_rd = ex_reg[74] ? ex_reg[68:64] : 5'b0;
    assign fw_data = ex_reg[31:0];
endmodule
