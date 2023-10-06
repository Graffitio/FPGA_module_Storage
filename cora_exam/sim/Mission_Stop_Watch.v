`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/06 10:39:00
// Design Name: 
// Module Name: Mission_Stop_Watch
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


module Mission_Stop_Watch(
    input clk,
    input reset_p,
    input [1:0] btn, // 버튼 2개 쓸 것이므로
    output [3:0] com, 
    output [7:0] seg_7,
    output reg [7:0] LED_bar
    );
    
    wire start_stop_input, start_stop, start_stop_btn;
    
    // DFF를 위한 분주기
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    // Start_stop 기능 구현 - usec과 연결
    D_flip_flop_n debnc_60(.d(btn[0]), .clk(clk_div[16]), .rst(reset_p), .q(start_stop_input)); // 바운싱 제거용 DFF
    edge_detector_n edg_start_stop(.clk(clk), .cp_in(start_stop_input), .rst(reset_p), .n_edge(start_stop_btn)); // Edga Detector
    t_flip_flop_p tff_start_stop(.clk(clk), .rst(reset_p), .t(start_stop_btn), .q(start_stop)); // start_stop 버튼 토글 기능 
    
    // Lap 기능 구현
    wire lap_input, lap_btn, lap;
    D_flip_flop_n debnc_lap(.d(btn[1]), .clk(clk_div[16]), .rst(reset_p), .q(lap_input)); // 바운싱 제거용 DFF
    edge_detector_n edg_lap(.clk(clk), .cp_in(lap_input), .rst(reset_p), .n_edge(lap_btn)); // Edga Detector
    t_flip_flop_p tff_lap(.clk(clk), .rst(reset_p), .t(lap_btn), .q(lap)); // 토글을 위한 TFF
    
//    // 시뮬레이션보다 좀 더 간편한 방법.
//    assign LED_bar[0] = lap_input; // 버튼을 누르면 LED_bar가 켜짐 -> 버튼 회로 문제 검출 과정
//    assign LED_bar[1] = lap_btn; // Edge Detector는 system clock 1만큼만 on되어서 눈으로 보기 어렵다.
//    assign LED_bar[2] = lap;
    
    // 분주기 인스턴스
    wire clk_usec, clk_msec, clk_sec;
    wire clk_start;
    assign clk_start = start_stop ? 0 : clk_usec;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_start), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(reset_p), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min)); 
    
    reg [9:0] cnt_clk_msec;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_clk_msec = 0; // reset이 들어오면 cnt = 0
        else if(clk_msec) begin
            if (cnt_clk_msec >= 999) begin
                cnt_clk_msec = 0;
            end
            else cnt_clk_msec = cnt_clk_msec + 1;
        end
    end // 이렇게 카운트가 짝수일 경우, 위와 같이 코딩하여 1bit 줄일 수 있다.
    
    wire [15:0] msec_b2d;
    bin_to_dec_stopwatch msec_clk_b2d(.bin({2'b00, cnt_clk_msec}), .bcd(msec_b2d));
    
    // 카운터 인스턴스
    wire [3:0] msec1, msec10, msec100;
//    counter_dec_100_stopwatch cnt_100_msec(.clk(clk), .reset_p(reset_p), .clk_time(clk_msec), .dec1(msec1), .dec10(msec10), .dec100(msec100));
    wire [3:0] sec1, sec10; // sec1 : 1의자리, sec10 : 10의 자리
    counter_dec_60_stopwatch cnt_60_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .dec1(sec1), .dec10(sec10)); // sec count
    wire [3:0] min1, min10; // min1 : 1의자리, min10 : 10의 자리
    counter_dec_60_stopwatch cnt_60_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .dec1(min1), .dec10(min10)); // min count
    
    // Lap Value / value Select
    reg [15:0] lap_value;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) lap_value = 0;
        else if(lap_btn) // lap_btn 나올 때 저장
//            lap_value = {sec10, sec1, msec100, msec10};
            lap_value = {sec10, sec1, msec_b2d[11:4]};
    end
    
    // lap 버튼에 따른 FND 출력
    wire [15:0] value;
//    assign value = lap ? lap_value : {sec10, sec1, msec100, msec10};
    assign value = lap ? lap_value : {sec10, sec1, msec_b2d[11:4]};
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
    
//    // min을 LED_bar를 통하여 출력
//    assign LED_bar[0] = (min1 == 1) | (min1 == 2) | (min1 == 3) | (min1 == 4) | (min1 == 5) | (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[1] = (min1 == 2) | (min1 == 3) | (min1 == 4) | (min1 == 5) | (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[2] = (min1 == 3) | (min1 == 4) | (min1 == 5) | (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[3] = (min1 == 4) | (min1 == 5) | (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[4] = (min1 == 5) | (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[5] = (min1 == 6) | (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[6] = (min1 == 7) | (min1 == 8) ? 1 : 0;
//    assign LED_bar[7] = (min1 == 8) ? 1 : 0;
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) LED_bar = 0;
        for (integer i = 0; i < 6; i = i + 1) begin
            LED_bar[i] = (min1 >= i + 1) ? 1 : 0;
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


// 60bit_Counter
module counter_dec_60_stopwatch(
    input clk, reset_p,
    input clk_time,
    output reg [3:0] dec1, dec10
    );
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            dec1 = 0;
            dec10 = 0;
        end
        else if(clk_time) begin
            if(dec1 >= 9) begin 
                dec1 <= 0;
                if(dec10 >= 5) dec10 = 0;
                else dec10 <= dec10 + 1;
            end
            else dec1 <= dec1 + 1;
        end
    end
endmodule

module bin_to_dec_stopwatch( //// 12bit binary를 받아서 16bit decimal로 변환
    input [11:0] bin, 
    output reg [15:0] bcd /// 올림수가 하나만 나와도 4자리 다 읽어야 해서 vector : 16
);
    reg [3:0] i;
    
    always @(bin) begin //// FND 출력할 때 자주 써먹게 될 것임.
        bcd = 0;
        for (i=0 ; i<12 ; i=i+1) begin
            bcd = {bcd[14:0], bin[11-i]};  //// 쉬프트 연산을 결합연산자로 표현(회로가 더 간단해진다.)
                                           //// 좌로 1bit 쉬프트하고, 빈 자리에는 bin[11-i]를 넣어 준다.
            if ( i < 11 && bcd[3:0] > 4) bcd[3:0] = bcd[3:0] + 3;
            if ( i < 11 && bcd[7:4] > 4) bcd[7:4] = bcd[7:4] + 3;
            if ( i < 11 && bcd[11:8] > 4) bcd[11:8] = bcd[11:8] + 3;
            if ( i < 11 && bcd[15:12] > 4) bcd[15:12] = bcd[15:12] + 3;
        end
    end
endmodule