//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Nov 23 12:52:49 2023
//Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
//Command     : generate_target FND_IP_test.bd
//Design      : FND_IP_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FND_IP_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FND_IP_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "FND_IP_test.hwdef" *) 
module FND_IP_test
   (aclk_0,
    aresetn_0,
    com_0,
    seg_7_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN FND_IP_test_aclk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  output [3:0]com_0;
  output [7:0]seg_7_0;

  wire aclk_0_1;
  wire aresetn_0_1;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [3:0]myip_FND_cntr_0_com;
  wire [7:0]myip_FND_cntr_0_seg_7;

  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  assign com_0[3:0] = myip_FND_cntr_0_com;
  assign seg_7_0[7:0] = myip_FND_cntr_0_seg_7;
  FND_IP_test_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  FND_IP_test_myip_FND_cntr_0_0 myip_FND_cntr_0
       (.com(myip_FND_cntr_0_com),
        .s00_axi_aclk(aclk_0_1),
        .s00_axi_araddr(axi_vip_0_M_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(aresetn_0_1),
        .s00_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .s00_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .s00_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .s00_axi_awaddr(axi_vip_0_M_AXI_AWADDR[4:0]),
        .s00_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .s00_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .s00_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .s00_axi_bready(axi_vip_0_M_AXI_BREADY),
        .s00_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .s00_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .s00_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .s00_axi_rready(axi_vip_0_M_AXI_RREADY),
        .s00_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .s00_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .s00_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .s00_axi_wready(axi_vip_0_M_AXI_WREADY),
        .s00_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .s00_axi_wvalid(axi_vip_0_M_AXI_WVALID),
        .seg_7(myip_FND_cntr_0_seg_7));
endmodule
