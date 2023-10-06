`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/15 10:42:33
// Design Name: 
// Module Name: Ultrasonic_Top_not_fsm
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


module Ultrasonic_Top_not_fsm(
    input clk, rst,
    input echo,
    output trig,
    output [7:0] LED_bar,
    output [3:0] com,
    output [7:0] seg_7
    );

    wire [15:0] distance;
    Ultrasonic_not_fsm SR04_not(clk, rst, echo, trig, distance, LED_bar);

    wire [15:0] distance_dec;
    bin_to_dec ultra_b2d(.bin(distance[11:0]), .bcd(distance_dec)); // 400cm 충분히 받으므로 12bit로 짤라버려도 된다.

    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(rst), .value(distance_dec), .com(com), .seg_7(seg_7));

endmodule
