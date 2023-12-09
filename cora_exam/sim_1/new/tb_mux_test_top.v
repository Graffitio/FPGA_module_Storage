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


module tb_mux_test_top;  /// TB�� ����¸� �������ָ� �ȴ�.
//    reg [7:0] d;   <--------- d �� clk���� �־��ֱ�� �����Ƿ� �ʿ����.
    reg [2:0] s_mux;
    reg [1:0] s_demux;
    wire [3:0] f; /// �Է��� reg, ����� wire

    reg clk_100MHz, clk_50MHz, clk_25MHz, clk_12500KHz, clk_6250KHz, clk_3125KHz, clk_1562KHz, clk_781KHz; /// ���ļ��� �ٸ� clk�� �̸��� ����
    
    mux_test_top DUT (.d({clk_100MHz, clk_50MHz, clk_25MHz, clk_12500KHz, clk_6250KHz, clk_3125KHz, clk_1562KHz, clk_781KHz}),
                      .s_mux(s_mux), .s_demux(s_demux), .f(f));    /// DUT : design unde test, testbench�� ���� Test �޴� ����� �ǹ�
                                                                   /// d �Է��� �ְ� ����� �� �������� ���� �ȴ�.
    
    initial begin  //// clk�� ���� z�� x�� ���, ����� �۵����� �ʴ´�. ���� 0 �Ǵ� 1�� �ʱ�ȭ����� �Ѵ�.
        clk_100MHz = 0;
        clk_50MHz = 0;
        clk_25MHz = 0;
        clk_12500KHz = 0;
        clk_6250KHz = 0;
        clk_3125KHz = 0;
        clk_1562KHz = 0;
        clk_781KHz = 0;
    end
    
    always #5 clk_100MHz = ~clk_100MHz; //// sensivitive list�� ������, �׳� ���� �ݺ�
                                         //// �ֱⰡ 10ns�� clk_100MHz(5ns���� toggle�ȴ�.)
                                         //// �ֱ� 10ns ���� ���ϸ�, ���ļ� 100MHz                                        
    always #10 clk_50MHz = ~clk_50MHz;
    always #20 clk_25MHz = ~clk_25MHz;
    always #40 clk_12500KHz = ~clk_12500KHz;
    always #80 clk_6250KHz = ~clk_6250KHz;
    always #160 clk_3125KHz = ~clk_3125KHz;
    always #320 clk_1562KHz = ~clk_1562KHz;
    always #640 clk_781KHz = ~clk_781KHz;
                                             
//    initial begin   /// �̷��Ե� clk ���� ���� 
//        clk = 0;
//        $forever #5 clk = ~clk;
//    end  ---- ��, �굵 ���ѹݺ��̹Ƿ�
//initial begin
//    #100 $finish;
//end �̷��� ���� �ð��� �������־�� �Ѵ�.
     
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
