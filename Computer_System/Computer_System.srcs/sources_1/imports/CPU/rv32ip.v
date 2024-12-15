`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 12:50:22 PM
// Design Name: 
// Module Name: rv32ip
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


module rv32ip(
	input 	clock,
	input 	reset,
	output [31:0] imemaddr,
	input  [31:0] imemdataout,
	output 	imemclk,
	output [31:0] dmemaddr,
	input  [31:0] dmemdataout,
	output [31:0] dmemdatain,
	output 	dmemrdclk,
	output	dmemwrclk,
	output [2:0] dmemop,
	output	dmemwe,
	output [31:0] cpudbgdata
    );

    assign imemclk = clock;
    assign dmemrdclk = clock;
    assign dmemwrclk = ~clock;

    wire [31:0] PC;
    wire [63:0] if_id;
    wire [158:0] id_ex;
    wire [74:0] ex_mem;
    wire [70:0] mem_wb;

    wire flushIF, flushID, flushEX, stallIF, stallID, stallEX;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] rs1data, rs2data;
    wire PCSrc;
    wire [31:0] Branchtarget;
    wire RegWr;
    wire [31:0] RegIn;
    wire [31:0] rs1_fw, rs2_fw;
    wire [1:0] rs1sel, rs2sel;
    wire mem_is_read;
    wire [31:0] mem_fw_data, wb_fw_data;
    wire [4:0] mem_fw_rd, wb_fw_rd;

    assign imemaddr = PC;
    assign cpudbgdata = PC;

    seg_if seg_if_0(.clk(clock), .rst(reset), .PCSrc(PCSrc), .stallIF(stallIF), .Branchtarget(Branchtarget), .inst(imemdataout), 
            .flushIF(flushIF), .stallID(stallID), .PC(PC), .id_reg(if_id));
            
    seg_id seg_id_0(.clk(clock), .rst(reset), .if_reg(if_id), .rs1data(rs1data), .rs2data(rs2data),
            .flushID(flushID), .stallEX(stallEX), .rs1_fw(rs1_fw), .rs2_fw(rs2_fw),
            .rs1(rs1), .rs2(rs2), .ex_reg(id_ex));
    reg_file myregfile(.rst(reset), .WrClk(clock), .RegWr(RegWr), .Ra(rs1), .Rb(rs2), .Rw(rd), .busW(RegIn), 
            .busA(rs1data), .busB(rs2data));

    seg_ex seg_ex_0(.clk(clock), .rst(reset), .id_reg(id_ex), .flushEX(flushEX), .rs1sel(rs1sel), .rs2sel(rs2sel),
                .wb_fw_data(wb_fw_data), .mem_fw_data(mem_fw_data), .PCSrc(PCSrc), .Branchtarget(Branchtarget), 
                .mem_reg(ex_mem), .flushIF(flushIF), .flushID(flushID), .rs1_fw(rs1_fw), .rs2_fw(rs2_fw));

    seg_mem seg_mem_0(.clk(clock), .ex_reg(ex_mem), .MemOut(dmemdataout), .MemOp(dmemop), .MemWr(dmemwe), .MemAddr(dmemaddr),
            .MemIn(dmemdatain), .wb_reg(mem_wb), .is_read(mem_is_read), .fw_rd(mem_fw_rd), .fw_data(mem_fw_data));

    seg_wb seg_wb_0(.clk(clock), .mem_reg(mem_wb), .RegWr(RegWr), .rd(rd), .RegIn(RegIn), .fw_rd(wb_fw_rd), .fw_data(wb_fw_data));

    forward_unit forward_unit_0(.rst(reset), .ex_rs1(id_ex[142:138]), .ex_rs2(id_ex[137:133]), .wb_rd(wb_fw_rd), 
                .mem_rd(mem_fw_rd), .mem_read(mem_is_read), .rs1sel(rs1sel), .rs2sel(rs2sel), .stallIF(stallIF), 
                .stallID(stallID), .stallEX(stallEX), .flushEX(flushEX));
endmodule
