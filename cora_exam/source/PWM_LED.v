`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/18 19:35:20
// Design Name: 
// Module Name: PWM_LED
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


module led_pwm_top(
        input clk, reset_p,
        output led_r,led_g,led_y
);
    reg [27:0] clk_div;
    always@(posedge clk) clk_div = clk_div +1;
    
    PWM_100 pwm_r(.clk(clk), .reset_p(reset_p), .duty({2'b00,clk_div[27:23]}), .pwm_freq(10000), .pwm_100pc(led_r));
    PWM_100 pwm_g(.clk(clk), .reset_p(reset_p), .duty({2'b00,clk_div[26:22]}), .pwm_freq(10000), .pwm_100pc(led_g));
    PWM_100 pwm_y(.clk(clk), .reset_p(reset_p), .duty({2'b00,clk_div[25:21]}), .pwm_freq(10000), .pwm_100pc(led_y));

endmodule
