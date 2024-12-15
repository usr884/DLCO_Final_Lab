`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 10:46:34 AM
// Design Name: 
// Module Name: dmem
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


module dmem(
    input [31:0] rdaddr,
    output reg [31:0] dataout,
    input [31:0] wraddr,
    input [31:0] datain,
    input rdclk,
    input wrclk,
    input [2:0] memop,
    input we
);
    reg [3:0] wea;
    reg [31:0] dina;
    wire [31:0] doutb;
    blk_mem_gen_0 blk_datamem(.addra(wraddr[16:2]), .clka(wrclk), .dina(dina), .ena(we), .wea(wea), 
        .addrb(rdaddr[16:2]), .clkb(rdclk), .doutb(doutb), .enb(1'b1));
    always @ * begin
        if(memop == 3'b000) begin
            if(rdaddr[1:0] == 2'b00)
                dataout = {{24{doutb[7]}}, doutb[7:0]};
            else if(rdaddr[1:0] == 2'b01)
                dataout = {{24{doutb[15]}}, doutb[15:8]};
            else if(rdaddr[1:0] == 2'b10)
                dataout = {{24{doutb[23]}}, doutb[23:16]};
            else
                dataout = {{24{doutb[31]}}, doutb[31:24]};
        end
        else if(memop == 3'b001) begin
            if(rdaddr[1] == 1'b0)
                dataout = {{16{doutb[15]}}, doutb[15:0]};
            else
                dataout = {{16{doutb[31]}}, doutb[31:16]};
        end
        else if(memop == 3'b010) begin
            dataout = doutb;
        end
        else if(memop == 3'b100) begin
            if(rdaddr[1:0] == 2'b00)
                dataout = {24'b0, doutb[7:0]};
            else if(rdaddr[1:0] == 2'b01)
                dataout = {24'b0, doutb[15:8]};
            else if(rdaddr[1:0] == 2'b10)
                dataout = {24'b0, doutb[23:16]};
            else
                dataout = {24'b0, doutb[31:24]};
        end
        else if(memop == 3'b101) begin
            if(rdaddr[1] == 1'b0)
                dataout = {16'b0, doutb[15:0]};
            else
                dataout = {16'b0, doutb[31:16]};
        end
        else
            dataout = 0;
    end
    always @ * begin
        if(memop == 3'b000) begin
            if(wraddr[1:0] == 2'b00) begin
                wea = 4'b0001;
                dina = {24'b0, datain[7:0]};
            end
            else if(wraddr[1:0] == 2'b01) begin
                wea = 4'b0010;
                dina = {16'b0, datain[7:0], 8'b0};
            end
            else if(wraddr[1:0] == 2'b10) begin
                wea = 4'b0100;
                dina = {8'b0, datain[7:0], 16'b0};
            end
            else begin
                wea = 4'b1000;
                dina = {datain[7:0], 24'b0};
            end
        end
        else if(memop == 3'b001) begin
            if(wraddr[1] == 1'b0) begin
                wea = 4'b0011;
                dina = {16'b0, datain[15:0]};
            end
            else begin
                wea = 4'b1100;
                dina = {datain[15:0], 16'b0};
            end
        end
        else if(memop == 3'b010) begin
            wea = 4'b1111;
            dina = datain;
        end
        else begin
            wea = 4'b0000;
            dina = 0;
        end
    end
endmodule
