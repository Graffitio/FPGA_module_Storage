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
    
//    reg clk;         // 클럭 입력
//    reg reset_p;     // 리셋 신호 입력
//    reg RX;          // 블루투스에서 수신된 데이터 입력
//    wire [7:0] dx_data;  // 데이터 출력


//    bluetooth_rx DUT(clk, reset_p, RX, dx_data);
    
//    initial begin
//        clk = 0;
//        reset_p = 1;
//        RX = 1;
//    end
    
//    always #4 clk = ~clk; // 8ns짜리 clk
    
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

  // 블루투스 RX 신호 생성
  reg [7:0] data_sequence [0:4];
  integer i;

  always begin
    #8 RX = 0; // RX 하강 에지
    #8 RX = 1; // RX 상승 에지

    for (i = 0; i < 5; i = i + 1) begin
      #16 RX = 0; // RX 하강 에지
      #8 RX = 1; // RX 상승 에지
    end
  end

  // Bluetooth RX 모듈 인스턴스화
  bluetooth_rx uut (
    .clk(clk),
    .reset_p(reset_p),
    .RX(RX),
    .dx_data(dx_data)
  );

  // 테스트 시작
  initial begin
    // 클럭 초기화
    clk = 0;
    reset_p = 1;
    RX = 1;
    #8 reset_p = 0;

    // 데이터 시퀀스 설정
    data_sequence[0] = 8'h30;
    data_sequence[1] = 8'h31;
    data_sequence[2] = 8'h32;
    data_sequence[3] = 8'h33;
    data_sequence[4] = 8'h34;

    // 데이터 전송
    for (i = 0; i < 5; i = i + 1) begin
      #100 RX = 0; // 데이터 전송 시작 (하강 에지)
      #10 RX = 1; // 데이터 전송 (상승 에지)
      RX = data_sequence[i];
    end

    // 시뮬레이션 종료
    $finish;
  end

  // 클럭 생성
  always begin
    #4 clk = ~clk;
  end

endmodule



