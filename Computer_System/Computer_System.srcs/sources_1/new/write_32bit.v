`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 02:34:43 PM
// Design Name: 
// Module Name: write_32bit
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


module write_32bit(
    input [2:0] memop,
    input [1:0] wraddr,
    input [31:0] datain,
    input [31:0] datapre,
    output reg wrvalid,
    output reg [31:0] wrdata
    );
    always @ * begin
        if(memop == 3'b000) begin
            wrvalid = 1'b1;
            if(wraddr == 2'b00) begin
                wrdata = {datapre[31:8], datain[7:0]};
            end
            else if(wraddr == 2'b01) begin
                wrdata = {datapre[31:16], datain[7:0], datapre[7:0]};
            end
            else if(wraddr == 2'b10) begin
                wrdata = {datapre[31:24], datain[7:0], datapre[15:0]};
            end
            else begin
                wrdata = {datain[7:0], datapre[23:0]};
            end
        end
        else if(memop == 3'b001) begin
            wrvalid = 1'b1;
            if(wraddr[1] == 1'b0) begin
                wrdata = {datapre[31:16], datain[15:0]};
            end
            else begin
                wrdata = {datain[15:0], datapre[15:0]};
            end
        end
        else if(memop == 3'b010) begin
            wrvalid = 1'b1;
            wrdata = datain;
        end
        else begin
            wrvalid = 1'b0;
            wrdata = 32'b0;
        end
    end
endmodule
