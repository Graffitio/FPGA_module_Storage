`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 12:27:19
// Design Name: 
// Module Name: Servo_Motor_Top
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


module Servo_Motor_Top(
    input clk, rstp,
    input [3:0] btn,
    output servo,
    output reg [7:0] LED_bar
    );
    
    wire [2:0] mode;
    button_cntr btn_cntr_mode(.clk(clk), .reset_p(rstp), .btn(btn[0]), .btn_pe(mode_btn));
    counter_dec_mode mode_select(.clk(clk), .reset_p(rstp), .btn(mode_btn), .dec1(mode));
    
    reg [9:0] duty;
    always @(posedge clk) begin
//        if(rstp) begin
//            duty = 7'd75;
//        end
//        else begin
            case(mode) // 숫자가 커질수록 -90도에 가까워짐
                0 : begin // 90도
                    duty = 7'd28;
                    LED_bar = 8'b0000_0001;
                end
                1 : begin // 0도
                    duty = 7'd77;
                    LED_bar = 8'b0000_0010;
                end
                2 : begin // -90도
                    duty = 7'd125;
                    LED_bar = 8'b0000_0100;
                end
            endcase
//        end
    end
    PWM_1000 pwm_servo(.clk(clk), .rstp(rstp), .duty(duty), .pwm_freq(50), .pwm_1000pc(servo));
//     PWM_1000 pwm_0(.clk(clk), .rstp(rstp), .duty(75), .pwm_freq(50), .pwm_1000pc(servo)); // 1~1.5
//     PWM_1000 pwm_90(.clk(clk), .rstp(rstp), .duty(100), .pwm_freq(50), .pwm_1000pc(servo)); // 1.5~2
endmodule


module Servo_Motor_Top_profsr(
    input clk, rstp,
    output servo,
    output [3:0] com,
    output [7:0] seg_7
    );
    
//    wire [2:0] mode;
//    button_cntr btn_cntr_mode(.clk(clk), .reset_p(rstp), .btn(btn[0]), .btn_pe(mode_btn));
//    counter_dec_mode mode_select(.clk(clk), .reset_p(rstp), .btn(mode_btn), .dec1(mode));
    
    reg [21:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    wire clk_div_21_ne;
    edge_detector_p edg(.clk(clk), .cp_in(clk_div[21]), .rst(rstp), .n_edge(clk_div_21_ne)); // Edge Detector
    
    reg [9:0] duty;
    reg down_up;
    parameter UP = 0;
    parameter DOWN = 1;
    always @(posedge clk, posedge rstp)begin
        if(rstp) begin
            duty = 50;
            down_up = 0;
        end
        else if(clk_div_21_ne) begin
            if(down_up) begin
                if(duty < 28) down_up = UP;
                else duty = duty - 1;
            end
            else begin
                if(duty > 128) down_up = DOWN;
                else duty = duty + 1;
            end        
        end
    end
    
    
    PWM_1000 pwm_servo(.clk(clk), .rstp(rstp), .duty(duty), .pwm_freq(50), .pwm_1000pc(servo));
    
    wire [15:0] bcd_duty;
    bin_to_dec btd(.bin({2'b00, duty}), .bcd(bcd_duty));
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(bcd_duty), .com(com), .seg_7(seg_7));
    
//     PWM_1000 pwm_0(.clk(clk), .rstp(rstp), .duty(75), .pwm_freq(50), .pwm_1000pc(servo)); // 1~1.5
//     PWM_1000 pwm_90(.clk(clk), .rstp(rstp), .duty(100), .pwm_freq(50), .pwm_1000pc(servo)); // 1.5~2
     
    
endmodule
