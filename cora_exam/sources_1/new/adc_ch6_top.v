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
    input vauxp6, vauxn6, // (-)����, (+)���� / �Է� �޾ƾ� ������ �� �����ϱ� ���� ����, p�� �Ƴ��α� ��ȣ�ְ� n�� �����ָ� �ȴ�.
    output [3:0] com,
    output [7:0] seg_7
    );
    
    wire [4:0] channel_out;
    wire [15:0] do_out;
    wire eoc_out;
    xadc_wiz_0 adc_ch6(
          .daddr_in({2'b00, channel_out}), // �� ADC ����� �ּҸ� �ָ� �ȴ�.channel out���� �ּҰ� ���´� ���� �� �൵ �Ǵ� �ǵ�
          .dclk_in(clk),
          .den_in(eoc_out), // ��ȯ�� ������ �� enavble�Ǿ�� �Ѵ�.
//          di_in,               // Input data bus for the dynamic reconfiguration port
//          dwe_in,              // Write Enable for the dynamic reconfiguration port
          .reset_in(1'b0), // ���� �� �ҰŴϱ� 0�ش�(1���� ���µ�.)
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
//          .busy_out(), // ���� ��ȯ�� �� �����ٴ� ��. ��ȯ �� �������� 1
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),  // �����۾��� �� ������ do_out(��ȯ ���)�� �д´�.��� ���ش��� 12bit�ε� �� 16bit�� �Ҵ�Ǿ���?
                            // ��ȯ�� �Ϸ�Ǿ��ٴ� ������ ���� 4bit �߰��� ��
//          drdy_out,            // Data ready signal for the dynamic reconfiguration port
          .eoc_out(eoc_out) //��ȯ �۾��� ������ �� 1�� ��µȴ�. ���⿡ 1�߸� do_out�� ������ ����.
//          eos_out, // Sequencer �� ��, ��ĵ�� �� �������� ���⼭ 1�� ���. 1�߸� do_out�� ������ �ȴ�.
//          alarm_out,           // OR'ed output of all the Alarms    
//          vp_in,               // Dedicated Analog Input Pair
//          vn_in
          ); // ADC ��� �ν��Ͻ�
    
    wire eoc_out_pe;      
    edge_detector_n edg_eoc(.clk(clk), .rst(rstp), .cp_in(eoc_out), .p_edge(eoc_out_pe)); // Edga Detector
    
    reg [11:0] adc_value;
    always @(posedge clk) begin
//        if(eoc_out_pe) adc_value = do_out[15:4];
        if(eoc_out_pe) adc_value = {2'b00, do_out[15:6]};
        else adc_value = adc_value;
    end
          
    wire [15:0] bcd_adc;
    bin_to_dec btd(.bin(adc_value), .bcd(bcd_adc)); // do_out�� ���� 12bit�� ���� �ȴ�. �ִ밪�� 4095�� ���� ���̴�.
    // ���⼭ do_out�� �״�� ����ȴµ�, �׷��� �ٲ�� ���� �״�� ���´�. ���� ������� eoc_out�� 1 ������ �� ����. 
    FND_4digit_cntr fnd_cntr(.clk(clk), .rst(rstp), .value(bcd_adc), .com(com), .seg_7(seg_7));
    
endmodule
