`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 10:54:59
// Design Name: 
// Module Name: tb_fan_bluetooth_top
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


//module tb_fan_bluetooth_top();
    
//    reg clk;         // Ŭ�� �Է�
//    reg reset_p;     // ���� ��ȣ �Է�
//    reg RX;          // ����������� ���ŵ� ������ �Է�
//    wire [7:0] dx_data;  // ������ ���


//    bluetooth_rx DUT(clk, reset_p, RX, dx_data);
    
//    initial begin
//        clk = 0;
//        reset_p = 1;
//        RX = 1;
//    end
    
//    always #4 clk = ~clk; // 8ns¥�� clk
    
//    initial begin
//        #8;
//        reset_p = 0; #8;
        
//        RX = 0; #8;
////        RX = 8'h30; #100;
////        RX = 8'h31; #100;
////        RX = 8'h32; #100;
////        RX = 8'h33; #100;
////        RX = 8'h34; #100;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//         #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//                 #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;         
//                         #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//                 #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b1; #8;
//        RX = 1'b0; #8;
//        RX = 1'b0; #8;
//                 #8;
//        #8; #8; #8; #8; #8; #8;                
        
//        $stop;
////        RX = 2'b00; #8;
////        RX = 2'b00; #8;
////        RX = 2'b00; #8;
////        RX = 2'b00; #8;
////        RX = 2'b00; #8;
        
//    end
        
    
//endmodule


module tb_bluetooth_rx;

  reg clk;
  reg reset_p;
  reg RX;
  wire [7:0] dx_data;
  wire [5:0] blue_btn_l;

  // ������� RX ��ȣ ����
  reg [7:0] data_sequence [0:4];
  integer i;

  always begin
    #8 RX = 0; // RX �ϰ� ����
    #8 RX = 1; // RX ��� ����

    for (i = 0; i < 5; i = i + 1) begin
      #16 RX = 0; // RX �ϰ� ����
      #8 RX = 1; // RX ��� ����
    end
  end

  // Bluetooth RX ��� �ν��Ͻ�ȭ
  bluetooth_rx uut (
    .clk(clk),
    .reset_p(reset_p),
    .RX(RX),
    .dx_data(dx_data)
  );

  // �׽�Ʈ ����
  initial begin
    // Ŭ�� �ʱ�ȭ
    clk = 0;
    reset_p = 1;
    RX = 1;
    #8 reset_p = 0;

    // ������ ������ ����
    data_sequence[0] = 8'h30;
    data_sequence[1] = 8'h31;
    data_sequence[2] = 8'h32;
    data_sequence[3] = 8'h33;
    data_sequence[4] = 8'h34;

    // ������ ����
    for (i = 0; i < 5; i = i + 1) begin
      #100 RX = 0; // ������ ���� ���� (�ϰ� ����)
      #10 RX = 1; // ������ ���� (��� ����)
      RX = data_sequence[i];
    end

    // �ùķ��̼� ����
    $finish;
  end

  // Ŭ�� ����
  always begin
    #4 clk = ~clk;
  end

endmodule



