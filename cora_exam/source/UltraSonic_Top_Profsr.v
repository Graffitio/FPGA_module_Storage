`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 14:36:14
// Design Name: 
// Module Name: UltraSonic_Top_Profsr
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


module UltraSonic_Top_Profsr(
    input clk, rst,
    input echo,
    output trig,
    output [7:0] LED_bar,
    output [3:0] com,
    output [7:0] seg_7
    );

    wire [15:0] distance_cm;
    UltraSonic_Profsr SR04(clk, rst, echo, trig, distance_cm, LED_bar);

    wire [15:0] distance_dec;
    bin_to_dec humi_b2d(.bin(distance_cm[11:0]), .bcd(distance_dec)); // 400cm 충분히 받으므로 12bit로 짤라버려도 된다.

    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(rst), .value(distance_dec), .com(com), .seg_7(seg_7));

endmodule
