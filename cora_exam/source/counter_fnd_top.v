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


module counter_fnd_top(  //// count와 fnd만 묶어서 top module 생성
    input clk, rst, btn1,
    output [7:0] seg_7, // top module을 통한 출력
    output [3:0] com 
);
    wire [11:0] count; /// 카운터의 출력은 wire로 디코더와 연결
    
//    assign com = 4'b1111; //// 나타낼 부분은 1
    
    reg [25:0] clk_div;
    always @(posedge clk)
        clk_div = clk_div + 1; ///// 분주기 만들어줌(시뮬레이션은 분주기가 필요없지만, 직접 출력할 때는 분주기가 필요해)
                               /////약 0.5초마다 count가 증가한다.(보드의 주기 : 8ns) → 8ns x 2^26 = 0.56 sec
    
    // 바운싱 제거용 DFF
    D_flip_flop_n debnc1(.d(btn1), .clk(clk_div[14]), .rst(rst), .q(up_down)); //// 위의 clk divider의 16번쨰 bit를 써야 된다.
    
//    reg up;
//    always @(posedge up_down) begin
//        up = ~up;
//    end /// edge_detector와 tff 대신 이렇게 사용해도 된다(문법적으로는 가능) --> 하지만, 동기화오류가 발생하여 pdf 문제 생김.
    
    wire up_down_p;
    edge_detector_n edg(.clk(clk), .cp_in(up_down), .rst(rst), .n_edge(up_down_p)); /// 안 쓰는 출력은 빼버리면 된다.
   
    wire up;
    t_flip_flop_p t_up(.clk(clk), .t(up_down_p), .rst(rst), .q(up)); //// 버튼 누를때마다 up/down 토글
    
    up_down_counter_Nbit #(.N(12)) counter_fnd(.clk(clk_div[25]), .rst(rst), .up_down(~up), .count(count)); //// clk는 125MHz로 너무 빠르다. ---> 분주기 만들어줘야 됨.
    
    wire [15:0] dec_value; 
    bin_to_dec bin2dec(.bin(count), .bcd(dec_value)); //// 12bit binary를 받아서 16bit decimal로 변환

    FND_4digit_cntr f_dgt_cntr(.clk(clk), .rst(rst), .value({dec_value}), /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
                      .com(com), .seg_7(seg_7));
endmodule