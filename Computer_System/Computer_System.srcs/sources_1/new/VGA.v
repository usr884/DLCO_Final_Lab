`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 04:48:44 PM
// Design Name: 
// Module Name: VGA
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


module VGA(
    input wrclk,
    input we,
    input [2:0] memop,
    input [31:0] wraddr,
    input [31:0] datain,
    input video_mem_rdclk,
    input vgaclk,
    input vgarst,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS
    );

    wire [5:0] start_line;
    wire [5:0] cursor_x;
    wire [5:0] cursor_y;
    wire [11:0] ch_addr;
    wire [11:0] vga_data, vga_data1;
    wire is_white;
    wire valid;
    wire [7:0] doutb;
    wire [7:0] ascii;
    wire VGAstate_addr_valid;
    wire VGAstate_wrvalid;
    wire [31:0] VGAstate_wrdata;
    wire [31:0] chmem_wrdata;
    wire chmem_addr_valid;
    wire chmem_wrvalid;
    reg [3:0] chmem_wea;
    wire cursor_clk;
    wire [5:0] ch_x_addr;
    wire [4:0] ch_y_addr;
    wire [3:0] dot_x_addr;
    wire [3:0] dot_y_addr;
    wire [3:0] vga_r, vga_g, vga_b;
    wire hsync, vsync;

    reg [31:0] VGAstate;
    assign VGAstate_addr_valid = (wraddr[31:2] == {28'h0020100, 2'b00}) ? 1'b1 : 1'b0;
    write_32bit VGAstate_write(.memop(memop), .wraddr(wraddr[1:0]), .datain(datain), .datapre(VGAstate), .wrvalid(VGAstate_wrvalid), 
        .wrdata(VGAstate_wrdata));
    always @ (posedge wrclk) begin
        if(we && VGAstate_addr_valid && VGAstate_wrvalid) begin
            VGAstate <= VGAstate_wrdata;
        end
    end

    blk_mem_gen_2 ch_video_memory(.addra(wraddr[11:2]), .clka(wrclk), .dina(chmem_wrdata), .ena(chmem_addr_valid && chmem_wrvalid && we), 
        .wea(chmem_wea), .addrb(ch_addr), .clkb(video_mem_rdclk), .doutb(doutb), .enb(1'b1));
    assign chmem_addr_valid = (wraddr[31:12] == 20'h00200) ? 1'b1 : 1'b0;
    write_32bit chmem_write(.memop(memop), .wraddr(wraddr[1:0]), .datain(datain), .datapre(32'b0), .wrvalid(chmem_wrvalid), 
        .wrdata(chmem_wrdata));
    always @ * begin
        if(memop == 3'b000) begin
            if(wraddr[1:0] == 2'b00) begin
                chmem_wea = 4'b0001;
            end
            else if(wraddr[1:0] == 2'b01) begin
                chmem_wea = 4'b0010;
            end
            else if(wraddr[1:0] == 2'b10) begin
                chmem_wea = 4'b0100;
            end
            else begin
                chmem_wea = 4'b1000;
            end
        end
        else if(memop == 3'b001) begin
            if(wraddr[1] == 1'b0) begin
                chmem_wea = 4'b0011;
            end
            else begin
                chmem_wea = 4'b1100;
            end
        end
        else if(memop == 3'b010) begin
            chmem_wea = 4'b1111;
        end
        else begin
            chmem_wea = 4'b0000;
        end
    end

    assign start_line = VGAstate[5:0];
    assign cursor_y = VGAstate[13:8];
    assign cursor_x = VGAstate[21:16];

    low_freq_clk #(1) cursor_clk_gen(.clkin(video_mem_rdclk), .rst(1'b0), .clken(1'b1), .clkout(cursor_clk));

    vga_ctrl vga_ctrl_0(.pclk(vgaclk), .reset(vgarst), .vga_data(vga_data), .ch_x_addr(ch_x_addr), .ch_y_addr(ch_y_addr), 
        .dot_x_addr(dot_x_addr), .dot_y_addr(dot_y_addr), .hsync(hsync), .vsync(vsync), .valid(valid), .vga_r(vga_r), 
        .vga_g(vga_g), .vga_b(vga_b));

    vga_font vga_font_0(.ascii(ascii), .row(dot_y_addr), .col(dot_x_addr), .is_white(is_white));

    assign ch_addr = {start_line + {1'b0, ch_y_addr}, ch_x_addr};
    assign ascii = (ch_addr == {cursor_y, cursor_x} && cursor_clk) ? 8'h16 : doutb;
    assign vga_data1 = is_white ? 12'hfff : 12'b0;
    assign vga_data = valid ? vga_data1 : 12'b0;
    
    assign VGA_R = vga_r;
    assign VGA_G = vga_g;
    assign VGA_B = vga_b;
    assign VGA_HS = hsync;
    assign VGA_VS = vsync;
endmodule

module vga_font(
    input [7:0] ascii,
    input [3:0] row,
    input [3:0] col,
    output is_white
    );
    wire [11:0] row2;
    reg [11:0] mat [4095:0];
    initial begin
        $readmemh("../../../../vga_font.txt", mat);
    end
    assign row2 = {ascii, row};
    assign is_white = mat[row2][col];
endmodule

module vga_ctrl(
    input pclk,
    input reset,
    input [11:0] vga_data,
    output reg [5:0] ch_x_addr,
    output reg [4:0] ch_y_addr,
    output reg [3:0] dot_x_addr,
    output reg [3:0] dot_y_addr,
    output hsync,
    output vsync,
    output valid,
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b
);

    parameter h_frontporch = 96;
    parameter h_active = 144;
    parameter h_backporch = 720 /*784*/;
    parameter h_total = 800;
    
    parameter v_frontporch = 2;
    parameter v_active = 35;
    parameter v_backporch = 515;
    parameter v_total = 525;
    
    reg [9:0] x_cnt;
    reg [9:0] y_cnt;
    wire h_valid;
    wire v_valid;
    
    always @(posedge reset or posedge pclk)
        if (reset == 1'b1) begin
            x_cnt <= 1;
            ch_x_addr <= 0;
            dot_x_addr <= 0;
        end
        else begin
            if (x_cnt == h_total)
                x_cnt <= 1;
            else begin
                x_cnt <= x_cnt + 10'd1;
                if(h_valid) begin
                    if(dot_x_addr == 8) begin
                        dot_x_addr <= 0;
                        ch_x_addr <= ch_x_addr + 1;
                    end
                    else begin
                        dot_x_addr <= dot_x_addr + 1;
                    end
                end
                else begin
                    ch_x_addr <= 0;
                    dot_x_addr <= 0;
                end
            end
        end
    
    always @(posedge reset or posedge pclk)
        if (reset == 1'b1) begin
            y_cnt <= 1;
            ch_y_addr <= 0;
            dot_y_addr <= 0;
        end
        else begin
            if (y_cnt == v_total & x_cnt == h_total)
                y_cnt <= 1;
            else if (x_cnt == h_total) begin
                y_cnt <= y_cnt + 10'd1;
                if(v_valid) begin
                    if(dot_y_addr == 15) begin
                        dot_y_addr <= 0;
                        ch_y_addr <= ch_y_addr + 1;
                    end
                    else begin
                        dot_y_addr <= dot_y_addr + 1;
                    end
                end
                else begin
                    ch_y_addr <= 0;
                    dot_y_addr <= 0;
                end
            end
        end
        
    assign hsync = (x_cnt > h_frontporch);
    assign vsync = (y_cnt > v_frontporch);
    
    assign h_valid = (x_cnt > h_active) & (x_cnt <= h_backporch);
    assign v_valid = (y_cnt > v_active) & (y_cnt <= v_backporch);
    assign valid = h_valid & v_valid;
    
    assign vga_r = vga_data[11:8];
    assign vga_g = vga_data[7:4];
    assign vga_b = vga_data[3:0];
endmodule
