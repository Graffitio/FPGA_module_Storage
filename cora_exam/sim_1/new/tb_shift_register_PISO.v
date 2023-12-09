`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/30 14:27:01
// Design Name: 
// Module Name: tb_shift_register_PISO
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


module tb_shift_register_PISO();
    
    reg [3:0] d;
    reg clk, rst, w_piso;
    
    wire q; /// 입력은 reg, 출력은 wire
     
    shift_register_PISO piso_DUT(clk, rst, w_piso, d, q);
    
    initial begin
        clk = 0;
        d = 4'b1010;
        rst = 1;
        w_piso = 0; //// 로드된다.
    end
    always #4 clk = ~clk; /// sys clk가 8ns이니까, 4ns 주어야 한다.
    
    initial begin
        #8
       rst = 0; #8; /// 로드되는 걸 봐야 되니까, 여유 시간을 좀 준다.
       w_piso = 1'b1; #32; /// 4개 밀려나가야되니까, 32ns 이상 주면 된다.
       d =4'b1100; #8;
       w_piso = 0; #8
       w_piso = 1; #32;        
       $stop;
    end
endmodule
