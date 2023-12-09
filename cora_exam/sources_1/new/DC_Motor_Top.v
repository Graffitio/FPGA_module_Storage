`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/21 11:45:37
// Design Name: 
// Module Name: DC_Motor_Top
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


module DC_Motor_Top(
    input clk, rstp,
    input [3:0] btn,
    output DC,
    output [3:0] com,
    output [7:0] seg_7
    );

    wire [2:0] cnt;
    button_cntr btn_cntr_mode(.clk(clk), .reset_p(rstp), .btn(btn[0]), .btn_pe(cnt_btn));
    
    
    reg [21:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    wire clk_div_21_ne;
    edge_detector_p edg(.clk(clk), .cp_in(clk_div[21]), .rst(rstp), .n_edge(clk_div_21_ne)); // Edge Detector
    
    reg [7:0] duty;
    reg down_up;
    parameter UP = 0;
    parameter DOWN = 1;
    always @(posedge clk, posedge rstp)begin
        if(rstp) begin
            duty = 0;
            down_up = 0;
        end
        else if(clk_div_21_ne) begin
            if(down_up) begin
                if(duty < 11) down_up = UP;
                else duty = duty - 1;
            end
            else begin
                if(duty > 99) down_up = DOWN;
                else duty = duty + 1;
            end        
        end
    end

    
//    always @(posedge clk, posedge rstp)begin
//        if(rstp) begin
//            duty = 0;
//        end
//        else if(cnt_btn) begin
//            if(duty >= 100) duty = 0;
//            else duty = duty + 1;
//        end
//    end
     
    PWM_100 pwm_dc(.clk(clk), .rstp(rstp), .duty(duty), .pwm_freq(100), .pwm_100pc(DC));
    
    wire [15:0] bcd_duty;
    bin_to_dec btd(.bin({4'b0000, duty}), .bcd(bcd_duty));
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(bcd_duty), .com(com), .seg_7(seg_7));
endmodule