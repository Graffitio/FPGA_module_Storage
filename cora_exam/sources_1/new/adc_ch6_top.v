`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/21 15:06:11
// Design Name: 
// Module Name: adc_ch6_top
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


module adc_ch6_top(
    input clk, rstp,
    input vauxp6, vauxn6, // (-)단자, (+)단자 / 입력 받아야 측정할 수 있으니까 여기 선언, p에 아날로그 신호주고 n에 접지주면 된다.
    output [3:0] com,
    output [7:0] seg_7
    );
    
    wire [4:0] channel_out;
    wire [15:0] do_out;
    wire eoc_out;
    xadc_wiz_0 adc_ch6(
          .daddr_in({2'b00, channel_out}), // 이 ADC 모듈의 주소를 주면 된다.channel out에서 주소가 나온다 원래 안 줘도 되는 건데
          .dclk_in(clk),
          .den_in(eoc_out), // 변환이 끝났을 때 enavble되어야 한다.
//          di_in,               // Input data bus for the dynamic reconfiguration port
//          dwe_in,              // Write Enable for the dynamic reconfiguration port
          .reset_in(1'b0), // 리셋 안 할거니까 0준다(1에서 리셋됨.)
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
//          .busy_out(), // 아직 변환이 안 끝났다는 뜻. 변환 안 끝났으면 1
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),  // 변한작업이 다 끝나면 do_out(변환 결과)을 읽는다.얘는 분해능이 12bit인데 왜 16bit나 할당되었냐?
                            // 변환이 완료되었다는 정보를 담은 4bit 추가된 것
//          drdy_out,            // Data ready signal for the dynamic reconfiguration port
          .eoc_out(eoc_out) //변환 작업이 끝났을 때 1이 출력된다. 여기에 1뜨면 do_out을 읽으면 돈다.
//          eos_out, // Sequencer 쓸 때, 스캔이 다 끝났으면 여기서 1이 뜬다. 1뜨면 do_out을 읽으면 된다.
//          alarm_out,           // OR'ed output of all the Alarms    
//          vp_in,               // Dedicated Analog Input Pair
//          vn_in
          ); // ADC 모듈 인스턴스
    
    wire eoc_out_pe;      
    edge_detector_n edg_eoc(.clk(clk), .rst(rstp), .cp_in(eoc_out), .p_edge(eoc_out_pe)); // Edga Detector
    
    reg [11:0] adc_value;
    always @(posedge clk) begin
//        if(eoc_out_pe) adc_value = do_out[15:4];
        if(eoc_out_pe) adc_value = {2'b00, do_out[15:6]};
        else adc_value = adc_value;
    end
          
    wire [15:0] bcd_adc;
    bin_to_dec btd(.bin(adc_value), .bcd(bcd_adc)); // do_out의 상위 12bit를 쓰면 된다. 최대값은 4095가 나올 것이다.
    // 여기서 do_out을 그대로 줘버렸는데, 그러면 바뀌는 값이 그대로 나온다. 따라서 정석대로 eoc_out이 1 나왔을 때 읽자. 
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(rstp), .value(bcd_adc), .com(com), .seg_7(seg_7));
    
endmodule
