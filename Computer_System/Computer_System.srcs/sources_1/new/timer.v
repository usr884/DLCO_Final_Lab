`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 07:49:50 PM
// Design Name: 
// Module Name: timer
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


module timer(
    input rdclk,
    input [2:0] memop,
    input [31:0] rdaddr,
    input timer_clk,
    input timer_rst,
    output [31:0] timer_read
    );
    wire usclk;
    wire timer_addr_valid;
    wire timer_addr;
    reg [63:0] timerstate;
    reg [31:0] dataout;
    assign timer_addr_valid = (rdaddr[31:4] == 28'h0070000 && rdaddr[3] == 1'b0) ? 1'b1 : 1'b0;
    assign timer_addr = rdaddr[2];
    always @ (posedge rdclk) begin
        if(timer_addr_valid) begin
            dataout <= timer_addr ? timerstate[63:32] : timerstate[31:0];
        end
        else begin
            dataout <= 32'b0;
        end
    end
    read_32bit time_read(.memop(memop), .rdaddr(rdaddr[1:0]), .dataout(dataout), .rddata(timer_read));
    low_freq_clk #(1000000) usclk_gen(.clkin(timer_clk), .rst(timer_rst), .clken(1'b1), .clkout(usclk));
    always @ (posedge usclk) begin
        if(timer_rst) begin
            timerstate <= 0;
        end
        else begin
            timerstate <= timerstate + 1;
        end
    end
endmodule
