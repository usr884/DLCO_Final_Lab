`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 10:26:19 AM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input CLK100MHZ,
    input rst,
    input [15:0] SW,
    input PS2_CLK,
    input PS2_DATA,
    output [15:0] LED,
    output LED16_B,
    output LED16_G,
    output LED16_R,
    output LED17_B,
    output LED17_G,
    output LED17_R,
    output [7:0] SEG,
    output [7:0] AN,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS,
    input UART_TXD_IN,
    input UART_RTS,
    output UART_RXD_OUT,
    output UART_CTS
    );

    wire cpuclk;
    wire imemclk;
    wire [31:0] imemaddr, imemdataout;
    wire memrdclk, memwrclk;
    wire [31:0] mem_addr, mem_data_read, mem_data_write;
    wire [2:0] memop;
    wire memwe;
    wire [31:0] cpudbgdata;
    wire memrd;

    wire datamem_we;
    wire VGA_we;
    wire LED_we;
    wire SSD_we;
    wire [31:0] datamem_read;
    wire [31:0] keyboard_read;
    wire [31:0] timer_read;
    wire [31:0] switch_read;
    wire vgaclk;
    wire [31:0] uartdbgdata;
    wire [31:0] uart_iaddr;
    wire [31:0] uart_idata;
    wire uart_iwe;
    wire [31:0] uart_daddr;
    wire [31:0] uart_ddata;
    wire uart_dwe;
    wire uart_halt;
    wire uart_rst;
    wire [7:0] debug_SEG;
    wire [7:0] debug_AN;
    wire [7:0] run_SEG;
    wire [7:0] run_AN;
    wire [31:0] kbddbgdata;
    wire [7:0] kbddebug_SEG;
    wire [7:0] kbddebug_AN;
    wire kbddebug;
    assign kbddbg = 1'b0;

    clk_wiz_0 mycpuclk(.clk_in1(CLK100MHZ), .clk_out1(cpuclk), .clk_out2(vgaclk));
    
    rv32ip rv32ip_cpu(.clock(cpuclk & ~uart_halt), .reset(rst | uart_rst), .imemaddr(imemaddr), .imemdataout(imemdataout), .imemclk(imemclk), 
        .dmemaddr(mem_addr), .dmemdataout(mem_data_read), .dmemdatain(mem_data_write), .dmemrdclk(memrdclk), .dmemwrclk(memwrclk),
        .dmemop(memop), .dmemwe(memwe), .cpudbgdata(cpudbgdata), .memrd(memrd));

    imem instrucion_mem(.clk(uart_halt ? ~cpuclk : imemclk), .addr(uart_halt ? uart_iaddr : imemaddr), .datain(uart_idata), 
        .dataout(imemdataout), .we(uart_iwe & uart_halt));

    bus system_bus(.write_addr(mem_addr), .memwe(memwe), .datamem_we(datamem_we), .VGA_we(VGA_we), .LED_we(LED_we), .SSD_we(SSD_we), 
        .read_addr(mem_addr), .datamem_read(datamem_read), .keyboard_read(keyboard_read), .timer_read(timer_read), .switch_read(switch_read),
        .mem_data_read(mem_data_read));
    
    dmem data_mem(.rdclk(memrdclk), .rdaddr(mem_addr), .dataout(datamem_read), .wrclk(uart_halt ? ~cpuclk : memwrclk), 
        .we(uart_halt ? uart_dwe : datamem_we), .memop((uart_halt & uart_dwe) ? 3'b010 : memop), .wraddr(uart_halt ? uart_daddr : mem_addr), 
        .datain(uart_halt ? uart_ddata : mem_data_write));

    VGA device_VGA(.wrclk(memwrclk), .we(VGA_we), .memop(memop), .wraddr(mem_addr), .datain(mem_data_write), .video_mem_rdclk(CLK100MHZ), 
        .vgaclk(vgaclk), .vgarst(rst), .VGA_R(VGA_R), .VGA_G(VGA_G), .VGA_B(VGA_B), .VGA_HS(VGA_HS), .VGA_VS(VGA_VS));

    keyboard device_keyboard(.rdclk(memrdclk), .memrd(memrd), .memop(memop), .rdaddr(mem_addr), .PS2_CLK(PS2_CLK), .PS2_DATA(PS2_DATA), 
        .keyboard_wrclk(CLK100MHZ), .keyboard_rst(rst), .keyboard_read(keyboard_read), .kbddbgdata(kbddbgdata));

    LED device_LED(.wrclk(memwrclk), .we(LED_we), .memop(memop), .wraddr(mem_addr), .datain(mem_data_write), .LED(LED), 
        .LED16_B(LED16_B), .LED16_G(LED16_G), .LED16_R(LED16_R), .LED17_B(LED17_B), .LED17_G(LED17_G), .LED17_R(LED17_R));

    SSD device_SSD(.wrclk(memwrclk), .we(SSD_we), .memop(memop), .wraddr(mem_addr), .datain(mem_data_write), .SSD_clk(CLK100MHZ), 
        .SEG(run_SEG), .AN(run_AN));
    assign SEG = uart_halt ? debug_SEG : (kbddbg ? kbddebug_SEG : run_SEG);
    assign AN = uart_halt ? debug_AN : (kbddbg ? kbddebug_AN : run_AN);

    timer device_timer(.rdclk(memrdclk), .memop(memop), .rdaddr(mem_addr), .timer_clk(CLK100MHZ), .timer_rst(rst), .timer_read(timer_read));

    switch device_swich(.rdclk(rdclk), .memop(memop), .rdaddr(mem_addr), .SW(SW), .switch_read(switch_read));

    uart_port uart_debug(.clk(cpuclk), .clk100m(CLK100MHZ), .rxd_out(UART_RXD_OUT), .txd_in(UART_TXD_IN), .dbgdata(uartdbgdata), .rst(rst), 
        .instaddr(uart_iaddr), .instdata(uart_idata), .iwe(uart_iwe), .dataaddr(uart_daddr), .mdata(uart_ddata), .dwe(uart_dwe), 
        .cpuhalt(uart_halt), .cpureset(uart_rst));
    assign UART_CTS = 1'b0;
    seg7_display_number debug_SSD(.clk(CLK100MHZ), .en(8'hff), .data(uartdbgdata), .seg_7seg(debug_SEG), .sel_7seg(debug_AN));

    seg7_display_number debug_SSD2(.clk(CLK100MHZ), .en(8'hff), .data(kbddbgdata), .seg_7seg(kbddebug_SEG), .sel_7seg(kbddebug_AN));

    /*assign uartdbgdata = 32'b0;
    assign uart_iaddr = 32'b0;
    assign uart_idata = 32'b0;
    assign uart_iwe = 1'b0;
    assign uart_daddr = 32'b0;
    assign uart_ddata = 32'b0;
    assign uart_dwe = 1'b0;
    assign uart_halt = 1'b0;
    assign uart_rst = 1'b0;
    assign debug_SEG = 8'hff;
    assign debug_AN = 8'hff;*/

endmodule
