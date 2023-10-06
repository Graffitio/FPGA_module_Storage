`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 09:18:40
// Design Name: 
// Module Name: counter_fnd_top
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


module counter_fnd_top(  //// count�� fnd�� ��� top module ����
    input clk, rst, btn1,
    output [7:0] seg_7, // top module�� ���� ���
    output [3:0] com 
);
    wire [11:0] count; /// ī������ ����� wire�� ���ڴ��� ����
    
//    assign com = 4'b1111; //// ��Ÿ�� �κ��� 1
    
    reg [25:0] clk_div;
    always @(posedge clk)
        clk_div = clk_div + 1; ///// ���ֱ� �������(�ùķ��̼��� ���ֱⰡ �ʿ������, ���� ����� ���� ���ֱⰡ �ʿ���)
                               /////�� 0.5�ʸ��� count�� �����Ѵ�.(������ �ֱ� : 8ns) �� 8ns x 2^26 = 0.56 sec
    
    // �ٿ�� ���ſ� DFF
    D_flip_flop_n debnc1(.d(btn1), .clk(clk_div[14]), .rst(rst), .q(up_down)); //// ���� clk divider�� 16���� bit�� ��� �ȴ�.
    
//    reg up;
//    always @(posedge up_down) begin
//        up = ~up;
//    end /// edge_detector�� tff ��� �̷��� ����ص� �ȴ�(���������δ� ����) --> ������, ����ȭ������ �߻��Ͽ� pdf ���� ����.
    
    wire up_down_p;
    edge_detector_n edg(.clk(clk), .cp_in(up_down), .rst(rst), .n_edge(up_down_p)); /// �� ���� ����� �������� �ȴ�.
   
    wire up;
    t_flip_flop_p t_up(.clk(clk), .t(up_down_p), .rst(rst), .q(up)); //// ��ư ���������� up/down ���
    
    up_down_counter_Nbit #(.N(12)) counter_fnd(.clk(clk_div[25]), .rst(rst), .up_down(~up), .count(count)); //// clk�� 125MHz�� �ʹ� ������. ---> ���ֱ� �������� ��.
    
    wire [15:0] dec_value; 
    bin_to_dec bin2dec(.bin(count), .bcd(dec_value)); //// 12bit binary�� �޾Ƽ� 16bit decimal�� ��ȯ

    FND_4digit_cntr f_dgt_cntr(.clk(clk), .rst(rst), .value({dec_value}), /// ��Ʈ�ѷ��� ���ֱ� ������ ������ �׳� clk�ش�.
                      .com(com), .seg_7(seg_7));
endmodule