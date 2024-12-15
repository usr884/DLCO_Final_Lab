`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 04:58:11 PM
// Design Name: 
// Module Name: read_32bit
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


module read_32bit(
    input [2:0] memop,
    input [1:0] rdaddr,
    input [31:0] dataout,
    output reg [31:0] rddata
    );
    always @ * begin
        if(memop == 3'b000) begin
            if(rdaddr[1:0] == 2'b00)
                rddata = {{24{dataout[7]}}, dataout[7:0]};
            else if(rdaddr[1:0] == 2'b01)
                rddata = {{24{dataout[15]}}, dataout[15:8]};
            else if(rdaddr[1:0] == 2'b10)
                rddata = {{24{dataout[23]}}, dataout[23:16]};
            else
                rddata = {{24{dataout[31]}}, dataout[31:24]};
        end
        else if(memop == 3'b001) begin
            if(rdaddr[1] == 1'b0)
                rddata = {{16{dataout[15]}}, dataout[15:0]};
            else
                rddata = {{16{dataout[31]}}, dataout[31:16]};
        end
        else if(memop == 3'b010) begin
            rddata = dataout;
        end
        else if(memop == 3'b100) begin
            if(rdaddr[1:0] == 2'b00)
                rddata = {24'b0, dataout[7:0]};
            else if(rdaddr[1:0] == 2'b01)
                rddata = {24'b0, dataout[15:8]};
            else if(rdaddr[1:0] == 2'b10)
                rddata = {24'b0, dataout[23:16]};
            else
                rddata = {24'b0, dataout[31:24]};
        end
        else if(memop == 3'b101) begin
            if(rdaddr[1] == 1'b0)
                rddata = {16'b0, dataout[15:0]};
            else
                rddata = {16'b0, dataout[31:16]};
        end
        else begin
            rddata = 32'b0;
        end
    end
endmodule
