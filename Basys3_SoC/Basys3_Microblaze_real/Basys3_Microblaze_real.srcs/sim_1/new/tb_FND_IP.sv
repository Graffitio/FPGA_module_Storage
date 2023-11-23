`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 09:29:15
// Design Name: 
// Module Name: tb_FND_IP
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

import axi_vip_pkg::*; // C의 include와 같은 것
// 이 패키지에 있는 모든 것을 전부(*) 가져다 쓰겠다는 의미
import FND_IP_test_axi_vip_0_0_pkg::*;


module tb_FND_IP();
  // 입력은 reg로, 출력은 wire로
  bit aclk_0 = 0; // SystemVerilog에서는 bit가 reg
  bit aresetn_0 = 0;
  logic [3:0] com_0; // SystemVerilog에서는 wire가 logic
  logic [7:0] seg_7_0;
  
  xil_axi_ulong base_reg = 32'h0x44a00000;
  xil_axi_prot_t prot = 0;
  xil_axi_resp_t resp;
  
  bit [31:0] test_data1 = 32'h0000000f;
  bit [31:0] test_data2 = 32'h00000008;
  bit [31:0] test_data3 = 32'h00000037;
  
//////////////////////// DUT Instance //////////////////////////
    FND_IP_test_wrapper DUT(
        .aclk_0,
        .aresetn_0,
        .com_0,
        .seg_7_0
        ); // 변수명 똑같이 했으니, 순서대로 선언만 해주면 된다.
////////////////////////////////////////////////////////////////
    FND_IP_test_axi_vip_0_0_mst_t master_agent;
    
    always begin #5 aclk_0 = ~aclk_0; end

    initial begin
        master_agent = new("master vip agent", DUT.FND_IP_test_i.axi_vip_0.inst.IF); // 마스터 설정
        master_agent.start_master(); // Master 스타트
        
        #100
        aresetn_0 = 1; #50
        master_agent.AXI4LITE_WRITE_BURST(base_reg, prot, test_data1, resp); #400; // 마스터에 쓰겠다는 뜻(주소, 응답받고, 데이터, 리셋)
        // 이렇게 만들어 놓은 것만 쓰면, 주소랑 데이터만 넣어주면 된다.
        // 이전에 작성한 테스트벤치처럼 하나하나 다 셋팅해주지 않아도 된다.
        $stop;
    end

endmodule
