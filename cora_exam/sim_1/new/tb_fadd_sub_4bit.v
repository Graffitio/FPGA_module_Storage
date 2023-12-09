`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/20 10:46:15
// Design Name: 
// Module Name: tb_fadd_sub_4bit
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


module tb_fadd_sub_4bit0();  //// 가산기(s=0)

    reg [3:0] a, b;  /// 입력은 다 reg type은로 선언
    reg s;           /// reg : 값을 저장해서 쓸 떄 
    
    wire [3:0] sum; /// 출력은 다 wire로 선언한다.
    wire carry;     /// wire : 단순히 선 연결만 할 때 사용
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);
                             /// DUT : design under task
                             /// 변수 선언할 떄만 data type를 따로 안 써줄 수 있는데,
                             /// 그렇게 되면 default 값 적용됨, default는 wire
                             /// 출력은 wire로 받아서 simulation 창에서 출력됨.
                             /// ,을 안 쓰고 변수를 가져올 수 있다 ===> 선언한 순서대로 가져와진다.
    initial begin          /// 값을 받는 애들(좌변)은 reg, 우변은 상관없음.
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(초기식 ; 조건식 ; 실행문) 초기식 1회 실행 후, 조건식이 참인 동안 반복한다
                                                                        //// {} : 결합연산자 a(4bit), b(4bit) -> 8bit짜리 [a,b}
            #10;
            if((a+b) !== {carry, sum}) //// 오류가 나면 타이밍테이블을 다 뒤져봐야 된다. ---> 쉽게 파악하기 위해서
                $display("error %d + %d = %d but %d", a, b, a+b, {carry, sum});  //// $display : c언어의 print와 같다.
                                                                                 //// %d : decimal로 출력하라.
                                                                                 //// 첫 번쨰 %d : a, 두 번쨰 %d, b -----> 이처럼 순서대로 대입된다.
        end
        a = 4'b1111; b= 4'b1111; s = 0; #10;    ///( #10 : 10ns만큼 딜레이하겠다.)
        $stop; //// $stop : 시뮬레이션을 멈추는 함수
    end
    
endmodule


/// 1ns / 1ps : 1,000ns pdt는 고려되지 않는다.( ns : 단위, ps : 정밀도) 

module tb_fadd_sub_4bit1();  ///// 감산기(s=1)

    reg [3:0] a, b;  /// 입력은 다 reg type은로 선언
    reg s;           /// reg : 값을 저장해서 쓸 떄 
    
    wire [3:0] sum; /// 출력은 다 wire로 선언한다.
    wire carry;     /// wire : 단순히 선 연결만 할 때 사용
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);
                             /// DUT : design under task
                             /// 변수 선언할 떄만 data type를 따로 안 써줄 수 있는데,
                             /// 그렇게 되면 default 값 적용됨, default는 wire
                             /// 출력은 wire로 받아서 simulation 창에서 출력됨.
                             /// ,을 안 쓰고 변수를 가져올 수 있다 ===> 선언한 순서대로 가져와진다.
    initial begin          /// 값을 받는 애들(좌변)은 reg, 우변은 상관없음.
        a = 4'b1111; b= 4'b0001; s = 1; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(초기식 ; 조건식 ; 실행문) 초기식 1회 실행 후, 조건식이 참인 동안 반복한다
                                                                        //// {} : 결합연산자 a(4bit), b(4bit) -> 8bit짜리 [a,b}
            #10;
            if((a-b) !== {carry, sum}%16) //// 오류가 나면 타이밍테이블을 다 뒤져봐야 된다. ---> 쉽게 파악하기 위해서
                $display("error %d + %d = %d but %d", a, b, a-b, {carry, sum}%16);  //// $display : c언어의 print와 같다.
                                                                                 //// %d : decimal로 출력하라.
                                                                                 //// 첫 번쨰 %d : a, 두 번쨰 %d, b -----> 이처럼 순서대로 대입된다.
        end        
        a = 4'b1111; b= 4'b1111; s = 1; #10;    ///( #10 : 10ns만큼 딜레이하겠다.)
        $stop; //// $stop : 시뮬레이션을 멈추는 함수  $ : system function(task)
    end
    
endmodule


module tb_fadd_sub_4bit01();  //// 가감산기(s=0 & 1)
    reg [3:0] a, b;  /// 입력은 다 reg type은로 선언
    reg s;           /// reg : 값을 저장해서 쓸 떄 
    
    wire [3:0] sum; /// 출력은 다 wire로 선언한다.
    wire carry;     /// wire : 단순히 선 연결만 할 때 사용
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);

    initial begin 
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(초기식 ; 조건식 ; 실행문) 초기식 1회 실행 후, 조건식이 참인 동안 반복한다
            #10;
            if((a+b) !== {carry, sum}) //// 오류가 나면 타이밍테이블을 다 뒤져봐야 된다. ---> 쉽게 파악하기 위해서
                $display("error %d + %d = %d but %d", a, b, a+b, {carry, sum});  //// $display : c언어의 print와 같다.
        end
        a = 4'b1111; b= 4'b1111; s = 0; #10;
        
        s=1; #10;
         for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin                                                                       
            #10;
            if((a-b) !== {carry, sum}) 
                $display("error %d + %d = %d but %d", a, b, a-b, {carry, sum});
          end        
        a = 4'b1111; b= 4'b1111; s = 0; #10;    ///( #10 : 10ns만큼 딜레이하겠다.)
        $stop; //// $stop : 시뮬레이션을 멈추는 함수
    end    
endmodule


module tb_fadd_sub_4bit01_9();  //// 감가산기(s=0 & 1) s까지 추가
    reg [3:0] a, b;
    reg s;  
    
    wire [3:0] sum;
    wire carry; 
       
    fadd_sub_4bit_d DUT (a, b, s, sum, carry);   //// 이 모듈이 위의 reg 변수를 받아서 wire를 통해 잘 출력되는지 확인한다.
    initial begin
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({s,a,b} = 0; {s,a,b} < 9'b1_1111_1111; {s,a,b} = {s,a,b} + 1) begin
            #10;
            if(!s && (a+b) !== {carry, sum}) /// s가 참(0)일 때, $display 가 실행된다.
                                             /// 연산자 우선 순위 : !== 먼저 연산되고 &&가 연산된다.
                                             /// if 내부의 s 는 가감산을 정하는 것이 아닌, 참을 &&하기 위해 사용한 것.
                $display("error %d + %d = %d but %d", a, b, a+b, {carry, sum});
            if(s && (a-b) !== sum) 
                $display("error %d - %d = %d but %d", a, b, a-b, sum);
        end
        a = 4'b1111; b= 4'b1111; s = 1'b1; #10;
//         s = 1; #10;        
//         for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin 
                                                                        
//            #10;
//            if((a-b) !== {carry, sum}) 
//                $display("error %d + %d = %d but %d", a, b, a-b, {carry, sum});
//          end        
//        a = 4'b1111; b= 4'b1111; s = 1; #10;    ///( #10 : 10ns만큼 딜레이하겠다.)
        $stop; //// $stop : 시뮬레이션을 멈추는 함수
    end    
endmodule


module comparator(
    input A, B,
    output equal, greater, less
);
    assign equal = A ~^ B;
    assign greater = A & ~B;
    assign less = ~A & B; /// assign을 썼지만, 논리연산자를 쓰면 구조적 모델링이랑 별 차이가 없다.
    
endmodule
