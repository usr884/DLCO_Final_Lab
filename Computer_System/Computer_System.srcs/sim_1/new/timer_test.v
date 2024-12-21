`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 11:32:22 AM
// Design Name: 
// Module Name: timer_test
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


module timer_test();
    parameter [31:0] clock_period = 10;
    reg [2:0] memop;
    reg [31:0] rdaddr;
    reg timer_clk;
    reg timer_rst;
    wire [31:0] timer_read;
    timer timer_for_test(.rdclk(rdclk), .memop(memop), .rdaddr(rdaddr), .timer_clk(timer_clk), .timer_rst(timer_rst), .timer_read(timer_read));
    assign rdclk = timer_clk;
    initial begin /* clock driver */
        timer_clk = 0;
        forever
        #(clock_period/2) timer_clk = ~timer_clk;
    end
    initial begin
        timer_rst = 1'b0; #20
        timer_rst = 1'b1; #20;
        timer_rst = 1'b0; #20;
        memop = 3'b010;
        rdaddr = 32'h00600000;
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        #1000 $display("time=%d", timer_read);
        $stop;
    end
endmodule
