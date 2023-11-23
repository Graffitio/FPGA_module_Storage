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

import axi_vip_pkg::*; // C�� include�� ���� ��
// �� ��Ű���� �ִ� ��� ���� ����(*) ������ ���ڴٴ� �ǹ�
import FND_IP_test_axi_vip_0_0_pkg::*;


module tb_FND_IP();
  // �Է��� reg��, ����� wire��
  bit aclk_0 = 0; // SystemVerilog������ bit�� reg
  bit aresetn_0 = 0;
  logic [3:0] com_0; // SystemVerilog������ wire�� logic
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
        ); // ������ �Ȱ��� ������, ������� ���� ���ָ� �ȴ�.
////////////////////////////////////////////////////////////////
    FND_IP_test_axi_vip_0_0_mst_t master_agent;
    
    always begin #5 aclk_0 = ~aclk_0; end

    initial begin
        master_agent = new("master vip agent", DUT.FND_IP_test_i.axi_vip_0.inst.IF); // ������ ����
        master_agent.start_master(); // Master ��ŸƮ
        
        #100
        aresetn_0 = 1; #50
        master_agent.AXI4LITE_WRITE_BURST(base_reg, prot, test_data1, resp); #400; // �����Ϳ� ���ڴٴ� ��(�ּ�, ����ް�, ������, ����)
        // �̷��� ����� ���� �͸� ����, �ּҶ� �����͸� �־��ָ� �ȴ�.
        // ������ �ۼ��� �׽�Ʈ��ġó�� �ϳ��ϳ� �� ���������� �ʾƵ� �ȴ�.
        $stop;
    end

endmodule
