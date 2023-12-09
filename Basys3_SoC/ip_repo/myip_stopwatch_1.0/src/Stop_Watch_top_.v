`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 10:06:27
// Design Name: 
// Module Name: Stop_Watch_top_
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


module Stop_Watch_top(
    input clk,
    input [3:0] sw_control_reg, 
    output [3:0] com, 
    output [7:0] seg_7,
    output [7:0] LED_bar,
    output [15:0] value
    );
    
//    wire start_stop_input, start_stop, start_stop_btn;
    wire start_stop, lap, lap_btn, clear;
    assign start_stop = sw_control_reg[0];
    assign lap = sw_control_reg[1];
    assign clear = sw_control_reg[2];
    
    // DFF를 위한 분주기
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    // Start_stop 기능 구현
//    D_flip_flop_n debnc_60(.d(btn[0]), .clk(clk_div[16]), .rst(reset_p), .q(start_stop_input)); // 바운싱 제거용 DFF
//    edge_detector_n edg_start_stop(.clk(clk), .cp_in(start_stop_input), .rst(reset_p), .n_edge(start_stop_btn)); // Edga Detector
//    t_flip_flop_p tff_strt_stop(.clk(clk), .rst(reset_p), .t(start_stop_btn), .q(start_stop)); // 토글을 위한 TFF
//    start_stop_btn srt_stp(.clk(clk), .reset_p(reset_p), .start_stop_input(start_stop_btn), .btn(btn[0]), .start_stop(start_stop)); // start_stop 버튼 토글 기능
    
    // Lap 기능 구현
//    D_flip_flop_n debnc_lap(.d(btn[1]), .clk(clk_div[16]), .rst(reset_p), .q(lap_input)); // 바운싱 제거용 DFF
    edge_detector_n edg_lap(.clk(clk), .cp_in(sw_control_reg[1]), .rst(clear), .n_edge(lap_btn)); // Edga Detector
//    t_flip_flop_p tff_lap(.clk(clk), .rst(reset_p), .t(lap_btn), .q(lap)); // 토글을 위한 TFF
    
//    // 시뮬레이션보다 좀 더 간편한 방법.
//    assign LED_bar[0] = lap_input; // 버튼을 누르면 LED_bar가 켜짐 -> 버튼 회로 문제 검출 과정
//    assign LED_bar[1] = lap_btn; // Edge Detector는 system clock 1만큼만 on되어서 눈으로 보기 어렵다.
//    assign LED_bar[2] = lap;
    
//    // 분주기 인스턴스
//    wire clk_usec, clk_msec, clk_sec;
//    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .enable(start_stop), .clk_usec(clk_usec));
//    clock_msec msec_clk(.clk(clk), .clk_usec(clk_usec), .reset_p(reset_p), .clk_msec(clk_msec));
//    clock_sec sec_clk(.clk(clk), .clk_msec(clk_msec), .reset_p(reset_p), .clk_sec(clk_sec)); // 3가지 다 불러와야 sec 분주기 사용 가능
//    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min));
    
       // 분주기 인스턴스
    wire clk_usec, clk_msec, clk_sec;
    clock_usec_en usec_clk(.clk(clk), .reset_p(clear), .enable(start_stop), .clk_usec(clk_usec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_usec), .reset_p(clear), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(clear), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(clear), .clk_min(clk_min)); 
    
    // 카운터 인스턴스
    wire [3:0] msec1, msec10, msec100;
    counter_dec_100_stopwatch cnt_100_msec(.clk(clk), .reset_p(clear), .clk_time(clk_msec), .dec1(msec1), .dec10(msec10), .dec100(msec100));
    wire [3:0] sec1, sec10; // sec1 : 1의자리, sec10 : 10의 자리
    counter_dec_60 cnt_60_sec(.clk(clk), .reset_p(clear), .clk_time(clk_sec), .dec1(sec1), .dec10(sec10)); // sec count
    wire [3:0] min1, min10; // min1 : 1의자리, min10 : 10의 자리
    counter_dec_60 cnt_60_min(.clk(clk), .reset_p(clear), .clk_time(clk_min), .dec1(min1), .dec10(min10)); // min count
    
    // Lap Value / value Select
    reg [15:0] lap_value;
    always @(posedge clk, posedge clear) begin
        if(clear) lap_value = 0;
        else if(lap_btn) // lap_btn 나올 때 저장
//            lap_value = {min10, min1, sec10, sec1};
            lap_value = {min1, sec10, sec1, msec100};
    end
    
    // lap 버튼에 따른 FND 출력
//    wire [15:0] value;
//    assign value = lap ? lap_value : {min10, min1, sec10, sec1};
    assign value = lap ? lap_value : {min1, sec10, sec1, msec100};
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(clear), .value(value), .com(com), .seg_7(seg_7));  /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
    
endmodule

//// 60bit_Counter
//module counter_dec_60(
//    input clk, reset_p,
//    input clk_time,
//    output reg [3:0] dec1, dec10
//    );
    
//    always @(posedge clk, posedge reset_p) begin
//        if(reset_p) begin
//            dec1 = 0;
//            dec10 = 0;
//        end
//        else if(clk_time) begin
//            if(dec1 >= 9) begin 
//                dec1 <= 0;
//                if(dec10 >= 5) dec10 = 0;
//                else dec10 <= dec10 + 1;
//            end
//            else dec1 <= dec1 + 1;
//        end
//    end
//endmodule


module start_stop_btn(
    input clk, reset_p,
    input start_stop_input,
    input btn,
    output reg start_stop
);
    always @(posedge clk, posedge reset_p) begin
        if (reset_p) begin
            start_stop <= 0; // 리셋 시에 초기화
        end
        else begin
            // 버튼 누를 때마다 상태 토글
            if (btn && !start_stop_input) begin
                start_stop <= ~start_stop;
            end
        end
    end
endmodule

// 100bit_Counter
module counter_dec_100_stopwatch(
    input clk, reset_p,
    input clk_time,
    output reg [3:0] dec1, dec10, dec100
    );
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            dec1 = 0;
            dec10 = 0;
            dec100 = 0;
        end
        else if(clk_time) begin
            if(dec1 >= 9) begin 
                dec1 <= 0;
                if(dec10 >= 9) begin
                    dec10 = 0;
                    if(dec100 >= 9)
                        dec100 = 0;
                    else dec100 <= dec100 + 1;
                end
                else dec10 <= dec10 + 1;
            end
            else dec1 <= dec1 + 1;
        end
    end
endmodule