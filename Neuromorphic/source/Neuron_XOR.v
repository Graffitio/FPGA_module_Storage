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


module IFm( // XOR ������ ���� ����
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


module net( // ���� ��Ʈ��ũ�� ����
    input clk,
    input a1, a2, a3,
    input signed [7:0] w1, w2, w3, w4, w5, w6, bias1, bias2, bias3,
    output out1, out2, out3
);

    IFm n1(.clk(clk), .a1(a1), .a2(a2), .q1(w1), .q2(w2), .bias(bias1), .out(out1) );
    IFm n2(.clk(clk), .a1(a1), .a2(a2), .q1(w3), .q2(w4), .bias(bias2), .out(out2) );
    IFm n3(.clk(clk), .a1(out1), .a2(out2), .q1(w5), .q2(w6), .bias(bias3), .out(out3) );

endmodule


module Neuron_sigmoid_exp( // e^x�� ����ϹǷ� exp �Լ� ��� �Ұ�
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);

    reg weighted_sum;

    always @(*) begin // �Է°� ����ġ�� ���Ͽ� ������ ���
        weighted_sum = in1 * weight1 + in2 * weight2;
    end
    
    always @ (posedge clk) begin // �ñ׸��̵� �Լ��� ����Ͽ� ��� ���
        out <= 1 / (1+ exp(-weighted_sum - bias));
    end
endmodule

module Neuron_sigmoid_app(
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);
    reg signed [7:0] weighted_sum;
    reg [7:0] lookup_table [255:0]; // 8bit �Է¿� ���� lookup table
    reg [7:0] i = 0;
    
    // Lookup-Table �ʱ�ȭ(���� ������ �̸� ����ؾ� �Ѵ�.)
    initial begin
        for(i = 0 ; i < 256 ; i = i+1) begin
            if (i>=128)
                lookup_table[i] = 255 - (1 / (1 + $exp(-((i-128) - bias)))); // 1���� �ش� �� ����
            else
                lookup_table[i] = 1 / (1 + $exp(-(i-bias))); // Lookup-Table �� ���
        end
    end
    
    always @ (*) begin
        weighted_sum = in1 * weight1 + in2 * weight2;
    end
    
    always @ (posedge clk) begin
        if(weighted_sum >= 0)
            out <= lookup_table[weighted_sum[7:0]]; // Lookup-Table���� ���� ã�� ���
        else
            out <= lookup_table[-weighted_sum[7:0]]; // 1���� �ش� �� ����
    end
endmodule


module Neuron_sigmoid_piece_app(
    input clk, in1, in2, weight1, weight2, bias,
    output reg out
);
    reg signed [7:0] weighted_sum;
    reg [7:0] approx_values [256:0]; // 8bit �Է¿� ���� �ٻ簪
    reg [7:0] i; // ���� i�� reg�� ����
    
    // Piecewise Linear Approximation�� ���� ����� y-���� ���
    localparam [7:0] m = 64; // ����
    localparam [7:0] b = 32; // y-����
    
    // �ٻ簪 ���
    initial begin
        for (i = 0; i <= 256; i = i + 1) begin // ���� i ���
            approx_values[i] = (i * m) + b - bias;
        end
    end
    
    always @ (*) begin
        weighted_sum = in1 * weight1 + in2 * weight2 + bias; // bias ����
    end
    
    always @ (posedge clk) begin
        if(weighted_sum >= 0)
            out <= approx_values[weighted_sum[7:0]]; // �ٻ簪 ���
        else
            out <= approx_values[-weighted_sum[7:0]]; // 1���� �ش� �� ����
    end
endmodule