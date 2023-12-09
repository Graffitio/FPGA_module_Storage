`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2023/09/25 17:43:10
//// Design Name: 
//// Module Name: fan_bluetooth_top
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module bluetooth_rx(
    input clk,         // 클럭 입력
    input reset_p,     // 리셋 신호 입력
    input RX,          // 블루투스에서 수신된 데이터 입력
    output [7:0] dx_data,  // 데이터 출력
    output reg start
);
    // 9600 bps : 1sec에 9600bit 전송, 1bit에 0.0001041667sec(104,166ns)
    // sys clk : 1sec에 125,000,000bit 전송 1bit에 8ns                          
//    parameter T = 15'd10414; // 9600 보드레이트에 대한 전송 1비트에 필요한 카운트 값
    parameter BAUDRATE = 15'd10417; // 9600 BAUDRATE에 대한 전송 1비트에 필요한 카운트 값
//    parameter BAUDRATE = 15'd1628; // 9600 BAUDRATE에 대한 전송 1비트에 필요한 카운트 값
    
//    reg [7:0] clk_div;
//    always @(posedge clk) clk_div = clk_div + 1;

    // 9600 BAUDRATE 에 대한 카운트 값 계산
    // reg start;
    reg [14:0] cnt;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt <= 15'd0;
        else if(cnt == BAUDRATE) cnt <= 15'd0;
        else if(start) cnt <= cnt + 1'b1;
        else cnt <= 1'b0;
    end

    // 데이터 샘플링을 위해 카운트 값을 중간 위치로 설정(통신의 정확도를 높이기 위한 셋팅)
    wire collect;
    assign collect = (cnt == 15'd814) ? 1'b1 : 1'b0;

    // 데이터 수신 시 하강 에지 생성(통신이 시작됐다는 의미)
    reg [1:0] start_bit;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	
            start_bit <= 2'b11;
        else begin
            start_bit[0] <= RX; // 블루투스 장치에서 통신을 시작하면 첫 bit는 Low로 주고 RX로 받게 된다.
            start_bit[1] <= start_bit[0];
        end
    end

    // 하강 에지 검출
    wire neg_edge;
    assign neg_edge = start_bit[1] & ~start_bit[0]; // start_bit[0] = 0, start_bit[1] = 1이면, 하강엣지 검출
    
    // UART 프로토콜 관련 신호 처리
    reg [3:0] num;
    reg rx_on; // 데이터 수신 중인 상태를 나타내는 신호
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin	
            start <= 1'b0;	
            rx_on <= 1'b0;
        end
        else if(neg_edge) begin // 하강엣지 검출되면, 통신이 시작되었다는 의미.
            start <= 1'b1; // 테이터 통신 시작
            rx_on <= 1'b1; // 수신 상태 중
        end
        else if(num == 4'd10) begin // 통신 종료
            start <= 1'b0;	
            rx_on <= 1'b0;
        end
    end

    // 데이터 저장
    reg [7:0] rx_data_temp_r;  // 현재 데이터 수신 레지스터
    reg [7:0] rx_data_r;       // 데이터 락 레지스터
    
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	begin	
            rx_data_r = 8'd0;
            rx_data_temp_r = 8'd0;
            num = 4'd0;
        end
        else if(rx_on) begin
            if(collect) begin
                num <= num + 1'b1;
                case(num)
                    4'd1: rx_data_temp_r[0] = RX;
                    4'd2: rx_data_temp_r[1] = RX;	
                    4'd3: rx_data_temp_r[2] = RX;	
                    4'd4: rx_data_temp_r[3] = RX;	
                    4'd5: rx_data_temp_r[4] = RX;
                    4'd6: rx_data_temp_r[5] = RX;	
                    4'd7: rx_data_temp_r[6] = RX;	
                    4'd8: rx_data_temp_r[7] = RX;	
                    default: ;
                endcase
            end
            else if(num == 4'd10) begin
                rx_data_r = rx_data_temp_r;
                num <= 4'd0;
            end
        end
    end

    // 데이터를 출력에 전달
    assign dx_data = rx_data_r;

endmodule


module Car_bluetooth_top(
  input clk,           // 클럭 신호
  input reset_p,         // 리셋 신호
  input RX,     // UART 수신 핀 (Bluetooth 모듈에서 데이터 수신)
//  output TX,    // UART 송신 핀 (Bluetooth 모듈로 데이터 송신)
  output [6:0] blue_btn_l
//  output [7:0] rx_data
//  output [3:0] com,
//  output [7:0] seg_7,
//  output reg [6:0] test_led
);

//  wire Rx_DataValid;        // UART 수신 데이터 유효 여부
  wire [6:0] Rx_Byte;       // UART 수신 데이터
  
//  wire Tx_Active;           // UART 송신 동작 활성화 여부
//  wire Tx_Done;             // UART 송신 완료 여부
//  wire [7:0] Tx_Byte;       // UART 송신 데이터

//  // UART_RX 모듈 인스턴스화
//  UART_RX #(.CLKS_PER_BIT(13021)) rx_inst (
//    .reset_p(reset_p),
//    .clk(clk),
//    .Rx_Serial(RX),
//    .Rx_DataValid(Rx_DataValid),
//    .Rx_Byte(Rx_Byte)
//  );
  
  bluetooth_rx uart(
    .clk(clk),         // 클럭 입력
    .reset_p(reset_p),     // 리셋 신호 입력
    .RX(RX),          // 블루투스에서 수신된 데이터 입력
    .dx_data(Rx_Byte),  // 데이터 출력
    .start(start)
);
    edge_detector_n edg(.clk(clk), .cp_in(start), .rst(reset_p), .n_edge(start_nedge));
//    reg [6:0] blue_btn_l;
    // 원인 : 블루투스로 한 번 입력을 하면, 그 입력이 계속 들어 와 있는 상태이다.
    // 따라서 0으로 초기화를 시켜줘도 다시 그 입력이 적용되어버림.
    // 그러면 입력을 초기화하는 방법을 적용보는 것이 좋을 것이다.
    
    reg [6:0] blue_btn_l_reg;
    assign blue_btn_l = blue_btn_l_reg;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            blue_btn_l_reg = 7'b0_000_000;
//            test_led = 0;
        end
        else if(start_nedge) begin
            if(Rx_Byte == 8'd48) blue_btn_l_reg = 7'b0_000_001; // Foward 0 0
            else if(Rx_Byte == 8'd49) blue_btn_l_reg = 7'b0_000_010; // Backward 1 1
            else if(Rx_Byte == 8'd50) blue_btn_l_reg = 7'b0_000_100; // Left 2 2
            else if(Rx_Byte == 8'd51) blue_btn_l_reg = 7'b0_001_000; // Right 3 3
            else if(Rx_Byte == 8'd52) blue_btn_l_reg = 7'b0_010_000; // Stop 4 4
            else if(Rx_Byte == 8'd53) blue_btn_l_reg = 7'b0_100_000; // Manual Mode
            else if(Rx_Byte == 8'd54) blue_btn_l_reg = 7'b1_000_000; // Auto Mode
//            if(Rx_Byte == 8'd48) test_led[0] = 1; // Foward 0 0
//            else if(Rx_Byte == 8'd49) test_led[1] = 1; // Backward 1 1
//            else if(Rx_Byte == 8'd50) test_led[2] = 1; // Left 2 2
//            else if(Rx_Byte == 8'd51) test_led[3] = 1; // Right 3 3
//            else if(Rx_Byte == 8'd52) test_led[4] = 1; // Stop 4 4
//            else if(Rx_Byte == 8'd53) test_led[5] = 1; // Manual Mode
//            else if(Rx_Byte == 8'd54) test_led[6] = 1; // Auto Mode
        end 
        else begin
//            blue_btn_l = 7'b0_000_000;
//            test_led = 0;
        end
    end
//    wire [15:0] Rx_Byte_value;
//    bin_to_dec car_b2d_test(.bin(Rx_Byte), .bcd(Rx_Byte_value));
//    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(Rx_Byte_value), .com(com), .seg_7(seg_7));
endmodule





module bluetooth_tx(
  input clk, reset_p,
  input [7:0] data,
  output reg TX
);

    // 125,000,000 / 9,600 = 13,021 
    parameter BAUDRATE = 15'd13021; // 9600 BAUDRATE에 대한 1비트 전송에 필요한 카운트 값

    // 9600 BAUDRATE에 대한 카운트 값 계산
    reg start;
    reg [14:0] cnt;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt <= 15'd0;
        else if(cnt == BAUDRATE) cnt <= 15'd0; // 1비트 전송되면, 다시 카운트 0으로
        else if(start) cnt <= cnt + 1'b1; // 전송이 시작되면 카운트 시작
        else cnt <= 1'b0; // 전송 중이 아니면, 카운터는 0으로 대기
    end

    // 데이터 샘플링을 위해 카운트 값을 중간 위치로 설정(통신의 정확도를 높이기 위한 셋팅)
    wire collect;
    assign collect = (cnt == 15'd6516) ? 1'b1 : 1'b0;

    // 데이터 수신 시 하강 에지 생성(통신이 시작됐다는 의미)
    reg [1:0] start_bit;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	
            start_bit <= 2'b11;
        else begin
            start_bit[0] <= TX; // 블루투스 장치에서 통신을 시작하면 첫 bit는 Low로 주고 RX로 받게 된다.
            start_bit[1] <= start_bit[0];
        end
    end

    // 하강 에지 검출
    wire neg_edge;
    assign neg_edge = start_bit[1] & ~start_bit[0]; // start_bit[0] = 0, start_bit[1] = 1이면, 하강엣지 검출

    // UART 프로토콜 관련 신호 처리
    reg [3:0] num;
    reg tx_on; // 데이터 수신 중인 상태를 나타내는 신호
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin	
            start <= 1'b0;	
            tx_on <= 1'b0;
        end
        else if(neg_edge) begin // 하강엣지 검출되면, 통신이 시작되었다는 의미.
            start <= 1'b1; // 테이터 통신 시작
            tx_on <= 1'b1; // 수신 상태 중
        end
        else if(num == 4'd10) begin // 통신 종료
            start <= 1'b0;	
            tx_on <= 1'b0;
        end
    end

    // 데이터 저장
    reg [7:0] tx_data_temp_t;  // 현재 데이터 수신 레지스터
    reg [7:0] tx_data_t;       // 데이터 락 레지스터
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	begin	
            tx_data_t <= 8'd0;
            tx_data_temp_t <= 8'd0;
            num <= 4'd0;
        end
        else if(tx_on) begin
            if(collect) begin
                num <= num + 1'b1;
                case(num)
                    4'd1: TX <= data[0];
                    4'd2: TX <= data[1];	
                    4'd3: TX <= data[2];	
                    4'd4: TX <= data[3];	
                    4'd5: TX <= data[4];
                    4'd6: TX <= data[5];	
                    4'd7: TX <= data[6];	
                    4'd8: TX <= data[7];	
                    default: ;
                endcase
            end
            else if(num == 4'd10) begin
                num <= 4'd0;
            end
        end
    end
endmodule