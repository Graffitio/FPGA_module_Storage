`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/23 09:48:03
// Design Name: 
// Module Name: tb_mux_test_top
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


module tb_mux_test_top;  /// TB는 입출력만 선언해주면 된다.
//    reg [7:0] d;   <--------- d 에 clk들을 넣어주기로 했으므로 필요없음.
    reg [2:0] s_mux;
    reg [1:0] s_demux;
    wire [3:0] f; /// 입력은 reg, 출력은 wire

    reg clk_100MHz, clk_50MHz, clk_25MHz, clk_12500KHz, clk_6250KHz, clk_3125KHz, clk_1562KHz, clk_781KHz; /// 주파수가 다른 clk를 이름만 선언
    
    mux_test_top DUT (.d({clk_100MHz, clk_50MHz, clk_25MHz, clk_12500KHz, clk_6250KHz, clk_3125KHz, clk_1562KHz, clk_781KHz}),
                      .s_mux(s_mux), .s_demux(s_demux), .f(f));    /// DUT : design unde test, testbench에 의해 Test 받는 대상을 의미
                                                                   /// d 입력을 주고 출력이 잘 나오는지 보면 된다.
    
    initial begin  //// clk의 값이 z나 x일 경우, 제대로 작동하지 않는다. 따라서 0 또는 1로 초기화해줘야 한다.
        clk_100MHz = 0;
        clk_50MHz = 0;
        clk_25MHz = 0;
        clk_12500KHz = 0;
        clk_6250KHz = 0;
        clk_3125KHz = 0;
        clk_1562KHz = 0;
        clk_781KHz = 0;
    end
    
    always #5 clk_100MHz = ~clk_100MHz; //// sensivitive list가 없으면, 그냥 무한 반복
                                         //// 주기가 10ns인 clk_100MHz(5ns마다 toggle된다.)
                                         //// 주기 10ns 역수 취하면, 주파수 100MHz                                        
    always #10 clk_50MHz = ~clk_50MHz;
    always #20 clk_25MHz = ~clk_25MHz;
    always #40 clk_12500KHz = ~clk_12500KHz;
    always #80 clk_6250KHz = ~clk_6250KHz;
    always #160 clk_3125KHz = ~clk_3125KHz;
    always #320 clk_1562KHz = ~clk_1562KHz;
    always #640 clk_781KHz = ~clk_781KHz;
                                             
//    initial begin   /// 이렇게도 clk 생성 가능 
//        clk = 0;
//        $forever #5 clk = ~clk;
//    end  ---- 단, 얘도 무한반복이므로
//initial begin
//    #100 $finish;
//end 이렇게 종료 시간을 설정해주어야 한다.
     
     initial begin
        #10_000;
        s_mux = 3'b011;
        s_demux = 2'b01;
        #10_000;
        s_mux = 3'b100;
        s_demux = 2'b11;
        #10_000;
        $stop;
     end
endmodule
