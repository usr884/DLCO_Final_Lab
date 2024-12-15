`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 10:00:37 AM
// Design Name: 
// Module Name: LED
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


module LED(
    input wrclk,
    input we,
    input [2:0] memop,
    input [31:0] wraddr,
    input [31:0] datain,
    output [15:0] LED,
    output LED16_B,
    output LED16_G,
    output LED16_R,
    output LED17_B,
    output LED17_G,
    output LED17_R
);

    wire LED_wrvalid;
    wire LED_addr_valid;
    wire [31:0] LED_wrdata;

    reg [31:0] LEDstate;
    assign LED = LEDstate[15:0];
    assign LED16_B = LEDstate[16];
    assign LED16_G = LEDstate[17];
    assign LED16_R = LEDstate[18];
    assign LED17_B = LEDstate[19];
    assign LED17_G = LEDstate[20];
    assign LED17_R = LEDstate[21];

    write_32bit LED_write(.memop(memop), .wraddr(wraddr[1:0]), .datain(datain), .datapre(LEDstate), .wrvalid(LED_wrvalid), .wrdata(LED_wrdata));

    assign LED_addr_valid = (wraddr[31:4] == 28'h0040000 && wraddr[3:2] == 2'b00) ? 1'b1 : 1'b0;
    always @ (posedge wrclk) begin
        if(we && LED_addr_valid && LED_wrvalid) begin
            LEDstate <= LED_wrdata;
        end
    end
endmodule
