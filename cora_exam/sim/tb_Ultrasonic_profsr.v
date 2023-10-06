`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/15 14:07:58
// Design Name: 
// Module Name: tb_Ultrasonic_profsr
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


module tb_Ultrasonic_profsr();
    reg clk, rst;
    reg echo;
    wire trig;
    wire [15:0] distance_cm;
//    wire [7:0] LED_bar;

    UltraSonic_Profsr DUT(clk, rst, echo, trig, distance_cm, LED_bar);
    
    parameter data1 = 58 * 10 * 1000; // 10cm, usec���� �ٲ��ַ��� 1000 ������� �Ѵ�.
    parameter data2 = 58 * 23 * 1000; // 23cm
    
    initial begin
        clk = 0;
        rst = 1; 
        echo = 0;    
    end
    
    always #4 clk = ~clk;
    
    // data1 16�� ������, data2 16�� ���� ���̴�.
    integer i;
    initial begin
        #8;
        rst = 0; #8;
        
        for(i = 0 ; i < 16 ; i = i+1) begin
            wait(trig);
            wait(!trig);
            #28000; // 28ms���� burst ���
            echo = 1; #data1;
            echo = 0;            
        end
        for(i = 0 ; i < 16 ; i = i+1) begin
            wait(trig);
            wait(!trig);
            #28000; // 28ms���� burst ���
            echo = 1; #data2;
            echo = 0;            
        end
        #28000; // FND�� ��µ� �ð��� ��� �ȴ�.
        $stop;        
    end

endmodule
