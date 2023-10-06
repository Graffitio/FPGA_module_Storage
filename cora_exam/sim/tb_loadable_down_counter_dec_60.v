`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/07 11:13:30
// Design Name: 
// Module Name: tb_loadable_down_counter_dec_60
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


module tb_loadable_down_counter_dec_60(); // tb�� ������� ����.
// �Է��� �� reg
// ����� �� wire

    reg clk, reset_p;
    reg clk_time;
    reg load_enable; // user�� �Է��� ���� �޾ƿ��� ��� �߰� 
    reg [3:0] set_value1, set_value10; // �Է��� ��
    wire [3:0] dec1, dec10;
    wire dec_clk; // ���� �ڸ�(�� : minute)�� ��ȣ(�޽�)�� �ֱ� ���� ����

    loadable_down_counter_dec_60 DUT(.clk(clk), .reset_p(reset_p), .clk_time(clk_time), .load_enable(load_enable),
                                     .set_value1(set_value1), .set_value10(set_value10), .dec1(dec1), .dec10(dec10), .dec_clk(dec_clk));
                               
     // �Է°� �ʱ�ȭ
    initial begin
        clk = 0;
        reset_p = 1;
        clk_time = 0;
        load_enable = 1;
        set_value1 = 5; set_value10 = 3;
    end
    
    // clock ����
    always #5 clk = ~clk; // 10ns¥�� clock, always���� Sensitivity list ������ ���� �ݺ�
    
    initial begin
        #10; reset_p = 0; #10;
        load_enable = 0; #10;
        #980;
        // 1000ns���� 1Ŭ���� �޽��� ���´�.
        for(integer i = 0 ; i < 40 ; i = i+1) begin  // ��, 1ms���� down count�ȴ�.
            if(i < 40) begin
                clk_time = 1; #10;
                clk_time = 0; #990;
                $display("%d%d", dec10, dec1);
            end
        end
//        clk_time = 1; #10
//        clk_time = 0; #990; // 1000ns���� 1Ŭ���� �޽��� ���´�.
//        clk_time = 1; #10
//        clk_time = 0; #990; 
//        clk_time = 1; #10
//        clk_time = 0; #990;
//        clk_time = 1; #10
//        clk_time = 0; #990;
//        clk_time = 1; #10
//        clk_time = 0; #990;
        $stop;
    end
    
endmodule
