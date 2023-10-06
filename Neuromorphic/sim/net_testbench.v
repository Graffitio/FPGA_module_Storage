`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 12:41:25
// Design Name: 
// Module Name: net_testbench
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


module net_testbench();
    
    reg clk, a1, a2;
    reg signed [7:0] w1, w2, w3, w4, w5, w6, bias1, bias2, bias3;
    
    net DUT (clk, a1, a2, a3, w1, w2, w3, w4, w5, w6, bias1, bias2, bias3, out1, out2, out3);

    initial clk = 0;
    always #10 clk = ~clk;
    
    initial begin
        a1 = 0;
        a2 = 0;
        w1 = 0;
        w2 = 0;
        w3 = 0;
        w4 = 0;
        w5 = 0;
        w6 = 0;
        bias1 = 0;
        bias2 = 0;
        bias3 = 0;
    
        #100;
        
        w1 = 8'd5;
        w2 = 8'd5;
        w3 = -8'd7;
        w4 = -8'd7;
        w5 = -8'd11;
        w6 = -8'd11;
        bias1 = -8'd8;
        bias2 = 8'd3;
        bias3 = 8'd6;

        #100;
        
        a1 = 1;
        a2 = 1;
        
        #100;
        a1 = 1;
        a2 = 0;
        
        #100;
        a1 = 0;
        a2 = 1;
        
        #100;
        a1 = 0;
        a2 = 0;
    end
endmodule
