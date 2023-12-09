`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/16 09:24:02
// Design Name: 
// Module Name: Calculator_Top
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


module Calculator_Top(
    input clk, reset_p,
    input [3:0] row,
    output [3:0] col,
    output [3:0] com,
    output [7:0] seg_7
    );
    
    wire [3:0] key_value;
    wire key_valid;
    key_pad_cntr key_pad(.clk(clk), .reset_p(reset_p), .row(row), .col(col), .key_value(key_value), .key_valid(key_valid));
    
    wire [7:0] outreg_data;
    wire [3:0] kout;
    
    processor cpu(.clk(clk), .reset_p(reset_p), .key_value(key_value), .key_valid(key_valid), .outreg_data(outreg_data), .kout(kout));
    // kout : key�� �Էµ� ���� ���(���μ����� Ű ���� ����� �޴� �� Ȯ���ϱ� ���� ��)
    
    wire [15:0] bcd;
    // 12bit binary�� �޾Ƽ� 16bit decimal�� ��ȯ
    bin_to_dec bin2dec(.bin({4'b0000, outreg_data}), .bcd(bcd));
    // �ø����� �ϳ��� ���͵� 4�ڸ� �� �о�� �ؼ� bcd vector : 16
    
    wire [15:0] value;
    assign value = {kout, 4'h1, bcd[7:0]}; // bcd �� ���� 8�ڸ��� �� ����(�ִ��� 9x9 = 81�̹Ƿ� 7bit�� ����Ϥ���.)
    FND_4digit_cntr_cal fnd(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));
    
endmodule




module FND_4digit_cntr_cal( //// ring counter top module ���� ---- 16bit�� ���� �޾Ƽ� 1ms �������� �� �ڸ��� ���ش�.
    input clk, rst,
    input [15:0] value, //// 4�ڸ��ϱ� 16bit
    output [3:0] com,
    output [7:0] seg_7
);
    reg [16:0] clk_1ms;//// 8ns * 2^17 = 1,048,576ns = 1048�� = 1.048ms
    always @(posedge clk) clk_1ms = clk_1ms + 1 ;
    
    ring_count_fnd ring1(.clk(clk_1ms[16]), .com(com)); //// 1ms posedge���� �½���Ʈ
                                                                   //// 1ms ���� CT ����� LED�� �����Ѵ�.
                                                                   
    wire [7:0] seg_7_font;
    reg [3:0] hex_value;
    decoder_7seg_cal ring_seg_7(.hex_value(hex_value), .seg_7(seg_7_font));
    assign seg_7 = ~seg_7_font;
    
    always @(negedge clk) begin //// ī������ posedge�� ������, ��ġ�� �ʰ� negedge
        case(com)
            4'b1110 : hex_value = value[15:12]; //// CT1�� �ش��ϴ� hex_value�� value[15:12]
            4'b1101 : hex_value = value[11:8];
            4'b1011 : hex_value = value[7:4];
            4'b0111 : hex_value = value[3:0];
        endcase  //// edge triggering�� default���� ���� ���� �����ص� FF�� ��������� �������.           
    end
endmodule


module decoder_7seg_cal( ////7_seg�� ��Ʈ��ȯ��
    input [3:0] hex_value,
    output reg [7:0] seg_7
);    
    always @(hex_value) begin
        case(hex_value)
            4'b0000 : seg_7 = 8'b0000_0011;   //// a�� �ֻ��� ��Ʈ�� ����.
            4'b0001 : seg_7 = 8'b1001_1111;   
            4'b0010 : seg_7 = 8'b0010_0101;
            4'b0011 : seg_7 = 8'b0000_1101;
            4'b0100 : seg_7 = 8'b1001_1001;
            4'b0101 : seg_7 = 8'b0100_1001;
            4'b0110 : seg_7 = 8'b0100_0001;
            4'b0111 : seg_7 = 8'b0001_1111;
            4'b1000 : seg_7 = 8'b0000_0001;
            4'b1001 : seg_7 = 8'b0000_1001;   /// 0~9
            
            4'b1010 : seg_7 = 8'b0001_0001;   //// A~F
            4'b1011 : seg_7 = 8'b1111_1101; // B�� (-) �̹Ƿ� -�� ��µǵ��� ����
            4'b1100 : seg_7 = 8'b0110_0011;
            4'b1101 : seg_7 = 8'b1000_0101;
            4'b1110 : seg_7 = 8'b0110_0001;
            4'b1111 : seg_7 = 8'b1110_1101; // F : (=) �̹Ƿ� ������ ���� ����
        endcase //// 0~F���� ��� �ڵ�
    end /// end ���� ���ִ� ������ ������.
endmodule