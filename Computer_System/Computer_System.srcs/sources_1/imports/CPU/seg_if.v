`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:43:50 PM
// Design Name: 
// Module Name: seg_if
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


module seg_if(
    input clk,
    input rst,
    input PCSrc,
    input stallIF,
    input [31:0] Branchtarget,
    input [31:0] inst,
    input flushIF,
    input stallID,
    output reg [31:0] PC,
    output reg [63:0] id_reg   //[63:32] inst, [31:0] PC
    );

    wire [31:0] NextPC;

    always @ (negedge clk) begin
        if(rst) begin
            PC <= 32'b0;
        end
        else begin
            if(stallIF) begin
                ;
            end
            else begin
                PC <= PCSrc ? Branchtarget : NextPC;
            end
        end
    end

    assign NextPC = PC + 4;

    always @ (negedge clk) begin
        if(stallID) begin
            ;
        end
        else if(flushIF) begin
            id_reg <= 63'b0;
        end
        else begin
            id_reg <= {inst, PC};
        end
    end
endmodule
