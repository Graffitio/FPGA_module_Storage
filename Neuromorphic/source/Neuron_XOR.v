`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/28 08:51:39
// Design Name: 
// Module Name: Neuron_XOR
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


module Neuron( // 2 input neuron
    input clk,
    input signed [7:0] a1, a2,
    input signed [7:0] q1, q2,
    output reg out = 0,
    output reg signed [15:0] Vp = 0
    );

    parameter leak = 16'd1;
    parameter signed vth = 16'd20;
    parameter signed reset = 16'd0;
    
    always @ (posedge clk) begin
        Vp = Vp + (a1 * q2) + (a2 * q2);
        if (Vp > 0)
             Vp = Vp - leak;
        if (Vp > vth) begin
            out = 1;
            Vp = reset;
        end
        else if (Vp <= vth) begin
            out = 0;
        end
    end
    
endmodule


module IFm( // XOR 동작을 위한 뉴런
    input clk,
    input a1, a2,
    input signed [7:0] q1, q2, bias,
    output reg out = 0,
    output reg signed [7:0] Vp = 0
);

    parameter signed vth = 8'b0000000;
    parameter signed reset = 8'b00000000;
    
    always @ (posedge clk) begin
        Vp = Vp + ((a1 == 1) ? q1 : 0) + ((a2 == 1) ? q2 : 0) + bias;
        if (Vp > vth) begin
            out = 1;
            Vp = reset;
        end
        else if (Vp <= vth) begin
            out = 0;
            Vp = reset;
        end
    end
endmodule


module net( // 뉴럴 네트워크의 구성
    input clk,
    input a1, a2, a3,
    input signed [7:0] w1, w2, w3, w4, w5, w6, bias1, bias2, bias3,
    output out1, out2, out3
);

    IFm n1(.clk(clk), .a1(a1), .a2(a2), .q1(w1), .q2(w2), .bias(bias1), .out(out1) );
    IFm n2(.clk(clk), .a1(a1), .a2(a2), .q1(w3), .q2(w4), .bias(bias2), .out(out2) );
    IFm n3(.clk(clk), .a1(out1), .a2(out2), .q1(w5), .q2(w6), .bias(bias3), .out(out3) );

endmodule


module Neuron_sigmoid_exp( // e^x를 사용하므로 exp 함수 사용 불가
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);

    reg weighted_sum;

    always @(*) begin // 입력과 가중치를 곱하여 가중합 계산
        weighted_sum = in1 * weight1 + in2 * weight2;
    end
    
    always @ (posedge clk) begin // 시그모이드 함수를 사용하여 출력 계산
        out <= 1 / (1+ exp(-weighted_sum - bias));
    end
endmodule

module Neuron_sigmoid_app(
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);
    reg signed [7:0] weighted_sum;
    reg [7:0] lookup_table [255:0]; // 8bit 입력에 대한 lookup table
    reg [7:0] i = 0;
    
    // Lookup-Table 초기화(실제 값들은 미리 계산해야 한다.)
    initial begin
        for(i = 0 ; i < 256 ; i = i+1) begin
            if (i>=128)
                lookup_table[i] = 255 - (1 / (1 + $exp(-((i-128) - bias)))); // 1에서 해당 값 빼기
            else
                lookup_table[i] = 1 / (1 + $exp(-(i-bias))); // Lookup-Table 값 계산
        end
    end
    
    always @ (*) begin
        weighted_sum = in1 * weight1 + in2 * weight2;
    end
    
    always @ (posedge clk) begin
        if(weighted_sum >= 0)
            out <= lookup_table[weighted_sum[7:0]]; // Lookup-Table에서 값을 찾아 출력
        else
            out <= lookup_table[-weighted_sum[7:0]]; // 1에서 해당 값 뺴기
    end
endmodule


module Neuron_sigmoid_piece_app(
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);
    reg signed [7:0] weighted_sum;
    reg [7:0] approx_values [256:0]; // 8bit 입력에 대한 근사값
    reg [7:0] i; // 변수 i를 reg로 선언
    
    // Piecewise Linear Approximation을 위한 기울기와 y-절편 계산
    localparam [7:0] m = 64; // 기울기
    localparam [7:0] b = 32; // y-절편
    
    // 근사값 계산
    initial begin
        for (i = 0; i <= 256; i = i + 1) begin // 변수 i 사용
            approx_values[i] = (i * m) + b - bias;
        end
    end
    
    always @ (*) begin
        weighted_sum = in1 * weight1 + in2 * weight2 + bias; // bias 연결
    end
    
    always @ (posedge clk) begin
        if(weighted_sum >= 0)
            out <= approx_values[weighted_sum[7:0]]; // 근사값 출력
        else
            out <= approx_values[-weighted_sum[7:0]]; // 1에서 해당 값 뺴기
    end
endmodule