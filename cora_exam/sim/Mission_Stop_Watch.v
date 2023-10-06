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
    input [1:0] btn, // ��ư 2�� �� ���̹Ƿ�
    output [3:0] com, 
    output [7:0] seg_7,
    output reg [7:0] LED_bar
    );
    
    wire start_stop_input, start_stop, start_stop_btn;
    
    // DFF�� ���� ���ֱ�
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    // Start_stop ��� ���� - usec�� ����
    D_flip_flop_n debnc_60(.d(btn[0]), .clk(clk_div[16]), .rst(reset_p), .q(start_stop_input)); // �ٿ�� ���ſ� DFF
    edge_detector_n edg_start_stop(.clk(clk), .cp_in(start_stop_input), .rst(reset_p), .n_edge(start_stop_btn)); // Edga Detector
    t_flip_flop_p tff_start_stop(.clk(clk), .rst(reset_p), .t(start_stop_btn), .q(start_stop)); // start_stop ��ư ��� ��� 
    
    // Lap ��� ����
    wire lap_input, lap_btn, lap;
    D_flip_flop_n debnc_lap(.d(btn[1]), .clk(clk_div[16]), .rst(reset_p), .q(lap_input)); // �ٿ�� ���ſ� DFF
    edge_detector_n edg_lap(.clk(clk), .cp_in(lap_input), .rst(reset_p), .n_edge(lap_btn)); // Edga Detector
    t_flip_flop_p tff_lap(.clk(clk), .rst(reset_p), .t(lap_btn), .q(lap)); // ����� ���� TFF
    
//    // �ùķ��̼Ǻ��� �� �� ������ ���.
//    assign LED_bar[0] = lap_input; // ��ư�� ������ LED_bar�� ���� -> ��ư ȸ�� ���� ���� ����
//    assign LED_bar[1] = lap_btn; // Edge Detector�� system clock 1��ŭ�� on�Ǿ ������ ���� ��ƴ�.
//    assign LED_bar[2] = lap;
    
    // ���ֱ� �ν��Ͻ�
    wire clk_usec, clk_msec, clk_sec;
    wire clk_start;
    assign clk_start = start_stop ? 0 : clk_usec;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_start), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(reset_p), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min)); 
    
    reg [9:0] cnt_clk_msec;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) cnt_clk_msec = 0; // reset�� ������ cnt = 0
        else if(clk_msec) begin
            if (cnt_clk_msec >= 999) begin
                cnt_clk_msec = 0;
            end
            else cnt_clk_msec = cnt_clk_msec + 1;
        end
    end // �̷��� ī��Ʈ�� ¦���� ���, ���� ���� �ڵ��Ͽ� 1bit ���� �� �ִ�.
    
    wire [15:0] msec_b2d;
    bin_to_dec_stopwatch msec_clk_b2d(.bin({2'b00, cnt_clk_msec}), .bcd(msec_b2d));
    
    // ī���� �ν��Ͻ�
    wire [3:0] msec1, msec10, msec100;
//    counter_dec_100_stopwatch cnt_100_msec(.clk(clk), .reset_p(reset_p), .clk_time(clk_msec), .dec1(msec1), .dec10(msec10), .dec100(msec100));
    wire [3:0] sec1, sec10; // sec1 : 1���ڸ�, sec10 : 10�� �ڸ�
    counter_dec_60_stopwatch cnt_60_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .dec1(sec1), .dec10(sec10)); // sec count
    wire [3:0] min1, min10; // min1 : 1���ڸ�, min10 : 10�� �ڸ�
    counter_dec_60_stopwatch cnt_60_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .dec1(min1), .dec10(min10)); // min count
    
    // Lap Value / value Select
    reg [15:0] lap_value;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) lap_value = 0;
        else if(lap_btn) // lap_btn ���� �� ����
//            lap_value = {sec10, sec1, msec100, msec10};
            lap_value = {sec10, sec1, msec_b2d[11:4]};
    end
    
    // lap ��ư�� ���� FND ���
    wire [15:0] value;
//    assign value = lap ? lap_value : {sec10, sec1, msec100, msec10};
    assign value = lap ? lap_value : {sec10, sec1, msec_b2d[11:4]};
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// ��Ʈ�ѷ��� ���ֱ� ������ ������ �׳� clk�ش�.
    
//    // min�� LED_bar�� ���Ͽ� ���
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

module bin_to_dec_stopwatch( //// 12bit binary�� �޾Ƽ� 16bit decimal�� ��ȯ
    input [11:0] bin, 
    output reg [15:0] bcd /// �ø����� �ϳ��� ���͵� 4�ڸ� �� �о�� �ؼ� vector : 16
);
    reg [3:0] i;
    
    always @(bin) begin //// FND ����� �� ���� ��԰� �� ����.
        bcd = 0;
        for (i=0 ; i<12 ; i=i+1) begin
            bcd = {bcd[14:0], bin[11-i]};  //// ����Ʈ ������ ���տ����ڷ� ǥ��(ȸ�ΰ� �� ����������.)
                                           //// �·� 1bit ����Ʈ�ϰ�, �� �ڸ����� bin[11-i]�� �־� �ش�.
            if ( i < 11 && bcd[3:0] > 4) bcd[3:0] = bcd[3:0] + 3;
            if ( i < 11 && bcd[7:4] > 4) bcd[7:4] = bcd[7:4] + 3;
            if ( i < 11 && bcd[11:8] > 4) bcd[11:8] = bcd[11:8] + 3;
            if ( i < 11 && bcd[15:12] > 4) bcd[15:12] = bcd[15:12] + 3;
        end
    end
endmodule