`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 09:08:00 PM
// Design Name: 
// Module Name: VGA_test
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


module VGA_test();
    parameter [31:0] clock_period = 10;
    reg clk;
    reg wrclk;
    reg we;
    reg [2:0] memop;
    reg [31:0] wraddr;
    reg [31:0] datain;
    reg vgarst;
    wire [3:0] VGA_R;
    wire [3:0] VGA_G;
    wire [3:0] VGA_B;
    wire VGA_HS;
    wire VGA_VS;
    integer i, j;
    
    VGA VGA_for_test(.wrclk(wrclk), .we(we), .memop(memop), .wraddr(wraddr), .datain(datain), .video_mem_rdclk(clk), .vgaclk(clk), 
        .vgarst(vgarst), .VGA_R(VGA_R), .VGA_G(VGA_G), .VGA_B(VGA_B), .VGA_HS(VGA_HS), .VGA_VS(VGA_VS));
    
    task VGAinput;
        input [2:0] inputmemop;
        input [31:0] inputwraddr;
        input [7:0] inputdatain;
        begin
            memop = inputmemop;
            wraddr = inputwraddr;
            datain = {24'b0, inputdatain};
            #10 wrclk = 1'b1;
            #10 wrclk = 1'b0;
        end
    endtask

    initial begin /* clock driver */
        clk = 0;
        forever
        #(clock_period/2) clk = ~clk;
    end
    
    initial begin
        vgarst = 1'b1;
        we = 1'b1;
        wrclk = 1'b0;
        #5;
        VGAinput(3'b000, 32'h00201000, 8'h00);
        VGAinput(3'b000, 32'h00201001, 8'hff);
        VGAinput(3'b000, 32'h00201002, 8'hff);
        // "Hello, world!\0"
        VGAinput(0, 32'h200000, 72);
        VGAinput(0, 32'h200001, 101);
        VGAinput(0, 32'h200002, 108);
        VGAinput(0, 32'h200003, 108);
        VGAinput(0, 32'h200004, 111);
        VGAinput(0, 32'h200005, 44);
        VGAinput(0, 32'h200006, 32);
        VGAinput(0, 32'h200007, 119);
        VGAinput(0, 32'h200008, 111);
        VGAinput(0, 32'h200009, 114);
        VGAinput(0, 32'h20000a, 108);
        VGAinput(0, 32'h20000b, 100);
        VGAinput(0, 32'h20000c, 33);
        VGAinput(0, 32'h20000d, 0);

        #20 
        we = 1'b0;
        // wraddr = 32'b0;
        vgarst = 1'b0;
        $display("start_line = 0x%h", VGA_for_test.start_line);
        $display("cursor_y = 0x%h", VGA_for_test.cursor_y);
        $display("cursor_x = 0x%h", VGA_for_test.cursor_x);
        $display("Data in charactor memory:");
        @ (VGA_for_test.vga_ctrl_0.x_cnt == VGA_for_test.vga_ctrl_0.h_active + 1) begin
            for(i = 0; i < 14; i = i + 1) begin
                for(j = 0; j < 9; j = j + 1) begin
                    #10; // $display("%c at 0x%h", VGA_for_test.ascii, i);
                end
                $display("%c at 0x%h", VGA_for_test.ascii, i);
            end
        end
        $stop;
    end
endmodule
