`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2024 02:31:49 PM
// Design Name: 
// Module Name: LED_test
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


module LED_test();
    parameter [31:0] clock_period = 10;
    reg clk;
    reg wrclk;
    reg we;
    reg [2:0] memop;
    reg [31:0] wraddr;
    reg [31:0] datain;
    wire [15:0] LED;
    wire LED16_B;
    wire LED16_G;
    wire LED16_R;
    wire LED17_B;
    wire LED17_G;
    wire LED17_R;
    integer i, j;

    LED LED_for_test(.wrclk(wrclk), .we(we), .memop(memop), .wraddr(wraddr), .datain(datain), .LED(LED), .LED16_B(LED16_B), 
        .LED16_G(LED16_G), .LED16_R(LED16_R), .LED17_B(LED17_B), .LED17_G(LED17_G), .LED17_R(LED17_R));

    task LEDinput;
        input [2:0] inputmemop;
        input [31:0] inputwraddr;
        input [31:0] inputdatain;
        begin
            memop = inputmemop;
            wraddr = inputwraddr;
            datain = inputdatain;
            #10 wrclk = 1'b1;
            #10 wrclk = 1'b0;
            $display("LEDstate = 0x%08h", LED_for_test.LEDstate);
        end
    endtask

    initial begin /* clock driver */
        clk = 0;
        forever
        #(clock_period/2) clk = ~clk;
    end

    initial begin
        we = 1'b1;
        wrclk = 1'b0;
        #5;
        LEDinput(3'b010, 32'h400000, 32'hffffffff);
        LEDinput(3'b001, 32'h400000, {16'b0, 16'habcd});
        LEDinput(3'b000, 32'h400001, {24'b0, 8'hef});
        LEDinput(3'b010, 32'h400004, 32'hffffffff); // invalid case
        LEDinput(3'b010, 32'h000000, 32'hffffffff); // invalid case
        LEDinput(3'b111, 32'h400000, 32'hffffffff); // invalid case
        $stop;
    end
endmodule
