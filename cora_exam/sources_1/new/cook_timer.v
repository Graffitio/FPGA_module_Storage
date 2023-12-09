`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/07 09:14:15
// Design Name: 
// Module Name: cook_timer
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

//=================================================================================================================================================//
//=================================================================================================================================================//
module cook_timer(
    input clk, reset_p,
    input [3:0] btn,
    output [3:0] com,
    output [7:0] seg_7,
    output [7:0] LED_bar
    );
    
    // button 
    wire start, incsec, incmin;
    wire timeout, alarm_start;
    wire t_start_stop;
//    or (t_start_stop, start, alarm_start); // Verilog에서 구조적 모델링 하지 마!!!!
    assign t_start_stop = start ? 1 : (alarm_start ? 1 : 0); // alarm이 발생하거나 start가 1일 때, t_start_stop = 1
    button_cntr btn_start_stop(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pe(start)); // start/stop
    t_flip_flop_p tff_start_stop(.clk(clk), .rst(reset_p), .t(t_start_stop), .q(start_stop)); // 버튼눌렀을 때, alarm 발생 시, start_stop 변수 토글
    button_cntr btn_incsec(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pe(incsec)); // sec+
    button_cntr btn_incmin(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pe(incmin)); // min+
//    button_cntr btn_alarm_off(.clk(clk), .reset_p(reset_p), .btn(btn[3]), .btn_pe(alarm_off)); // min+
    
    // Time Prescaler(clock Library)
    wire clk_usec, clk_msec, clk_sec;
    clock_usec usec_clk(.clk(clk), .reset_p(reset_p), .clk_usec(clk_usec));
//    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_start), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 msec_clk(.clk(clk), .clk_source(clk_usec), .reset_p(reset_p), .clk_div_1000(clk_msec));
    clock_div_1000 sec_clk(.clk(clk), .clk_source(clk_msec), .reset_p(reset_p), .clk_div_1000(clk_sec));
    clock_min min_clk(.clk(clk), .clk_sec(clk_sec), .reset_p(reset_p), .clk_min(clk_min));
    
    // Time set
    wire [3:0] sec1_set, sec10_set; // 사용자 경험(UX)애 맞춰서 UI를 설계하는 것이 중요하다. -> min, sec 동작시키자.
    counter_dec_60 up_sec(.clk(clk), .reset_p(reset_p), .clk_time(incsec), .dec1(sec1_set), .dec10(sec10_set)); // sec up_counter
    wire [3:0] min1_set, min10_set;
    counter_dec_60 up_min(.clk(clk), .reset_p(reset_p), .clk_time(incmin), .dec1(min1_set), .dec10(min10_set)); // min up_counter
       
    // load_enable을 start_stop에 연결하면, start 시(start_stop = 1)계속해서 값을 불러와버린다.
    // 따라서 start_stop = 0일때만 1이 들어가도록 설계(start 변수의 참거짓에 따라 load_enable 변화하도록)
    wire clk_start, load_enable;
    wire dec_clk; // 다음 자리(예 : minute)에 신호(펄스)를 주기 위한 변수
    wire [3:0] sec1, sec10, min1, min10;
    assign clk_start = start_stop ? clk_sec : 0; // 대표적인 MUX 생성 방법
    assign load_enable = ~start_stop ? start : 0; // start_stop = 0 이면, start 변수 사용
    // load_enable에는 edge 한 번만 주어야 하므로 start 사용
    
    loadable_down_counter_dec_60 dc_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_start), .load_enable(load_enable), 
                                        .set_value1(sec1_set), .set_value10(sec10_set),
                                        .dec1(sec1), .dec10(sec10), .dec_clk(dec_clk));
                                        
    loadable_down_counter_dec_60 dc_min(.clk(clk), .reset_p(reset_p), .clk_time(dec_clk), .load_enable(load_enable), 
                                        .set_value1(min1_set), .set_value10(min10_set),
                                        .dec1(min1), .dec10(min10));                                    
    
    // Setting Time for FND
    reg [15:0] set_time;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) set_time = 0;
        else set_time = {min10_set, min1_set, sec10_set, sec1_set};
    end

//    // Setting Time for FND
//    reg [15:0] set_time;
//    always @(posedge clk, posedge reset_p) begin
//        if(reset_p) set_time = 0;
//        else if(load_enable) set_time = {min10_set, min1_set, sec10_set, sec1_set};
//        else set_time = {8'b0, sec10, sec1};
//    end
    
    // Count Time for FND
    reg [15:0] count_time;
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) count_time = 0;
        else count_time = {min10, min1, sec10, sec1};
//        else count_time = {8'b0, sec10, sec1};
    end
    
    // time = 0 도달 시,
//    wire timeout, alarm_start;  // 여기에 써도 오류는 안 난다.(Verilog의 코드는 병렬구조이기 때문에) 하지만 위에서 해당 변수를 사용하므로 위로 올리도록 하자.
    assign timeout = |count_time; // 뒤의 모든 비트를 OR 연산한 결과(베릴로그에서만 사용할 수 있는 문법)
    edge_detector_n edg_timeout(.clk(clk), .cp_in(timeout), .rst(reset_p), .n_edge(alarm_start)); // timeout 발생 시, alarm edge 발생
    
    // Alarm On/Off를 위한 기능
    wire alarm, alarm_off;
//    assign t_alarm = alarm ? 1 : (alarm_off ? 1 : 0);
    assign alarm_off = |{btn, reset_p}; // 모든 버튼을 다 묶어버려서 넣어주면, 어떤 버튼을 눌러도 alarm이 다 리셋된다.
    t_flip_flop_p tff_alarm_on_off(.clk(clk), .rst(alarm_off), .t(alarm_start), .q(alarm));
    assign LED_bar[0] = alarm;
    
    
    wire [15:0] value;
    assign value = start_stop ? count_time : set_time;
    
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(reset_p), .value(value), .com(com), .seg_7(seg_7));  /// 컨트롤러가 분주기 가지고 있으니 그냥 clk준다.
    
    
endmodule
//=================================================================================================================================================//
//=================================================================================================================================================//

