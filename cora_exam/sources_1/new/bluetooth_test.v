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
                                    
//parameter T = 15'd10414; //??1bit���?????9600������                          

////????9600������
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

////?���?����?ʾۯ�������??�������???����?����
//wire collect;
//assign collect = (cnt ==  15'd5208) ? 1'b1 : 1'b0; 

////����?����?����˽��
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

////??��˽��
//wire nege_edge;
//assign nege_edge= down[1]& ~down[0];

////UART??
//reg	[3:0]num;
//reg rx_on;//����?????1   
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

////��?��
//reg	[7:0]rx_data_temp_r;//?��?�����������
//reg	[7:0]rx_data_r;//��??��?��
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

////?��???��
//assign dx_data = rx_data_r;

////����ު0?��?flag=1
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
    input clk,         // Ŭ�� �Է�
    input reset_p,     // ���� ��ȣ �Է�
    input RX,          // ����������� ���ŵ� ������ �Է�
//    output reg emcy_LED,  // ��� LED ���
    output [7:0] dx_data  // ������ ���
);
                                    
parameter T = 15'd10414; // 9600 ���巹��Ʈ�� ���� ���� 1��Ʈ�� �ʿ��� ī��Ʈ ��

// 9600 ���巹��Ʈ�� ���� ī��Ʈ �� ���
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

// ������ ���ø��� ���� ī��Ʈ ���� �߰� ��ġ�� ����
wire collect;
assign collect = (cnt == 15'd5208) ? 1'b1 : 1'b0; 

// ������ ���� �� �ϰ� ���� ����
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

// �ϰ� ���� ����
wire nege_edge;
assign nege_edge = down[1] & ~down[0];

// UART �������� ���� ��ȣ ó��
reg [3:0] num;
reg rx_on; // ������ ���� ���� ���¸� ��Ÿ���� ��ȣ
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

// ������ ����
reg [7:0] rx_data_temp_r;  // ���� ������ ���� ��������
reg [7:0] rx_data_r;       // ������ �� ��������
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

// �����͸� ��¿� ����
assign dx_data = rx_data_r;

reg emcy_LED;
// ��� ���� ��ȣ ����
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
    input clk,       // 125MHz �ý��� Ŭ��
    input reset_p,   // ���� ��ȣ
    input RX,        // ����������� ���ŵ� ������ �Է�
    output emcy_LED, // ��� LED ���
    output reg [3:0] LED_bar // LED �� ���
);

// ������� ��� �ν��Ͻ�ȭ
bluetooth bt (
    .clk(clk),
    .reset_p(reset_p),
    .RX(RX),
    .emcy_LED(emcy_LED),
    .dx_data(dx_data)
);

//reg [1:0] dx_data; // ������� ��⿡�� ������ ������

// LED �� ǥ�� ����
always @(posedge clk or posedge reset_p) begin
    if (reset_p) begin
        LED_bar <= 4'b0000;
    end else begin
        case(dx_data)
            2'b00: LED_bar <= 4'b0001; // ���� 0�� �� LED_bar[0] �ѱ�
            2'b01: LED_bar <= 4'b0010; // ���� 1�� �� LED_bar[1] �ѱ�
            2'b10: LED_bar <= 4'b0100; // ���� 2�� �� LED_bar[2] �ѱ�
            2'b11: LED_bar <= 4'b1000; // ���� 3�� �� LED_bar[3] �ѱ�
            default: LED_bar <= 4'b0000; // �� ���� ��� ��� ����
        endcase
    end
end

endmodule
