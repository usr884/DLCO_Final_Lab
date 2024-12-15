`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 03:45:24 PM
// Design Name: 
// Module Name: keyboard
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


module keyboard(
    input rdclk,
    input [2:0] memop,
    input [31:0] rdaddr,
    input PS2_CLK,
    input PS2_DATA,
    input keyboard_wrclk,
    input keyboard_rst,
    output [31:0] keyboard_read
    );

    wire [7:0] keyboard_data;
    wire ready;
    wire keyboard_addr_valid;
    wire [7:0] buffer_read;
    wire [7:0] ascii;

    reg [7:0] buffer [31:0];
    reg [4:0] buffer_head;
    reg [4:0] buffer_tail;
    reg [31:0] dataout;

    read_32bit key_read(.memop(memop), .rdaddr(rdaddr[1:0]), .dataout(dataout), .rddata(keyboard_read));

    assign buffer_read = buffer[buffer_head];
    assign keyboard_addr_valid = (rdaddr == 28'h0030000) ? 1'b1 : 1'b0;
    always @ (posedge rdclk) begin
        if(keyboard_rst) begin
            buffer_head <= 5'b0;
        end
        else if(keyboard_addr_valid) begin
            if(buffer_head != buffer_tail) begin
                dataout <= {16'b0, ascii, buffer_read};
                buffer_head <= buffer_head + 1;
            end
            else begin
                dataout <= 32'b0;
            end
        end
        else begin
            dataout <= 32'b0;
        end
    end

    ps2_keyboard ps2_keyboard_0(.clk(keyboard_wrclk), .clrn(~keyboard_rst), .ps2_clk(PS2_CLK), .ps2_data(PS2_DATA), 
        .keyboard_data(keyboard_data), .ready(ready));

    always @ (posedge keyboard_wrclk) begin
        if(keyboard_rst) begin
            buffer_tail <= 5'b0;
        end
        else if(ready) begin
            if(buffer_tail + 1 != buffer_head) begin
                buffer[buffer_tail] <= keyboard_data;
                buffer_tail <= buffer_tail + 1;
            end
        end
    end

    reg [7:0] scancode_ascii [255:0];
    initial $readmemh("../../../../scancode.txt", scancode_ascii);
    assign ascii = scancode_ascii[buffer_read];
endmodule

module ps2_keyboard(      
    input clk,
    input clrn,
    input ps2_clk,
    input ps2_data,
    output reg [7:0] keyboard_data,
    output reg ready
);
    // internal signal, for test
    reg [9:0] buffer; // ps2_data bits
    reg [3:0] count; // count ps2_data bits
    // detect falling edge of ps2_clk
    reg [2:0] ps2_clk_sync;
    
    always @(posedge clk) begin
        ps2_clk_sync <= {ps2_clk_sync[1:0],ps2_clk};
    end
    
    wire sampling = ps2_clk_sync[2] & ~ps2_clk_sync[1];
    
    always @(posedge clk) begin
        if (clrn == 0) begin // reset
            count <= 0;
            ready <= 0;
            keyboard_data <= 0;
        end
        else begin
            if (sampling) begin
                if (count == 4'd10) begin
                    if ((buffer[0] == 0) && (ps2_data) && (^buffer[9:1])) begin
                        ready <= 1'b1;
                        keyboard_data <= buffer[8:1];
                    end
                    count <= 0; // for next
                end
                else begin
                    ready <= 1'b0;
                    buffer[count] <= ps2_data; // store ps2_data
                    count <= count + 3'b1;
                end
            end
            else begin
                ready <= 1'b0;
            end
        end
    end
endmodule