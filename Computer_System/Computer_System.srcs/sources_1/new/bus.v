`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 11:28:07 AM
// Design Name: 
// Module Name: bus
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


module bus(
    input [31:0] write_addr,
    input memwe,
    output datamem_we,
    output VGA_we,
    output LED_we,
    output SSD_we,
    input [31:0] read_addr,
    input [31:0] datamem_read,
    input [31:0] keyboard_read,
    input [31:0] timer_read,
    input [31:0] switch_read,
    output reg [31:0] mem_data_read
);
    assign datamem_we = (write_addr[31:20] == 12'h001) ? memwe : 1'b0;
    assign VGA_we = (write_addr[31:20] == 12'h002) ? memwe : 1'b0;
    assign LED_we = (write_addr[31:20] == 12'h004) ? memwe : 1'b0;
    assign SSD_we = (write_addr[31:20] == 12'h005) ? memwe : 1'b0;

    always @ * begin
        if(read_addr[31:20] == 12'h001) begin
            mem_data_read = datamem_read;
        end
        else if(read_addr[31:20] == 12'h003) begin
            mem_data_read = keyboard_read;
        end
        else if(read_addr[31:20] == 12'h006) begin
            mem_data_read = timer_read;
        end
        else if(read_addr[31:20] == 12'h007) begin
            mem_data_read = switch_read;
        end
        else begin
            mem_data_read = 32'b0;
        end
    end 
endmodule
