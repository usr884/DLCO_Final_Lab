`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 11:49:52 PM
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input rst, input WrClk, input RegWr, input [4:0] Ra, Rb, Rw, input [31:0] busW,
    output [31:0] busA, busB
    );
    reg [31:0] regs [31:0];
    assign busA = regs[Ra];
    assign busB = regs[Rb];
    always @ (posedge WrClk) begin
        if(rst) begin
            regs[0] <= 0;
        end
        else if(RegWr && Rw != 0) begin
            regs[Rw] <= busW;
        end
    end
endmodule
