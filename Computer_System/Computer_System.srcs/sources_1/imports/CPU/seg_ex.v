`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:50:12 PM
// Design Name: 
// Module Name: seg_ex
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


module seg_ex(
    input clk,
    input rst,
    input [158:0] id_reg,
    input flushEX,
    input [1:0] rs1sel, rs2sel,
    input [31:0] wb_fw_data, mem_fw_data,
    output reg PCSrc,
    output [31:0] Branchtarget,
    output reg [74:0] mem_reg,   // [74:73] wb_ctl, [72:69] mem_ctl, [68:64] rd, [63:32] rs2data, [31:0] ALUresult
    output reg flushIF, flushID,
    output [31:0] rs1_fw, rs2_fw
    );

    wire [2:0] branch;
    wire ALUAsrc;
    wire [1:0] ALUBsrc;
    wire [3:0] ALUctr;
    wire [31:0] rs1data, rs2data, imm, pc;
    wire [31:0] dataa, datab, ALUresult;
    wire Less, Zero;

    assign branch = id_reg[152:150];
    assign ALUAsrc = id_reg[149];
    assign ALUBsrc = id_reg[148:147];
    assign ALUctr = id_reg[146:143];
    //assign rs1data = id_reg[127:96];
    //assign rs2data = id_reg[95:64];
    assign imm = id_reg[63:32];
    assign pc = id_reg[31:0];

    // data forward
    assign rs1data = rs1sel[1] ? mem_fw_data : (rs1sel[0] ? wb_fw_data : id_reg[127:96]);
    assign rs2data = rs2sel[1] ? mem_fw_data : (rs2sel[0] ? wb_fw_data : id_reg[95:64]);
    assign rs1_fw = rs1data;
    assign rs2_fw = rs2data;

    assign dataa = ALUAsrc ? pc : rs1data;
    assign datab = ALUBsrc[1] ? 32'd4 : (ALUBsrc[0] ? imm : rs2data);
    alu my_alu_0(.dataa(dataa), .datab(datab), .ALUctr(ALUctr), .less(Less), .zero(Zero), .aluresult(ALUresult));

    always @ * begin
        if(rst) begin
            PCSrc = 1'b0;
            flushIF = 1'b0;
            flushID = 1'b0;
        end
        else begin
            if(branch == 3'b000 || (branch == 3'b100 && !Zero) || (branch == 3'b101 && Zero) || 
                (branch == 3'b110 && !Less) || (branch == 3'b111 && Less)) begin
                PCSrc = 1'b0;
                flushIF = 1'b0;
                flushID = 1'b0;
            end
            else begin
                PCSrc = 1'b1;
                flushIF = 1'b1;
                flushID = 1'b1;
            end
        end
    end
    reg [31:0] PCAsrc;
    always @ * begin
        if(branch == 3'b010)
            PCAsrc = rs1data;
        else
            PCAsrc = pc;
    end
    assign Branchtarget = PCAsrc + imm;

    always @ (negedge clk) begin
        if(flushEX) begin
            mem_reg <= 75'b0;
        end
        else begin
            mem_reg <= {id_reg[158:153], id_reg[132:128], rs2data, ALUresult};
        end
    end
endmodule
