`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/15 10:14:45
// Design Name: 
// Module Name: Ultrasonic_not_fsm
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


module Ultrasonic_not_fsm(
    input clk, rst,
    input echo,
    output reg trig,
    output reg [15:0] distance,
    output reg [7:0] LED_bar
    );
    
    reg [16:0] count_usec_ch, count_usec_tr, count_usec_idle; // 넉넉히 주면 좋다. 메뉴얼에는 60ms의 여유를 주라 했는데, 실제로는 70ms 넘어서도 걸린다.
    wire clk_usec;
    reg count_usec_ch_e, count_usec_tr_e, count_usec_idle_e;
    clock_usec usec_clk(.clk(clk), .rst(rst), .clk_usec(clk_usec));
    
    // usec Counter
    always @(negedge clk, posedge rst) begin
        if(rst) begin
            count_usec_ch = 0; // 리셋 누르면 출력이 0되도록 설계
//            count_usec_tr <= 0;
        end
        else begin
            // data가 들어올 때 동안만 count
            if(clk_usec && count_usec_ch_e) count_usec_ch = count_usec_ch + 1; // enable이 1이고, clk_usec가 들어올 때만 count++
            else if(!count_usec_ch_e) count_usec_ch = 0;
//            if(clk_usec && count_usec_tr_e) count_usec_tr <= count_usec_tr + 1;
//            else if(!count_usec_tr_e) count_usec_tr <= 0;            
        end
    end
    
    // usec Counter
    always @(negedge clk, posedge rst) begin
        if(rst) begin
//            count_usec_ch <= 0; // 리셋 누르면 출력이 0되도록 설계
            count_usec_tr = 0;
        end
        else begin
            // data가 들어올 때 동안만 count
//            if(clk_usec && count_usec_ch_e) count_usec_ch <= count_usec_ch + 1; // enable이 1이고, clk_usec가 들어올 때만 count++
//            else if(!count_usec_ch_e) count_usec_ch <= 0;
            if(clk_usec && count_usec_tr_e) count_usec_tr = count_usec_tr + 1;
            else if(!count_usec_tr_e) count_usec_tr = 0;            
        end
    end
    
        // usec Counter
    always @(negedge clk, posedge rst) begin
        if(rst) begin
//            count_usec_ch <= 0; // 리셋 누르면 출력이 0되도록 설계
            count_usec_idle = 0;
        end
        else begin
            // data가 들어올 때 동안만 count
//            if(clk_usec && count_usec_ch_e) count_usec_ch <= count_usec_ch + 1; // enable이 1이고, clk_usec가 들어올 때만 count++
//            else if(!count_usec_ch_e) count_usec_ch <= 0;
            if(clk_usec && count_usec_idle_e) count_usec_idle = count_usec_idle + 1;
            else if(!count_usec_idle_e) count_usec_idle = 0;            
        end
    end
    
    //Edge를 보내서 쓰는 걸로 clk 동기화
    wire echo_pedge, echo_nedge;
    edge_detector_n edg_echo(.clk(clk), .cp_in(echo), .rst(rst), .p_edge(echo_pedge), .n_edge(echo_nedge)); // Edge Detector
    
    // trigger
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            trig = 0;
            count_usec_tr_e = 0;
            count_usec_idle_e = 0;
            LED_bar = 8'b0000_0000;
        end
        else begin
            // IDLE
            if(count_usec_idle < 22'd80_000) begin
//            if(count_usec_idle < 22'd5000) begin
                count_usec_idle_e = 1;
                LED_bar[0] = 1;
            end
            else begin
//                count_usec_idle_e <= 0;
                // trigger
                if(count_usec_tr < 22'd12) begin
                    trig = 1;
                    count_usec_tr_e = 1;
                end            
                else begin
                    trig = 0;
                    count_usec_tr_e = 0;
                    count_usec_idle_e = 0;
                    LED_bar[1] = 1;
                end
            end
        end
    end

    //echo
//    reg [16:0] pulse_width;
    reg [16:0] temp_value [15:0], old_time;
    reg [20:0] sum_value;
    reg [3:0] index;
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            count_usec_ch_e = 0;
//            pulse_width = 0;
            index = 0;
            old_time = 0;
            LED_bar = 8'b0000_0000;
        end
        else begin
            if(echo_pedge) begin
                old_time = count_usec_ch;
            end
            else if(echo_nedge) begin // 1 clk(8ns) 안에 pedge와 nedge가 둘 다 High가 되지 않으므로, els
//                pulse_width = count_usec_ch - old_time;
                temp_value[index] = (count_usec_ch - old_time);
                index = index + 1;
                count_usec_ch_e = 0;
            end
            else begin
                if(count_usec_ch < 22'd23_200) begin
                    count_usec_ch_e = 1;
                end
                else begin
                    count_usec_ch_e = 0;
                end
            end
        end
    end
    
//    reg [16:0] clk_1ms;//// 8ns * 2^17 = 1,048,576ns = 1048㎲ = 1.048ms
//    always @(posedge clk) clk_1ms = clk_1ms + 1 ;

    // calculate
    reg [5:0] i;
    always @(posedge clk_usec, posedge rst) begin
        if(rst) begin
            sum_value = 0;
            i = 0;
        end
        else begin
            LED_bar[7] = 1;
            sum_value = 0;
            for(i = 0 ; i < 16 ; i = i+1) begin
                sum_value = sum_value + temp_value[i];
            end
        end
    end

    // distance
    always @(posedge clk_usec, posedge rst) begin
        if(rst) begin
            distance = 0;
        end
        else begin
            distance = sum_value[20:4] / 58;
//            distance = pulse_width / 58;
        end
    end

endmodule