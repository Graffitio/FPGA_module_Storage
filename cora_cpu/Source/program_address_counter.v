`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/13 15:43:15
// Design Name: 
// Module Name: program_address_counter
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


module program_address_counter(
    input clk, reset_p,
    input pc_inc, load_pc,
    input pc_rd_en, // pc���� BUS�� ��µ� ������ �� ������
    input [7:0] pc_in,
    output [7:0] pc_out
    );
    
    // upcounter�� adder�� DFF�� ���ļ� �����.
    
    always@(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            pc_out
        end
        else begin
        
        end
    end
endmodule


