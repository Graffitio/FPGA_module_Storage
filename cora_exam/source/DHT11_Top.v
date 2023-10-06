`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/12 11:53:47
// Design Name: 
// Module Name: DHT11_Top
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


module DHT11_Top(
    input clk, reset_p,
    inout dht11_data,
    output [3:0] com,
    output [7:0] seg_7,
    output [7:0] LED_bar
    );
    
    wire [7:0] humidity, temperature;
    DHT11 dht(.clk(clk), .reset_p(reset_p), .dht11_data(dht11_data), .humidity(humidity), .temperature(temperature), .LED_bar(LED_bar));

    wire [15:0] humi_dec, temp_dec;
    bin_to_dec humi_b2d(.bin({4'b0000,humidity}), .bcd(humi_dec));
    bin_to_dec temp_b2d(.bin({4'b0000 ,temperature}), .bcd(temp_dec));

    wire [15:0] value;
    assign value = {humi_dec[7:0], temp_dec[7:0]};
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));
endmodule
