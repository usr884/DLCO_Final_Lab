`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 09:08:55 PM
// Design Name: 
// Module Name: keyboard_test
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


module keyboard_test;
    parameter [31:0] clock_period = 10;
    
    /* ps2_keyboard interface signals */
    reg clk,clrn;
    wire kbd_clk, kbd_data;
    reg rdclk;
    reg [2:0] memop;
    reg [31:0] rdaddr;
    wire [31:0] keyboard_read;
    
    ps2_keyboard_model model(
    .ps2_clk(kbd_clk),
    .ps2_data(kbd_data)
    );
    
    keyboard keyboard_for_test(.rdclk(rdclk), .memop(memop), .rdaddr(rdaddr), .PS2_CLK(kbd_clk), .PS2_DATA(kbd_data), .keyboard_wrclk(clk), 
        .keyboard_rst(~clrn), .keyboard_read(keyboard_read));
    
    initial begin /* clock driver */
        clk = 0;
        forever
        #(clock_period/2) clk = ~clk;
    end
    
    initial begin
        rdclk = 1'b0;
        clrn = 1'b1; #20
        rdclk = 1'b1;
        clrn = 1'b0; #20;
        rdclk = 1'b0;
        clrn = 1'b1; #20;
        model.kbd_sendcode(8'h1C); // press 'A'
        model.kbd_sendcode(8'hF0); // break code
        model.kbd_sendcode(8'h1C); // release 'A'
        #20 model.kbd_sendcode(8'h1B); // press 'S'
        #20 model.kbd_sendcode(8'h1B); // keep pressing 'S'
        #20 model.kbd_sendcode(8'h1B); // keep pressing 'S'
        model.kbd_sendcode(8'hF0); // break code
        model.kbd_sendcode(8'h1B); // release 'S'
        #20;

        memop = 3'b010;
        rdaddr = 32'h00300000;
        $display("head=%d, tail=%d", keyboard_for_test.buffer_head, keyboard_for_test.buffer_tail);
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);
        #10 rdclk = 1'b0;
        #10 rdclk = 1'b1;
        #1 $display("%h", keyboard_read);

        $stop;
    end
endmodule

module ps2_keyboard_model(
    output reg ps2_clk,
    output reg ps2_data
    );
    parameter [31:0] kbd_clk_period = 60;
    initial ps2_clk = 1'b1;
    task kbd_sendcode;
        input [7:0] code; // key to be sent
        integer i;
        reg[10:0] send_buffer;
        begin
        send_buffer[0] = 1'b0; // start bit
        send_buffer[8:1] = code; // code
        send_buffer[9] = ~(^code); // odd parity bit
        send_buffer[10] = 1'b1; // stop bit
        i = 0;
        while( i < 11) begin
        // set kbd_data
        ps2_data = send_buffer[i];
        #(kbd_clk_period/2) ps2_clk = 1'b0;
        #(kbd_clk_period/2) ps2_clk = 1'b1;
        i = i + 1;
        end
        end
    endtask
endmodule