`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/11 09:19:50
// Design Name: 
// Module Name: Watch_Top
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


module Watch_Top(
    input clk, reset_p,
    input [3:0] btn,
    output [3:0] com,
    output [7:0] seg_7
    );
    // ���ֱ� �ν��Ͻ�
    wire clk_usec, clk_msec, clk_sec;
    wire upcount_sec;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_usec), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(reset_p), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(upcount_sec), .reset_p(reset_p), .clk_min(clk_min)); 
    
    wire set_mode;
    
    assign upcount_sec = set_mode ? incsec : clk_sec;
    
    // btn
//    wire fix_sec, fix_min;
//    assign fix_sec = btn_fix ? btn[1] : 0 ; // btn_fix ������ btn[]�� �����ϰ� �ٽ� ������ 0�� �Էµǵ��� Muxing
//    assign fix_min = btn_fix ? btn[2] : 0 ; // ��, btn_fix �Է¿� ���� Setting mode, Fix mode ���� ����
    button_cntr btn_cntr_setmode(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pe(btn_set_pe)); // ��ư������ �ð� �� �ٲ�� ����
    t_flip_flop_p tff_setmode(.clk(clk), .rst(reset_p), .t(btn_set_pe), .q(set_mode)); 
    button_cntr btn_incsec(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pe(incsec)); // sec+
    button_cntr btn_incmin(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pe(incmin)); // min+

    // Time set
//    wire incsec, incmin, min_pulse;
    wire [3:0] sec1, sec10, min1, min10;
    wire [3:0] sec1_set, sec10_set, min1_set, min10_set; // ����� ����(UX)�� ���缭 UI�� �����ϴ� ���� �߿��ϴ�. -> min, sec ���۽�Ű��.
    
//     �Ʒ��� ���� �ۼ��ص� ������, �����ϸ� ������ �𵨸� ���� �� ��.
//    assign comp_sec = |{incsec, clk_sec}; // �ð��� up_sec ��ư �Է��� OR ����(���ÿ� ����)�Ͽ� �־��ָ�,
//    assign comp_min = |{incmin, min_pulse};  // �ð��� �ð���� ��ư�Է��� ��ư�Է´�� ���� ���� ���� �� �ִ�.
//    assign comp_sec = clk_sec ? 1 : incsec ? 1 : 0 ; // �ð��� up_sec ��ư �Է��� OR ����(���ÿ� ����)�Ͽ� �־��ָ�,
//    assign comp_min = min_pulse ? 1 : incmin ? 1 : 0 ; // �ð��� �ð���� ��ư�Է��� ��ư�Է´�� ���� ���� ���� �� �ִ�.
//    counter_dec_60_pul up_sec(.clk(clk), .reset_p(reset_p), .clk_time(comp_sec), .dec1(sec1_set), .dec10(sec10_set), .dec_clk(min_pulse)); // sec up_counter
//    counter_dec_60 up_min(.clk(clk), .reset_p(reset_p), .clk_time(comp_min), .dec1(min1_set), .dec10(min10_set)); // min up_counter

    loadable_up_counter_dec_60 cnter_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .load_enable(btn_set_pe), 
                                           .set_value1(sec1_set), .set_value10(sec10_set), .dec1(sec1), .dec10(sec10)); // sec up_counter
    loadable_up_counter_dec_60 cnter_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .load_enable(btn_set_pe), 
                                           .set_value1(min1_set), .set_value10(min10_set), .dec1(min1), .dec10(min10)); // sec up_counte
                                           
//    wire upcount_min;
//    assign upcount_min = clk_min ? 1 : incmin ? 1 : 0 ;
    
    loadable_up_counter_dec_60 set_sec(.clk(clk), .reset_p(reset_p), .clk_time(incsec), .load_enable(btn_set_pe),
                                       .set_value1(sec1), .set_value10(sec10), .dec1(sec1_set), .dec10(sec10_set)); // sec up_counter
    loadable_up_counter_dec_60 set_min(.clk(clk), .reset_p(reset_p), .clk_time(incmin), .load_enable(btn_set_pe),
                                       .set_value1(min1), .set_value10(min10), .dec1(min1_set), .dec10(min10_set)); // sec up_counter

//    // Setting Time for FND
//    reg [15:0] watch_time;
//    always @(posedge clk, posedge reset_p) begin
//        if(reset_p) watch_time = 0;
//        else watch_time = {min10, min1, sec10, sec1};
//    end
    
//    reg [15:0] fix_time;
//    always @(posedge clk, posedge reset_p) begin
//        if(reset_p) fix_time = 0;
//        else fix_time = {min10_set, min1_set, sec10_set, sec1_set};
//    end
    wire [15:0] cur_time, set_time;
    assign cur_time = {min10, min1, sec10, sec1};
    assign set_time = {min10_set, min1_set, sec10_set, sec1_set};
    
    wire [15:0] value;
    assign value = set_mode ? set_time : cur_time;
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// ��Ʈ�ѷ��� ���ֱ� ������ ������ �׳� clk�ش�.
    
endmodule
