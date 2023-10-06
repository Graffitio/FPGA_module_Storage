`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/12 09:26:25
// Design Name: 
// Module Name: tb_DHT11
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


module tb_DHT11();

    reg clk, reset_p;
    tri1 dht11_data; // tri1 : Ǯ���޸� ���̶� �����ϸ� �ȴ�.(z�ָ� 1)(�ùķ��̼ǿ����� ���� ������Ÿ��), ȸ�θ��� ���� �� wire
    wire [7:0] humidity, temperature;

    // �׽�Ʈ��ġ�� �½��� ������ ������ �ϸ� �ùķ��̼ǵȴ�.
    DHT11 DUT(clk, reset_p, dht11_data, humidity, temperature, LED_bar); // ������� �ۼ��ϸ� ���� .clk(clk) �̷��� �� ���൵ �ȴ�.

    // �Ҽ��δ� 0���� �ΰ� �����θ� ����� ���̴�.
    parameter [7:0] humi_value = 8'd80;
    parameter [7:0] temp_value = 8'd25;
    parameter [7:0] check_sum = humi_value + temp_value;
    parameter [39:0] data = {humi_value, {8{1'b0}}, temp_value, {8{1'b0}}, check_sum}; // {8{1'b0}} : 0�� 8����� �ǹ�. ��ȣ�� �ݺ�������

    reg dout, wr;
    assign dht11_data = wr ? dout : 1'bz; // ����� ���� dout, �Է��� ���� z

    initial begin
        clk = 0;
        reset_p = 1;
        wr = 0;
    end

    always #4 clk = ~clk; // 8ns¥�� clk

    initial begin
        #8;
        reset_p = 0; #8;

        // start bit ����
        wait(!dht11_data); // dht11_data = 0�� �� ������ ��ٸ���.
        wait(dht11_data);
        
        // response signal
        #20000; // 20ms ����
        dout = 0; wr = 1; #80000;
        dout = 1; wr = 1; #80000;

        // Data Transmit
        for(integer i = 0 ; i < 40 ; i = i+1) begin
            dout = 0; #50000; // Low ���� �ְ� Pedge���� �� Nedge ���� �������� �ð��� �����Ͽ� ������ �Ǵ�
            if(data[39-i]) begin // �ֻ�����Ʈ���� �ϳ���
                dout = 1; #70000;
            end
            else begin
                dout = 1; #27000;
            end
        end
        dout = 0; wr = 0; #10000;
        $stop;
    end
endmodule
