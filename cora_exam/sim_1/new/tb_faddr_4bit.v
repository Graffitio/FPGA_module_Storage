`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/20 08:51:52
// Design Name: 
// Module Name: tb_faddr_4bit
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


module tb_faddr_4bit(

    );
    
    reg [3:0] a, b;
    reg cin;
    
    wire [3:0] sum;
    wire carry;
    
    fadder_4bit Out(a, b, cin, sum, carry);
    
    initial begin
        a = 4'b1111; b = 4'b0001; cin = 0; #10
        
        for({a,b} = 0;{a,b}<8'b11111111;{a,b} = {a,b} + 1) begin
            #10;
        end
        a = 1'b1111; b = 4'b1111; #10;
        $stop
    end
    
endmodule
