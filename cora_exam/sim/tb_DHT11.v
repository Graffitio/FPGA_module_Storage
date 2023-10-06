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
    tri1 dht11_data; // tri1 : 풀업달린 선이라 생각하면 된다.(z주면 1)(시뮬레이션에서만 쓰는 데이터타입), 회로만들 때는 다 wire
    wire [7:0] humidity, temperature;

    // 테스트벤치가 온습도 센서가 역할을 하면 시뮬레이션된다.
    DHT11 DUT(clk, reset_p, dht11_data, humidity, temperature, LED_bar); // 순서대로 작성하면 굳이 .clk(clk) 이렇게 안 써줘도 된다.

    // 소수부는 0으로 두고 정수부만 사용할 것이다.
    parameter [7:0] humi_value = 8'd80;
    parameter [7:0] temp_value = 8'd25;
    parameter [7:0] check_sum = humi_value + temp_value;
    parameter [39:0] data = {humi_value, {8{1'b0}}, temp_value, {8{1'b0}}, check_sum}; // {8{1'b0}} : 0이 8개라는 의미. 괄호는 반복연산자

    reg dout, wr;
    assign dht11_data = wr ? dout : 1'bz; // 출력일 때는 dout, 입력일 때는 z

    initial begin
        clk = 0;
        reset_p = 1;
        wr = 0;
    end

    always #4 clk = ~clk; // 8ns짜리 clk

    initial begin
        #8;
        reset_p = 0; #8;

        // start bit 수신
        wait(!dht11_data); // dht11_data = 0이 될 때까지 기다린다.
        wait(dht11_data);
        
        // response signal
        #20000; // 20ms 보냄
        dout = 0; wr = 1; #80000;
        dout = 1; wr = 1; #80000;

        // Data Transmit
        for(integer i = 0 ; i < 40 ; i = i+1) begin
            dout = 0; #50000; // Low 먼저 주고 Pedge받은 뒤 Nedge 나올 떄까지의 시간을 측정하여 데이터 판단
            if(data[39-i]) begin // 최상위비트부터 하나씩
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
