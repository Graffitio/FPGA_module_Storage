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
    // 분주기 인스턴스
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
//    assign fix_sec = btn_fix ? btn[1] : 0 ; // btn_fix 누르면 btn[]가 동작하고 다시 누르면 0이 입력되도록 Muxing
//    assign fix_min = btn_fix ? btn[2] : 0 ; // 즉, btn_fix 입력에 따라 Setting mode, Fix mode 선택 가능
    button_cntr btn_cntr_setmode(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pe(btn_set_pe)); // 버튼눌러도 시간 안 바뀌게 고정
    t_flip_flop_p tff_setmode(.clk(clk), .rst(reset_p), .t(btn_set_pe), .q(set_mode)); 
    button_cntr btn_incsec(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pe(incsec)); // sec+
    button_cntr btn_incmin(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pe(incmin)); // min+

    // Time set
//    wire incsec, incmin, min_pulse;
    wire [3:0] sec1, sec10, min1, min10;
    wire [3:0] sec1_set, sec10_set, min1_set, min10_set; // 사용자 경험(UX)애 맞춰서 UI를 설계하는 것이 중요하다. -> min, sec 동작시키자.
    
//     아래와 같이 작성해도 되지만, 가능하면 구조적 모델링 쓰지 말 것.
//    assign comp_sec = |{incsec, clk_sec}; // 시간과 up_sec 버튼 입력을 OR 연산(동시에 받음)하여 넣어주면,
//    assign comp_min = |{incmin, min_pulse};  // 시간은 시간대로 버튼입력은 버튼입력대로 각각 따로 받을 수 있다.
//    assign comp_sec = clk_sec ? 1 : incsec ? 1 : 0 ; // 시간과 up_sec 버튼 입력을 OR 연산(동시에 받음)하여 넣어주면,
//    assign comp_min = min_pulse ? 1 : incmin ? 1 : 0 ; // 시간은 시간대로 버튼입력은 버튼입력대로 각각 따로 받을 수 있다.
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
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
    
endmodule
