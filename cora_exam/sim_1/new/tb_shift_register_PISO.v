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
    
    wire q; /// �Է��� reg, ����� wire
     
    shift_register_PISO piso_DUT(clk, rst, w_piso, d, q);
    
    initial begin
        clk = 0;
        d = 4'b1010;
        rst = 1;
        w_piso = 0; //// �ε�ȴ�.
    end
    always #4 clk = ~clk; /// sys clk�� 8ns�̴ϱ�, 4ns �־�� �Ѵ�.
    
    initial begin
        #8
       rst = 0; #8; /// �ε�Ǵ� �� ���� �Ǵϱ�, ���� �ð��� �� �ش�.
       w_piso = 1'b1; #32; /// 4�� �з������ߵǴϱ�, 32ns �̻� �ָ� �ȴ�.
       d =4'b1100; #8;
       w_piso = 0; #8
       w_piso = 1; #32;        
       $stop;
    end
endmodule
