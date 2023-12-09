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
    input clk,         // Ŭ�� �Է�
    input reset_p,     // ���� ��ȣ �Է�
    input RX,          // ����������� ���ŵ� ������ �Է�
    output [7:0] dx_data,  // ������ ���
    output reg start
);
    // 9600 bps : 1sec�� 9600bit ����, 1bit�� 0.0001041667sec(104,166ns)
    // sys clk : 1sec�� 125,000,000bit ���� 1bit�� 8ns                          
//    parameter T = 15'd10414; // 9600 ���巹��Ʈ�� ���� ���� 1��Ʈ�� �ʿ��� ī��Ʈ ��
    parameter BAUDRATE = 15'd10417; // 9600 BAUDRATE�� ���� ���� 1��Ʈ�� �ʿ��� ī��Ʈ ��
//    parameter BAUDRATE = 15'd1628; // 9600 BAUDRATE�� ���� ���� 1��Ʈ�� �ʿ��� ī��Ʈ ��
    
//    reg [7:0] clk_div;
//    always @(posedge clk) clk_div = clk_div + 1;

    // 9600 BAUDRATE �� ���� ī��Ʈ �� ���
    // reg start;
    reg [14:0] cnt;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt <= 15'd0;
        else if(cnt == BAUDRATE) cnt <= 15'd0;
        else if(start) cnt <= cnt + 1'b1;
        else cnt <= 1'b0;
    end

    // ������ ���ø��� ���� ī��Ʈ ���� �߰� ��ġ�� ����(����� ��Ȯ���� ���̱� ���� ����)
    wire collect;
    assign collect = (cnt == 15'd814) ? 1'b1 : 1'b0;

    // ������ ���� �� �ϰ� ���� ����(����� ���۵ƴٴ� �ǹ�)
    reg [1:0] start_bit;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	
            start_bit <= 2'b11;
        else begin
            start_bit[0] <= RX; // ������� ��ġ���� ����� �����ϸ� ù bit�� Low�� �ְ� RX�� �ް� �ȴ�.
            start_bit[1] <= start_bit[0];
        end
    end

    // �ϰ� ���� ����
    wire neg_edge;
    assign neg_edge = start_bit[1] & ~start_bit[0]; // start_bit[0] = 0, start_bit[1] = 1�̸�, �ϰ����� ����
    
    // UART �������� ���� ��ȣ ó��
    reg [3:0] num;
    reg rx_on; // ������ ���� ���� ���¸� ��Ÿ���� ��ȣ
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin	
            start <= 1'b0;	
            rx_on <= 1'b0;
        end
        else if(neg_edge) begin // �ϰ����� ����Ǹ�, ����� ���۵Ǿ��ٴ� �ǹ�.
            start <= 1'b1; // ������ ��� ����
            rx_on <= 1'b1; // ���� ���� ��
        end
        else if(num == 4'd10) begin // ��� ����
            start <= 1'b0;	
            rx_on <= 1'b0;
        end
    end

    // ������ ����
    reg [7:0] rx_data_temp_r;  // ���� ������ ���� ��������
    reg [7:0] rx_data_r;       // ������ �� ��������
    
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

    // �����͸� ��¿� ����
    assign dx_data = rx_data_r;

endmodule


module Car_bluetooth_top(
  input clk,           // Ŭ�� ��ȣ
  input reset_p,         // ���� ��ȣ
  input RX,     // UART ���� �� (Bluetooth ��⿡�� ������ ����)
//  output TX,    // UART �۽� �� (Bluetooth ���� ������ �۽�)
  output [6:0] blue_btn_l
//  output [7:0] rx_data
//  output [3:0] com,
//  output [7:0] seg_7,
//  output reg [6:0] test_led
);

//  wire Rx_DataValid;        // UART ���� ������ ��ȿ ����
  wire [6:0] Rx_Byte;       // UART ���� ������
  
//  wire Tx_Active;           // UART �۽� ���� Ȱ��ȭ ����
//  wire Tx_Done;             // UART �۽� �Ϸ� ����
//  wire [7:0] Tx_Byte;       // UART �۽� ������

//  // UART_RX ��� �ν��Ͻ�ȭ
//  UART_RX #(.CLKS_PER_BIT(13021)) rx_inst (
//    .reset_p(reset_p),
//    .clk(clk),
//    .Rx_Serial(RX),
//    .Rx_DataValid(Rx_DataValid),
//    .Rx_Byte(Rx_Byte)
//  );
  
  bluetooth_rx uart(
    .clk(clk),         // Ŭ�� �Է�
    .reset_p(reset_p),     // ���� ��ȣ �Է�
    .RX(RX),          // ����������� ���ŵ� ������ �Է�
    .dx_data(Rx_Byte),  // ������ ���
    .start(start)
);
    edge_detector_n edg(.clk(clk), .cp_in(start), .rst(reset_p), .n_edge(start_nedge));
//    reg [6:0] blue_btn_l;
    // ���� : ��������� �� �� �Է��� �ϸ�, �� �Է��� ��� ��� �� �ִ� �����̴�.
    // ���� 0���� �ʱ�ȭ�� �����൵ �ٽ� �� �Է��� ����Ǿ����.
    // �׷��� �Է��� �ʱ�ȭ�ϴ� ����� ���뺸�� ���� ���� ���̴�.
    
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
    parameter BAUDRATE = 15'd13021; // 9600 BAUDRATE�� ���� 1��Ʈ ���ۿ� �ʿ��� ī��Ʈ ��

    // 9600 BAUDRATE�� ���� ī��Ʈ �� ���
    reg start;
    reg [14:0] cnt;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) cnt <= 15'd0;
        else if(cnt == BAUDRATE) cnt <= 15'd0; // 1��Ʈ ���۵Ǹ�, �ٽ� ī��Ʈ 0����
        else if(start) cnt <= cnt + 1'b1; // ������ ���۵Ǹ� ī��Ʈ ����
        else cnt <= 1'b0; // ���� ���� �ƴϸ�, ī���ʹ� 0���� ���
    end

    // ������ ���ø��� ���� ī��Ʈ ���� �߰� ��ġ�� ����(����� ��Ȯ���� ���̱� ���� ����)
    wire collect;
    assign collect = (cnt == 15'd6516) ? 1'b1 : 1'b0;

    // ������ ���� �� �ϰ� ���� ����(����� ���۵ƴٴ� �ǹ�)
    reg [1:0] start_bit;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p)	
            start_bit <= 2'b11;
        else begin
            start_bit[0] <= TX; // ������� ��ġ���� ����� �����ϸ� ù bit�� Low�� �ְ� RX�� �ް� �ȴ�.
            start_bit[1] <= start_bit[0];
        end
    end

    // �ϰ� ���� ����
    wire neg_edge;
    assign neg_edge = start_bit[1] & ~start_bit[0]; // start_bit[0] = 0, start_bit[1] = 1�̸�, �ϰ����� ����

    // UART �������� ���� ��ȣ ó��
    reg [3:0] num;
    reg tx_on; // ������ ���� ���� ���¸� ��Ÿ���� ��ȣ
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin	
            start <= 1'b0;	
            tx_on <= 1'b0;
        end
        else if(neg_edge) begin // �ϰ����� ����Ǹ�, ����� ���۵Ǿ��ٴ� �ǹ�.
            start <= 1'b1; // ������ ��� ����
            tx_on <= 1'b1; // ���� ���� ��
        end
        else if(num == 4'd10) begin // ��� ����
            start <= 1'b0;	
            tx_on <= 1'b0;
        end
    end

    // ������ ����
    reg [7:0] tx_data_temp_t;  // ���� ������ ���� ��������
    reg [7:0] tx_data_t;       // ������ �� ��������
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