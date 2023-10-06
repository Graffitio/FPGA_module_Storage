`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 10:54:59
// Design Name: 
// Module Name: tb_fan_bluetooth_top
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


module tb_fan_bluetooth_top();
    
    reg clk;         // Ŭ�� �Է�
    reg reset_p;     // ���� ��ȣ �Է�
    reg RX;          // ����������� ���ŵ� ������ �Է�
    wire [7:0] dx_data;  // ������ ���


    bluetooth_rx DUT(clk, reset_p, RX, dx_data);
    
    initial begin
        clk = 0;
        reset_p = 1;
        RX = 1;
    end
    
    always #4 clk = ~clk; // 8ns¥�� clk
    
    initial begin
        #8;
        reset_p = 0; #8;
        
        RX = 0; #8;
        RX = 2'b11; #8;
        RX = 2'b10; #8;
        RX = 2'b01; #8;
        RX = 2'b01; #8;
        RX = 2'b01; #8;
        #8; #8; #8; #8; #8; #8; #8; #8;
        $stop;
//        RX = 2'b00; #8;
//        RX = 2'b00; #8;
//        RX = 2'b00; #8;
//        RX = 2'b00; #8;
//        RX = 2'b00; #8;
        
    end
        
    
endmodule
