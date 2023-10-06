`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/22 12:11:22
// Design Name: 
// Module Name: tb_fan_speed
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


module tb_fan_speed();

    reg clk, reset_p;
    reg [3:0] btn;
    tri1 dht11_data;
    wire speed;
    wire state;
    wire [7:0] LED_bar;

    fan_speed_cntr_top DUT(clk, reset_p, btn, dht11_data, speed, state, LED_bar);
    
    initial begin
        clk = 0;
        reset_p = 0;
    end
    
    always #4 clk = ~clk;
    
    initial begin
        #8;
        reset_p = 1; #8;
        
        reset_p = 0;
        btn[0] = 1; #4;
        btn[0] = 0; #4;
        
        #20;
        btn[0] = 1; #4;
        btn[0] = 0; #4;
        
        #20;
        btn[0] = 1; #4;
        btn[0] = 0; #4;
        
        #20;
        btn[0] = 1; #4;
        btn[0] = 0; #4;
        #20;
        $stop;        
    end
endmodule
