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


module tb_fadd_sub_4bit0();  //// �����(s=0)

    reg [3:0] a, b;  /// �Է��� �� reg type���� ����
    reg s;           /// reg : ���� �����ؼ� �� �� 
    
    wire [3:0] sum; /// ����� �� wire�� �����Ѵ�.
    wire carry;     /// wire : �ܼ��� �� ���Ḹ �� �� ���
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);
                             /// DUT : design under task
                             /// ���� ������ ���� data type�� ���� �� ���� �� �ִµ�,
                             /// �׷��� �Ǹ� default �� �����, default�� wire
                             /// ����� wire�� �޾Ƽ� simulation â���� ��µ�.
                             /// ,�� �� ���� ������ ������ �� �ִ� ===> ������ ������� ����������.
    initial begin          /// ���� �޴� �ֵ�(�º�)�� reg, �캯�� �������.
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(�ʱ�� ; ���ǽ� ; ���๮) �ʱ�� 1ȸ ���� ��, ���ǽ��� ���� ���� �ݺ��Ѵ�
                                                                        //// {} : ���տ����� a(4bit), b(4bit) -> 8bit¥�� [a,b}
            #10;
            if((a+b) !== {carry, sum}) //// ������ ���� Ÿ�̹����̺��� �� �������� �ȴ�. ---> ���� �ľ��ϱ� ���ؼ�
                $display("error %d + %d = %d but %d", a, b, a+b, {carry, sum});  //// $display : c����� print�� ����.
                                                                                 //// %d : decimal�� ����϶�.
                                                                                 //// ù ���� %d : a, �� ���� %d, b -----> ��ó�� ������� ���Եȴ�.
        end
        a = 4'b1111; b= 4'b1111; s = 0; #10;    ///( #10 : 10ns��ŭ �������ϰڴ�.)
        $stop; //// $stop : �ùķ��̼��� ���ߴ� �Լ�
    end
    
endmodule


/// 1ns / 1ps : 1,000ns pdt�� ������� �ʴ´�.( ns : ����, ps : ���е�) 

module tb_fadd_sub_4bit1();  ///// �����(s=1)

    reg [3:0] a, b;  /// �Է��� �� reg type���� ����
    reg s;           /// reg : ���� �����ؼ� �� �� 
    
    wire [3:0] sum; /// ����� �� wire�� �����Ѵ�.
    wire carry;     /// wire : �ܼ��� �� ���Ḹ �� �� ���
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);
                             /// DUT : design under task
                             /// ���� ������ ���� data type�� ���� �� ���� �� �ִµ�,
                             /// �׷��� �Ǹ� default �� �����, default�� wire
                             /// ����� wire�� �޾Ƽ� simulation â���� ��µ�.
                             /// ,�� �� ���� ������ ������ �� �ִ� ===> ������ ������� ����������.
    initial begin          /// ���� �޴� �ֵ�(�º�)�� reg, �캯�� �������.
        a = 4'b1111; b= 4'b0001; s = 1; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(�ʱ�� ; ���ǽ� ; ���๮) �ʱ�� 1ȸ ���� ��, ���ǽ��� ���� ���� �ݺ��Ѵ�
                                                                        //// {} : ���տ����� a(4bit), b(4bit) -> 8bit¥�� [a,b}
            #10;
            if((a-b) !== {carry, sum}%16) //// ������ ���� Ÿ�̹����̺��� �� �������� �ȴ�. ---> ���� �ľ��ϱ� ���ؼ�
                $display("error %d + %d = %d but %d", a, b, a-b, {carry, sum}%16);  //// $display : c����� print�� ����.
                                                                                 //// %d : decimal�� ����϶�.
                                                                                 //// ù ���� %d : a, �� ���� %d, b -----> ��ó�� ������� ���Եȴ�.
        end        
        a = 4'b1111; b= 4'b1111; s = 1; #10;    ///( #10 : 10ns��ŭ �������ϰڴ�.)
        $stop; //// $stop : �ùķ��̼��� ���ߴ� �Լ�  $ : system function(task)
    end
    
endmodule


module tb_fadd_sub_4bit01();  //// �������(s=0 & 1)
    reg [3:0] a, b;  /// �Է��� �� reg type���� ����
    reg s;           /// reg : ���� �����ؼ� �� �� 
    
    wire [3:0] sum; /// ����� �� wire�� �����Ѵ�.
    wire carry;     /// wire : �ܼ��� �� ���Ḹ �� �� ���
       
    fadd_sub_4bit_s DUT (a, b, s, sum, carry);

    initial begin 
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin //// for(�ʱ�� ; ���ǽ� ; ���๮) �ʱ�� 1ȸ ���� ��, ���ǽ��� ���� ���� �ݺ��Ѵ�
            #10;
            if((a+b) !== {carry, sum}) //// ������ ���� Ÿ�̹����̺��� �� �������� �ȴ�. ---> ���� �ľ��ϱ� ���ؼ�
                $display("error %d + %d = %d but %d", a, b, a+b, {carry, sum});  //// $display : c����� print�� ����.
        end
        a = 4'b1111; b= 4'b1111; s = 0; #10;
        
        s=1; #10;
         for({a,b} = 0; {a,b} < 8'b1111_1111; {a,b} = {a,b} + 1) begin                                                                       
            #10;
            if((a-b) !== {carry, sum}) 
                $display("error %d + %d = %d but %d", a, b, a-b, {carry, sum});
          end        
        a = 4'b1111; b= 4'b1111; s = 0; #10;    ///( #10 : 10ns��ŭ �������ϰڴ�.)
        $stop; //// $stop : �ùķ��̼��� ���ߴ� �Լ�
    end    
endmodule


module tb_fadd_sub_4bit01_9();  //// �������(s=0 & 1) s���� �߰�
    reg [3:0] a, b;
    reg s;  
    
    wire [3:0] sum;
    wire carry; 
       
    fadd_sub_4bit_d DUT (a, b, s, sum, carry);   //// �� ����� ���� reg ������ �޾Ƽ� wire�� ���� �� ��µǴ��� Ȯ���Ѵ�.
    initial begin
        a = 4'b1111; b= 4'b0001; s = 0; #10;
        for({s,a,b} = 0; {s,a,b} < 9'b1_1111_1111; {s,a,b} = {s,a,b} + 1) begin
            #10;
            if(!s && (a+b) !== {carry, sum}) /// s�� ��(0)�� ��, $display �� ����ȴ�.
                                             /// ������ �켱 ���� : !== ���� ����ǰ� &&�� ����ȴ�.
                                             /// if ������ s �� �������� ���ϴ� ���� �ƴ�, ���� &&�ϱ� ���� ����� ��.
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
//        a = 4'b1111; b= 4'b1111; s = 1; #10;    ///( #10 : 10ns��ŭ �������ϰڴ�.)
        $stop; //// $stop : �ùķ��̼��� ���ߴ� �Լ�
    end    
endmodule


module comparator(
    input A, B,
    output equal, greater, less
);
    assign equal = A ~^ B;
    assign greater = A & ~B;
    assign less = ~A & B; /// assign�� ������, �������ڸ� ���� ������ �𵨸��̶� �� ���̰� ����.
    
endmodule
