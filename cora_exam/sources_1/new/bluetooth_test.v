`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 00:06:48
// Design Name: 
// Module Name: bluetooth_test
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


//module bluetooth(clk,reset_p,RX,emcy_LED,dx_data);      
//input clk;
//input reset_p;
//input RX;

//output reg emcy_LED;
//output [7:0] dx_data;
                                    
//parameter T = 15'd10414; //??1bit所需?????9600波特率                          

////????9600波特率
//reg start;
//reg [14:0]cnt;
//always @(posedge clk or posedge reset_p)
//begin
//   if(reset_p) 
//      cnt <= 15'd0;
//   else if(cnt == T) 
//      cnt <= 15'd0;
//   else if(start) 
//      cnt <= cnt + 1'b1;
//   else 
//      cnt <= 1'b0;
//end

////?采集?据的?刻放在波特率??器每次循???的中?位置
//wire collect;
//assign collect = (cnt ==  15'd5208) ? 1'b1 : 1'b0; 

////得到?据便?生下降沿
//reg	[1:0] down;
//always @(posedge clk or	posedge	reset_p)
//begin
//    if(reset_p)	
//        down <= 2'b11;
//    else	
//    begin
//        down[0]<=RX;
//        down[1]<=down[0];
//    end
//end

////??下降沿
//wire nege_edge;
//assign nege_edge= down[1]& ~down[0];

////UART??
//reg	[3:0]num;
//reg rx_on;//接收字?????1   
//always @(posedge clk or posedge reset_p)
//begin
//    if(reset_p)	
//    begin	
//        start <= 1'b0;	
//        rx_on <= 1'b0;
//    end
//    else if(nege_edge)
//    begin
//        start <= 1'b1;
//        rx_on <= 1'b1;
//    end
//    else if(num == 4'd10)
//    begin
//        start <= 1'b0;	
//        rx_on <= 1'b0;
//    end
//end

////存?据
//reg	[7:0]rx_data_temp_r;//?前?据接收寄存器
//reg	[7:0]rx_data_r;//用??存?据
//always @(posedge clk or posedge reset_p)
//begin
//    if(reset_p)	
//    begin	
//        rx_data_r<= 8'd0;
//        rx_data_temp_r<= 8'd0;
//        num <= 4'd0;
//    end
//    else if(rx_on) 
//    begin
//        if(collect) 
//        begin
//            num <= num + 1'b1;
//            case(num)
//                4'd1: rx_data_temp_r[0] <= RX;
//                4'd2: rx_data_temp_r[1] <= RX;	
//                4'd3: rx_data_temp_r[2] <= RX;	
//                4'd4: rx_data_temp_r[3] <= RX;	
//                4'd5: rx_data_temp_r[4] <= RX;
//                4'd6: rx_data_temp_r[5] <= RX;	
//                4'd7: rx_data_temp_r[6] <= RX;	
//                4'd8: rx_data_temp_r[7] <= RX;	
//                default: ;
//            endcase
//        end
//        else if(num == 4'd10)
//        begin
//            rx_data_r <= rx_data_temp_r;
//            num <= 4'd0;
//        end
//    end
//end

////?据???出
//assign dx_data = rx_data_r;

////接受非0?据?flag=1
//always @ (*)
//begin
//   if(dx_data!=8'b0011_0000&&dx_data!=8'b0)
//   begin
//       emcy_LED<=1;
//   end
//   else
//   begin
//       emcy_LED<=0;
//   end
//end    

//endmodule

module bluetooth(
    input clk,         // 클럭 입력
    input reset_p,     // 리셋 신호 입력
    input RX,          // 블루투스에서 수신된 데이터 입력
//    output reg emcy_LED,  // 비상 LED 출력
    output [7:0] dx_data  // 데이터 출력
);
                                    
parameter T = 15'd10414; // 9600 보드레이트에 대한 전송 1비트에 필요한 카운트 값

// 9600 보드레이트에 대한 카운트 값 계산
reg start;
reg [14:0] cnt;
always @(posedge clk or posedge reset_p)
begin
   if(reset_p) 
      cnt <= 15'd0;
   else if(cnt == T) 
      cnt <= 15'd0;
   else if(start) 
      cnt <= cnt + 1'b1;
   else 
      cnt <= 1'b0;
end

// 데이터 샘플링을 위해 카운트 값을 중간 위치로 설정
wire collect;
assign collect = (cnt == 15'd5208) ? 1'b1 : 1'b0; 

// 데이터 수신 시 하강 에지 생성
reg [1:0] down;
always @(posedge clk or posedge reset_p)
begin
    if(reset_p)	
        down <= 2'b11;
    else	
    begin
        down[0] <= RX;
        down[1] <= down[0];
    end
end

// 하강 에지 검출
wire nege_edge;
assign nege_edge = down[1] & ~down[0];

// UART 프로토콜 관련 신호 처리
reg [3:0] num;
reg rx_on; // 데이터 수신 중인 상태를 나타내는 신호
always @(posedge clk or posedge reset_p)
begin
    if(reset_p)	
    begin	
        start <= 1'b0;	
        rx_on <= 1'b0;
    end
    else if(nege_edge)
    begin
        start <= 1'b1;
        rx_on <= 1'b1;
    end
    else if(num == 4'd10)
    begin
        start <= 1'b0;	
        rx_on <= 1'b0;
    end
end

// 데이터 저장
reg [7:0] rx_data_temp_r;  // 현재 데이터 수신 레지스터
reg [7:0] rx_data_r;       // 데이터 락 레지스터
always @(posedge clk or posedge reset_p)
begin
    if(reset_p)	
    begin	
        rx_data_r <= 8'd0;
        rx_data_temp_r <= 8'd0;
        num <= 4'd0;
    end
    else if(rx_on) 
    begin
        if(collect) 
        begin
            num <= num + 1'b1;
            case(num)
                4'd1: rx_data_temp_r[0] <= RX;
                4'd2: rx_data_temp_r[1] <= RX;	
                4'd3: rx_data_temp_r[2] <= RX;	
                4'd4: rx_data_temp_r[3] <= RX;	
                4'd5: rx_data_temp_r[4] <= RX;
                4'd6: rx_data_temp_r[5] <= RX;	
                4'd7: rx_data_temp_r[6] <= RX;	
                4'd8: rx_data_temp_r[7] <= RX;	
                default: ;
            endcase
        end
        else if(num == 4'd10)
        begin
            rx_data_r <= rx_data_temp_r;
            num <= 4'd0;
        end
    end
end

// 데이터를 출력에 전달
assign dx_data = rx_data_r;

reg emcy_LED;
// 비상 상태 신호 설정
always @ (*)
begin
   if(dx_data != 8'b0011_0000 && dx_data != 8'b0)
   begin
       emcy_LED <= 1;
   end
   else
   begin
       emcy_LED <= 0;
   end
end    

endmodule



module top(
    input clk,       // 125MHz 시스템 클럭
    input reset_p,   // 리셋 신호
    input RX,        // 블루투스에서 수신된 데이터 입력
    output emcy_LED, // 비상 LED 출력
    output reg [3:0] LED_bar // LED 바 출력
);

// 블루투스 모듈 인스턴스화
bluetooth bt (
    .clk(clk),
    .reset_p(reset_p),
    .RX(RX),
    .emcy_LED(emcy_LED),
    .dx_data(dx_data)
);

//reg [1:0] dx_data; // 블루투스 모듈에서 수신한 데이터

// LED 바 표시 로직
always @(posedge clk or posedge reset_p) begin
    if (reset_p) begin
        LED_bar <= 4'b0000;
    end else begin
        case(dx_data)
            2'b00: LED_bar <= 4'b0001; // 숫자 0일 때 LED_bar[0] 켜기
            2'b01: LED_bar <= 4'b0010; // 숫자 1일 때 LED_bar[1] 켜기
            2'b10: LED_bar <= 4'b0100; // 숫자 2일 때 LED_bar[2] 켜기
            2'b11: LED_bar <= 4'b1000; // 숫자 3일 때 LED_bar[3] 켜기
            default: LED_bar <= 4'b0000; // 그 외의 경우 모두 끄기
        endcase
    end
end

endmodule
