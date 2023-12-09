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
    input reset_p,
    input [1:0] btn, // ��ư 2�� �� ���̹Ƿ�
    output [3:0] com, 
    output [7:0] seg_7,
    output [7:0] LED_bar
    );
    
    wire start_stop_input, start_stop, start_stop_btn;
    
    // DFF�� ���� ���ֱ�
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    // Start_stop ��� ����
    D_flip_flop_n debnc_60(.d(btn[0]), .clk(clk_div[16]), .rst(reset_p), .q(start_stop_input)); // �ٿ�� ���ſ� DFF
    edge_detector_n edg_start_stop(.clk(clk), .cp_in(start_stop_input), .rst(reset_p), .n_edge(start_stop_btn)); // Edga Detector
    start_stop_btn srt_stp(.clk(clk), .reset_p(reset_p), .start_stop_input(start_stop_btn), .btn(btn[0]), .start_stop(start_stop)); // start_stop ��ư ��� ���
    
    // Lap ��� ����
    wire lap_input, lap_btn, lap;
    D_flip_flop_n debnc_lap(.d(btn[1]), .clk(clk_div[16]), .rst(reset_p), .q(lap_input)); // �ٿ�� ���ſ� DFF
    edge_detector_n edg_lap(.clk(clk), .cp_in(lap_input), .rst(reset_p), .n_edge(lap_btn)); // Edga Detector
    t_flip_flop_p tff_lap(.clk(clk), .rst(reset_p), .t(lap_btn), .q(lap)); // ����� ���� TFF
    
    // �ùķ��̼Ǻ��� �� �� ������ ���.
    assign LED_bar[0] = lap_input; // ��ư�� ������ LED_bar�� ���� -> ��ư ȸ�� ���� ���� ����
    assign LED_bar[1] = lap_btn; // Edge Detector�� system clock 1��ŭ�� on�Ǿ ������ ���� ��ƴ�.
    assign LED_bar[2] = lap;
    
//    // ���ֱ� �ν��Ͻ�
//    wire clk_usec, clk_msec, clk_sec;
//    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .enable(start_stop), .clk_usec(clk_usec));
//    clock_msec msec_clk(.clk(clk), .clk_usec(clk_usec), .reset_p(reset_p), .clk_msec(clk_msec));
//    clock_sec sec_clk(.clk(clk), .clk_msec(clk_msec), .reset_p(reset_p), .clk_sec(clk_sec)); // 3���� �� �ҷ��;� sec ���ֱ� ��� ����
//    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min));
    
       // ���ֱ� �ν��Ͻ�
    wire clk_usec, clk_msec, clk_sec;
    clock_usec_en usec_clk(.clk(clk), .reset_p(reset_p), .enable(start_stop), .clk_usec(clk_usec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_usec), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(reset_p), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min)); 
    
    // ī���� �ν��Ͻ�
    wire [3:0] sec1, sec10; // sec1 : 1���ڸ�, sec10 : 10�� �ڸ�
    counter_dec_60 cnt_60_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .dec1(sec1), .dec10(sec10)); // sec count
    wire [3:0] min1, min10; // min1 : 1���ڸ�, min10 : 10�� �ڸ�
    counter_dec_60 cnt_60_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .dec1(min1), .dec10(min10)); // min count
    
    // Lap Value / value Select
    reg [15:0] lap_value;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) lap_value = 0;
        else if(lap_btn) // lap_btn ���� �� ����
            lap_value = {min10, min1, sec10, sec1};
    end
    
    // lap ��ư�� ���� FND ���
    wire [15:0] value;
    assign value = lap ? lap_value : {min10, min1, sec10, sec1};
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// ��Ʈ�ѷ��� ���ֱ� ������ ������ �׳� clk�ش�.
    
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
            start_stop <= 0; // ���� �ÿ� �ʱ�ȭ
        end
        else begin
            // ��ư ���� ������ ���� ���
            if (btn && !start_stop_input) begin
                start_stop <= ~start_stop;
            end
        end
    end
endmodule