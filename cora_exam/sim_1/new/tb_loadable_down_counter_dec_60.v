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


module tb_loadable_down_counter_dec_60(); // tb는 입출력이 없다.
// 입력은 다 reg
// 출력은 다 wire

    reg clk, reset_p;
    reg clk_time;
    reg load_enable; // user가 입력한 값을 받아오는 기능 추가 
    reg [3:0] set_value1, set_value10; // 입력한 값
    wire [3:0] dec1, dec10;
    wire dec_clk; // 다음 자리(예 : minute)에 신호(펄스)를 주기 위한 변수

    loadable_down_counter_dec_60 DUT(.clk(clk), .reset_p(reset_p), .clk_time(clk_time), .load_enable(load_enable),
                                     .set_value1(set_value1), .set_value10(set_value10), .dec1(dec1), .dec10(dec10), .dec_clk(dec_clk));
                               
     // 입력값 초기화
    initial begin
        clk = 0;
        reset_p = 1;
        clk_time = 0;
        load_enable = 1;
        set_value1 = 5; set_value10 = 3;
    end
    
    // clock 생성
    always #5 clk = ~clk; // 10ns짜리 clock, always문은 Sensitivity list 없으면 무한 반복
    
    initial begin
        #10; reset_p = 0; #10;
        load_enable = 0; #10;
        #980;
        // 1000ns동안 1클락의 펄스가 들어온다.
        for(integer i = 0 ; i < 40 ; i = i+1) begin  // 즉, 1ms마다 down count된다.
            if(i < 40) begin
                clk_time = 1; #10;
                clk_time = 0; #990;
                $display("%d%d", dec10, dec1);
            end
        end
//        clk_time = 1; #10
//        clk_time = 0; #990; // 1000ns동안 1클락의 펄스가 들어온다.
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
