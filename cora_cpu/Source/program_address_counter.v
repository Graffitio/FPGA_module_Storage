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
    input pc_rd_en, // pc값이 BUS로 출력될 것인지 말 것인지
    input [7:0] pc_in,
    output [7:0] pc_out
    );
    
    // upcounter는 adder와 DFF를 합쳐서 만든다.
    
    always@(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            pc_out
        end
        else begin
        
        end
    end
endmodule


