`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 03:21:49 PM
// Design Name: 
// Module Name: low_freq_clk
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


module low_freq_clk(
    input clkin,
    input rst,
    input clken,
    output reg clkout
);
    parameter clk_freq=1000;
    parameter countlimit=100000000/2/clk_freq-1;
    reg[31:0] clkcount;
    always @ (posedge clkin or posedge rst)
        if(rst) begin
            clkcount<=0;
            clkout<=1'b1;
        end
        else begin
        if(clken) begin
            if(clkcount>=countlimit) begin
                clkcount<=32'd0;
                clkout<=~clkout;
            end
            else begin
                clkcount<=clkcount+1;
            end
        end
    end
endmodule