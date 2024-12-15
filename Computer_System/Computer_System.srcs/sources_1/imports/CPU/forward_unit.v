`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:52:13 PM
// Design Name: 
// Module Name: forward_unit
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


module forward_unit(
    input rst,
    input [4:0] ex_rs1, ex_rs2, wb_rd, mem_rd,
    input mem_read,
    output [1:0] rs1sel, rs2sel,
    output reg stallIF, stallID, stallEX, flushEX
    );

    always @ * begin
        if(rst) begin
            stallIF = 1'b0;
            stallID = 1'b0;
            stallEX = 1'b0;
            flushEX = 1'b0;
        end
        else begin
            if((ex_rs1 == mem_rd || ex_rs2 == mem_rd) && mem_read) begin
                stallIF = 1'b1;
                stallID = 1'b1;
                stallEX = 1'b1;
                flushEX = 1'b1;
            end
            else begin
                stallIF = 1'b0;
                stallID = 1'b0;
                stallEX = 1'b0;
                flushEX = 1'b0;
            end
        end
    end

    wire mem_fw_1, wb_fw_1, mem_fw_2, wb_fw_2;
    assign mem_fw_1 = (ex_rs1 == mem_rd) && (mem_rd != 0);
    assign wb_fw_1 = (ex_rs1 == wb_rd) && (wb_rd != 0);
    assign mem_fw_2 = (ex_rs2 == mem_rd) && (mem_rd != 0);
    assign wb_fw_2 = (ex_rs2 == wb_rd) && (wb_rd != 0);

    assign rs1sel = mem_fw_1 ? 2'b10 : (wb_fw_1 ? 2'b01 : 2'b00);
    assign rs2sel = mem_fw_2 ? 2'b10 : (wb_fw_2 ? 2'b01 : 2'b00);
endmodule
