`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 08:13:46 PM
// Design Name: 
// Module Name: switch
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


module switch(
    input rdclk,
    input [2:0] memop,
    input [31:0] rdaddr,
    input [15:0] SW,
    output [31:0] switch_read
    );
    wire switch_addr_valid;
    reg [31:0] dataout;
    assign switch_addr_valid = (rdaddr[31:4] == 28'h0080000 && rdaddr[3:1] == 3'b0) ? 1'b1 : 1'b0;
    always @ (posedge rdclk) begin
        if(switch_addr_valid) begin
            dataout <= {16'b0, SW};
        end
        else begin
            dataout <= 32'b0;
        end
    end
    read_32bit sw_read(.memop(memop), .rdaddr(rdaddr[1:0]), .dataout(dataout), .rddata(switch_read));
endmodule
