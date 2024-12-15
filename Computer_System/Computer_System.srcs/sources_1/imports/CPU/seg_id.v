`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:50:00 PM
// Design Name: 
// Module Name: seg_id
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


module seg_id(
    input clk,
    input rst,
    input [63:0] if_reg,
    input [31:0] rs1data, rs2data,
    input flushID,
    input stallEX,
    input [31:0] rs1_fw, rs2_fw,
    output [4:0] rs1, rs2,
    output reg [158:0] ex_reg   // [158:157] wb_ctl, [156:153] mem_ctl, [152:143] ex_ctl, [142:128] rs1, rs2, rd, 
                                // [127:96] rs1data, [95:64] rs2data, [63:32] imm, [31:0] PC
    );

    wire [31:0] pc;
    wire [31:0] imm;
    wire [4:0] rd;
    wire [9:0] ex_ctl;    // [9:7] branch, [6] ALUAsrc, [5:4] ALUBsrc, [3:0] ALUctr
    wire [3:0] mem_ctl;   // [3:1] MemOp, [0] MemWr
    wire [1:0] wb_ctl;    // [1] RegWr, [0] MemtoReg
    ctrl ctrl_0(.inst_in(if_reg[63:32]), .branch(ex_ctl[9:7]), .ALUAsrc(ex_ctl[6]), .ALUBsrc(ex_ctl[5:4]), .ALUctr(ex_ctl[3:0]),
            .MemOp(mem_ctl[3:1]), .MemWr(mem_ctl[0]), .RegWr(wb_ctl[1]), .MemtoReg(wb_ctl[0]), .rs1(rs1), .rs2(rs2), .rd(rd),
            .imm(imm));
    always @ (negedge clk) begin
        if(rst) begin
            ex_reg <= 159'b0;
        end
        else begin
            if(stallEX) begin
                ex_reg[127:64] <= {rs1_fw, rs2_fw};
            end
            else if(flushID) begin
                ex_reg <= 159'b0;
            end
            else begin
                ex_reg <= {wb_ctl, mem_ctl, ex_ctl, rs1, rs2, rd, rs1data, rs2data, imm, if_reg[31:0]};
            end
        end
    end
endmodule
