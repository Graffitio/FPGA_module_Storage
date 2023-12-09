`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 16:03:48
// Design Name: 
// Module Name: tb_processor
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


module tb_processor();

    reg clk, reset_p;
    reg [3:0] key_value;
    reg key_valid;
    wire [7:0] outreg_data;
    wire [3:0] kout; // key로 입력된 값을 출력(프로세스가 키 값을 제대로 받는 지 확인하기 위한 것)
    
    processor DUT(clk, reset_p, key_value, key_valid, outreg_data, kout);
    
    // 초기화(입력만 초기화 해준다.)
    initial begin
        clk = 0;
        reset_p = 1;
        key_value = 0;
        key_valid = 0;
    end
    
    // clock
    always #4 clk = ~clk;
    
    integer i, j, k;
    
    initial begin
        #8;
        reset_p = 0; #8; // 리셋 풀어주고
        
        for(k = 10; k< 15; k=k+1) begin
            for(i = 0 ; i < 10 ; i = i+1) begin
                for(j = 0 ; j < 10 ; j = j+1) begin
                    key_value = i; key_valid = 1; #10_000;
                    key_value = 0; key_valid = 0; #10_000;        //key 에서 손을 똄
                    key_value = k; key_valid = 1; #10_000;        //14: 연산자 입력 0~9는 숫자 F = 이퀄 
                    key_value = 0; key_valid = 0; #10_000;        //key 에서 손을 똄
                    key_value = j; key_valid = 1; #10_000;        // 숫자 입력
                    key_value = 0; key_valid = 0; #10_000;        //key 에서 손을 똄
                    key_value = 4'b1111; key_valid = 1; #10_000;  //equal을 주면 f =1111
                    key_value = 0; key_valid = 0; #10_000;
                    $display("%d %d %d = %d : %x  \n", i, k, j, outreg_data, kout);
                end
            end
        end
        $stop;
        //a : add b : sub c : and d : div e : mul f : equal
    end
    
//    // 3 + 2 = 5 를 시뮬레이션해보자.
//    initial begin
//        #8;
//        reset_p = 0; #8; // 리셋 풀어주고
        
//        key_value = 3; key_valid = 1; #10_000; // 키 입력은 오래 걸리니까 길게 주자.
//        key_value = 0; key_valid = 0; #10_000; // 값 받았으면 ,리셋
        
//        key_value = 10; key_valid = 1; #10_000; // 더하기를 a로 설정했으니, 10을 넣어준다.
//        key_value = 0; key_valid = 0; #10_000; // 값 받았으면 ,리셋
        
//        key_value = 2; key_valid = 1; #10_000; // 키 입력은 오래 걸리니까 길게 주자.
//        key_value = 0; key_valid = 0; #10_000; // 값 받았으면 ,리셋        
        
//        key_value = 4'b1111; key_valid = 1; #10_000; // 더하기를 a로 설정했으니, 10을 넣어준다.
//        key_value = 0; key_valid = 0; #10_000; // 값 받았으면 ,리셋
//        $stop;
//    end
    
endmodule
