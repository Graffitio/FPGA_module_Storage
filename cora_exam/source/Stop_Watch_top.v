`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/23 14:30:40
// Design Name: 
// Module Name: Stop_Watch_top
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
    input [1:0] btn, // 버튼 2개 쓸 것이므로
    output [3:0] com, 
    output [7:0] seg_7
    );
    
    wire up_down_p, start_stop;
    
    // DFF를 위한 분주기
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    // 바운싱 제거용 DFF
    D_flip_flop_n debnc_60(.d(btn[0]), .clk(clk_div[16]), .rst(reset_p), .q(start_stop)); //// 위의 clk divider의 16번쨰 bit를 써야 된다.
    
    // 분주기 인스턴스
    wire clk_usec, clk_msec, clk_sec;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
    clock_msec msec_clk(.clk(clk), .clk_usec(clk_usec), .reset_p(reset_p), .clk_msec(clk_msec));
    clock_sec sec_clk(.clk(clk), .clk_msec(clk_msec), .reset_p(reset_p), .clk_sec(clk_sec)); // 3가지 다 불러와야 sec 분주기 사용 가능
    
    // 카운터 인스턴스
    wire [3:0] sec1, sec10; // sec1 : 1의자리, sec10 : 10의 자리
    counter_dec_60 cnt_60(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .dec1(sec1), .dec10(sec10));
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(rst), .value({8'b0, sec10, sec1}), .com(com), .seg_7(seg_7));  /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
    
endmodule
