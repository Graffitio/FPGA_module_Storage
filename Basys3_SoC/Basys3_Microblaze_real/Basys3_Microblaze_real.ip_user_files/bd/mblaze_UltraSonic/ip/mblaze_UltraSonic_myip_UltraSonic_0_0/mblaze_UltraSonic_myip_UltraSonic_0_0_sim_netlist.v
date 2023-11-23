// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov 22 10:42:24 2023
// Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Ian_Jung/workplace/cora_z7/cora_cpu_2019/Basys3_Microblaze_real/Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_UltraSonic/ip/mblaze_UltraSonic_myip_UltraSonic_0_0/mblaze_UltraSonic_myip_UltraSonic_0_0_sim_netlist.v
// Design      : mblaze_UltraSonic_myip_UltraSonic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mblaze_UltraSonic_myip_UltraSonic_0_0,myip_UltraSonic_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_UltraSonic_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mblaze_UltraSonic_myip_UltraSonic_0_0
   (echo,
    trig,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input echo;
  output trig;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire echo;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire trig;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mblaze_UltraSonic_myip_UltraSonic_0_0_myip_UltraSonic_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .echo(echo),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .trig(trig));
endmodule

(* ORIG_REF_NAME = "UltraSonic_Profsr" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_UltraSonic_Profsr
   (SR,
    trig,
    Q,
    \distance_cm_reg[11]_0 ,
    data1,
    s00_axi_aclk,
    echo,
    trig_reg_0,
    s00_axi_aresetn);
  output [0:0]SR;
  output trig;
  output [3:0]Q;
  output [11:0]\distance_cm_reg[11]_0 ;
  output data1;
  input s00_axi_aclk;
  input echo;
  input trig_reg_0;
  input s00_axi_aresetn;

  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_usec;
  wire count_usec_e__0;
  wire count_usec_e_n_0;
  wire count_usec_e_reg_n_0;
  wire [16:0]count_usec_reg;
  wire data1;
  wire \distance_cm[0]_i_10_n_0 ;
  wire \distance_cm[0]_i_11_n_0 ;
  wire \distance_cm[0]_i_13_n_0 ;
  wire \distance_cm[0]_i_14_n_0 ;
  wire \distance_cm[0]_i_15_n_0 ;
  wire \distance_cm[0]_i_16_n_0 ;
  wire \distance_cm[0]_i_17_n_0 ;
  wire \distance_cm[0]_i_18_n_0 ;
  wire \distance_cm[0]_i_19_n_0 ;
  wire \distance_cm[0]_i_1_n_0 ;
  wire \distance_cm[0]_i_20_n_0 ;
  wire \distance_cm[0]_i_21_n_0 ;
  wire \distance_cm[0]_i_23_n_0 ;
  wire \distance_cm[0]_i_24_n_0 ;
  wire \distance_cm[0]_i_25_n_0 ;
  wire \distance_cm[0]_i_26_n_0 ;
  wire \distance_cm[0]_i_27_n_0 ;
  wire \distance_cm[0]_i_28_n_0 ;
  wire \distance_cm[0]_i_29_n_0 ;
  wire \distance_cm[0]_i_30_n_0 ;
  wire \distance_cm[0]_i_31_n_0 ;
  wire \distance_cm[0]_i_32_n_0 ;
  wire \distance_cm[0]_i_33_n_0 ;
  wire \distance_cm[0]_i_35_n_0 ;
  wire \distance_cm[0]_i_36_n_0 ;
  wire \distance_cm[0]_i_37_n_0 ;
  wire \distance_cm[0]_i_38_n_0 ;
  wire \distance_cm[0]_i_39_n_0 ;
  wire \distance_cm[0]_i_40_n_0 ;
  wire \distance_cm[0]_i_41_n_0 ;
  wire \distance_cm[0]_i_42_n_0 ;
  wire \distance_cm[0]_i_44_n_0 ;
  wire \distance_cm[0]_i_45_n_0 ;
  wire \distance_cm[0]_i_46_n_0 ;
  wire \distance_cm[0]_i_47_n_0 ;
  wire \distance_cm[0]_i_48_n_0 ;
  wire \distance_cm[0]_i_49_n_0 ;
  wire \distance_cm[0]_i_4_n_0 ;
  wire \distance_cm[0]_i_50_n_0 ;
  wire \distance_cm[0]_i_51_n_0 ;
  wire \distance_cm[0]_i_53_n_0 ;
  wire \distance_cm[0]_i_54_n_0 ;
  wire \distance_cm[0]_i_55_n_0 ;
  wire \distance_cm[0]_i_56_n_0 ;
  wire \distance_cm[0]_i_57_n_0 ;
  wire \distance_cm[0]_i_58_n_0 ;
  wire \distance_cm[0]_i_59_n_0 ;
  wire \distance_cm[0]_i_5_n_0 ;
  wire \distance_cm[0]_i_60_n_0 ;
  wire \distance_cm[0]_i_61_n_0 ;
  wire \distance_cm[0]_i_62_n_0 ;
  wire \distance_cm[0]_i_6_n_0 ;
  wire \distance_cm[0]_i_7_n_0 ;
  wire \distance_cm[0]_i_8_n_0 ;
  wire \distance_cm[0]_i_9_n_0 ;
  wire \distance_cm[10]_i_1_n_0 ;
  wire \distance_cm[11]_i_10_n_0 ;
  wire \distance_cm[11]_i_12_n_0 ;
  wire \distance_cm[11]_i_13_n_0 ;
  wire \distance_cm[11]_i_14_n_0 ;
  wire \distance_cm[11]_i_15_n_0 ;
  wire \distance_cm[11]_i_16_n_0 ;
  wire \distance_cm[11]_i_17_n_0 ;
  wire \distance_cm[11]_i_18_n_0 ;
  wire \distance_cm[11]_i_19_n_0 ;
  wire \distance_cm[11]_i_1_n_0 ;
  wire \distance_cm[11]_i_21_n_0 ;
  wire \distance_cm[11]_i_22_n_0 ;
  wire \distance_cm[11]_i_23_n_0 ;
  wire \distance_cm[11]_i_26_n_0 ;
  wire \distance_cm[11]_i_27_n_0 ;
  wire \distance_cm[11]_i_28_n_0 ;
  wire \distance_cm[11]_i_29_n_0 ;
  wire \distance_cm[11]_i_30_n_0 ;
  wire \distance_cm[11]_i_31_n_0 ;
  wire \distance_cm[11]_i_32_n_0 ;
  wire \distance_cm[11]_i_33_n_0 ;
  wire \distance_cm[11]_i_35_n_0 ;
  wire \distance_cm[11]_i_36_n_0 ;
  wire \distance_cm[11]_i_37_n_0 ;
  wire \distance_cm[11]_i_38_n_0 ;
  wire \distance_cm[11]_i_39_n_0 ;
  wire \distance_cm[11]_i_40_n_0 ;
  wire \distance_cm[11]_i_41_n_0 ;
  wire \distance_cm[11]_i_42_n_0 ;
  wire \distance_cm[11]_i_43_n_0 ;
  wire \distance_cm[11]_i_44_n_0 ;
  wire \distance_cm[11]_i_46_n_0 ;
  wire \distance_cm[11]_i_47_n_0 ;
  wire \distance_cm[11]_i_48_n_0 ;
  wire \distance_cm[11]_i_49_n_0 ;
  wire \distance_cm[11]_i_50_n_0 ;
  wire \distance_cm[11]_i_51_n_0 ;
  wire \distance_cm[11]_i_52_n_0 ;
  wire \distance_cm[11]_i_53_n_0 ;
  wire \distance_cm[11]_i_55_n_0 ;
  wire \distance_cm[11]_i_56_n_0 ;
  wire \distance_cm[11]_i_57_n_0 ;
  wire \distance_cm[11]_i_58_n_0 ;
  wire \distance_cm[11]_i_59_n_0 ;
  wire \distance_cm[11]_i_60_n_0 ;
  wire \distance_cm[11]_i_61_n_0 ;
  wire \distance_cm[11]_i_62_n_0 ;
  wire \distance_cm[11]_i_63_n_0 ;
  wire \distance_cm[11]_i_64_n_0 ;
  wire \distance_cm[11]_i_65_n_0 ;
  wire \distance_cm[11]_i_66_n_0 ;
  wire \distance_cm[11]_i_67_n_0 ;
  wire \distance_cm[11]_i_68_n_0 ;
  wire \distance_cm[11]_i_69_n_0 ;
  wire \distance_cm[11]_i_6_n_0 ;
  wire \distance_cm[11]_i_70_n_0 ;
  wire \distance_cm[11]_i_71_n_0 ;
  wire \distance_cm[11]_i_72_n_0 ;
  wire \distance_cm[11]_i_73_n_0 ;
  wire \distance_cm[11]_i_74_n_0 ;
  wire \distance_cm[11]_i_75_n_0 ;
  wire \distance_cm[11]_i_76_n_0 ;
  wire \distance_cm[11]_i_7_n_0 ;
  wire \distance_cm[11]_i_8_n_0 ;
  wire \distance_cm[11]_i_9_n_0 ;
  wire \distance_cm[1]_i_1_n_0 ;
  wire \distance_cm[2]_i_1_n_0 ;
  wire \distance_cm[3]_i_1_n_0 ;
  wire \distance_cm[3]_i_3_n_0 ;
  wire \distance_cm[4]_i_10_n_0 ;
  wire \distance_cm[4]_i_11_n_0 ;
  wire \distance_cm[4]_i_13_n_0 ;
  wire \distance_cm[4]_i_14_n_0 ;
  wire \distance_cm[4]_i_15_n_0 ;
  wire \distance_cm[4]_i_16_n_0 ;
  wire \distance_cm[4]_i_17_n_0 ;
  wire \distance_cm[4]_i_18_n_0 ;
  wire \distance_cm[4]_i_19_n_0 ;
  wire \distance_cm[4]_i_1_n_0 ;
  wire \distance_cm[4]_i_20_n_0 ;
  wire \distance_cm[4]_i_21_n_0 ;
  wire \distance_cm[4]_i_22_n_0 ;
  wire \distance_cm[4]_i_23_n_0 ;
  wire \distance_cm[4]_i_3_n_0 ;
  wire \distance_cm[4]_i_4_n_0 ;
  wire \distance_cm[4]_i_5_n_0 ;
  wire \distance_cm[4]_i_6_n_0 ;
  wire \distance_cm[4]_i_7_n_0 ;
  wire \distance_cm[4]_i_8_n_0 ;
  wire \distance_cm[4]_i_9_n_0 ;
  wire \distance_cm[5]_i_1_n_0 ;
  wire \distance_cm[6]_i_1_n_0 ;
  wire \distance_cm[7]_i_1_n_0 ;
  wire \distance_cm[8]_i_10_n_0 ;
  wire \distance_cm[8]_i_11_n_0 ;
  wire \distance_cm[8]_i_12_n_0 ;
  wire \distance_cm[8]_i_1_n_0 ;
  wire \distance_cm[8]_i_3_n_0 ;
  wire \distance_cm[8]_i_4_n_0 ;
  wire \distance_cm[8]_i_5_n_0 ;
  wire \distance_cm[8]_i_6_n_0 ;
  wire \distance_cm[8]_i_7_n_0 ;
  wire \distance_cm[8]_i_8_n_0 ;
  wire \distance_cm[8]_i_9_n_0 ;
  wire \distance_cm[9]_i_1_n_0 ;
  wire \distance_cm_reg[0]_i_12_n_0 ;
  wire \distance_cm_reg[0]_i_12_n_1 ;
  wire \distance_cm_reg[0]_i_12_n_2 ;
  wire \distance_cm_reg[0]_i_12_n_3 ;
  wire \distance_cm_reg[0]_i_22_n_0 ;
  wire \distance_cm_reg[0]_i_22_n_1 ;
  wire \distance_cm_reg[0]_i_22_n_2 ;
  wire \distance_cm_reg[0]_i_22_n_3 ;
  wire \distance_cm_reg[0]_i_22_n_4 ;
  wire \distance_cm_reg[0]_i_22_n_5 ;
  wire \distance_cm_reg[0]_i_22_n_6 ;
  wire \distance_cm_reg[0]_i_22_n_7 ;
  wire \distance_cm_reg[0]_i_2_n_0 ;
  wire \distance_cm_reg[0]_i_2_n_1 ;
  wire \distance_cm_reg[0]_i_2_n_2 ;
  wire \distance_cm_reg[0]_i_2_n_3 ;
  wire \distance_cm_reg[0]_i_2_n_4 ;
  wire \distance_cm_reg[0]_i_34_n_0 ;
  wire \distance_cm_reg[0]_i_34_n_1 ;
  wire \distance_cm_reg[0]_i_34_n_2 ;
  wire \distance_cm_reg[0]_i_34_n_3 ;
  wire \distance_cm_reg[0]_i_34_n_4 ;
  wire \distance_cm_reg[0]_i_34_n_5 ;
  wire \distance_cm_reg[0]_i_34_n_6 ;
  wire \distance_cm_reg[0]_i_34_n_7 ;
  wire \distance_cm_reg[0]_i_3_n_0 ;
  wire \distance_cm_reg[0]_i_3_n_1 ;
  wire \distance_cm_reg[0]_i_3_n_2 ;
  wire \distance_cm_reg[0]_i_3_n_3 ;
  wire \distance_cm_reg[0]_i_43_n_0 ;
  wire \distance_cm_reg[0]_i_43_n_1 ;
  wire \distance_cm_reg[0]_i_43_n_2 ;
  wire \distance_cm_reg[0]_i_43_n_3 ;
  wire \distance_cm_reg[0]_i_43_n_4 ;
  wire \distance_cm_reg[0]_i_43_n_5 ;
  wire \distance_cm_reg[0]_i_52_n_0 ;
  wire \distance_cm_reg[0]_i_52_n_1 ;
  wire \distance_cm_reg[0]_i_52_n_2 ;
  wire \distance_cm_reg[0]_i_52_n_3 ;
  wire [11:0]\distance_cm_reg[11]_0 ;
  wire \distance_cm_reg[11]_i_11_n_0 ;
  wire \distance_cm_reg[11]_i_11_n_1 ;
  wire \distance_cm_reg[11]_i_11_n_2 ;
  wire \distance_cm_reg[11]_i_11_n_3 ;
  wire \distance_cm_reg[11]_i_20_n_0 ;
  wire \distance_cm_reg[11]_i_20_n_1 ;
  wire \distance_cm_reg[11]_i_20_n_2 ;
  wire \distance_cm_reg[11]_i_20_n_3 ;
  wire \distance_cm_reg[11]_i_20_n_4 ;
  wire \distance_cm_reg[11]_i_20_n_5 ;
  wire \distance_cm_reg[11]_i_20_n_6 ;
  wire \distance_cm_reg[11]_i_20_n_7 ;
  wire \distance_cm_reg[11]_i_24_n_1 ;
  wire \distance_cm_reg[11]_i_24_n_3 ;
  wire \distance_cm_reg[11]_i_24_n_6 ;
  wire \distance_cm_reg[11]_i_24_n_7 ;
  wire \distance_cm_reg[11]_i_25_n_0 ;
  wire \distance_cm_reg[11]_i_25_n_1 ;
  wire \distance_cm_reg[11]_i_25_n_2 ;
  wire \distance_cm_reg[11]_i_25_n_3 ;
  wire \distance_cm_reg[11]_i_2_n_2 ;
  wire \distance_cm_reg[11]_i_2_n_3 ;
  wire \distance_cm_reg[11]_i_2_n_5 ;
  wire \distance_cm_reg[11]_i_2_n_6 ;
  wire \distance_cm_reg[11]_i_2_n_7 ;
  wire \distance_cm_reg[11]_i_34_n_0 ;
  wire \distance_cm_reg[11]_i_34_n_1 ;
  wire \distance_cm_reg[11]_i_34_n_2 ;
  wire \distance_cm_reg[11]_i_34_n_3 ;
  wire \distance_cm_reg[11]_i_34_n_4 ;
  wire \distance_cm_reg[11]_i_34_n_5 ;
  wire \distance_cm_reg[11]_i_34_n_6 ;
  wire \distance_cm_reg[11]_i_34_n_7 ;
  wire \distance_cm_reg[11]_i_3_n_0 ;
  wire \distance_cm_reg[11]_i_3_n_1 ;
  wire \distance_cm_reg[11]_i_3_n_2 ;
  wire \distance_cm_reg[11]_i_3_n_3 ;
  wire \distance_cm_reg[11]_i_45_n_0 ;
  wire \distance_cm_reg[11]_i_45_n_1 ;
  wire \distance_cm_reg[11]_i_45_n_2 ;
  wire \distance_cm_reg[11]_i_45_n_3 ;
  wire \distance_cm_reg[11]_i_4_n_3 ;
  wire \distance_cm_reg[11]_i_4_n_6 ;
  wire \distance_cm_reg[11]_i_4_n_7 ;
  wire \distance_cm_reg[11]_i_54_n_0 ;
  wire \distance_cm_reg[11]_i_54_n_1 ;
  wire \distance_cm_reg[11]_i_54_n_2 ;
  wire \distance_cm_reg[11]_i_54_n_3 ;
  wire \distance_cm_reg[11]_i_54_n_4 ;
  wire \distance_cm_reg[11]_i_54_n_5 ;
  wire \distance_cm_reg[11]_i_54_n_6 ;
  wire \distance_cm_reg[11]_i_54_n_7 ;
  wire \distance_cm_reg[11]_i_5_n_1 ;
  wire \distance_cm_reg[11]_i_5_n_2 ;
  wire \distance_cm_reg[11]_i_5_n_3 ;
  wire \distance_cm_reg[11]_i_5_n_4 ;
  wire \distance_cm_reg[11]_i_5_n_5 ;
  wire \distance_cm_reg[11]_i_5_n_6 ;
  wire \distance_cm_reg[11]_i_5_n_7 ;
  wire \distance_cm_reg[3]_i_2_n_0 ;
  wire \distance_cm_reg[3]_i_2_n_1 ;
  wire \distance_cm_reg[3]_i_2_n_2 ;
  wire \distance_cm_reg[3]_i_2_n_3 ;
  wire \distance_cm_reg[3]_i_2_n_4 ;
  wire \distance_cm_reg[3]_i_2_n_5 ;
  wire \distance_cm_reg[3]_i_2_n_6 ;
  wire \distance_cm_reg[3]_i_2_n_7 ;
  wire \distance_cm_reg[4]_i_12_n_0 ;
  wire \distance_cm_reg[4]_i_12_n_1 ;
  wire \distance_cm_reg[4]_i_12_n_2 ;
  wire \distance_cm_reg[4]_i_12_n_3 ;
  wire \distance_cm_reg[4]_i_12_n_4 ;
  wire \distance_cm_reg[4]_i_12_n_5 ;
  wire \distance_cm_reg[4]_i_12_n_6 ;
  wire \distance_cm_reg[4]_i_12_n_7 ;
  wire \distance_cm_reg[4]_i_2_n_0 ;
  wire \distance_cm_reg[4]_i_2_n_1 ;
  wire \distance_cm_reg[4]_i_2_n_2 ;
  wire \distance_cm_reg[4]_i_2_n_3 ;
  wire \distance_cm_reg[4]_i_2_n_4 ;
  wire \distance_cm_reg[4]_i_2_n_5 ;
  wire \distance_cm_reg[4]_i_2_n_6 ;
  wire \distance_cm_reg[4]_i_2_n_7 ;
  wire \distance_cm_reg[7]_i_2_n_0 ;
  wire \distance_cm_reg[7]_i_2_n_1 ;
  wire \distance_cm_reg[7]_i_2_n_2 ;
  wire \distance_cm_reg[7]_i_2_n_3 ;
  wire \distance_cm_reg[7]_i_2_n_4 ;
  wire \distance_cm_reg[7]_i_2_n_5 ;
  wire \distance_cm_reg[7]_i_2_n_6 ;
  wire \distance_cm_reg[7]_i_2_n_7 ;
  wire \distance_cm_reg[8]_i_2_n_0 ;
  wire \distance_cm_reg[8]_i_2_n_1 ;
  wire \distance_cm_reg[8]_i_2_n_2 ;
  wire \distance_cm_reg[8]_i_2_n_3 ;
  wire \distance_cm_reg[8]_i_2_n_4 ;
  wire \distance_cm_reg[8]_i_2_n_5 ;
  wire \distance_cm_reg[8]_i_2_n_6 ;
  wire \distance_cm_reg[8]_i_2_n_7 ;
  wire echo;
  wire edg_echo_n_0;
  wire edg_echo_n_1;
  wire edg_echo_n_10;
  wire edg_echo_n_11;
  wire edg_echo_n_12;
  wire edg_echo_n_13;
  wire edg_echo_n_14;
  wire edg_echo_n_15;
  wire edg_echo_n_16;
  wire edg_echo_n_17;
  wire edg_echo_n_18;
  wire edg_echo_n_19;
  wire edg_echo_n_2;
  wire edg_echo_n_20;
  wire edg_echo_n_4;
  wire edg_echo_n_6;
  wire edg_echo_n_7;
  wire edg_echo_n_8;
  wire edg_echo_n_9;
  wire \index[0]_i_1_n_0 ;
  wire [3:0]index_reg;
  wire [3:0]next_state;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire \next_state[3]_i_3_n_0 ;
  wire \next_state[3]_i_4_n_0 ;
  wire [16:0]p_0_in_0;
  wire [3:1]p_0_in__0;
  wire [20:4]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sum_value[11]_i_10_n_0 ;
  wire \sum_value[11]_i_11_n_0 ;
  wire \sum_value[11]_i_12_n_0 ;
  wire \sum_value[11]_i_17_n_0 ;
  wire \sum_value[11]_i_18_n_0 ;
  wire \sum_value[11]_i_19_n_0 ;
  wire \sum_value[11]_i_20_n_0 ;
  wire \sum_value[11]_i_21_n_0 ;
  wire \sum_value[11]_i_22_n_0 ;
  wire \sum_value[11]_i_23_n_0 ;
  wire \sum_value[11]_i_24_n_0 ;
  wire \sum_value[11]_i_25_n_0 ;
  wire \sum_value[11]_i_26_n_0 ;
  wire \sum_value[11]_i_27_n_0 ;
  wire \sum_value[11]_i_28_n_0 ;
  wire \sum_value[11]_i_29_n_0 ;
  wire \sum_value[11]_i_2_n_0 ;
  wire \sum_value[11]_i_30_n_0 ;
  wire \sum_value[11]_i_31_n_0 ;
  wire \sum_value[11]_i_32_n_0 ;
  wire \sum_value[11]_i_33_n_0 ;
  wire \sum_value[11]_i_34_n_0 ;
  wire \sum_value[11]_i_35_n_0 ;
  wire \sum_value[11]_i_36_n_0 ;
  wire \sum_value[11]_i_37_n_0 ;
  wire \sum_value[11]_i_38_n_0 ;
  wire \sum_value[11]_i_39_n_0 ;
  wire \sum_value[11]_i_3_n_0 ;
  wire \sum_value[11]_i_40_n_0 ;
  wire \sum_value[11]_i_41_n_0 ;
  wire \sum_value[11]_i_42_n_0 ;
  wire \sum_value[11]_i_43_n_0 ;
  wire \sum_value[11]_i_44_n_0 ;
  wire \sum_value[11]_i_45_n_0 ;
  wire \sum_value[11]_i_46_n_0 ;
  wire \sum_value[11]_i_47_n_0 ;
  wire \sum_value[11]_i_48_n_0 ;
  wire \sum_value[11]_i_49_n_0 ;
  wire \sum_value[11]_i_4_n_0 ;
  wire \sum_value[11]_i_52_n_0 ;
  wire \sum_value[11]_i_53_n_0 ;
  wire \sum_value[11]_i_54_n_0 ;
  wire \sum_value[11]_i_55_n_0 ;
  wire \sum_value[11]_i_56_n_0 ;
  wire \sum_value[11]_i_57_n_0 ;
  wire \sum_value[11]_i_58_n_0 ;
  wire \sum_value[11]_i_59_n_0 ;
  wire \sum_value[11]_i_5_n_0 ;
  wire \sum_value[11]_i_60_n_0 ;
  wire \sum_value[11]_i_61_n_0 ;
  wire \sum_value[11]_i_62_n_0 ;
  wire \sum_value[11]_i_63_n_0 ;
  wire \sum_value[11]_i_64_n_0 ;
  wire \sum_value[11]_i_65_n_0 ;
  wire \sum_value[11]_i_6_n_0 ;
  wire \sum_value[11]_i_7_n_0 ;
  wire \sum_value[11]_i_8_n_0 ;
  wire \sum_value[11]_i_9_n_0 ;
  wire \sum_value[15]_i_10_n_0 ;
  wire \sum_value[15]_i_11_n_0 ;
  wire \sum_value[15]_i_12_n_0 ;
  wire \sum_value[15]_i_17_n_0 ;
  wire \sum_value[15]_i_18_n_0 ;
  wire \sum_value[15]_i_19_n_0 ;
  wire \sum_value[15]_i_20_n_0 ;
  wire \sum_value[15]_i_21_n_0 ;
  wire \sum_value[15]_i_22_n_0 ;
  wire \sum_value[15]_i_23_n_0 ;
  wire \sum_value[15]_i_24_n_0 ;
  wire \sum_value[15]_i_25_n_0 ;
  wire \sum_value[15]_i_26_n_0 ;
  wire \sum_value[15]_i_27_n_0 ;
  wire \sum_value[15]_i_28_n_0 ;
  wire \sum_value[15]_i_29_n_0 ;
  wire \sum_value[15]_i_2_n_0 ;
  wire \sum_value[15]_i_30_n_0 ;
  wire \sum_value[15]_i_31_n_0 ;
  wire \sum_value[15]_i_32_n_0 ;
  wire \sum_value[15]_i_33_n_0 ;
  wire \sum_value[15]_i_34_n_0 ;
  wire \sum_value[15]_i_35_n_0 ;
  wire \sum_value[15]_i_36_n_0 ;
  wire \sum_value[15]_i_37_n_0 ;
  wire \sum_value[15]_i_38_n_0 ;
  wire \sum_value[15]_i_39_n_0 ;
  wire \sum_value[15]_i_3_n_0 ;
  wire \sum_value[15]_i_40_n_0 ;
  wire \sum_value[15]_i_41_n_0 ;
  wire \sum_value[15]_i_42_n_0 ;
  wire \sum_value[15]_i_43_n_0 ;
  wire \sum_value[15]_i_44_n_0 ;
  wire \sum_value[15]_i_45_n_0 ;
  wire \sum_value[15]_i_46_n_0 ;
  wire \sum_value[15]_i_47_n_0 ;
  wire \sum_value[15]_i_48_n_0 ;
  wire \sum_value[15]_i_49_n_0 ;
  wire \sum_value[15]_i_4_n_0 ;
  wire \sum_value[15]_i_52_n_0 ;
  wire \sum_value[15]_i_53_n_0 ;
  wire \sum_value[15]_i_54_n_0 ;
  wire \sum_value[15]_i_55_n_0 ;
  wire \sum_value[15]_i_56_n_0 ;
  wire \sum_value[15]_i_57_n_0 ;
  wire \sum_value[15]_i_58_n_0 ;
  wire \sum_value[15]_i_59_n_0 ;
  wire \sum_value[15]_i_5_n_0 ;
  wire \sum_value[15]_i_60_n_0 ;
  wire \sum_value[15]_i_61_n_0 ;
  wire \sum_value[15]_i_62_n_0 ;
  wire \sum_value[15]_i_63_n_0 ;
  wire \sum_value[15]_i_64_n_0 ;
  wire \sum_value[15]_i_65_n_0 ;
  wire \sum_value[15]_i_66_n_0 ;
  wire \sum_value[15]_i_67_n_0 ;
  wire \sum_value[15]_i_6_n_0 ;
  wire \sum_value[15]_i_7_n_0 ;
  wire \sum_value[15]_i_8_n_0 ;
  wire \sum_value[15]_i_9_n_0 ;
  wire \sum_value[19]_i_11_n_0 ;
  wire \sum_value[19]_i_12_n_0 ;
  wire \sum_value[19]_i_13_n_0 ;
  wire \sum_value[19]_i_18_n_0 ;
  wire \sum_value[19]_i_19_n_0 ;
  wire \sum_value[19]_i_20_n_0 ;
  wire \sum_value[19]_i_21_n_0 ;
  wire \sum_value[19]_i_22_n_0 ;
  wire \sum_value[19]_i_23_n_0 ;
  wire \sum_value[19]_i_24_n_0 ;
  wire \sum_value[19]_i_25_n_0 ;
  wire \sum_value[19]_i_26_n_0 ;
  wire \sum_value[19]_i_27_n_0 ;
  wire \sum_value[19]_i_28_n_0 ;
  wire \sum_value[19]_i_29_n_0 ;
  wire \sum_value[19]_i_2_n_0 ;
  wire \sum_value[19]_i_30_n_0 ;
  wire \sum_value[19]_i_31_n_0 ;
  wire \sum_value[19]_i_32_n_0 ;
  wire \sum_value[19]_i_33_n_0 ;
  wire \sum_value[19]_i_34_n_0 ;
  wire \sum_value[19]_i_35_n_0 ;
  wire \sum_value[19]_i_36_n_0 ;
  wire \sum_value[19]_i_37_n_0 ;
  wire \sum_value[19]_i_38_n_0 ;
  wire \sum_value[19]_i_39_n_0 ;
  wire \sum_value[19]_i_3_n_0 ;
  wire \sum_value[19]_i_40_n_0 ;
  wire \sum_value[19]_i_41_n_0 ;
  wire \sum_value[19]_i_42_n_0 ;
  wire \sum_value[19]_i_43_n_0 ;
  wire \sum_value[19]_i_44_n_0 ;
  wire \sum_value[19]_i_45_n_0 ;
  wire \sum_value[19]_i_46_n_0 ;
  wire \sum_value[19]_i_47_n_0 ;
  wire \sum_value[19]_i_48_n_0 ;
  wire \sum_value[19]_i_49_n_0 ;
  wire \sum_value[19]_i_4_n_0 ;
  wire \sum_value[19]_i_50_n_0 ;
  wire \sum_value[19]_i_51_n_0 ;
  wire \sum_value[19]_i_52_n_0 ;
  wire \sum_value[19]_i_53_n_0 ;
  wire \sum_value[19]_i_54_n_0 ;
  wire \sum_value[19]_i_57_n_0 ;
  wire \sum_value[19]_i_58_n_0 ;
  wire \sum_value[19]_i_59_n_0 ;
  wire \sum_value[19]_i_5_n_0 ;
  wire \sum_value[19]_i_60_n_0 ;
  wire \sum_value[19]_i_61_n_0 ;
  wire \sum_value[19]_i_62_n_0 ;
  wire \sum_value[19]_i_63_n_0 ;
  wire \sum_value[19]_i_64_n_0 ;
  wire \sum_value[19]_i_65_n_0 ;
  wire \sum_value[19]_i_66_n_0 ;
  wire \sum_value[19]_i_67_n_0 ;
  wire \sum_value[19]_i_68_n_0 ;
  wire \sum_value[19]_i_69_n_0 ;
  wire \sum_value[19]_i_6_n_0 ;
  wire \sum_value[19]_i_70_n_0 ;
  wire \sum_value[19]_i_71_n_0 ;
  wire \sum_value[19]_i_72_n_0 ;
  wire \sum_value[19]_i_7_n_0 ;
  wire \sum_value[19]_i_8_n_0 ;
  wire \sum_value[19]_i_9_n_0 ;
  wire \sum_value[20]_i_10_n_0 ;
  wire \sum_value[20]_i_11_n_0 ;
  wire \sum_value[20]_i_12_n_0 ;
  wire \sum_value[20]_i_13_n_0 ;
  wire \sum_value[20]_i_14_n_0 ;
  wire \sum_value[20]_i_15_n_0 ;
  wire \sum_value[20]_i_16_n_0 ;
  wire \sum_value[20]_i_17_n_0 ;
  wire \sum_value[20]_i_18_n_0 ;
  wire \sum_value[20]_i_19_n_0 ;
  wire \sum_value[20]_i_20_n_0 ;
  wire \sum_value[20]_i_21_n_0 ;
  wire \sum_value[20]_i_26_n_0 ;
  wire \sum_value[20]_i_27_n_0 ;
  wire \sum_value[20]_i_28_n_0 ;
  wire \sum_value[20]_i_29_n_0 ;
  wire \sum_value[20]_i_30_n_0 ;
  wire \sum_value[20]_i_31_n_0 ;
  wire \sum_value[20]_i_32_n_0 ;
  wire \sum_value[20]_i_33_n_0 ;
  wire \sum_value[20]_i_34_n_0 ;
  wire \sum_value[20]_i_35_n_0 ;
  wire \sum_value[20]_i_36_n_0 ;
  wire \sum_value[20]_i_37_n_0 ;
  wire \sum_value[20]_i_38_n_0 ;
  wire \sum_value[20]_i_39_n_0 ;
  wire \sum_value[20]_i_3_n_0 ;
  wire \sum_value[20]_i_40_n_0 ;
  wire \sum_value[20]_i_41_n_0 ;
  wire \sum_value[20]_i_42_n_0 ;
  wire \sum_value[20]_i_43_n_0 ;
  wire \sum_value[20]_i_44_n_0 ;
  wire \sum_value[20]_i_45_n_0 ;
  wire \sum_value[20]_i_46_n_0 ;
  wire \sum_value[20]_i_47_n_0 ;
  wire \sum_value[20]_i_8_n_0 ;
  wire \sum_value[20]_i_9_n_0 ;
  wire \sum_value[7]_i_10_n_0 ;
  wire \sum_value[7]_i_11_n_0 ;
  wire \sum_value[7]_i_12_n_0 ;
  wire \sum_value[7]_i_13_n_0 ;
  wire \sum_value[7]_i_15_n_0 ;
  wire \sum_value[7]_i_16_n_0 ;
  wire \sum_value[7]_i_17_n_0 ;
  wire \sum_value[7]_i_18_n_0 ;
  wire \sum_value[7]_i_19_n_0 ;
  wire \sum_value[7]_i_20_n_0 ;
  wire \sum_value[7]_i_21_n_0 ;
  wire \sum_value[7]_i_25_n_0 ;
  wire \sum_value[7]_i_26_n_0 ;
  wire \sum_value[7]_i_27_n_0 ;
  wire \sum_value[7]_i_28_n_0 ;
  wire \sum_value[7]_i_29_n_0 ;
  wire \sum_value[7]_i_30_n_0 ;
  wire \sum_value[7]_i_31_n_0 ;
  wire \sum_value[7]_i_32_n_0 ;
  wire \sum_value[7]_i_33_n_0 ;
  wire \sum_value[7]_i_34_n_0 ;
  wire \sum_value[7]_i_35_n_0 ;
  wire \sum_value[7]_i_36_n_0 ;
  wire \sum_value[7]_i_37_n_0 ;
  wire \sum_value[7]_i_38_n_0 ;
  wire \sum_value[7]_i_39_n_0 ;
  wire \sum_value[7]_i_3_n_0 ;
  wire \sum_value[7]_i_40_n_0 ;
  wire \sum_value[7]_i_41_n_0 ;
  wire \sum_value[7]_i_42_n_0 ;
  wire \sum_value[7]_i_43_n_0 ;
  wire \sum_value[7]_i_44_n_0 ;
  wire \sum_value[7]_i_45_n_0 ;
  wire \sum_value[7]_i_46_n_0 ;
  wire \sum_value[7]_i_47_n_0 ;
  wire \sum_value[7]_i_48_n_0 ;
  wire \sum_value[7]_i_49_n_0 ;
  wire \sum_value[7]_i_4_n_0 ;
  wire \sum_value[7]_i_50_n_0 ;
  wire \sum_value[7]_i_51_n_0 ;
  wire \sum_value[7]_i_52_n_0 ;
  wire \sum_value[7]_i_53_n_0 ;
  wire \sum_value[7]_i_54_n_0 ;
  wire \sum_value[7]_i_5_n_0 ;
  wire \sum_value[7]_i_6_n_0 ;
  wire \sum_value[7]_i_7_n_0 ;
  wire \sum_value[7]_i_8_n_0 ;
  wire \sum_value[7]_i_9_n_0 ;
  wire \sum_value_reg[11]_i_13_n_0 ;
  wire \sum_value_reg[11]_i_13_n_1 ;
  wire \sum_value_reg[11]_i_13_n_2 ;
  wire \sum_value_reg[11]_i_13_n_3 ;
  wire \sum_value_reg[11]_i_13_n_4 ;
  wire \sum_value_reg[11]_i_13_n_5 ;
  wire \sum_value_reg[11]_i_13_n_6 ;
  wire \sum_value_reg[11]_i_13_n_7 ;
  wire \sum_value_reg[11]_i_14_n_0 ;
  wire \sum_value_reg[11]_i_14_n_1 ;
  wire \sum_value_reg[11]_i_14_n_2 ;
  wire \sum_value_reg[11]_i_14_n_3 ;
  wire \sum_value_reg[11]_i_14_n_4 ;
  wire \sum_value_reg[11]_i_14_n_5 ;
  wire \sum_value_reg[11]_i_14_n_6 ;
  wire \sum_value_reg[11]_i_14_n_7 ;
  wire \sum_value_reg[11]_i_15_n_0 ;
  wire \sum_value_reg[11]_i_15_n_1 ;
  wire \sum_value_reg[11]_i_15_n_2 ;
  wire \sum_value_reg[11]_i_15_n_3 ;
  wire \sum_value_reg[11]_i_15_n_4 ;
  wire \sum_value_reg[11]_i_15_n_5 ;
  wire \sum_value_reg[11]_i_15_n_6 ;
  wire \sum_value_reg[11]_i_15_n_7 ;
  wire \sum_value_reg[11]_i_16_n_0 ;
  wire \sum_value_reg[11]_i_16_n_1 ;
  wire \sum_value_reg[11]_i_16_n_2 ;
  wire \sum_value_reg[11]_i_16_n_3 ;
  wire \sum_value_reg[11]_i_16_n_4 ;
  wire \sum_value_reg[11]_i_16_n_5 ;
  wire \sum_value_reg[11]_i_16_n_6 ;
  wire \sum_value_reg[11]_i_16_n_7 ;
  wire \sum_value_reg[11]_i_1_n_0 ;
  wire \sum_value_reg[11]_i_1_n_1 ;
  wire \sum_value_reg[11]_i_1_n_2 ;
  wire \sum_value_reg[11]_i_1_n_3 ;
  wire \sum_value_reg[11]_i_50_n_0 ;
  wire \sum_value_reg[11]_i_50_n_1 ;
  wire \sum_value_reg[11]_i_50_n_2 ;
  wire \sum_value_reg[11]_i_50_n_3 ;
  wire \sum_value_reg[11]_i_50_n_4 ;
  wire \sum_value_reg[11]_i_50_n_5 ;
  wire \sum_value_reg[11]_i_50_n_6 ;
  wire \sum_value_reg[11]_i_50_n_7 ;
  wire \sum_value_reg[11]_i_51_n_0 ;
  wire \sum_value_reg[11]_i_51_n_1 ;
  wire \sum_value_reg[11]_i_51_n_2 ;
  wire \sum_value_reg[11]_i_51_n_3 ;
  wire \sum_value_reg[11]_i_51_n_4 ;
  wire \sum_value_reg[11]_i_51_n_5 ;
  wire \sum_value_reg[11]_i_51_n_6 ;
  wire \sum_value_reg[11]_i_51_n_7 ;
  wire \sum_value_reg[15]_i_13_n_0 ;
  wire \sum_value_reg[15]_i_13_n_1 ;
  wire \sum_value_reg[15]_i_13_n_2 ;
  wire \sum_value_reg[15]_i_13_n_3 ;
  wire \sum_value_reg[15]_i_13_n_4 ;
  wire \sum_value_reg[15]_i_13_n_5 ;
  wire \sum_value_reg[15]_i_13_n_6 ;
  wire \sum_value_reg[15]_i_13_n_7 ;
  wire \sum_value_reg[15]_i_14_n_0 ;
  wire \sum_value_reg[15]_i_14_n_1 ;
  wire \sum_value_reg[15]_i_14_n_2 ;
  wire \sum_value_reg[15]_i_14_n_3 ;
  wire \sum_value_reg[15]_i_14_n_4 ;
  wire \sum_value_reg[15]_i_14_n_5 ;
  wire \sum_value_reg[15]_i_14_n_6 ;
  wire \sum_value_reg[15]_i_14_n_7 ;
  wire \sum_value_reg[15]_i_15_n_0 ;
  wire \sum_value_reg[15]_i_15_n_1 ;
  wire \sum_value_reg[15]_i_15_n_2 ;
  wire \sum_value_reg[15]_i_15_n_3 ;
  wire \sum_value_reg[15]_i_15_n_4 ;
  wire \sum_value_reg[15]_i_15_n_5 ;
  wire \sum_value_reg[15]_i_15_n_6 ;
  wire \sum_value_reg[15]_i_15_n_7 ;
  wire \sum_value_reg[15]_i_16_n_0 ;
  wire \sum_value_reg[15]_i_16_n_1 ;
  wire \sum_value_reg[15]_i_16_n_2 ;
  wire \sum_value_reg[15]_i_16_n_3 ;
  wire \sum_value_reg[15]_i_16_n_4 ;
  wire \sum_value_reg[15]_i_16_n_5 ;
  wire \sum_value_reg[15]_i_16_n_6 ;
  wire \sum_value_reg[15]_i_16_n_7 ;
  wire \sum_value_reg[15]_i_1_n_0 ;
  wire \sum_value_reg[15]_i_1_n_1 ;
  wire \sum_value_reg[15]_i_1_n_2 ;
  wire \sum_value_reg[15]_i_1_n_3 ;
  wire \sum_value_reg[15]_i_50_n_0 ;
  wire \sum_value_reg[15]_i_50_n_1 ;
  wire \sum_value_reg[15]_i_50_n_2 ;
  wire \sum_value_reg[15]_i_50_n_3 ;
  wire \sum_value_reg[15]_i_50_n_4 ;
  wire \sum_value_reg[15]_i_50_n_5 ;
  wire \sum_value_reg[15]_i_50_n_6 ;
  wire \sum_value_reg[15]_i_50_n_7 ;
  wire \sum_value_reg[15]_i_51_n_0 ;
  wire \sum_value_reg[15]_i_51_n_1 ;
  wire \sum_value_reg[15]_i_51_n_2 ;
  wire \sum_value_reg[15]_i_51_n_3 ;
  wire \sum_value_reg[15]_i_51_n_4 ;
  wire \sum_value_reg[15]_i_51_n_5 ;
  wire \sum_value_reg[15]_i_51_n_6 ;
  wire \sum_value_reg[15]_i_51_n_7 ;
  wire \sum_value_reg[19]_i_10_n_1 ;
  wire \sum_value_reg[19]_i_10_n_3 ;
  wire \sum_value_reg[19]_i_10_n_6 ;
  wire \sum_value_reg[19]_i_10_n_7 ;
  wire \sum_value_reg[19]_i_14_n_0 ;
  wire \sum_value_reg[19]_i_14_n_1 ;
  wire \sum_value_reg[19]_i_14_n_2 ;
  wire \sum_value_reg[19]_i_14_n_3 ;
  wire \sum_value_reg[19]_i_14_n_4 ;
  wire \sum_value_reg[19]_i_14_n_5 ;
  wire \sum_value_reg[19]_i_14_n_6 ;
  wire \sum_value_reg[19]_i_14_n_7 ;
  wire \sum_value_reg[19]_i_15_n_0 ;
  wire \sum_value_reg[19]_i_15_n_1 ;
  wire \sum_value_reg[19]_i_15_n_2 ;
  wire \sum_value_reg[19]_i_15_n_3 ;
  wire \sum_value_reg[19]_i_15_n_4 ;
  wire \sum_value_reg[19]_i_15_n_5 ;
  wire \sum_value_reg[19]_i_15_n_6 ;
  wire \sum_value_reg[19]_i_15_n_7 ;
  wire \sum_value_reg[19]_i_16_n_0 ;
  wire \sum_value_reg[19]_i_16_n_1 ;
  wire \sum_value_reg[19]_i_16_n_2 ;
  wire \sum_value_reg[19]_i_16_n_3 ;
  wire \sum_value_reg[19]_i_16_n_4 ;
  wire \sum_value_reg[19]_i_16_n_5 ;
  wire \sum_value_reg[19]_i_16_n_6 ;
  wire \sum_value_reg[19]_i_16_n_7 ;
  wire \sum_value_reg[19]_i_17_n_0 ;
  wire \sum_value_reg[19]_i_17_n_1 ;
  wire \sum_value_reg[19]_i_17_n_2 ;
  wire \sum_value_reg[19]_i_17_n_3 ;
  wire \sum_value_reg[19]_i_17_n_4 ;
  wire \sum_value_reg[19]_i_17_n_5 ;
  wire \sum_value_reg[19]_i_17_n_6 ;
  wire \sum_value_reg[19]_i_17_n_7 ;
  wire \sum_value_reg[19]_i_1_n_0 ;
  wire \sum_value_reg[19]_i_1_n_1 ;
  wire \sum_value_reg[19]_i_1_n_2 ;
  wire \sum_value_reg[19]_i_1_n_3 ;
  wire \sum_value_reg[19]_i_55_n_0 ;
  wire \sum_value_reg[19]_i_55_n_1 ;
  wire \sum_value_reg[19]_i_55_n_2 ;
  wire \sum_value_reg[19]_i_55_n_3 ;
  wire \sum_value_reg[19]_i_55_n_4 ;
  wire \sum_value_reg[19]_i_55_n_5 ;
  wire \sum_value_reg[19]_i_55_n_6 ;
  wire \sum_value_reg[19]_i_55_n_7 ;
  wire \sum_value_reg[19]_i_56_n_0 ;
  wire \sum_value_reg[19]_i_56_n_1 ;
  wire \sum_value_reg[19]_i_56_n_2 ;
  wire \sum_value_reg[19]_i_56_n_3 ;
  wire \sum_value_reg[19]_i_56_n_4 ;
  wire \sum_value_reg[19]_i_56_n_5 ;
  wire \sum_value_reg[19]_i_56_n_6 ;
  wire \sum_value_reg[19]_i_56_n_7 ;
  wire \sum_value_reg[20]_i_22_n_1 ;
  wire \sum_value_reg[20]_i_22_n_3 ;
  wire \sum_value_reg[20]_i_22_n_6 ;
  wire \sum_value_reg[20]_i_22_n_7 ;
  wire \sum_value_reg[20]_i_23_n_1 ;
  wire \sum_value_reg[20]_i_23_n_3 ;
  wire \sum_value_reg[20]_i_23_n_6 ;
  wire \sum_value_reg[20]_i_23_n_7 ;
  wire \sum_value_reg[20]_i_24_n_0 ;
  wire \sum_value_reg[20]_i_24_n_1 ;
  wire \sum_value_reg[20]_i_24_n_2 ;
  wire \sum_value_reg[20]_i_24_n_3 ;
  wire \sum_value_reg[20]_i_24_n_4 ;
  wire \sum_value_reg[20]_i_24_n_5 ;
  wire \sum_value_reg[20]_i_24_n_6 ;
  wire \sum_value_reg[20]_i_24_n_7 ;
  wire \sum_value_reg[20]_i_25_n_0 ;
  wire \sum_value_reg[20]_i_25_n_1 ;
  wire \sum_value_reg[20]_i_25_n_2 ;
  wire \sum_value_reg[20]_i_25_n_3 ;
  wire \sum_value_reg[20]_i_25_n_4 ;
  wire \sum_value_reg[20]_i_25_n_5 ;
  wire \sum_value_reg[20]_i_25_n_6 ;
  wire \sum_value_reg[20]_i_25_n_7 ;
  wire \sum_value_reg[20]_i_4_n_0 ;
  wire \sum_value_reg[20]_i_4_n_1 ;
  wire \sum_value_reg[20]_i_4_n_2 ;
  wire \sum_value_reg[20]_i_4_n_3 ;
  wire \sum_value_reg[20]_i_4_n_4 ;
  wire \sum_value_reg[20]_i_4_n_5 ;
  wire \sum_value_reg[20]_i_4_n_6 ;
  wire \sum_value_reg[20]_i_4_n_7 ;
  wire \sum_value_reg[20]_i_5_n_1 ;
  wire \sum_value_reg[20]_i_5_n_3 ;
  wire \sum_value_reg[20]_i_5_n_6 ;
  wire \sum_value_reg[20]_i_5_n_7 ;
  wire \sum_value_reg[20]_i_6_n_1 ;
  wire \sum_value_reg[20]_i_6_n_3 ;
  wire \sum_value_reg[20]_i_6_n_6 ;
  wire \sum_value_reg[20]_i_6_n_7 ;
  wire \sum_value_reg[20]_i_7_n_3 ;
  wire \sum_value_reg[7]_i_14_n_0 ;
  wire \sum_value_reg[7]_i_14_n_1 ;
  wire \sum_value_reg[7]_i_14_n_2 ;
  wire \sum_value_reg[7]_i_14_n_3 ;
  wire \sum_value_reg[7]_i_14_n_4 ;
  wire \sum_value_reg[7]_i_14_n_5 ;
  wire \sum_value_reg[7]_i_14_n_6 ;
  wire \sum_value_reg[7]_i_14_n_7 ;
  wire \sum_value_reg[7]_i_1_n_0 ;
  wire \sum_value_reg[7]_i_1_n_1 ;
  wire \sum_value_reg[7]_i_1_n_2 ;
  wire \sum_value_reg[7]_i_1_n_3 ;
  wire \sum_value_reg[7]_i_22_n_0 ;
  wire \sum_value_reg[7]_i_22_n_1 ;
  wire \sum_value_reg[7]_i_22_n_2 ;
  wire \sum_value_reg[7]_i_22_n_3 ;
  wire \sum_value_reg[7]_i_22_n_4 ;
  wire \sum_value_reg[7]_i_22_n_5 ;
  wire \sum_value_reg[7]_i_22_n_6 ;
  wire \sum_value_reg[7]_i_22_n_7 ;
  wire \sum_value_reg[7]_i_23_n_0 ;
  wire \sum_value_reg[7]_i_23_n_1 ;
  wire \sum_value_reg[7]_i_23_n_2 ;
  wire \sum_value_reg[7]_i_23_n_3 ;
  wire \sum_value_reg[7]_i_23_n_4 ;
  wire \sum_value_reg[7]_i_23_n_5 ;
  wire \sum_value_reg[7]_i_23_n_6 ;
  wire \sum_value_reg[7]_i_23_n_7 ;
  wire \sum_value_reg[7]_i_24_n_0 ;
  wire \sum_value_reg[7]_i_24_n_1 ;
  wire \sum_value_reg[7]_i_24_n_2 ;
  wire \sum_value_reg[7]_i_24_n_3 ;
  wire \sum_value_reg[7]_i_24_n_4 ;
  wire \sum_value_reg[7]_i_24_n_5 ;
  wire \sum_value_reg[7]_i_24_n_6 ;
  wire \sum_value_reg[7]_i_24_n_7 ;
  wire \sum_value_reg[7]_i_2_n_0 ;
  wire \sum_value_reg[7]_i_2_n_1 ;
  wire \sum_value_reg[7]_i_2_n_2 ;
  wire \sum_value_reg[7]_i_2_n_3 ;
  wire temp_value;
  wire [16:0]\temp_value_reg[0]_15 ;
  wire [16:0]\temp_value_reg[10]_9 ;
  wire [16:0]\temp_value_reg[11]_10 ;
  wire [16:0]\temp_value_reg[12]_11 ;
  wire [16:0]\temp_value_reg[13]_12 ;
  wire [16:0]\temp_value_reg[14]_13 ;
  wire [16:0]\temp_value_reg[15]_14 ;
  wire [16:0]\temp_value_reg[1]_0 ;
  wire [16:0]\temp_value_reg[2]_1 ;
  wire [16:0]\temp_value_reg[3]_2 ;
  wire [16:0]\temp_value_reg[4]_3 ;
  wire [16:0]\temp_value_reg[5]_4 ;
  wire [16:0]\temp_value_reg[6]_5 ;
  wire [16:0]\temp_value_reg[7]_6 ;
  wire [16:0]\temp_value_reg[8]_7 ;
  wire [16:0]\temp_value_reg[9]_8 ;
  wire trig;
  wire trig_i_4_n_0;
  wire trig_i_5_n_0;
  wire trig_i_6_n_0;
  wire trig_reg_0;
  wire usec_clk_n_1;
  wire usec_clk_n_10;
  wire usec_clk_n_11;
  wire usec_clk_n_12;
  wire usec_clk_n_13;
  wire usec_clk_n_14;
  wire usec_clk_n_15;
  wire usec_clk_n_16;
  wire usec_clk_n_17;
  wire usec_clk_n_18;
  wire usec_clk_n_19;
  wire usec_clk_n_3;
  wire usec_clk_n_4;
  wire usec_clk_n_5;
  wire usec_clk_n_6;
  wire usec_clk_n_7;
  wire usec_clk_n_8;
  wire usec_clk_n_9;
  wire [3:0]\NLW_distance_cm_reg[0]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_distance_cm_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[0]_i_3_O_UNCONNECTED ;
  wire [1:0]\NLW_distance_cm_reg[0]_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[0]_i_52_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[11]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_distance_cm_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_distance_cm_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED ;
  wire [3:2]\NLW_distance_cm_reg[11]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[11]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_distance_cm_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_distance_cm_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_distance_cm_reg[11]_i_45_O_UNCONNECTED ;
  wire [3:3]\NLW_distance_cm_reg[11]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_value_reg[19]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_value_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_value_reg[20]_i_22_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_value_reg[20]_i_23_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_value_reg[20]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_value_reg[20]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_value_reg[20]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_sum_value_reg[20]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_value_reg[7]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    count_usec_e
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(count_usec_e_n_0));
  FDCE count_usec_e_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(count_usec_e__0),
        .Q(count_usec_e_reg_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_6),
        .Q(count_usec_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[10] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_12),
        .Q(count_usec_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[11] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_11),
        .Q(count_usec_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[12] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_18),
        .Q(count_usec_reg[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[13] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_17),
        .Q(count_usec_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[14] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_16),
        .Q(count_usec_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[15] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_15),
        .Q(count_usec_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[16] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_19),
        .Q(count_usec_reg[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_5),
        .Q(count_usec_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_4),
        .Q(count_usec_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_3),
        .Q(count_usec_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_10),
        .Q(count_usec_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_9),
        .Q(count_usec_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_8),
        .Q(count_usec_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_7),
        .Q(count_usec_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[8] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_14),
        .Q(count_usec_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[9] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(SR),
        .D(usec_clk_n_13),
        .Q(count_usec_reg[9]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[0]_i_1 
       (.I0(\distance_cm_reg[0]_i_2_n_4 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[3]_i_2_n_7 ),
        .O(\distance_cm[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[0]_i_10 
       (.I0(\distance_cm[0]_i_6_n_0 ),
        .I1(\distance_cm[0]_i_23_n_0 ),
        .I2(p_0_in_0[7]),
        .I3(\distance_cm_reg[0]_i_22_n_5 ),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[8]),
        .O(\distance_cm[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[0]_i_11 
       (.I0(\distance_cm[0]_i_7_n_0 ),
        .I1(\distance_cm[0]_i_24_n_0 ),
        .I2(p_0_in_0[6]),
        .I3(\distance_cm_reg[0]_i_22_n_6 ),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[7]),
        .O(\distance_cm[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[0]_i_13 
       (.I0(\distance_cm[0]_i_33_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[0]),
        .I4(\distance_cm_reg[0]_i_34_n_4 ),
        .O(\distance_cm[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \distance_cm[0]_i_14 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[0]),
        .I2(\distance_cm_reg[0]_i_34_n_4 ),
        .I3(p_0_in_0[4]),
        .I4(\distance_cm[0]_i_33_n_0 ),
        .O(\distance_cm[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \distance_cm[0]_i_15 
       (.I0(p_0_in_0[0]),
        .I1(\distance_cm_reg[0]_i_34_n_4 ),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[3]),
        .O(\distance_cm[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_16 
       (.I0(p_0_in_0[3]),
        .I1(\distance_cm_reg[0]_i_34_n_6 ),
        .I2(p_0_in_0[1]),
        .O(\distance_cm[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[0]_i_17 
       (.I0(\distance_cm[0]_i_13_n_0 ),
        .I1(\distance_cm[0]_i_25_n_0 ),
        .I2(p_0_in_0[5]),
        .I3(\distance_cm_reg[0]_i_22_n_7 ),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[6]),
        .O(\distance_cm[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966669666969699)) 
    \distance_cm[0]_i_18 
       (.I0(\distance_cm[0]_i_33_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[5]),
        .I3(\distance_cm_reg[0]_i_34_n_4 ),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\distance_cm[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h6A56)) 
    \distance_cm[0]_i_19 
       (.I0(\distance_cm[0]_i_15_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\distance_cm_reg[0]_i_34_n_5 ),
        .I3(p_0_in_0[4]),
        .O(\distance_cm[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_20 
       (.I0(p_0_in_0[1]),
        .I1(\distance_cm_reg[0]_i_34_n_6 ),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .I4(\distance_cm_reg[0]_i_34_n_5 ),
        .I5(p_0_in_0[2]),
        .O(\distance_cm[0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[0]_i_21 
       (.I0(p_0_in_0[10]),
        .I1(\distance_cm_reg[4]_i_12_n_7 ),
        .I2(p_0_in_0[5]),
        .O(\distance_cm[0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[0]_i_23 
       (.I0(p_0_in_0[9]),
        .I1(\distance_cm_reg[0]_i_22_n_4 ),
        .I2(p_0_in_0[4]),
        .O(\distance_cm[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[0]_i_24 
       (.I0(p_0_in_0[8]),
        .I1(\distance_cm_reg[0]_i_22_n_5 ),
        .I2(p_0_in_0[3]),
        .O(\distance_cm[0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[0]_i_25 
       (.I0(p_0_in_0[7]),
        .I1(\distance_cm_reg[0]_i_22_n_6 ),
        .I2(p_0_in_0[2]),
        .O(\distance_cm[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_26 
       (.I0(p_0_in_0[2]),
        .I1(\distance_cm_reg[0]_i_34_n_7 ),
        .I2(p_0_in_0[0]),
        .O(\distance_cm[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \distance_cm[0]_i_27 
       (.I0(p_0_in_0[2]),
        .I1(\distance_cm_reg[0]_i_34_n_7 ),
        .I2(p_0_in_0[0]),
        .O(\distance_cm[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[0]_i_28 
       (.I0(\distance_cm_reg[0]_i_43_n_5 ),
        .I1(p_0_in_0[0]),
        .O(\distance_cm[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_29 
       (.I0(p_0_in_0[0]),
        .I1(\distance_cm_reg[0]_i_34_n_7 ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(\distance_cm_reg[0]_i_34_n_6 ),
        .I5(p_0_in_0[1]),
        .O(\distance_cm[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \distance_cm[0]_i_30 
       (.I0(p_0_in_0[2]),
        .I1(\distance_cm_reg[0]_i_34_n_7 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\distance_cm_reg[0]_i_43_n_4 ),
        .O(\distance_cm[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \distance_cm[0]_i_31 
       (.I0(p_0_in_0[0]),
        .I1(\distance_cm_reg[0]_i_43_n_5 ),
        .I2(\distance_cm_reg[0]_i_43_n_4 ),
        .I3(p_0_in_0[1]),
        .O(\distance_cm[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance_cm[0]_i_32 
       (.I0(p_0_in_0[0]),
        .I1(\distance_cm_reg[0]_i_43_n_5 ),
        .O(\distance_cm[0]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[0]_i_33 
       (.I0(p_0_in_0[6]),
        .I1(\distance_cm_reg[0]_i_22_n_7 ),
        .I2(p_0_in_0[1]),
        .O(\distance_cm[0]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_35 
       (.I0(p_0_in_0[14]),
        .I1(p_0_in_0[10]),
        .I2(p_0_in_0[12]),
        .O(\distance_cm[0]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_36 
       (.I0(p_0_in_0[13]),
        .I1(p_0_in_0[9]),
        .I2(p_0_in_0[11]),
        .O(\distance_cm[0]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_37 
       (.I0(p_0_in_0[12]),
        .I1(p_0_in_0[8]),
        .I2(p_0_in_0[10]),
        .O(\distance_cm[0]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_38 
       (.I0(p_0_in_0[11]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[9]),
        .O(\distance_cm[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_39 
       (.I0(p_0_in_0[12]),
        .I1(p_0_in_0[10]),
        .I2(p_0_in_0[14]),
        .I3(p_0_in_0[15]),
        .I4(p_0_in_0[11]),
        .I5(p_0_in_0[13]),
        .O(\distance_cm[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[0]_i_4 
       (.I0(\distance_cm[0]_i_21_n_0 ),
        .I1(p_0_in_0[8]),
        .I2(p_0_in_0[9]),
        .I3(p_0_in_0[4]),
        .I4(\distance_cm_reg[0]_i_22_n_4 ),
        .O(\distance_cm[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_40 
       (.I0(p_0_in_0[11]),
        .I1(p_0_in_0[9]),
        .I2(p_0_in_0[13]),
        .I3(p_0_in_0[14]),
        .I4(p_0_in_0[10]),
        .I5(p_0_in_0[12]),
        .O(\distance_cm[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_41 
       (.I0(p_0_in_0[10]),
        .I1(p_0_in_0[8]),
        .I2(p_0_in_0[12]),
        .I3(p_0_in_0[13]),
        .I4(p_0_in_0[9]),
        .I5(p_0_in_0[11]),
        .O(\distance_cm[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_42 
       (.I0(p_0_in_0[9]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[11]),
        .I3(p_0_in_0[12]),
        .I4(p_0_in_0[8]),
        .I5(p_0_in_0[10]),
        .O(\distance_cm[0]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_44 
       (.I0(p_0_in_0[10]),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[8]),
        .O(\distance_cm[0]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_45 
       (.I0(p_0_in_0[9]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[7]),
        .O(\distance_cm[0]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_46 
       (.I0(p_0_in_0[8]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[6]),
        .O(\distance_cm[0]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_47 
       (.I0(p_0_in_0[7]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[5]),
        .O(\distance_cm[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_48 
       (.I0(p_0_in_0[8]),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[10]),
        .I3(p_0_in_0[11]),
        .I4(p_0_in_0[7]),
        .I5(p_0_in_0[9]),
        .O(\distance_cm[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_49 
       (.I0(p_0_in_0[7]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[9]),
        .I3(p_0_in_0[10]),
        .I4(p_0_in_0[6]),
        .I5(p_0_in_0[8]),
        .O(\distance_cm[0]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[0]_i_5 
       (.I0(\distance_cm[0]_i_23_n_0 ),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[8]),
        .I3(p_0_in_0[3]),
        .I4(\distance_cm_reg[0]_i_22_n_5 ),
        .O(\distance_cm[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_50 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[8]),
        .I3(p_0_in_0[9]),
        .I4(p_0_in_0[5]),
        .I5(p_0_in_0[7]),
        .O(\distance_cm[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_51 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[8]),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[6]),
        .O(\distance_cm[0]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_53 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[4]),
        .O(\distance_cm[0]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[0]_i_54 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .O(\distance_cm[0]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \distance_cm[0]_i_55 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .O(\distance_cm[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_56 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[7]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[5]),
        .O(\distance_cm[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[0]_i_57 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[6]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[4]),
        .O(\distance_cm[0]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \distance_cm[0]_i_58 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[0]),
        .O(\distance_cm[0]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \distance_cm[0]_i_59 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[2]),
        .O(\distance_cm[0]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[0]_i_6 
       (.I0(\distance_cm[0]_i_24_n_0 ),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[2]),
        .I4(\distance_cm_reg[0]_i_22_n_6 ),
        .O(\distance_cm[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distance_cm[0]_i_60 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[3]),
        .O(\distance_cm[0]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distance_cm[0]_i_61 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .O(\distance_cm[0]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance_cm[0]_i_62 
       (.I0(p_0_in_0[1]),
        .O(\distance_cm[0]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[0]_i_7 
       (.I0(\distance_cm[0]_i_25_n_0 ),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[1]),
        .I4(\distance_cm_reg[0]_i_22_n_7 ),
        .O(\distance_cm[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[0]_i_8 
       (.I0(\distance_cm[0]_i_4_n_0 ),
        .I1(\distance_cm[4]_i_15_n_0 ),
        .I2(p_0_in_0[9]),
        .I3(\distance_cm_reg[4]_i_12_n_7 ),
        .I4(p_0_in_0[5]),
        .I5(p_0_in_0[10]),
        .O(\distance_cm[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[0]_i_9 
       (.I0(\distance_cm[0]_i_5_n_0 ),
        .I1(\distance_cm[0]_i_21_n_0 ),
        .I2(p_0_in_0[8]),
        .I3(\distance_cm_reg[0]_i_22_n_4 ),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[9]),
        .O(\distance_cm[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[10]_i_1 
       (.I0(\distance_cm_reg[11]_i_2_n_6 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[11]_i_5_n_5 ),
        .O(\distance_cm[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[11]_i_1 
       (.I0(\distance_cm_reg[11]_i_2_n_5 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[11]_i_5_n_4 ),
        .O(\distance_cm[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCC93)) 
    \distance_cm[11]_i_10 
       (.I0(p_0_in_0[13]),
        .I1(p_0_in_0[15]),
        .I2(\distance_cm_reg[11]_i_24_n_1 ),
        .I3(p_0_in_0[14]),
        .O(\distance_cm[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_12 
       (.I0(\distance_cm_reg[11]_i_4_n_7 ),
        .I1(p_0_in_0[15]),
        .O(\distance_cm[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_13 
       (.I0(\distance_cm_reg[11]_i_20_n_4 ),
        .I1(p_0_in_0[14]),
        .O(\distance_cm[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_14 
       (.I0(\distance_cm_reg[11]_i_20_n_5 ),
        .I1(p_0_in_0[13]),
        .O(\distance_cm[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_15 
       (.I0(\distance_cm_reg[11]_i_20_n_6 ),
        .I1(p_0_in_0[12]),
        .O(\distance_cm[11]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_16 
       (.I0(p_0_in_0[15]),
        .I1(\distance_cm_reg[11]_i_4_n_7 ),
        .I2(\distance_cm_reg[11]_i_4_n_6 ),
        .I3(p_0_in_0[16]),
        .O(\distance_cm[11]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_17 
       (.I0(p_0_in_0[14]),
        .I1(\distance_cm_reg[11]_i_20_n_4 ),
        .I2(\distance_cm_reg[11]_i_4_n_7 ),
        .I3(p_0_in_0[15]),
        .O(\distance_cm[11]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_18 
       (.I0(p_0_in_0[13]),
        .I1(\distance_cm_reg[11]_i_20_n_5 ),
        .I2(\distance_cm_reg[11]_i_20_n_4 ),
        .I3(p_0_in_0[14]),
        .O(\distance_cm[11]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_19 
       (.I0(p_0_in_0[12]),
        .I1(\distance_cm_reg[11]_i_20_n_6 ),
        .I2(\distance_cm_reg[11]_i_20_n_5 ),
        .I3(p_0_in_0[13]),
        .O(\distance_cm[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_21 
       (.I0(\distance_cm_reg[8]_i_2_n_4 ),
        .I1(\distance_cm_reg[11]_i_2_n_5 ),
        .O(\distance_cm[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distance_cm[11]_i_22 
       (.I0(\distance_cm_reg[11]_i_2_n_7 ),
        .I1(\distance_cm_reg[11]_i_2_n_6 ),
        .O(\distance_cm[11]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \distance_cm[11]_i_23 
       (.I0(\distance_cm_reg[11]_i_2_n_5 ),
        .I1(\distance_cm_reg[8]_i_2_n_4 ),
        .I2(\distance_cm_reg[11]_i_2_n_7 ),
        .O(\distance_cm[11]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_26 
       (.I0(\distance_cm_reg[11]_i_20_n_7 ),
        .I1(p_0_in_0[11]),
        .O(\distance_cm[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_27 
       (.I0(\distance_cm_reg[11]_i_34_n_4 ),
        .I1(p_0_in_0[10]),
        .O(\distance_cm[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_28 
       (.I0(\distance_cm_reg[11]_i_34_n_5 ),
        .I1(p_0_in_0[9]),
        .O(\distance_cm[11]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_29 
       (.I0(\distance_cm_reg[11]_i_34_n_6 ),
        .I1(p_0_in_0[8]),
        .O(\distance_cm[11]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_30 
       (.I0(p_0_in_0[11]),
        .I1(\distance_cm_reg[11]_i_20_n_7 ),
        .I2(\distance_cm_reg[11]_i_20_n_6 ),
        .I3(p_0_in_0[12]),
        .O(\distance_cm[11]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_31 
       (.I0(p_0_in_0[10]),
        .I1(\distance_cm_reg[11]_i_34_n_4 ),
        .I2(\distance_cm_reg[11]_i_20_n_7 ),
        .I3(p_0_in_0[11]),
        .O(\distance_cm[11]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_32 
       (.I0(p_0_in_0[9]),
        .I1(\distance_cm_reg[11]_i_34_n_5 ),
        .I2(\distance_cm_reg[11]_i_34_n_4 ),
        .I3(p_0_in_0[10]),
        .O(\distance_cm[11]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_33 
       (.I0(p_0_in_0[8]),
        .I1(\distance_cm_reg[11]_i_34_n_6 ),
        .I2(\distance_cm_reg[11]_i_34_n_5 ),
        .I3(p_0_in_0[9]),
        .O(\distance_cm[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_35 
       (.I0(\distance_cm_reg[8]_i_2_n_5 ),
        .I1(\distance_cm_reg[11]_i_2_n_6 ),
        .O(\distance_cm[11]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_36 
       (.I0(\distance_cm_reg[11]_i_2_n_7 ),
        .I1(\distance_cm_reg[8]_i_2_n_6 ),
        .I2(\distance_cm_reg[11]_i_2_n_5 ),
        .O(\distance_cm[11]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_37 
       (.I0(\distance_cm_reg[8]_i_2_n_4 ),
        .I1(\distance_cm_reg[8]_i_2_n_7 ),
        .I2(\distance_cm_reg[11]_i_2_n_6 ),
        .O(\distance_cm[11]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_38 
       (.I0(\distance_cm_reg[8]_i_2_n_5 ),
        .I1(\distance_cm_reg[4]_i_2_n_4 ),
        .I2(\distance_cm_reg[11]_i_2_n_7 ),
        .O(\distance_cm[11]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_39 
       (.I0(\distance_cm_reg[11]_i_2_n_6 ),
        .I1(\distance_cm_reg[8]_i_2_n_5 ),
        .I2(\distance_cm_reg[8]_i_2_n_4 ),
        .I3(\distance_cm_reg[11]_i_2_n_5 ),
        .O(\distance_cm[11]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \distance_cm[11]_i_40 
       (.I0(\distance_cm_reg[11]_i_2_n_5 ),
        .I1(\distance_cm_reg[8]_i_2_n_6 ),
        .I2(\distance_cm_reg[11]_i_2_n_7 ),
        .I3(\distance_cm_reg[8]_i_2_n_5 ),
        .I4(\distance_cm_reg[11]_i_2_n_6 ),
        .O(\distance_cm[11]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_41 
       (.I0(\distance_cm_reg[11]_i_2_n_6 ),
        .I1(\distance_cm_reg[8]_i_2_n_7 ),
        .I2(\distance_cm_reg[8]_i_2_n_4 ),
        .I3(\distance_cm_reg[11]_i_2_n_7 ),
        .I4(\distance_cm_reg[8]_i_2_n_6 ),
        .I5(\distance_cm_reg[11]_i_2_n_5 ),
        .O(\distance_cm[11]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_42 
       (.I0(\distance_cm_reg[11]_i_2_n_7 ),
        .I1(\distance_cm_reg[4]_i_2_n_4 ),
        .I2(\distance_cm_reg[8]_i_2_n_5 ),
        .I3(\distance_cm_reg[8]_i_2_n_4 ),
        .I4(\distance_cm_reg[8]_i_2_n_7 ),
        .I5(\distance_cm_reg[11]_i_2_n_6 ),
        .O(\distance_cm[11]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance_cm[11]_i_43 
       (.I0(p_0_in_0[16]),
        .O(\distance_cm[11]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \distance_cm[11]_i_44 
       (.I0(p_0_in_0[15]),
        .I1(p_0_in_0[16]),
        .O(\distance_cm[11]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_46 
       (.I0(\distance_cm_reg[11]_i_34_n_7 ),
        .I1(p_0_in_0[7]),
        .O(\distance_cm[11]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_47 
       (.I0(\distance_cm_reg[11]_i_54_n_4 ),
        .I1(p_0_in_0[6]),
        .O(\distance_cm[11]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[11]_i_48 
       (.I0(\distance_cm_reg[11]_i_54_n_5 ),
        .I1(p_0_in_0[5]),
        .O(\distance_cm[11]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[11]_i_49 
       (.I0(\distance_cm_reg[11]_i_54_n_6 ),
        .I1(p_0_in_0[4]),
        .O(\distance_cm[11]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_50 
       (.I0(p_0_in_0[7]),
        .I1(\distance_cm_reg[11]_i_34_n_7 ),
        .I2(\distance_cm_reg[11]_i_34_n_6 ),
        .I3(p_0_in_0[8]),
        .O(\distance_cm[11]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_51 
       (.I0(p_0_in_0[6]),
        .I1(\distance_cm_reg[11]_i_54_n_4 ),
        .I2(\distance_cm_reg[11]_i_34_n_7 ),
        .I3(p_0_in_0[7]),
        .O(\distance_cm[11]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \distance_cm[11]_i_52 
       (.I0(p_0_in_0[5]),
        .I1(\distance_cm_reg[11]_i_54_n_5 ),
        .I2(\distance_cm_reg[11]_i_54_n_4 ),
        .I3(p_0_in_0[6]),
        .O(\distance_cm[11]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \distance_cm[11]_i_53 
       (.I0(p_0_in_0[4]),
        .I1(\distance_cm_reg[11]_i_54_n_6 ),
        .I2(\distance_cm_reg[11]_i_54_n_5 ),
        .I3(p_0_in_0[5]),
        .O(\distance_cm[11]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_55 
       (.I0(\distance_cm_reg[8]_i_2_n_6 ),
        .I1(\distance_cm_reg[4]_i_2_n_5 ),
        .I2(\distance_cm_reg[8]_i_2_n_4 ),
        .O(\distance_cm[11]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_56 
       (.I0(\distance_cm_reg[8]_i_2_n_7 ),
        .I1(\distance_cm_reg[4]_i_2_n_6 ),
        .I2(\distance_cm_reg[8]_i_2_n_5 ),
        .O(\distance_cm[11]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_57 
       (.I0(\distance_cm_reg[4]_i_2_n_4 ),
        .I1(\distance_cm_reg[4]_i_2_n_7 ),
        .I2(\distance_cm_reg[8]_i_2_n_6 ),
        .O(\distance_cm[11]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[11]_i_58 
       (.I0(\distance_cm_reg[4]_i_2_n_5 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .I2(\distance_cm_reg[8]_i_2_n_7 ),
        .O(\distance_cm[11]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_59 
       (.I0(\distance_cm_reg[8]_i_2_n_4 ),
        .I1(\distance_cm_reg[4]_i_2_n_5 ),
        .I2(\distance_cm_reg[8]_i_2_n_6 ),
        .I3(\distance_cm_reg[8]_i_2_n_5 ),
        .I4(\distance_cm_reg[4]_i_2_n_4 ),
        .I5(\distance_cm_reg[11]_i_2_n_7 ),
        .O(\distance_cm[11]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \distance_cm[11]_i_6 
       (.I0(p_0_in_0[14]),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[15]),
        .O(\distance_cm[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_60 
       (.I0(\distance_cm_reg[8]_i_2_n_5 ),
        .I1(\distance_cm_reg[4]_i_2_n_6 ),
        .I2(\distance_cm_reg[8]_i_2_n_7 ),
        .I3(\distance_cm_reg[8]_i_2_n_6 ),
        .I4(\distance_cm_reg[4]_i_2_n_5 ),
        .I5(\distance_cm_reg[8]_i_2_n_4 ),
        .O(\distance_cm[11]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_61 
       (.I0(\distance_cm_reg[8]_i_2_n_6 ),
        .I1(\distance_cm_reg[4]_i_2_n_7 ),
        .I2(\distance_cm_reg[4]_i_2_n_4 ),
        .I3(\distance_cm_reg[8]_i_2_n_7 ),
        .I4(\distance_cm_reg[4]_i_2_n_6 ),
        .I5(\distance_cm_reg[8]_i_2_n_5 ),
        .O(\distance_cm[11]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[11]_i_62 
       (.I0(\distance_cm_reg[8]_i_2_n_7 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .I2(\distance_cm_reg[4]_i_2_n_5 ),
        .I3(\distance_cm_reg[4]_i_2_n_4 ),
        .I4(\distance_cm_reg[4]_i_2_n_7 ),
        .I5(\distance_cm_reg[8]_i_2_n_6 ),
        .O(\distance_cm[11]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[11]_i_63 
       (.I0(\distance_cm_reg[11]_i_54_n_7 ),
        .I1(p_0_in_0[3]),
        .O(\distance_cm[11]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_64 
       (.I0(\distance_cm_reg[4]_i_2_n_7 ),
        .I1(p_0_in_0[2]),
        .O(\distance_cm[11]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[11]_i_65 
       (.I0(\distance_cm_reg[0]_i_2_n_4 ),
        .I1(p_0_in_0[1]),
        .O(\distance_cm[11]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \distance_cm[11]_i_66 
       (.I0(p_0_in_0[3]),
        .I1(\distance_cm_reg[11]_i_54_n_7 ),
        .I2(\distance_cm_reg[11]_i_54_n_6 ),
        .I3(p_0_in_0[4]),
        .O(\distance_cm[11]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \distance_cm[11]_i_67 
       (.I0(p_0_in_0[2]),
        .I1(\distance_cm_reg[4]_i_2_n_7 ),
        .I2(\distance_cm_reg[11]_i_54_n_7 ),
        .I3(p_0_in_0[3]),
        .O(\distance_cm[11]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \distance_cm[11]_i_68 
       (.I0(p_0_in_0[1]),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .I2(\distance_cm_reg[4]_i_2_n_7 ),
        .I3(p_0_in_0[2]),
        .O(\distance_cm[11]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance_cm[11]_i_69 
       (.I0(p_0_in_0[1]),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .O(\distance_cm[11]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \distance_cm[11]_i_7 
       (.I0(p_0_in_0[13]),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[14]),
        .O(\distance_cm[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \distance_cm[11]_i_70 
       (.I0(\distance_cm_reg[4]_i_2_n_5 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .I2(\distance_cm_reg[8]_i_2_n_7 ),
        .O(\distance_cm[11]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cm[11]_i_71 
       (.I0(\distance_cm_reg[4]_i_2_n_5 ),
        .I1(\distance_cm_reg[4]_i_2_n_7 ),
        .O(\distance_cm[11]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \distance_cm[11]_i_72 
       (.I0(\distance_cm_reg[4]_i_2_n_6 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .O(\distance_cm[11]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \distance_cm[11]_i_73 
       (.I0(\distance_cm_reg[4]_i_2_n_5 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .I2(\distance_cm_reg[8]_i_2_n_7 ),
        .I3(\distance_cm_reg[4]_i_2_n_6 ),
        .I4(\distance_cm_reg[4]_i_2_n_4 ),
        .O(\distance_cm[11]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \distance_cm[11]_i_74 
       (.I0(\distance_cm_reg[4]_i_2_n_7 ),
        .I1(\distance_cm_reg[4]_i_2_n_5 ),
        .I2(\distance_cm_reg[4]_i_2_n_6 ),
        .I3(\distance_cm_reg[4]_i_2_n_4 ),
        .O(\distance_cm[11]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \distance_cm[11]_i_75 
       (.I0(\distance_cm_reg[0]_i_2_n_4 ),
        .I1(\distance_cm_reg[4]_i_2_n_6 ),
        .I2(\distance_cm_reg[4]_i_2_n_7 ),
        .I3(\distance_cm_reg[4]_i_2_n_5 ),
        .O(\distance_cm[11]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance_cm[11]_i_76 
       (.I0(\distance_cm_reg[4]_i_2_n_6 ),
        .I1(\distance_cm_reg[0]_i_2_n_4 ),
        .O(\distance_cm[11]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \distance_cm[11]_i_8 
       (.I0(p_0_in_0[15]),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[16]),
        .O(\distance_cm[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hCC93)) 
    \distance_cm[11]_i_9 
       (.I0(p_0_in_0[14]),
        .I1(p_0_in_0[16]),
        .I2(\distance_cm_reg[11]_i_24_n_1 ),
        .I3(p_0_in_0[15]),
        .O(\distance_cm[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[1]_i_1 
       (.I0(\distance_cm_reg[4]_i_2_n_7 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[3]_i_2_n_6 ),
        .O(\distance_cm[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[2]_i_1 
       (.I0(\distance_cm_reg[4]_i_2_n_6 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[3]_i_2_n_5 ),
        .O(\distance_cm[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[3]_i_1 
       (.I0(\distance_cm_reg[4]_i_2_n_5 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[3]_i_2_n_4 ),
        .O(\distance_cm[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance_cm[3]_i_3 
       (.I0(\distance_cm_reg[0]_i_2_n_4 ),
        .O(\distance_cm[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[4]_i_1 
       (.I0(\distance_cm_reg[4]_i_2_n_4 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[7]_i_2_n_7 ),
        .O(\distance_cm[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[4]_i_10 
       (.I0(\distance_cm[4]_i_6_n_0 ),
        .I1(\distance_cm[4]_i_14_n_0 ),
        .I2(p_0_in_0[10]),
        .I3(\distance_cm_reg[4]_i_12_n_6 ),
        .I4(p_0_in_0[6]),
        .I5(p_0_in_0[11]),
        .O(\distance_cm[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[4]_i_11 
       (.I0(p_0_in_0[14]),
        .I1(\distance_cm_reg[11]_i_24_n_7 ),
        .I2(p_0_in_0[9]),
        .O(\distance_cm[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[4]_i_13 
       (.I0(p_0_in_0[13]),
        .I1(\distance_cm_reg[4]_i_12_n_4 ),
        .I2(p_0_in_0[8]),
        .O(\distance_cm[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[4]_i_14 
       (.I0(p_0_in_0[12]),
        .I1(\distance_cm_reg[4]_i_12_n_5 ),
        .I2(p_0_in_0[7]),
        .O(\distance_cm[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[4]_i_15 
       (.I0(p_0_in_0[11]),
        .I1(\distance_cm_reg[4]_i_12_n_6 ),
        .I2(p_0_in_0[6]),
        .O(\distance_cm[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \distance_cm[4]_i_16 
       (.I0(p_0_in_0[16]),
        .I1(p_0_in_0[14]),
        .O(\distance_cm[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \distance_cm[4]_i_17 
       (.I0(p_0_in_0[15]),
        .I1(p_0_in_0[13]),
        .O(\distance_cm[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[4]_i_18 
       (.I0(p_0_in_0[16]),
        .I1(p_0_in_0[12]),
        .I2(p_0_in_0[14]),
        .O(\distance_cm[4]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \distance_cm[4]_i_19 
       (.I0(p_0_in_0[15]),
        .I1(p_0_in_0[11]),
        .I2(p_0_in_0[13]),
        .O(\distance_cm[4]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \distance_cm[4]_i_20 
       (.I0(p_0_in_0[14]),
        .I1(p_0_in_0[16]),
        .I2(p_0_in_0[15]),
        .O(\distance_cm[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \distance_cm[4]_i_21 
       (.I0(p_0_in_0[13]),
        .I1(p_0_in_0[15]),
        .I2(p_0_in_0[14]),
        .I3(p_0_in_0[16]),
        .O(\distance_cm[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \distance_cm[4]_i_22 
       (.I0(p_0_in_0[14]),
        .I1(p_0_in_0[12]),
        .I2(p_0_in_0[16]),
        .I3(p_0_in_0[13]),
        .I4(p_0_in_0[15]),
        .O(\distance_cm[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \distance_cm[4]_i_23 
       (.I0(p_0_in_0[13]),
        .I1(p_0_in_0[11]),
        .I2(p_0_in_0[15]),
        .I3(p_0_in_0[16]),
        .I4(p_0_in_0[12]),
        .I5(p_0_in_0[14]),
        .O(\distance_cm[4]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[4]_i_3 
       (.I0(\distance_cm[4]_i_11_n_0 ),
        .I1(p_0_in_0[12]),
        .I2(p_0_in_0[13]),
        .I3(p_0_in_0[8]),
        .I4(\distance_cm_reg[4]_i_12_n_4 ),
        .O(\distance_cm[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[4]_i_4 
       (.I0(\distance_cm[4]_i_13_n_0 ),
        .I1(p_0_in_0[11]),
        .I2(p_0_in_0[12]),
        .I3(p_0_in_0[7]),
        .I4(\distance_cm_reg[4]_i_12_n_5 ),
        .O(\distance_cm[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[4]_i_5 
       (.I0(\distance_cm[4]_i_14_n_0 ),
        .I1(p_0_in_0[10]),
        .I2(p_0_in_0[11]),
        .I3(p_0_in_0[6]),
        .I4(\distance_cm_reg[4]_i_12_n_6 ),
        .O(\distance_cm[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[4]_i_6 
       (.I0(\distance_cm[4]_i_15_n_0 ),
        .I1(p_0_in_0[9]),
        .I2(p_0_in_0[10]),
        .I3(p_0_in_0[5]),
        .I4(\distance_cm_reg[4]_i_12_n_7 ),
        .O(\distance_cm[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[4]_i_7 
       (.I0(\distance_cm[4]_i_3_n_0 ),
        .I1(\distance_cm[8]_i_12_n_0 ),
        .I2(p_0_in_0[13]),
        .I3(\distance_cm_reg[11]_i_24_n_7 ),
        .I4(p_0_in_0[9]),
        .I5(p_0_in_0[14]),
        .O(\distance_cm[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[4]_i_8 
       (.I0(\distance_cm[4]_i_4_n_0 ),
        .I1(\distance_cm[4]_i_11_n_0 ),
        .I2(p_0_in_0[12]),
        .I3(\distance_cm_reg[4]_i_12_n_4 ),
        .I4(p_0_in_0[8]),
        .I5(p_0_in_0[13]),
        .O(\distance_cm[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[4]_i_9 
       (.I0(\distance_cm[4]_i_5_n_0 ),
        .I1(\distance_cm[4]_i_13_n_0 ),
        .I2(p_0_in_0[11]),
        .I3(\distance_cm_reg[4]_i_12_n_5 ),
        .I4(p_0_in_0[7]),
        .I5(p_0_in_0[12]),
        .O(\distance_cm[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[5]_i_1 
       (.I0(\distance_cm_reg[8]_i_2_n_7 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[7]_i_2_n_6 ),
        .O(\distance_cm[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[6]_i_1 
       (.I0(\distance_cm_reg[8]_i_2_n_6 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[7]_i_2_n_5 ),
        .O(\distance_cm[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[7]_i_1 
       (.I0(\distance_cm_reg[8]_i_2_n_5 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[7]_i_2_n_4 ),
        .O(\distance_cm[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[8]_i_1 
       (.I0(\distance_cm_reg[8]_i_2_n_4 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[11]_i_5_n_7 ),
        .O(\distance_cm[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \distance_cm[8]_i_10 
       (.I0(\distance_cm[8]_i_6_n_0 ),
        .I1(\distance_cm[8]_i_11_n_0 ),
        .I2(p_0_in_0[14]),
        .I3(\distance_cm_reg[11]_i_24_n_6 ),
        .I4(p_0_in_0[10]),
        .I5(p_0_in_0[15]),
        .O(\distance_cm[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \distance_cm[8]_i_11 
       (.I0(p_0_in_0[16]),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[11]),
        .O(\distance_cm[8]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \distance_cm[8]_i_12 
       (.I0(p_0_in_0[15]),
        .I1(\distance_cm_reg[11]_i_24_n_6 ),
        .I2(p_0_in_0[10]),
        .O(\distance_cm[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF674)) 
    \distance_cm[8]_i_3 
       (.I0(\distance_cm_reg[11]_i_24_n_1 ),
        .I1(p_0_in_0[13]),
        .I2(p_0_in_0[16]),
        .I3(p_0_in_0[12]),
        .O(\distance_cm[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h74F66074)) 
    \distance_cm[8]_i_4 
       (.I0(\distance_cm_reg[11]_i_24_n_1 ),
        .I1(p_0_in_0[12]),
        .I2(p_0_in_0[15]),
        .I3(p_0_in_0[16]),
        .I4(p_0_in_0[11]),
        .O(\distance_cm[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[8]_i_5 
       (.I0(\distance_cm[8]_i_11_n_0 ),
        .I1(p_0_in_0[14]),
        .I2(p_0_in_0[15]),
        .I3(p_0_in_0[10]),
        .I4(\distance_cm_reg[11]_i_24_n_6 ),
        .O(\distance_cm[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \distance_cm[8]_i_6 
       (.I0(\distance_cm[8]_i_12_n_0 ),
        .I1(p_0_in_0[13]),
        .I2(p_0_in_0[14]),
        .I3(p_0_in_0[9]),
        .I4(\distance_cm_reg[11]_i_24_n_7 ),
        .O(\distance_cm[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h78F0E1C3)) 
    \distance_cm[8]_i_7 
       (.I0(p_0_in_0[12]),
        .I1(p_0_in_0[16]),
        .I2(p_0_in_0[14]),
        .I3(\distance_cm_reg[11]_i_24_n_1 ),
        .I4(p_0_in_0[13]),
        .O(\distance_cm[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96695AA5)) 
    \distance_cm[8]_i_8 
       (.I0(\distance_cm[8]_i_4_n_0 ),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[13]),
        .I3(p_0_in_0[16]),
        .I4(p_0_in_0[12]),
        .O(\distance_cm[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5AA5699696695AA5)) 
    \distance_cm[8]_i_9 
       (.I0(\distance_cm[8]_i_5_n_0 ),
        .I1(\distance_cm_reg[11]_i_24_n_1 ),
        .I2(p_0_in_0[12]),
        .I3(p_0_in_0[15]),
        .I4(p_0_in_0[11]),
        .I5(p_0_in_0[16]),
        .O(\distance_cm[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \distance_cm[9]_i_1 
       (.I0(\distance_cm_reg[11]_i_2_n_7 ),
        .I1(\distance_cm_reg[11]_i_3_n_0 ),
        .I2(p_0_in_0[16]),
        .I3(\distance_cm_reg[11]_i_4_n_6 ),
        .I4(\distance_cm_reg[11]_i_5_n_6 ),
        .O(\distance_cm[9]_i_1_n_0 ));
  FDCE \distance_cm_reg[0] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[0]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [0]));
  CARRY4 \distance_cm_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\distance_cm_reg[0]_i_12_n_0 ,\distance_cm_reg[0]_i_12_n_1 ,\distance_cm_reg[0]_i_12_n_2 ,\distance_cm_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_26_n_0 ,\distance_cm[0]_i_27_n_0 ,\distance_cm[0]_i_28_n_0 ,1'b0}),
        .O(\NLW_distance_cm_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\distance_cm[0]_i_29_n_0 ,\distance_cm[0]_i_30_n_0 ,\distance_cm[0]_i_31_n_0 ,\distance_cm[0]_i_32_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_2 
       (.CI(\distance_cm_reg[0]_i_3_n_0 ),
        .CO({\distance_cm_reg[0]_i_2_n_0 ,\distance_cm_reg[0]_i_2_n_1 ,\distance_cm_reg[0]_i_2_n_2 ,\distance_cm_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_4_n_0 ,\distance_cm[0]_i_5_n_0 ,\distance_cm[0]_i_6_n_0 ,\distance_cm[0]_i_7_n_0 }),
        .O({\distance_cm_reg[0]_i_2_n_4 ,\NLW_distance_cm_reg[0]_i_2_O_UNCONNECTED [2:0]}),
        .S({\distance_cm[0]_i_8_n_0 ,\distance_cm[0]_i_9_n_0 ,\distance_cm[0]_i_10_n_0 ,\distance_cm[0]_i_11_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_22 
       (.CI(\distance_cm_reg[0]_i_34_n_0 ),
        .CO({\distance_cm_reg[0]_i_22_n_0 ,\distance_cm_reg[0]_i_22_n_1 ,\distance_cm_reg[0]_i_22_n_2 ,\distance_cm_reg[0]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_35_n_0 ,\distance_cm[0]_i_36_n_0 ,\distance_cm[0]_i_37_n_0 ,\distance_cm[0]_i_38_n_0 }),
        .O({\distance_cm_reg[0]_i_22_n_4 ,\distance_cm_reg[0]_i_22_n_5 ,\distance_cm_reg[0]_i_22_n_6 ,\distance_cm_reg[0]_i_22_n_7 }),
        .S({\distance_cm[0]_i_39_n_0 ,\distance_cm[0]_i_40_n_0 ,\distance_cm[0]_i_41_n_0 ,\distance_cm[0]_i_42_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_3 
       (.CI(\distance_cm_reg[0]_i_12_n_0 ),
        .CO({\distance_cm_reg[0]_i_3_n_0 ,\distance_cm_reg[0]_i_3_n_1 ,\distance_cm_reg[0]_i_3_n_2 ,\distance_cm_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_13_n_0 ,\distance_cm[0]_i_14_n_0 ,\distance_cm[0]_i_15_n_0 ,\distance_cm[0]_i_16_n_0 }),
        .O(\NLW_distance_cm_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\distance_cm[0]_i_17_n_0 ,\distance_cm[0]_i_18_n_0 ,\distance_cm[0]_i_19_n_0 ,\distance_cm[0]_i_20_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_34 
       (.CI(\distance_cm_reg[0]_i_43_n_0 ),
        .CO({\distance_cm_reg[0]_i_34_n_0 ,\distance_cm_reg[0]_i_34_n_1 ,\distance_cm_reg[0]_i_34_n_2 ,\distance_cm_reg[0]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_44_n_0 ,\distance_cm[0]_i_45_n_0 ,\distance_cm[0]_i_46_n_0 ,\distance_cm[0]_i_47_n_0 }),
        .O({\distance_cm_reg[0]_i_34_n_4 ,\distance_cm_reg[0]_i_34_n_5 ,\distance_cm_reg[0]_i_34_n_6 ,\distance_cm_reg[0]_i_34_n_7 }),
        .S({\distance_cm[0]_i_48_n_0 ,\distance_cm[0]_i_49_n_0 ,\distance_cm[0]_i_50_n_0 ,\distance_cm[0]_i_51_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_43 
       (.CI(\distance_cm_reg[0]_i_52_n_0 ),
        .CO({\distance_cm_reg[0]_i_43_n_0 ,\distance_cm_reg[0]_i_43_n_1 ,\distance_cm_reg[0]_i_43_n_2 ,\distance_cm_reg[0]_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[0]_i_53_n_0 ,\distance_cm[0]_i_54_n_0 ,\distance_cm[0]_i_55_n_0 ,p_0_in_0[2]}),
        .O({\distance_cm_reg[0]_i_43_n_4 ,\distance_cm_reg[0]_i_43_n_5 ,\NLW_distance_cm_reg[0]_i_43_O_UNCONNECTED [1:0]}),
        .S({\distance_cm[0]_i_56_n_0 ,\distance_cm[0]_i_57_n_0 ,\distance_cm[0]_i_58_n_0 ,\distance_cm[0]_i_59_n_0 }));
  CARRY4 \distance_cm_reg[0]_i_52 
       (.CI(1'b0),
        .CO({\distance_cm_reg[0]_i_52_n_0 ,\distance_cm_reg[0]_i_52_n_1 ,\distance_cm_reg[0]_i_52_n_2 ,\distance_cm_reg[0]_i_52_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in_0[1:0],1'b0,1'b1}),
        .O(\NLW_distance_cm_reg[0]_i_52_O_UNCONNECTED [3:0]),
        .S({\distance_cm[0]_i_60_n_0 ,\distance_cm[0]_i_61_n_0 ,\distance_cm[0]_i_62_n_0 ,p_0_in_0[0]}));
  FDCE \distance_cm_reg[10] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[10]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [10]));
  FDCE \distance_cm_reg[11] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[11]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [11]));
  CARRY4 \distance_cm_reg[11]_i_11 
       (.CI(\distance_cm_reg[11]_i_25_n_0 ),
        .CO({\distance_cm_reg[11]_i_11_n_0 ,\distance_cm_reg[11]_i_11_n_1 ,\distance_cm_reg[11]_i_11_n_2 ,\distance_cm_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_26_n_0 ,\distance_cm[11]_i_27_n_0 ,\distance_cm[11]_i_28_n_0 ,\distance_cm[11]_i_29_n_0 }),
        .O(\NLW_distance_cm_reg[11]_i_11_O_UNCONNECTED [3:0]),
        .S({\distance_cm[11]_i_30_n_0 ,\distance_cm[11]_i_31_n_0 ,\distance_cm[11]_i_32_n_0 ,\distance_cm[11]_i_33_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_2 
       (.CI(\distance_cm_reg[8]_i_2_n_0 ),
        .CO({\NLW_distance_cm_reg[11]_i_2_CO_UNCONNECTED [3:2],\distance_cm_reg[11]_i_2_n_2 ,\distance_cm_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\distance_cm[11]_i_6_n_0 ,\distance_cm[11]_i_7_n_0 }),
        .O({\NLW_distance_cm_reg[11]_i_2_O_UNCONNECTED [3],\distance_cm_reg[11]_i_2_n_5 ,\distance_cm_reg[11]_i_2_n_6 ,\distance_cm_reg[11]_i_2_n_7 }),
        .S({1'b0,\distance_cm[11]_i_8_n_0 ,\distance_cm[11]_i_9_n_0 ,\distance_cm[11]_i_10_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_20 
       (.CI(\distance_cm_reg[11]_i_34_n_0 ),
        .CO({\distance_cm_reg[11]_i_20_n_0 ,\distance_cm_reg[11]_i_20_n_1 ,\distance_cm_reg[11]_i_20_n_2 ,\distance_cm_reg[11]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_35_n_0 ,\distance_cm[11]_i_36_n_0 ,\distance_cm[11]_i_37_n_0 ,\distance_cm[11]_i_38_n_0 }),
        .O({\distance_cm_reg[11]_i_20_n_4 ,\distance_cm_reg[11]_i_20_n_5 ,\distance_cm_reg[11]_i_20_n_6 ,\distance_cm_reg[11]_i_20_n_7 }),
        .S({\distance_cm[11]_i_39_n_0 ,\distance_cm[11]_i_40_n_0 ,\distance_cm[11]_i_41_n_0 ,\distance_cm[11]_i_42_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_24 
       (.CI(\distance_cm_reg[4]_i_12_n_0 ),
        .CO({\NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED [3],\distance_cm_reg[11]_i_24_n_1 ,\NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED [1],\distance_cm_reg[11]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in_0[16:15]}),
        .O({\NLW_distance_cm_reg[11]_i_24_O_UNCONNECTED [3:2],\distance_cm_reg[11]_i_24_n_6 ,\distance_cm_reg[11]_i_24_n_7 }),
        .S({1'b0,1'b1,\distance_cm[11]_i_43_n_0 ,\distance_cm[11]_i_44_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_25 
       (.CI(\distance_cm_reg[11]_i_45_n_0 ),
        .CO({\distance_cm_reg[11]_i_25_n_0 ,\distance_cm_reg[11]_i_25_n_1 ,\distance_cm_reg[11]_i_25_n_2 ,\distance_cm_reg[11]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_46_n_0 ,\distance_cm[11]_i_47_n_0 ,\distance_cm[11]_i_48_n_0 ,\distance_cm[11]_i_49_n_0 }),
        .O(\NLW_distance_cm_reg[11]_i_25_O_UNCONNECTED [3:0]),
        .S({\distance_cm[11]_i_50_n_0 ,\distance_cm[11]_i_51_n_0 ,\distance_cm[11]_i_52_n_0 ,\distance_cm[11]_i_53_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_3 
       (.CI(\distance_cm_reg[11]_i_11_n_0 ),
        .CO({\distance_cm_reg[11]_i_3_n_0 ,\distance_cm_reg[11]_i_3_n_1 ,\distance_cm_reg[11]_i_3_n_2 ,\distance_cm_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_12_n_0 ,\distance_cm[11]_i_13_n_0 ,\distance_cm[11]_i_14_n_0 ,\distance_cm[11]_i_15_n_0 }),
        .O(\NLW_distance_cm_reg[11]_i_3_O_UNCONNECTED [3:0]),
        .S({\distance_cm[11]_i_16_n_0 ,\distance_cm[11]_i_17_n_0 ,\distance_cm[11]_i_18_n_0 ,\distance_cm[11]_i_19_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_34 
       (.CI(\distance_cm_reg[11]_i_54_n_0 ),
        .CO({\distance_cm_reg[11]_i_34_n_0 ,\distance_cm_reg[11]_i_34_n_1 ,\distance_cm_reg[11]_i_34_n_2 ,\distance_cm_reg[11]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_55_n_0 ,\distance_cm[11]_i_56_n_0 ,\distance_cm[11]_i_57_n_0 ,\distance_cm[11]_i_58_n_0 }),
        .O({\distance_cm_reg[11]_i_34_n_4 ,\distance_cm_reg[11]_i_34_n_5 ,\distance_cm_reg[11]_i_34_n_6 ,\distance_cm_reg[11]_i_34_n_7 }),
        .S({\distance_cm[11]_i_59_n_0 ,\distance_cm[11]_i_60_n_0 ,\distance_cm[11]_i_61_n_0 ,\distance_cm[11]_i_62_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_4 
       (.CI(\distance_cm_reg[11]_i_20_n_0 ),
        .CO({\NLW_distance_cm_reg[11]_i_4_CO_UNCONNECTED [3:1],\distance_cm_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\distance_cm[11]_i_21_n_0 }),
        .O({\NLW_distance_cm_reg[11]_i_4_O_UNCONNECTED [3:2],\distance_cm_reg[11]_i_4_n_6 ,\distance_cm_reg[11]_i_4_n_7 }),
        .S({1'b0,1'b0,\distance_cm[11]_i_22_n_0 ,\distance_cm[11]_i_23_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_45 
       (.CI(1'b0),
        .CO({\distance_cm_reg[11]_i_45_n_0 ,\distance_cm_reg[11]_i_45_n_1 ,\distance_cm_reg[11]_i_45_n_2 ,\distance_cm_reg[11]_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_63_n_0 ,\distance_cm[11]_i_64_n_0 ,\distance_cm[11]_i_65_n_0 ,1'b0}),
        .O(\NLW_distance_cm_reg[11]_i_45_O_UNCONNECTED [3:0]),
        .S({\distance_cm[11]_i_66_n_0 ,\distance_cm[11]_i_67_n_0 ,\distance_cm[11]_i_68_n_0 ,\distance_cm[11]_i_69_n_0 }));
  CARRY4 \distance_cm_reg[11]_i_5 
       (.CI(\distance_cm_reg[7]_i_2_n_0 ),
        .CO({\NLW_distance_cm_reg[11]_i_5_CO_UNCONNECTED [3],\distance_cm_reg[11]_i_5_n_1 ,\distance_cm_reg[11]_i_5_n_2 ,\distance_cm_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\distance_cm_reg[11]_i_5_n_4 ,\distance_cm_reg[11]_i_5_n_5 ,\distance_cm_reg[11]_i_5_n_6 ,\distance_cm_reg[11]_i_5_n_7 }),
        .S({\distance_cm_reg[11]_i_2_n_5 ,\distance_cm_reg[11]_i_2_n_6 ,\distance_cm_reg[11]_i_2_n_7 ,\distance_cm_reg[8]_i_2_n_4 }));
  CARRY4 \distance_cm_reg[11]_i_54 
       (.CI(1'b0),
        .CO({\distance_cm_reg[11]_i_54_n_0 ,\distance_cm_reg[11]_i_54_n_1 ,\distance_cm_reg[11]_i_54_n_2 ,\distance_cm_reg[11]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[11]_i_70_n_0 ,\distance_cm[11]_i_71_n_0 ,\distance_cm[11]_i_72_n_0 ,1'b0}),
        .O({\distance_cm_reg[11]_i_54_n_4 ,\distance_cm_reg[11]_i_54_n_5 ,\distance_cm_reg[11]_i_54_n_6 ,\distance_cm_reg[11]_i_54_n_7 }),
        .S({\distance_cm[11]_i_73_n_0 ,\distance_cm[11]_i_74_n_0 ,\distance_cm[11]_i_75_n_0 ,\distance_cm[11]_i_76_n_0 }));
  FDCE \distance_cm_reg[1] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[1]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [1]));
  FDCE \distance_cm_reg[2] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[2]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [2]));
  FDCE \distance_cm_reg[3] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[3]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [3]));
  CARRY4 \distance_cm_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\distance_cm_reg[3]_i_2_n_0 ,\distance_cm_reg[3]_i_2_n_1 ,\distance_cm_reg[3]_i_2_n_2 ,\distance_cm_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\distance_cm_reg[3]_i_2_n_4 ,\distance_cm_reg[3]_i_2_n_5 ,\distance_cm_reg[3]_i_2_n_6 ,\distance_cm_reg[3]_i_2_n_7 }),
        .S({\distance_cm_reg[4]_i_2_n_5 ,\distance_cm_reg[4]_i_2_n_6 ,\distance_cm_reg[4]_i_2_n_7 ,\distance_cm[3]_i_3_n_0 }));
  FDCE \distance_cm_reg[4] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[4]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [4]));
  CARRY4 \distance_cm_reg[4]_i_12 
       (.CI(\distance_cm_reg[0]_i_22_n_0 ),
        .CO({\distance_cm_reg[4]_i_12_n_0 ,\distance_cm_reg[4]_i_12_n_1 ,\distance_cm_reg[4]_i_12_n_2 ,\distance_cm_reg[4]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[4]_i_16_n_0 ,\distance_cm[4]_i_17_n_0 ,\distance_cm[4]_i_18_n_0 ,\distance_cm[4]_i_19_n_0 }),
        .O({\distance_cm_reg[4]_i_12_n_4 ,\distance_cm_reg[4]_i_12_n_5 ,\distance_cm_reg[4]_i_12_n_6 ,\distance_cm_reg[4]_i_12_n_7 }),
        .S({\distance_cm[4]_i_20_n_0 ,\distance_cm[4]_i_21_n_0 ,\distance_cm[4]_i_22_n_0 ,\distance_cm[4]_i_23_n_0 }));
  CARRY4 \distance_cm_reg[4]_i_2 
       (.CI(\distance_cm_reg[0]_i_2_n_0 ),
        .CO({\distance_cm_reg[4]_i_2_n_0 ,\distance_cm_reg[4]_i_2_n_1 ,\distance_cm_reg[4]_i_2_n_2 ,\distance_cm_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[4]_i_3_n_0 ,\distance_cm[4]_i_4_n_0 ,\distance_cm[4]_i_5_n_0 ,\distance_cm[4]_i_6_n_0 }),
        .O({\distance_cm_reg[4]_i_2_n_4 ,\distance_cm_reg[4]_i_2_n_5 ,\distance_cm_reg[4]_i_2_n_6 ,\distance_cm_reg[4]_i_2_n_7 }),
        .S({\distance_cm[4]_i_7_n_0 ,\distance_cm[4]_i_8_n_0 ,\distance_cm[4]_i_9_n_0 ,\distance_cm[4]_i_10_n_0 }));
  FDCE \distance_cm_reg[5] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[5]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [5]));
  FDCE \distance_cm_reg[6] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[6]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [6]));
  FDCE \distance_cm_reg[7] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[7]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [7]));
  CARRY4 \distance_cm_reg[7]_i_2 
       (.CI(\distance_cm_reg[3]_i_2_n_0 ),
        .CO({\distance_cm_reg[7]_i_2_n_0 ,\distance_cm_reg[7]_i_2_n_1 ,\distance_cm_reg[7]_i_2_n_2 ,\distance_cm_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\distance_cm_reg[7]_i_2_n_4 ,\distance_cm_reg[7]_i_2_n_5 ,\distance_cm_reg[7]_i_2_n_6 ,\distance_cm_reg[7]_i_2_n_7 }),
        .S({\distance_cm_reg[8]_i_2_n_5 ,\distance_cm_reg[8]_i_2_n_6 ,\distance_cm_reg[8]_i_2_n_7 ,\distance_cm_reg[4]_i_2_n_4 }));
  FDCE \distance_cm_reg[8] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[8]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [8]));
  CARRY4 \distance_cm_reg[8]_i_2 
       (.CI(\distance_cm_reg[4]_i_2_n_0 ),
        .CO({\distance_cm_reg[8]_i_2_n_0 ,\distance_cm_reg[8]_i_2_n_1 ,\distance_cm_reg[8]_i_2_n_2 ,\distance_cm_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\distance_cm[8]_i_3_n_0 ,\distance_cm[8]_i_4_n_0 ,\distance_cm[8]_i_5_n_0 ,\distance_cm[8]_i_6_n_0 }),
        .O({\distance_cm_reg[8]_i_2_n_4 ,\distance_cm_reg[8]_i_2_n_5 ,\distance_cm_reg[8]_i_2_n_6 ,\distance_cm_reg[8]_i_2_n_7 }),
        .S({\distance_cm[8]_i_7_n_0 ,\distance_cm[8]_i_8_n_0 ,\distance_cm[8]_i_9_n_0 ,\distance_cm[8]_i_10_n_0 }));
  FDCE \distance_cm_reg[9] 
       (.C(clk_usec),
        .CE(1'b1),
        .CLR(SR),
        .D(\distance_cm[9]_i_1_n_0 ),
        .Q(\distance_cm_reg[11]_0 [9]));
  mblaze_UltraSonic_myip_UltraSonic_0_0_edge_detector_n edg_echo
       (.AR(SR),
        .D({edg_echo_n_0,edg_echo_n_1,edg_echo_n_2}),
        .E(edg_echo_n_4),
        .Q(Q),
        .count_usec_e(count_usec_e__0),
        .count_usec_e_reg(count_usec_e_n_0),
        .count_usec_e_reg_0(\next_state[3]_i_3_n_0 ),
        .data1(data1),
        .echo(echo),
        .\index_reg[0] (edg_echo_n_13),
        .\index_reg[0]_0 (edg_echo_n_14),
        .\index_reg[0]_1 (edg_echo_n_15),
        .\index_reg[0]_2 (edg_echo_n_17),
        .\index_reg[0]_3 (edg_echo_n_18),
        .\index_reg[0]_4 (edg_echo_n_19),
        .\index_reg[1] (temp_value),
        .\index_reg[1]_0 (edg_echo_n_6),
        .\index_reg[1]_1 (edg_echo_n_7),
        .\index_reg[1]_2 (edg_echo_n_10),
        .\index_reg[1]_3 (edg_echo_n_11),
        .\index_reg[3] (edg_echo_n_9),
        .\index_reg[3]_0 (edg_echo_n_12),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(edg_echo_n_8),
        .s00_axi_aresetn_1(edg_echo_n_16),
        .s00_axi_aresetn_2(edg_echo_n_20),
        .\temp_value_reg[15][0] (index_reg));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg[1]),
        .I1(index_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \index[2]_i_1 
       (.I0(index_reg[2]),
        .I1(index_reg[0]),
        .I2(index_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \index[3]_i_2 
       (.I0(index_reg[3]),
        .I1(index_reg[1]),
        .I2(index_reg[0]),
        .I3(index_reg[2]),
        .O(p_0_in__0[3]));
  FDCE \index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_4),
        .CLR(SR),
        .D(\index[0]_i_1_n_0 ),
        .Q(index_reg[0]));
  FDCE \index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_4),
        .CLR(SR),
        .D(p_0_in__0[1]),
        .Q(index_reg[1]));
  FDCE \index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_4),
        .CLR(SR),
        .D(p_0_in__0[2]),
        .Q(index_reg[2]));
  FDCE \index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_4),
        .CLR(SR),
        .D(p_0_in__0[3]),
        .Q(index_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \next_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\next_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFCFFFFFEFFFF)) 
    \next_state[3]_i_1 
       (.I0(\next_state[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(data1),
        .O(\next_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \next_state[3]_i_3 
       (.I0(\next_state[3]_i_4_n_0 ),
        .I1(trig_i_6_n_0),
        .I2(count_usec_reg[16]),
        .I3(count_usec_reg[15]),
        .O(\next_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000E0000000)) 
    \next_state[3]_i_4 
       (.I0(count_usec_reg[5]),
        .I1(count_usec_reg[6]),
        .I2(count_usec_reg[9]),
        .I3(count_usec_reg[10]),
        .I4(count_usec_reg[7]),
        .I5(count_usec_reg[8]),
        .O(\next_state[3]_i_4_n_0 ));
  FDCE \next_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\next_state[3]_i_1_n_0 ),
        .CLR(SR),
        .D(edg_echo_n_2),
        .Q(next_state[0]));
  FDCE \next_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\next_state[3]_i_1_n_0 ),
        .CLR(SR),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]));
  FDCE \next_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\next_state[3]_i_1_n_0 ),
        .CLR(SR),
        .D(edg_echo_n_1),
        .Q(next_state[2]));
  FDCE \next_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\next_state[3]_i_1_n_0 ),
        .CLR(SR),
        .D(edg_echo_n_0),
        .Q(next_state[3]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(SR),
        .Q(Q[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[1]),
        .Q(Q[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[2]),
        .Q(Q[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[3]),
        .Q(Q[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_10 
       (.I0(\sum_value_reg[15]_i_13_n_5 ),
        .I1(\sum_value_reg[15]_i_15_n_5 ),
        .I2(\sum_value_reg[15]_i_14_n_5 ),
        .O(\sum_value[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_11 
       (.I0(\sum_value_reg[15]_i_13_n_6 ),
        .I1(\sum_value_reg[15]_i_15_n_6 ),
        .I2(\sum_value_reg[15]_i_14_n_6 ),
        .O(\sum_value[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_12 
       (.I0(\sum_value_reg[15]_i_13_n_7 ),
        .I1(\sum_value_reg[15]_i_15_n_7 ),
        .I2(\sum_value_reg[15]_i_14_n_7 ),
        .O(\sum_value[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_17 
       (.I0(\sum_value_reg[11]_i_13_n_4 ),
        .I1(\sum_value_reg[11]_i_15_n_4 ),
        .I2(\sum_value_reg[11]_i_14_n_4 ),
        .O(\sum_value[11]_i_17_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_18 
       (.I0(\temp_value_reg[5]_4 [6]),
        .I1(\temp_value_reg[6]_5 [6]),
        .I2(\temp_value_reg[7]_6 [6]),
        .O(\sum_value[11]_i_18_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_19 
       (.I0(\temp_value_reg[5]_4 [5]),
        .I1(\temp_value_reg[6]_5 [5]),
        .I2(\temp_value_reg[7]_6 [5]),
        .O(\sum_value[11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[11]_i_2 
       (.I0(\sum_value_reg[15]_i_16_n_5 ),
        .I1(\sum_value[11]_i_10_n_0 ),
        .I2(\sum_value_reg[15]_i_13_n_6 ),
        .I3(\sum_value_reg[15]_i_14_n_6 ),
        .I4(\sum_value_reg[15]_i_15_n_6 ),
        .O(\sum_value[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_20 
       (.I0(\temp_value_reg[5]_4 [4]),
        .I1(\temp_value_reg[6]_5 [4]),
        .I2(\temp_value_reg[7]_6 [4]),
        .O(\sum_value[11]_i_20_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_21 
       (.I0(\temp_value_reg[5]_4 [3]),
        .I1(\temp_value_reg[6]_5 [3]),
        .I2(\temp_value_reg[7]_6 [3]),
        .O(\sum_value[11]_i_21_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_22 
       (.I0(\temp_value_reg[5]_4 [7]),
        .I1(\temp_value_reg[6]_5 [7]),
        .I2(\temp_value_reg[7]_6 [7]),
        .I3(\sum_value[11]_i_18_n_0 ),
        .O(\sum_value[11]_i_22_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_23 
       (.I0(\temp_value_reg[5]_4 [6]),
        .I1(\temp_value_reg[6]_5 [6]),
        .I2(\temp_value_reg[7]_6 [6]),
        .I3(\sum_value[11]_i_19_n_0 ),
        .O(\sum_value[11]_i_23_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_24 
       (.I0(\temp_value_reg[5]_4 [5]),
        .I1(\temp_value_reg[6]_5 [5]),
        .I2(\temp_value_reg[7]_6 [5]),
        .I3(\sum_value[11]_i_20_n_0 ),
        .O(\sum_value[11]_i_24_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_25 
       (.I0(\temp_value_reg[5]_4 [4]),
        .I1(\temp_value_reg[6]_5 [4]),
        .I2(\temp_value_reg[7]_6 [4]),
        .I3(\sum_value[11]_i_21_n_0 ),
        .O(\sum_value[11]_i_25_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_26 
       (.I0(\temp_value_reg[2]_1 [6]),
        .I1(\temp_value_reg[3]_2 [6]),
        .I2(\temp_value_reg[4]_3 [6]),
        .O(\sum_value[11]_i_26_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_27 
       (.I0(\temp_value_reg[2]_1 [5]),
        .I1(\temp_value_reg[3]_2 [5]),
        .I2(\temp_value_reg[4]_3 [5]),
        .O(\sum_value[11]_i_27_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_28 
       (.I0(\temp_value_reg[2]_1 [4]),
        .I1(\temp_value_reg[3]_2 [4]),
        .I2(\temp_value_reg[4]_3 [4]),
        .O(\sum_value[11]_i_28_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_29 
       (.I0(\temp_value_reg[2]_1 [3]),
        .I1(\temp_value_reg[3]_2 [3]),
        .I2(\temp_value_reg[4]_3 [3]),
        .O(\sum_value[11]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[11]_i_3 
       (.I0(\sum_value_reg[15]_i_16_n_6 ),
        .I1(\sum_value[11]_i_11_n_0 ),
        .I2(\sum_value_reg[15]_i_13_n_7 ),
        .I3(\sum_value_reg[15]_i_14_n_7 ),
        .I4(\sum_value_reg[15]_i_15_n_7 ),
        .O(\sum_value[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_30 
       (.I0(\temp_value_reg[2]_1 [7]),
        .I1(\temp_value_reg[3]_2 [7]),
        .I2(\temp_value_reg[4]_3 [7]),
        .I3(\sum_value[11]_i_26_n_0 ),
        .O(\sum_value[11]_i_30_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_31 
       (.I0(\temp_value_reg[2]_1 [6]),
        .I1(\temp_value_reg[3]_2 [6]),
        .I2(\temp_value_reg[4]_3 [6]),
        .I3(\sum_value[11]_i_27_n_0 ),
        .O(\sum_value[11]_i_31_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_32 
       (.I0(\temp_value_reg[2]_1 [5]),
        .I1(\temp_value_reg[3]_2 [5]),
        .I2(\temp_value_reg[4]_3 [5]),
        .I3(\sum_value[11]_i_28_n_0 ),
        .O(\sum_value[11]_i_32_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_33 
       (.I0(\temp_value_reg[2]_1 [4]),
        .I1(\temp_value_reg[3]_2 [4]),
        .I2(\temp_value_reg[4]_3 [4]),
        .I3(\sum_value[11]_i_29_n_0 ),
        .O(\sum_value[11]_i_33_n_0 ));
  (* HLUTNM = "lutpair86" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_34 
       (.I0(\sum_value_reg[15]_i_50_n_5 ),
        .I1(\sum_value_reg[15]_i_51_n_5 ),
        .I2(\temp_value_reg[1]_0 [6]),
        .O(\sum_value[11]_i_34_n_0 ));
  (* HLUTNM = "lutpair85" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_35 
       (.I0(\sum_value_reg[15]_i_50_n_6 ),
        .I1(\sum_value_reg[15]_i_51_n_6 ),
        .I2(\temp_value_reg[1]_0 [5]),
        .O(\sum_value[11]_i_35_n_0 ));
  (* HLUTNM = "lutpair84" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_36 
       (.I0(\sum_value_reg[15]_i_50_n_7 ),
        .I1(\sum_value_reg[15]_i_51_n_7 ),
        .I2(\temp_value_reg[1]_0 [4]),
        .O(\sum_value[11]_i_36_n_0 ));
  (* HLUTNM = "lutpair83" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_37 
       (.I0(\sum_value_reg[11]_i_50_n_4 ),
        .I1(\sum_value_reg[11]_i_51_n_4 ),
        .I2(\temp_value_reg[1]_0 [3]),
        .O(\sum_value[11]_i_37_n_0 ));
  (* HLUTNM = "lutpair87" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_38 
       (.I0(\sum_value_reg[15]_i_50_n_4 ),
        .I1(\sum_value_reg[15]_i_51_n_4 ),
        .I2(\temp_value_reg[1]_0 [7]),
        .I3(\sum_value[11]_i_34_n_0 ),
        .O(\sum_value[11]_i_38_n_0 ));
  (* HLUTNM = "lutpair86" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_39 
       (.I0(\sum_value_reg[15]_i_50_n_5 ),
        .I1(\sum_value_reg[15]_i_51_n_5 ),
        .I2(\temp_value_reg[1]_0 [6]),
        .I3(\sum_value[11]_i_35_n_0 ),
        .O(\sum_value[11]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[11]_i_4 
       (.I0(\sum_value_reg[15]_i_16_n_7 ),
        .I1(\sum_value[11]_i_12_n_0 ),
        .I2(\sum_value_reg[11]_i_13_n_4 ),
        .I3(\sum_value_reg[11]_i_14_n_4 ),
        .I4(\sum_value_reg[11]_i_15_n_4 ),
        .O(\sum_value[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair85" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_40 
       (.I0(\sum_value_reg[15]_i_50_n_6 ),
        .I1(\sum_value_reg[15]_i_51_n_6 ),
        .I2(\temp_value_reg[1]_0 [5]),
        .I3(\sum_value[11]_i_36_n_0 ),
        .O(\sum_value[11]_i_40_n_0 ));
  (* HLUTNM = "lutpair84" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_41 
       (.I0(\sum_value_reg[15]_i_50_n_7 ),
        .I1(\sum_value_reg[15]_i_51_n_7 ),
        .I2(\temp_value_reg[1]_0 [4]),
        .I3(\sum_value[11]_i_37_n_0 ),
        .O(\sum_value[11]_i_41_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_42 
       (.I0(\temp_value_reg[8]_7 [6]),
        .I1(\temp_value_reg[9]_8 [6]),
        .I2(\temp_value_reg[10]_9 [6]),
        .O(\sum_value[11]_i_42_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_43 
       (.I0(\temp_value_reg[8]_7 [5]),
        .I1(\temp_value_reg[9]_8 [5]),
        .I2(\temp_value_reg[10]_9 [5]),
        .O(\sum_value[11]_i_43_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_44 
       (.I0(\temp_value_reg[8]_7 [4]),
        .I1(\temp_value_reg[9]_8 [4]),
        .I2(\temp_value_reg[10]_9 [4]),
        .O(\sum_value[11]_i_44_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_45 
       (.I0(\temp_value_reg[8]_7 [3]),
        .I1(\temp_value_reg[9]_8 [3]),
        .I2(\temp_value_reg[10]_9 [3]),
        .O(\sum_value[11]_i_45_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_46 
       (.I0(\temp_value_reg[8]_7 [7]),
        .I1(\temp_value_reg[9]_8 [7]),
        .I2(\temp_value_reg[10]_9 [7]),
        .I3(\sum_value[11]_i_42_n_0 ),
        .O(\sum_value[11]_i_46_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_47 
       (.I0(\temp_value_reg[8]_7 [6]),
        .I1(\temp_value_reg[9]_8 [6]),
        .I2(\temp_value_reg[10]_9 [6]),
        .I3(\sum_value[11]_i_43_n_0 ),
        .O(\sum_value[11]_i_47_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_48 
       (.I0(\temp_value_reg[8]_7 [5]),
        .I1(\temp_value_reg[9]_8 [5]),
        .I2(\temp_value_reg[10]_9 [5]),
        .I3(\sum_value[11]_i_44_n_0 ),
        .O(\sum_value[11]_i_48_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_49 
       (.I0(\temp_value_reg[8]_7 [4]),
        .I1(\temp_value_reg[9]_8 [4]),
        .I2(\temp_value_reg[10]_9 [4]),
        .I3(\sum_value[11]_i_45_n_0 ),
        .O(\sum_value[11]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[11]_i_5 
       (.I0(\sum_value_reg[11]_i_16_n_4 ),
        .I1(\sum_value[11]_i_17_n_0 ),
        .I2(\sum_value_reg[11]_i_13_n_5 ),
        .I3(\sum_value_reg[11]_i_14_n_5 ),
        .I4(\sum_value_reg[11]_i_15_n_5 ),
        .O(\sum_value[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_52 
       (.I0(\temp_value_reg[11]_10 [2]),
        .I1(\temp_value_reg[12]_11 [2]),
        .I2(\temp_value_reg[13]_12 [2]),
        .O(\sum_value[11]_i_52_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_53 
       (.I0(\temp_value_reg[11]_10 [1]),
        .I1(\temp_value_reg[12]_11 [1]),
        .I2(\temp_value_reg[13]_12 [1]),
        .O(\sum_value[11]_i_53_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_54 
       (.I0(\temp_value_reg[11]_10 [0]),
        .I1(\temp_value_reg[12]_11 [0]),
        .I2(\temp_value_reg[13]_12 [0]),
        .O(\sum_value[11]_i_54_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_55 
       (.I0(\temp_value_reg[11]_10 [3]),
        .I1(\temp_value_reg[12]_11 [3]),
        .I2(\temp_value_reg[13]_12 [3]),
        .I3(\sum_value[11]_i_52_n_0 ),
        .O(\sum_value[11]_i_55_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_56 
       (.I0(\temp_value_reg[11]_10 [2]),
        .I1(\temp_value_reg[12]_11 [2]),
        .I2(\temp_value_reg[13]_12 [2]),
        .I3(\sum_value[11]_i_53_n_0 ),
        .O(\sum_value[11]_i_56_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_57 
       (.I0(\temp_value_reg[11]_10 [1]),
        .I1(\temp_value_reg[12]_11 [1]),
        .I2(\temp_value_reg[13]_12 [1]),
        .I3(\sum_value[11]_i_54_n_0 ),
        .O(\sum_value[11]_i_57_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_58 
       (.I0(\temp_value_reg[11]_10 [0]),
        .I1(\temp_value_reg[12]_11 [0]),
        .I2(\temp_value_reg[13]_12 [0]),
        .O(\sum_value[11]_i_58_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_59 
       (.I0(\temp_value_reg[14]_13 [2]),
        .I1(\temp_value_reg[15]_14 [2]),
        .I2(\temp_value_reg[0]_15 [2]),
        .O(\sum_value[11]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[11]_i_6 
       (.I0(\sum_value[11]_i_2_n_0 ),
        .I1(\sum_value[15]_i_17_n_0 ),
        .I2(\sum_value_reg[15]_i_16_n_4 ),
        .I3(\sum_value_reg[15]_i_15_n_5 ),
        .I4(\sum_value_reg[15]_i_14_n_5 ),
        .I5(\sum_value_reg[15]_i_13_n_5 ),
        .O(\sum_value[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_60 
       (.I0(\temp_value_reg[14]_13 [1]),
        .I1(\temp_value_reg[15]_14 [1]),
        .I2(\temp_value_reg[0]_15 [1]),
        .O(\sum_value[11]_i_60_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[11]_i_61 
       (.I0(\temp_value_reg[14]_13 [0]),
        .I1(\temp_value_reg[15]_14 [0]),
        .I2(\temp_value_reg[0]_15 [0]),
        .O(\sum_value[11]_i_61_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_62 
       (.I0(\temp_value_reg[14]_13 [3]),
        .I1(\temp_value_reg[15]_14 [3]),
        .I2(\temp_value_reg[0]_15 [3]),
        .I3(\sum_value[11]_i_59_n_0 ),
        .O(\sum_value[11]_i_62_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_63 
       (.I0(\temp_value_reg[14]_13 [2]),
        .I1(\temp_value_reg[15]_14 [2]),
        .I2(\temp_value_reg[0]_15 [2]),
        .I3(\sum_value[11]_i_60_n_0 ),
        .O(\sum_value[11]_i_63_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[11]_i_64 
       (.I0(\temp_value_reg[14]_13 [1]),
        .I1(\temp_value_reg[15]_14 [1]),
        .I2(\temp_value_reg[0]_15 [1]),
        .I3(\sum_value[11]_i_61_n_0 ),
        .O(\sum_value[11]_i_64_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[11]_i_65 
       (.I0(\temp_value_reg[14]_13 [0]),
        .I1(\temp_value_reg[15]_14 [0]),
        .I2(\temp_value_reg[0]_15 [0]),
        .O(\sum_value[11]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[11]_i_7 
       (.I0(\sum_value[11]_i_3_n_0 ),
        .I1(\sum_value[11]_i_10_n_0 ),
        .I2(\sum_value_reg[15]_i_16_n_5 ),
        .I3(\sum_value_reg[15]_i_15_n_6 ),
        .I4(\sum_value_reg[15]_i_14_n_6 ),
        .I5(\sum_value_reg[15]_i_13_n_6 ),
        .O(\sum_value[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[11]_i_8 
       (.I0(\sum_value[11]_i_4_n_0 ),
        .I1(\sum_value[11]_i_11_n_0 ),
        .I2(\sum_value_reg[15]_i_16_n_6 ),
        .I3(\sum_value_reg[15]_i_15_n_7 ),
        .I4(\sum_value_reg[15]_i_14_n_7 ),
        .I5(\sum_value_reg[15]_i_13_n_7 ),
        .O(\sum_value[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[11]_i_9 
       (.I0(\sum_value[11]_i_5_n_0 ),
        .I1(\sum_value[11]_i_12_n_0 ),
        .I2(\sum_value_reg[15]_i_16_n_7 ),
        .I3(\sum_value_reg[11]_i_15_n_4 ),
        .I4(\sum_value_reg[11]_i_14_n_4 ),
        .I5(\sum_value_reg[11]_i_13_n_4 ),
        .O(\sum_value[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[15]_i_10 
       (.I0(\sum_value_reg[19]_i_14_n_5 ),
        .I1(\sum_value_reg[19]_i_16_n_5 ),
        .I2(\sum_value_reg[19]_i_15_n_5 ),
        .O(\sum_value[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[15]_i_11 
       (.I0(\sum_value_reg[19]_i_14_n_6 ),
        .I1(\sum_value_reg[19]_i_16_n_6 ),
        .I2(\sum_value_reg[19]_i_15_n_6 ),
        .O(\sum_value[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[15]_i_12 
       (.I0(\sum_value_reg[19]_i_14_n_7 ),
        .I1(\sum_value_reg[19]_i_16_n_7 ),
        .I2(\sum_value_reg[19]_i_15_n_7 ),
        .O(\sum_value[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[15]_i_17 
       (.I0(\sum_value_reg[15]_i_13_n_4 ),
        .I1(\sum_value_reg[15]_i_15_n_4 ),
        .I2(\sum_value_reg[15]_i_14_n_4 ),
        .O(\sum_value[15]_i_17_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_18 
       (.I0(\temp_value_reg[5]_4 [10]),
        .I1(\temp_value_reg[6]_5 [10]),
        .I2(\temp_value_reg[7]_6 [10]),
        .O(\sum_value[15]_i_18_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_19 
       (.I0(\temp_value_reg[5]_4 [9]),
        .I1(\temp_value_reg[6]_5 [9]),
        .I2(\temp_value_reg[7]_6 [9]),
        .O(\sum_value[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[15]_i_2 
       (.I0(\sum_value_reg[19]_i_17_n_5 ),
        .I1(\sum_value[15]_i_10_n_0 ),
        .I2(\sum_value_reg[19]_i_14_n_6 ),
        .I3(\sum_value_reg[19]_i_15_n_6 ),
        .I4(\sum_value_reg[19]_i_16_n_6 ),
        .O(\sum_value[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_20 
       (.I0(\temp_value_reg[5]_4 [8]),
        .I1(\temp_value_reg[6]_5 [8]),
        .I2(\temp_value_reg[7]_6 [8]),
        .O(\sum_value[15]_i_20_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_21 
       (.I0(\temp_value_reg[5]_4 [7]),
        .I1(\temp_value_reg[6]_5 [7]),
        .I2(\temp_value_reg[7]_6 [7]),
        .O(\sum_value[15]_i_21_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_22 
       (.I0(\temp_value_reg[5]_4 [11]),
        .I1(\temp_value_reg[6]_5 [11]),
        .I2(\temp_value_reg[7]_6 [11]),
        .I3(\sum_value[15]_i_18_n_0 ),
        .O(\sum_value[15]_i_22_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_23 
       (.I0(\temp_value_reg[5]_4 [10]),
        .I1(\temp_value_reg[6]_5 [10]),
        .I2(\temp_value_reg[7]_6 [10]),
        .I3(\sum_value[15]_i_19_n_0 ),
        .O(\sum_value[15]_i_23_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_24 
       (.I0(\temp_value_reg[5]_4 [9]),
        .I1(\temp_value_reg[6]_5 [9]),
        .I2(\temp_value_reg[7]_6 [9]),
        .I3(\sum_value[15]_i_20_n_0 ),
        .O(\sum_value[15]_i_24_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_25 
       (.I0(\temp_value_reg[5]_4 [8]),
        .I1(\temp_value_reg[6]_5 [8]),
        .I2(\temp_value_reg[7]_6 [8]),
        .I3(\sum_value[15]_i_21_n_0 ),
        .O(\sum_value[15]_i_25_n_0 ));
  (* HLUTNM = "lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_26 
       (.I0(\temp_value_reg[2]_1 [10]),
        .I1(\temp_value_reg[3]_2 [10]),
        .I2(\temp_value_reg[4]_3 [10]),
        .O(\sum_value[15]_i_26_n_0 ));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_27 
       (.I0(\temp_value_reg[2]_1 [9]),
        .I1(\temp_value_reg[3]_2 [9]),
        .I2(\temp_value_reg[4]_3 [9]),
        .O(\sum_value[15]_i_27_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_28 
       (.I0(\temp_value_reg[2]_1 [8]),
        .I1(\temp_value_reg[3]_2 [8]),
        .I2(\temp_value_reg[4]_3 [8]),
        .O(\sum_value[15]_i_28_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_29 
       (.I0(\temp_value_reg[2]_1 [7]),
        .I1(\temp_value_reg[3]_2 [7]),
        .I2(\temp_value_reg[4]_3 [7]),
        .O(\sum_value[15]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[15]_i_3 
       (.I0(\sum_value_reg[19]_i_17_n_6 ),
        .I1(\sum_value[15]_i_11_n_0 ),
        .I2(\sum_value_reg[19]_i_14_n_7 ),
        .I3(\sum_value_reg[19]_i_15_n_7 ),
        .I4(\sum_value_reg[19]_i_16_n_7 ),
        .O(\sum_value[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_30 
       (.I0(\temp_value_reg[2]_1 [11]),
        .I1(\temp_value_reg[3]_2 [11]),
        .I2(\temp_value_reg[4]_3 [11]),
        .I3(\sum_value[15]_i_26_n_0 ),
        .O(\sum_value[15]_i_30_n_0 ));
  (* HLUTNM = "lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_31 
       (.I0(\temp_value_reg[2]_1 [10]),
        .I1(\temp_value_reg[3]_2 [10]),
        .I2(\temp_value_reg[4]_3 [10]),
        .I3(\sum_value[15]_i_27_n_0 ),
        .O(\sum_value[15]_i_31_n_0 ));
  (* HLUTNM = "lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_32 
       (.I0(\temp_value_reg[2]_1 [9]),
        .I1(\temp_value_reg[3]_2 [9]),
        .I2(\temp_value_reg[4]_3 [9]),
        .I3(\sum_value[15]_i_28_n_0 ),
        .O(\sum_value[15]_i_32_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_33 
       (.I0(\temp_value_reg[2]_1 [8]),
        .I1(\temp_value_reg[3]_2 [8]),
        .I2(\temp_value_reg[4]_3 [8]),
        .I3(\sum_value[15]_i_29_n_0 ),
        .O(\sum_value[15]_i_33_n_0 ));
  (* HLUTNM = "lutpair90" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_34 
       (.I0(\sum_value_reg[19]_i_55_n_5 ),
        .I1(\sum_value_reg[19]_i_56_n_5 ),
        .I2(\temp_value_reg[1]_0 [10]),
        .O(\sum_value[15]_i_34_n_0 ));
  (* HLUTNM = "lutpair89" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_35 
       (.I0(\sum_value_reg[19]_i_55_n_6 ),
        .I1(\sum_value_reg[19]_i_56_n_6 ),
        .I2(\temp_value_reg[1]_0 [9]),
        .O(\sum_value[15]_i_35_n_0 ));
  (* HLUTNM = "lutpair88" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_36 
       (.I0(\sum_value_reg[19]_i_55_n_7 ),
        .I1(\sum_value_reg[19]_i_56_n_7 ),
        .I2(\temp_value_reg[1]_0 [8]),
        .O(\sum_value[15]_i_36_n_0 ));
  (* HLUTNM = "lutpair87" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_37 
       (.I0(\sum_value_reg[15]_i_50_n_4 ),
        .I1(\sum_value_reg[15]_i_51_n_4 ),
        .I2(\temp_value_reg[1]_0 [7]),
        .O(\sum_value[15]_i_37_n_0 ));
  (* HLUTNM = "lutpair91" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_38 
       (.I0(\sum_value_reg[19]_i_55_n_4 ),
        .I1(\sum_value_reg[19]_i_56_n_4 ),
        .I2(\temp_value_reg[1]_0 [11]),
        .I3(\sum_value[15]_i_34_n_0 ),
        .O(\sum_value[15]_i_38_n_0 ));
  (* HLUTNM = "lutpair90" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_39 
       (.I0(\sum_value_reg[19]_i_55_n_5 ),
        .I1(\sum_value_reg[19]_i_56_n_5 ),
        .I2(\temp_value_reg[1]_0 [10]),
        .I3(\sum_value[15]_i_35_n_0 ),
        .O(\sum_value[15]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[15]_i_4 
       (.I0(\sum_value_reg[19]_i_17_n_7 ),
        .I1(\sum_value[15]_i_12_n_0 ),
        .I2(\sum_value_reg[15]_i_13_n_4 ),
        .I3(\sum_value_reg[15]_i_14_n_4 ),
        .I4(\sum_value_reg[15]_i_15_n_4 ),
        .O(\sum_value[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair89" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_40 
       (.I0(\sum_value_reg[19]_i_55_n_6 ),
        .I1(\sum_value_reg[19]_i_56_n_6 ),
        .I2(\temp_value_reg[1]_0 [9]),
        .I3(\sum_value[15]_i_36_n_0 ),
        .O(\sum_value[15]_i_40_n_0 ));
  (* HLUTNM = "lutpair88" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_41 
       (.I0(\sum_value_reg[19]_i_55_n_7 ),
        .I1(\sum_value_reg[19]_i_56_n_7 ),
        .I2(\temp_value_reg[1]_0 [8]),
        .I3(\sum_value[15]_i_37_n_0 ),
        .O(\sum_value[15]_i_41_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_42 
       (.I0(\temp_value_reg[8]_7 [10]),
        .I1(\temp_value_reg[9]_8 [10]),
        .I2(\temp_value_reg[10]_9 [10]),
        .O(\sum_value[15]_i_42_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_43 
       (.I0(\temp_value_reg[8]_7 [9]),
        .I1(\temp_value_reg[9]_8 [9]),
        .I2(\temp_value_reg[10]_9 [9]),
        .O(\sum_value[15]_i_43_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_44 
       (.I0(\temp_value_reg[8]_7 [8]),
        .I1(\temp_value_reg[9]_8 [8]),
        .I2(\temp_value_reg[10]_9 [8]),
        .O(\sum_value[15]_i_44_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_45 
       (.I0(\temp_value_reg[8]_7 [7]),
        .I1(\temp_value_reg[9]_8 [7]),
        .I2(\temp_value_reg[10]_9 [7]),
        .O(\sum_value[15]_i_45_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_46 
       (.I0(\temp_value_reg[8]_7 [11]),
        .I1(\temp_value_reg[9]_8 [11]),
        .I2(\temp_value_reg[10]_9 [11]),
        .I3(\sum_value[15]_i_42_n_0 ),
        .O(\sum_value[15]_i_46_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_47 
       (.I0(\temp_value_reg[8]_7 [10]),
        .I1(\temp_value_reg[9]_8 [10]),
        .I2(\temp_value_reg[10]_9 [10]),
        .I3(\sum_value[15]_i_43_n_0 ),
        .O(\sum_value[15]_i_47_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_48 
       (.I0(\temp_value_reg[8]_7 [9]),
        .I1(\temp_value_reg[9]_8 [9]),
        .I2(\temp_value_reg[10]_9 [9]),
        .I3(\sum_value[15]_i_44_n_0 ),
        .O(\sum_value[15]_i_48_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_49 
       (.I0(\temp_value_reg[8]_7 [8]),
        .I1(\temp_value_reg[9]_8 [8]),
        .I2(\temp_value_reg[10]_9 [8]),
        .I3(\sum_value[15]_i_45_n_0 ),
        .O(\sum_value[15]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[15]_i_5 
       (.I0(\sum_value_reg[15]_i_16_n_4 ),
        .I1(\sum_value[15]_i_17_n_0 ),
        .I2(\sum_value_reg[15]_i_13_n_5 ),
        .I3(\sum_value_reg[15]_i_14_n_5 ),
        .I4(\sum_value_reg[15]_i_15_n_5 ),
        .O(\sum_value[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_52 
       (.I0(\temp_value_reg[11]_10 [6]),
        .I1(\temp_value_reg[12]_11 [6]),
        .I2(\temp_value_reg[13]_12 [6]),
        .O(\sum_value[15]_i_52_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_53 
       (.I0(\temp_value_reg[11]_10 [5]),
        .I1(\temp_value_reg[12]_11 [5]),
        .I2(\temp_value_reg[13]_12 [5]),
        .O(\sum_value[15]_i_53_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_54 
       (.I0(\temp_value_reg[11]_10 [4]),
        .I1(\temp_value_reg[12]_11 [4]),
        .I2(\temp_value_reg[13]_12 [4]),
        .O(\sum_value[15]_i_54_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_55 
       (.I0(\temp_value_reg[11]_10 [3]),
        .I1(\temp_value_reg[12]_11 [3]),
        .I2(\temp_value_reg[13]_12 [3]),
        .O(\sum_value[15]_i_55_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_56 
       (.I0(\temp_value_reg[11]_10 [7]),
        .I1(\temp_value_reg[12]_11 [7]),
        .I2(\temp_value_reg[13]_12 [7]),
        .I3(\sum_value[15]_i_52_n_0 ),
        .O(\sum_value[15]_i_56_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_57 
       (.I0(\temp_value_reg[11]_10 [6]),
        .I1(\temp_value_reg[12]_11 [6]),
        .I2(\temp_value_reg[13]_12 [6]),
        .I3(\sum_value[15]_i_53_n_0 ),
        .O(\sum_value[15]_i_57_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_58 
       (.I0(\temp_value_reg[11]_10 [5]),
        .I1(\temp_value_reg[12]_11 [5]),
        .I2(\temp_value_reg[13]_12 [5]),
        .I3(\sum_value[15]_i_54_n_0 ),
        .O(\sum_value[15]_i_58_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_59 
       (.I0(\temp_value_reg[11]_10 [4]),
        .I1(\temp_value_reg[12]_11 [4]),
        .I2(\temp_value_reg[13]_12 [4]),
        .I3(\sum_value[15]_i_55_n_0 ),
        .O(\sum_value[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[15]_i_6 
       (.I0(\sum_value[15]_i_2_n_0 ),
        .I1(\sum_value[19]_i_18_n_0 ),
        .I2(\sum_value_reg[19]_i_17_n_4 ),
        .I3(\sum_value_reg[19]_i_16_n_5 ),
        .I4(\sum_value_reg[19]_i_15_n_5 ),
        .I5(\sum_value_reg[19]_i_14_n_5 ),
        .O(\sum_value[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_60 
       (.I0(\temp_value_reg[14]_13 [6]),
        .I1(\temp_value_reg[15]_14 [6]),
        .I2(\temp_value_reg[0]_15 [6]),
        .O(\sum_value[15]_i_60_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_61 
       (.I0(\temp_value_reg[14]_13 [5]),
        .I1(\temp_value_reg[15]_14 [5]),
        .I2(\temp_value_reg[0]_15 [5]),
        .O(\sum_value[15]_i_61_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_62 
       (.I0(\temp_value_reg[14]_13 [4]),
        .I1(\temp_value_reg[15]_14 [4]),
        .I2(\temp_value_reg[0]_15 [4]),
        .O(\sum_value[15]_i_62_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[15]_i_63 
       (.I0(\temp_value_reg[14]_13 [3]),
        .I1(\temp_value_reg[15]_14 [3]),
        .I2(\temp_value_reg[0]_15 [3]),
        .O(\sum_value[15]_i_63_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_64 
       (.I0(\temp_value_reg[14]_13 [7]),
        .I1(\temp_value_reg[15]_14 [7]),
        .I2(\temp_value_reg[0]_15 [7]),
        .I3(\sum_value[15]_i_60_n_0 ),
        .O(\sum_value[15]_i_64_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_65 
       (.I0(\temp_value_reg[14]_13 [6]),
        .I1(\temp_value_reg[15]_14 [6]),
        .I2(\temp_value_reg[0]_15 [6]),
        .I3(\sum_value[15]_i_61_n_0 ),
        .O(\sum_value[15]_i_65_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_66 
       (.I0(\temp_value_reg[14]_13 [5]),
        .I1(\temp_value_reg[15]_14 [5]),
        .I2(\temp_value_reg[0]_15 [5]),
        .I3(\sum_value[15]_i_62_n_0 ),
        .O(\sum_value[15]_i_66_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[15]_i_67 
       (.I0(\temp_value_reg[14]_13 [4]),
        .I1(\temp_value_reg[15]_14 [4]),
        .I2(\temp_value_reg[0]_15 [4]),
        .I3(\sum_value[15]_i_63_n_0 ),
        .O(\sum_value[15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[15]_i_7 
       (.I0(\sum_value[15]_i_3_n_0 ),
        .I1(\sum_value[15]_i_10_n_0 ),
        .I2(\sum_value_reg[19]_i_17_n_5 ),
        .I3(\sum_value_reg[19]_i_16_n_6 ),
        .I4(\sum_value_reg[19]_i_15_n_6 ),
        .I5(\sum_value_reg[19]_i_14_n_6 ),
        .O(\sum_value[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[15]_i_8 
       (.I0(\sum_value[15]_i_4_n_0 ),
        .I1(\sum_value[15]_i_11_n_0 ),
        .I2(\sum_value_reg[19]_i_17_n_6 ),
        .I3(\sum_value_reg[19]_i_16_n_7 ),
        .I4(\sum_value_reg[19]_i_15_n_7 ),
        .I5(\sum_value_reg[19]_i_14_n_7 ),
        .O(\sum_value[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[15]_i_9 
       (.I0(\sum_value[15]_i_5_n_0 ),
        .I1(\sum_value[15]_i_12_n_0 ),
        .I2(\sum_value_reg[19]_i_17_n_7 ),
        .I3(\sum_value_reg[15]_i_15_n_4 ),
        .I4(\sum_value_reg[15]_i_14_n_4 ),
        .I5(\sum_value_reg[15]_i_13_n_4 ),
        .O(\sum_value[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[19]_i_11 
       (.I0(\sum_value_reg[20]_i_6_n_1 ),
        .I1(\sum_value_reg[20]_i_4_n_5 ),
        .I2(\sum_value_reg[20]_i_5_n_1 ),
        .O(\sum_value[19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[19]_i_12 
       (.I0(\sum_value_reg[20]_i_6_n_6 ),
        .I1(\sum_value_reg[20]_i_4_n_6 ),
        .I2(\sum_value_reg[20]_i_5_n_6 ),
        .O(\sum_value[19]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[19]_i_13 
       (.I0(\sum_value_reg[20]_i_6_n_7 ),
        .I1(\sum_value_reg[20]_i_4_n_7 ),
        .I2(\sum_value_reg[20]_i_5_n_7 ),
        .O(\sum_value[19]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[19]_i_18 
       (.I0(\sum_value_reg[19]_i_14_n_4 ),
        .I1(\sum_value_reg[19]_i_16_n_4 ),
        .I2(\sum_value_reg[19]_i_15_n_4 ),
        .O(\sum_value[19]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_19 
       (.I0(\sum_value_reg[20]_i_4_n_6 ),
        .I1(\sum_value_reg[20]_i_5_n_6 ),
        .I2(\sum_value_reg[20]_i_6_n_6 ),
        .O(\sum_value[19]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[19]_i_2 
       (.I0(\sum_value_reg[19]_i_10_n_1 ),
        .I1(\sum_value[19]_i_11_n_0 ),
        .I2(\sum_value_reg[20]_i_6_n_6 ),
        .I3(\sum_value_reg[20]_i_5_n_6 ),
        .I4(\sum_value_reg[20]_i_4_n_6 ),
        .O(\sum_value[19]_i_2_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_20 
       (.I0(\temp_value_reg[8]_7 [15]),
        .I1(\temp_value_reg[9]_8 [15]),
        .I2(\temp_value_reg[10]_9 [15]),
        .O(\sum_value[19]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_21 
       (.I0(\temp_value_reg[8]_7 [16]),
        .I1(\temp_value_reg[9]_8 [16]),
        .I2(\temp_value_reg[10]_9 [16]),
        .O(\sum_value[19]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_22 
       (.I0(\sum_value[19]_i_20_n_0 ),
        .I1(\temp_value_reg[9]_8 [16]),
        .I2(\temp_value_reg[8]_7 [16]),
        .I3(\temp_value_reg[10]_9 [16]),
        .O(\sum_value[19]_i_22_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_23 
       (.I0(\temp_value_reg[5]_4 [14]),
        .I1(\temp_value_reg[6]_5 [14]),
        .I2(\temp_value_reg[7]_6 [14]),
        .O(\sum_value[19]_i_23_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_24 
       (.I0(\temp_value_reg[5]_4 [13]),
        .I1(\temp_value_reg[6]_5 [13]),
        .I2(\temp_value_reg[7]_6 [13]),
        .O(\sum_value[19]_i_24_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_25 
       (.I0(\temp_value_reg[5]_4 [12]),
        .I1(\temp_value_reg[6]_5 [12]),
        .I2(\temp_value_reg[7]_6 [12]),
        .O(\sum_value[19]_i_25_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_26 
       (.I0(\temp_value_reg[5]_4 [11]),
        .I1(\temp_value_reg[6]_5 [11]),
        .I2(\temp_value_reg[7]_6 [11]),
        .O(\sum_value[19]_i_26_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_27 
       (.I0(\temp_value_reg[5]_4 [15]),
        .I1(\temp_value_reg[6]_5 [15]),
        .I2(\temp_value_reg[7]_6 [15]),
        .I3(\sum_value[19]_i_23_n_0 ),
        .O(\sum_value[19]_i_27_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_28 
       (.I0(\temp_value_reg[5]_4 [14]),
        .I1(\temp_value_reg[6]_5 [14]),
        .I2(\temp_value_reg[7]_6 [14]),
        .I3(\sum_value[19]_i_24_n_0 ),
        .O(\sum_value[19]_i_28_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_29 
       (.I0(\temp_value_reg[5]_4 [13]),
        .I1(\temp_value_reg[6]_5 [13]),
        .I2(\temp_value_reg[7]_6 [13]),
        .I3(\sum_value[19]_i_25_n_0 ),
        .O(\sum_value[19]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[19]_i_3 
       (.I0(\sum_value_reg[19]_i_10_n_6 ),
        .I1(\sum_value[19]_i_12_n_0 ),
        .I2(\sum_value_reg[20]_i_6_n_7 ),
        .I3(\sum_value_reg[20]_i_5_n_7 ),
        .I4(\sum_value_reg[20]_i_4_n_7 ),
        .O(\sum_value[19]_i_3_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_30 
       (.I0(\temp_value_reg[5]_4 [12]),
        .I1(\temp_value_reg[6]_5 [12]),
        .I2(\temp_value_reg[7]_6 [12]),
        .I3(\sum_value[19]_i_26_n_0 ),
        .O(\sum_value[19]_i_30_n_0 ));
  (* HLUTNM = "lutpair78" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_31 
       (.I0(\temp_value_reg[2]_1 [14]),
        .I1(\temp_value_reg[3]_2 [14]),
        .I2(\temp_value_reg[4]_3 [14]),
        .O(\sum_value[19]_i_31_n_0 ));
  (* HLUTNM = "lutpair77" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_32 
       (.I0(\temp_value_reg[2]_1 [13]),
        .I1(\temp_value_reg[3]_2 [13]),
        .I2(\temp_value_reg[4]_3 [13]),
        .O(\sum_value[19]_i_32_n_0 ));
  (* HLUTNM = "lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_33 
       (.I0(\temp_value_reg[2]_1 [12]),
        .I1(\temp_value_reg[3]_2 [12]),
        .I2(\temp_value_reg[4]_3 [12]),
        .O(\sum_value[19]_i_33_n_0 ));
  (* HLUTNM = "lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_34 
       (.I0(\temp_value_reg[2]_1 [11]),
        .I1(\temp_value_reg[3]_2 [11]),
        .I2(\temp_value_reg[4]_3 [11]),
        .O(\sum_value[19]_i_34_n_0 ));
  (* HLUTNM = "lutpair79" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_35 
       (.I0(\temp_value_reg[2]_1 [15]),
        .I1(\temp_value_reg[3]_2 [15]),
        .I2(\temp_value_reg[4]_3 [15]),
        .I3(\sum_value[19]_i_31_n_0 ),
        .O(\sum_value[19]_i_35_n_0 ));
  (* HLUTNM = "lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_36 
       (.I0(\temp_value_reg[2]_1 [14]),
        .I1(\temp_value_reg[3]_2 [14]),
        .I2(\temp_value_reg[4]_3 [14]),
        .I3(\sum_value[19]_i_32_n_0 ),
        .O(\sum_value[19]_i_36_n_0 ));
  (* HLUTNM = "lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_37 
       (.I0(\temp_value_reg[2]_1 [13]),
        .I1(\temp_value_reg[3]_2 [13]),
        .I2(\temp_value_reg[4]_3 [13]),
        .I3(\sum_value[19]_i_33_n_0 ),
        .O(\sum_value[19]_i_37_n_0 ));
  (* HLUTNM = "lutpair76" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_38 
       (.I0(\temp_value_reg[2]_1 [12]),
        .I1(\temp_value_reg[3]_2 [12]),
        .I2(\temp_value_reg[4]_3 [12]),
        .I3(\sum_value[19]_i_34_n_0 ),
        .O(\sum_value[19]_i_38_n_0 ));
  (* HLUTNM = "lutpair94" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_39 
       (.I0(\sum_value_reg[20]_i_24_n_5 ),
        .I1(\sum_value_reg[20]_i_25_n_5 ),
        .I2(\temp_value_reg[1]_0 [14]),
        .O(\sum_value[19]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[19]_i_4 
       (.I0(\sum_value_reg[19]_i_10_n_7 ),
        .I1(\sum_value[19]_i_13_n_0 ),
        .I2(\sum_value_reg[19]_i_14_n_4 ),
        .I3(\sum_value_reg[19]_i_15_n_4 ),
        .I4(\sum_value_reg[19]_i_16_n_4 ),
        .O(\sum_value[19]_i_4_n_0 ));
  (* HLUTNM = "lutpair93" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_40 
       (.I0(\sum_value_reg[20]_i_24_n_6 ),
        .I1(\sum_value_reg[20]_i_25_n_6 ),
        .I2(\temp_value_reg[1]_0 [13]),
        .O(\sum_value[19]_i_40_n_0 ));
  (* HLUTNM = "lutpair92" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_41 
       (.I0(\sum_value_reg[20]_i_24_n_7 ),
        .I1(\sum_value_reg[20]_i_25_n_7 ),
        .I2(\temp_value_reg[1]_0 [12]),
        .O(\sum_value[19]_i_41_n_0 ));
  (* HLUTNM = "lutpair91" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_42 
       (.I0(\sum_value_reg[19]_i_55_n_4 ),
        .I1(\sum_value_reg[19]_i_56_n_4 ),
        .I2(\temp_value_reg[1]_0 [11]),
        .O(\sum_value[19]_i_42_n_0 ));
  (* HLUTNM = "lutpair95" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_43 
       (.I0(\sum_value_reg[20]_i_24_n_4 ),
        .I1(\sum_value_reg[20]_i_25_n_4 ),
        .I2(\temp_value_reg[1]_0 [15]),
        .I3(\sum_value[19]_i_39_n_0 ),
        .O(\sum_value[19]_i_43_n_0 ));
  (* HLUTNM = "lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_44 
       (.I0(\sum_value_reg[20]_i_24_n_5 ),
        .I1(\sum_value_reg[20]_i_25_n_5 ),
        .I2(\temp_value_reg[1]_0 [14]),
        .I3(\sum_value[19]_i_40_n_0 ),
        .O(\sum_value[19]_i_44_n_0 ));
  (* HLUTNM = "lutpair93" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_45 
       (.I0(\sum_value_reg[20]_i_24_n_6 ),
        .I1(\sum_value_reg[20]_i_25_n_6 ),
        .I2(\temp_value_reg[1]_0 [13]),
        .I3(\sum_value[19]_i_41_n_0 ),
        .O(\sum_value[19]_i_45_n_0 ));
  (* HLUTNM = "lutpair92" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_46 
       (.I0(\sum_value_reg[20]_i_24_n_7 ),
        .I1(\sum_value_reg[20]_i_25_n_7 ),
        .I2(\temp_value_reg[1]_0 [12]),
        .I3(\sum_value[19]_i_42_n_0 ),
        .O(\sum_value[19]_i_46_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_47 
       (.I0(\temp_value_reg[8]_7 [14]),
        .I1(\temp_value_reg[9]_8 [14]),
        .I2(\temp_value_reg[10]_9 [14]),
        .O(\sum_value[19]_i_47_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_48 
       (.I0(\temp_value_reg[8]_7 [13]),
        .I1(\temp_value_reg[9]_8 [13]),
        .I2(\temp_value_reg[10]_9 [13]),
        .O(\sum_value[19]_i_48_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_49 
       (.I0(\temp_value_reg[8]_7 [12]),
        .I1(\temp_value_reg[9]_8 [12]),
        .I2(\temp_value_reg[10]_9 [12]),
        .O(\sum_value[19]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[19]_i_5 
       (.I0(\sum_value_reg[19]_i_17_n_4 ),
        .I1(\sum_value[19]_i_18_n_0 ),
        .I2(\sum_value_reg[19]_i_14_n_5 ),
        .I3(\sum_value_reg[19]_i_15_n_5 ),
        .I4(\sum_value_reg[19]_i_16_n_5 ),
        .O(\sum_value[19]_i_5_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_50 
       (.I0(\temp_value_reg[8]_7 [11]),
        .I1(\temp_value_reg[9]_8 [11]),
        .I2(\temp_value_reg[10]_9 [11]),
        .O(\sum_value[19]_i_50_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_51 
       (.I0(\temp_value_reg[8]_7 [15]),
        .I1(\temp_value_reg[9]_8 [15]),
        .I2(\temp_value_reg[10]_9 [15]),
        .I3(\sum_value[19]_i_47_n_0 ),
        .O(\sum_value[19]_i_51_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_52 
       (.I0(\temp_value_reg[8]_7 [14]),
        .I1(\temp_value_reg[9]_8 [14]),
        .I2(\temp_value_reg[10]_9 [14]),
        .I3(\sum_value[19]_i_48_n_0 ),
        .O(\sum_value[19]_i_52_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_53 
       (.I0(\temp_value_reg[8]_7 [13]),
        .I1(\temp_value_reg[9]_8 [13]),
        .I2(\temp_value_reg[10]_9 [13]),
        .I3(\sum_value[19]_i_49_n_0 ),
        .O(\sum_value[19]_i_53_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_54 
       (.I0(\temp_value_reg[8]_7 [12]),
        .I1(\temp_value_reg[9]_8 [12]),
        .I2(\temp_value_reg[10]_9 [12]),
        .I3(\sum_value[19]_i_50_n_0 ),
        .O(\sum_value[19]_i_54_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_57 
       (.I0(\temp_value_reg[11]_10 [10]),
        .I1(\temp_value_reg[12]_11 [10]),
        .I2(\temp_value_reg[13]_12 [10]),
        .O(\sum_value[19]_i_57_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_58 
       (.I0(\temp_value_reg[11]_10 [9]),
        .I1(\temp_value_reg[12]_11 [9]),
        .I2(\temp_value_reg[13]_12 [9]),
        .O(\sum_value[19]_i_58_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_59 
       (.I0(\temp_value_reg[11]_10 [8]),
        .I1(\temp_value_reg[12]_11 [8]),
        .I2(\temp_value_reg[13]_12 [8]),
        .O(\sum_value[19]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \sum_value[19]_i_6 
       (.I0(\sum_value[19]_i_19_n_0 ),
        .I1(\sum_value_reg[19]_i_10_n_1 ),
        .I2(\sum_value_reg[20]_i_4_n_4 ),
        .I3(\sum_value_reg[20]_i_4_n_5 ),
        .I4(\sum_value_reg[20]_i_5_n_1 ),
        .I5(\sum_value_reg[20]_i_6_n_1 ),
        .O(\sum_value[19]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_60 
       (.I0(\temp_value_reg[11]_10 [7]),
        .I1(\temp_value_reg[12]_11 [7]),
        .I2(\temp_value_reg[13]_12 [7]),
        .O(\sum_value[19]_i_60_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_61 
       (.I0(\temp_value_reg[11]_10 [11]),
        .I1(\temp_value_reg[12]_11 [11]),
        .I2(\temp_value_reg[13]_12 [11]),
        .I3(\sum_value[19]_i_57_n_0 ),
        .O(\sum_value[19]_i_61_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_62 
       (.I0(\temp_value_reg[11]_10 [10]),
        .I1(\temp_value_reg[12]_11 [10]),
        .I2(\temp_value_reg[13]_12 [10]),
        .I3(\sum_value[19]_i_58_n_0 ),
        .O(\sum_value[19]_i_62_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_63 
       (.I0(\temp_value_reg[11]_10 [9]),
        .I1(\temp_value_reg[12]_11 [9]),
        .I2(\temp_value_reg[13]_12 [9]),
        .I3(\sum_value[19]_i_59_n_0 ),
        .O(\sum_value[19]_i_63_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_64 
       (.I0(\temp_value_reg[11]_10 [8]),
        .I1(\temp_value_reg[12]_11 [8]),
        .I2(\temp_value_reg[13]_12 [8]),
        .I3(\sum_value[19]_i_60_n_0 ),
        .O(\sum_value[19]_i_64_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_65 
       (.I0(\temp_value_reg[14]_13 [10]),
        .I1(\temp_value_reg[15]_14 [10]),
        .I2(\temp_value_reg[0]_15 [10]),
        .O(\sum_value[19]_i_65_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_66 
       (.I0(\temp_value_reg[14]_13 [9]),
        .I1(\temp_value_reg[15]_14 [9]),
        .I2(\temp_value_reg[0]_15 [9]),
        .O(\sum_value[19]_i_66_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_67 
       (.I0(\temp_value_reg[14]_13 [8]),
        .I1(\temp_value_reg[15]_14 [8]),
        .I2(\temp_value_reg[0]_15 [8]),
        .O(\sum_value[19]_i_67_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[19]_i_68 
       (.I0(\temp_value_reg[14]_13 [7]),
        .I1(\temp_value_reg[15]_14 [7]),
        .I2(\temp_value_reg[0]_15 [7]),
        .O(\sum_value[19]_i_68_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_69 
       (.I0(\temp_value_reg[14]_13 [11]),
        .I1(\temp_value_reg[15]_14 [11]),
        .I2(\temp_value_reg[0]_15 [11]),
        .I3(\sum_value[19]_i_65_n_0 ),
        .O(\sum_value[19]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[19]_i_7 
       (.I0(\sum_value[19]_i_3_n_0 ),
        .I1(\sum_value[19]_i_11_n_0 ),
        .I2(\sum_value_reg[19]_i_10_n_1 ),
        .I3(\sum_value_reg[20]_i_4_n_6 ),
        .I4(\sum_value_reg[20]_i_5_n_6 ),
        .I5(\sum_value_reg[20]_i_6_n_6 ),
        .O(\sum_value[19]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_70 
       (.I0(\temp_value_reg[14]_13 [10]),
        .I1(\temp_value_reg[15]_14 [10]),
        .I2(\temp_value_reg[0]_15 [10]),
        .I3(\sum_value[19]_i_66_n_0 ),
        .O(\sum_value[19]_i_70_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_71 
       (.I0(\temp_value_reg[14]_13 [9]),
        .I1(\temp_value_reg[15]_14 [9]),
        .I2(\temp_value_reg[0]_15 [9]),
        .I3(\sum_value[19]_i_67_n_0 ),
        .O(\sum_value[19]_i_71_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[19]_i_72 
       (.I0(\temp_value_reg[14]_13 [8]),
        .I1(\temp_value_reg[15]_14 [8]),
        .I2(\temp_value_reg[0]_15 [8]),
        .I3(\sum_value[19]_i_68_n_0 ),
        .O(\sum_value[19]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[19]_i_8 
       (.I0(\sum_value[19]_i_4_n_0 ),
        .I1(\sum_value[19]_i_12_n_0 ),
        .I2(\sum_value_reg[19]_i_10_n_6 ),
        .I3(\sum_value_reg[20]_i_4_n_7 ),
        .I4(\sum_value_reg[20]_i_5_n_7 ),
        .I5(\sum_value_reg[20]_i_6_n_7 ),
        .O(\sum_value[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[19]_i_9 
       (.I0(\sum_value[19]_i_5_n_0 ),
        .I1(\sum_value[19]_i_13_n_0 ),
        .I2(\sum_value_reg[19]_i_10_n_7 ),
        .I3(\sum_value_reg[19]_i_16_n_4 ),
        .I4(\sum_value_reg[19]_i_15_n_4 ),
        .I5(\sum_value_reg[19]_i_14_n_4 ),
        .O(\sum_value[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_10 
       (.I0(\sum_value_reg[20]_i_22_n_7 ),
        .I1(\sum_value_reg[20]_i_23_n_7 ),
        .I2(\temp_value_reg[1]_0 [16]),
        .O(\sum_value[20]_i_10_n_0 ));
  (* HLUTNM = "lutpair95" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_11 
       (.I0(\sum_value_reg[20]_i_24_n_4 ),
        .I1(\sum_value_reg[20]_i_25_n_4 ),
        .I2(\temp_value_reg[1]_0 [15]),
        .O(\sum_value[20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_value[20]_i_12 
       (.I0(\sum_value_reg[20]_i_22_n_1 ),
        .I1(\sum_value_reg[20]_i_23_n_1 ),
        .O(\sum_value[20]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \sum_value[20]_i_13 
       (.I0(\sum_value_reg[20]_i_23_n_6 ),
        .I1(\sum_value_reg[20]_i_22_n_6 ),
        .I2(\sum_value_reg[20]_i_22_n_1 ),
        .I3(\sum_value_reg[20]_i_23_n_1 ),
        .O(\sum_value[20]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum_value[20]_i_14 
       (.I0(\temp_value_reg[1]_0 [16]),
        .I1(\sum_value_reg[20]_i_23_n_7 ),
        .I2(\sum_value_reg[20]_i_22_n_7 ),
        .I3(\sum_value_reg[20]_i_22_n_6 ),
        .I4(\sum_value_reg[20]_i_23_n_6 ),
        .O(\sum_value[20]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_15 
       (.I0(\sum_value[20]_i_11_n_0 ),
        .I1(\sum_value_reg[20]_i_23_n_7 ),
        .I2(\sum_value_reg[20]_i_22_n_7 ),
        .I3(\temp_value_reg[1]_0 [16]),
        .O(\sum_value[20]_i_15_n_0 ));
  (* HLUTNM = "lutpair79" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_16 
       (.I0(\temp_value_reg[2]_1 [15]),
        .I1(\temp_value_reg[3]_2 [15]),
        .I2(\temp_value_reg[4]_3 [15]),
        .O(\sum_value[20]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_17 
       (.I0(\temp_value_reg[2]_1 [16]),
        .I1(\temp_value_reg[3]_2 [16]),
        .I2(\temp_value_reg[4]_3 [16]),
        .O(\sum_value[20]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_18 
       (.I0(\sum_value[20]_i_16_n_0 ),
        .I1(\temp_value_reg[3]_2 [16]),
        .I2(\temp_value_reg[2]_1 [16]),
        .I3(\temp_value_reg[4]_3 [16]),
        .O(\sum_value[20]_i_18_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_19 
       (.I0(\temp_value_reg[5]_4 [15]),
        .I1(\temp_value_reg[6]_5 [15]),
        .I2(\temp_value_reg[7]_6 [15]),
        .O(\sum_value[20]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_20 
       (.I0(\temp_value_reg[5]_4 [16]),
        .I1(\temp_value_reg[6]_5 [16]),
        .I2(\temp_value_reg[7]_6 [16]),
        .O(\sum_value[20]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_21 
       (.I0(\sum_value[20]_i_19_n_0 ),
        .I1(\temp_value_reg[6]_5 [16]),
        .I2(\temp_value_reg[5]_4 [16]),
        .I3(\temp_value_reg[7]_6 [16]),
        .O(\sum_value[20]_i_21_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_26 
       (.I0(\temp_value_reg[11]_10 [15]),
        .I1(\temp_value_reg[12]_11 [15]),
        .I2(\temp_value_reg[13]_12 [15]),
        .O(\sum_value[20]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_27 
       (.I0(\temp_value_reg[11]_10 [16]),
        .I1(\temp_value_reg[12]_11 [16]),
        .I2(\temp_value_reg[13]_12 [16]),
        .O(\sum_value[20]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_28 
       (.I0(\sum_value[20]_i_26_n_0 ),
        .I1(\temp_value_reg[12]_11 [16]),
        .I2(\temp_value_reg[11]_10 [16]),
        .I3(\temp_value_reg[13]_12 [16]),
        .O(\sum_value[20]_i_28_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_29 
       (.I0(\temp_value_reg[14]_13 [15]),
        .I1(\temp_value_reg[15]_14 [15]),
        .I2(\temp_value_reg[0]_15 [15]),
        .O(\sum_value[20]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h17FFE800)) 
    \sum_value[20]_i_3 
       (.I0(\sum_value_reg[20]_i_4_n_5 ),
        .I1(\sum_value_reg[20]_i_5_n_1 ),
        .I2(\sum_value_reg[20]_i_6_n_1 ),
        .I3(\sum_value_reg[20]_i_4_n_4 ),
        .I4(\sum_value_reg[20]_i_7_n_3 ),
        .O(\sum_value[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_30 
       (.I0(\temp_value_reg[14]_13 [16]),
        .I1(\temp_value_reg[15]_14 [16]),
        .I2(\temp_value_reg[0]_15 [16]),
        .O(\sum_value[20]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_31 
       (.I0(\sum_value[20]_i_29_n_0 ),
        .I1(\temp_value_reg[15]_14 [16]),
        .I2(\temp_value_reg[14]_13 [16]),
        .I3(\temp_value_reg[0]_15 [16]),
        .O(\sum_value[20]_i_31_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_32 
       (.I0(\temp_value_reg[11]_10 [14]),
        .I1(\temp_value_reg[12]_11 [14]),
        .I2(\temp_value_reg[13]_12 [14]),
        .O(\sum_value[20]_i_32_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_33 
       (.I0(\temp_value_reg[11]_10 [13]),
        .I1(\temp_value_reg[12]_11 [13]),
        .I2(\temp_value_reg[13]_12 [13]),
        .O(\sum_value[20]_i_33_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_34 
       (.I0(\temp_value_reg[11]_10 [12]),
        .I1(\temp_value_reg[12]_11 [12]),
        .I2(\temp_value_reg[13]_12 [12]),
        .O(\sum_value[20]_i_34_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_35 
       (.I0(\temp_value_reg[11]_10 [11]),
        .I1(\temp_value_reg[12]_11 [11]),
        .I2(\temp_value_reg[13]_12 [11]),
        .O(\sum_value[20]_i_35_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_36 
       (.I0(\temp_value_reg[11]_10 [15]),
        .I1(\temp_value_reg[12]_11 [15]),
        .I2(\temp_value_reg[13]_12 [15]),
        .I3(\sum_value[20]_i_32_n_0 ),
        .O(\sum_value[20]_i_36_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_37 
       (.I0(\temp_value_reg[11]_10 [14]),
        .I1(\temp_value_reg[12]_11 [14]),
        .I2(\temp_value_reg[13]_12 [14]),
        .I3(\sum_value[20]_i_33_n_0 ),
        .O(\sum_value[20]_i_37_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_38 
       (.I0(\temp_value_reg[11]_10 [13]),
        .I1(\temp_value_reg[12]_11 [13]),
        .I2(\temp_value_reg[13]_12 [13]),
        .I3(\sum_value[20]_i_34_n_0 ),
        .O(\sum_value[20]_i_38_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_39 
       (.I0(\temp_value_reg[11]_10 [12]),
        .I1(\temp_value_reg[12]_11 [12]),
        .I2(\temp_value_reg[13]_12 [12]),
        .I3(\sum_value[20]_i_35_n_0 ),
        .O(\sum_value[20]_i_39_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_40 
       (.I0(\temp_value_reg[14]_13 [14]),
        .I1(\temp_value_reg[15]_14 [14]),
        .I2(\temp_value_reg[0]_15 [14]),
        .O(\sum_value[20]_i_40_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_41 
       (.I0(\temp_value_reg[14]_13 [13]),
        .I1(\temp_value_reg[15]_14 [13]),
        .I2(\temp_value_reg[0]_15 [13]),
        .O(\sum_value[20]_i_41_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_42 
       (.I0(\temp_value_reg[14]_13 [12]),
        .I1(\temp_value_reg[15]_14 [12]),
        .I2(\temp_value_reg[0]_15 [12]),
        .O(\sum_value[20]_i_42_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[20]_i_43 
       (.I0(\temp_value_reg[14]_13 [11]),
        .I1(\temp_value_reg[15]_14 [11]),
        .I2(\temp_value_reg[0]_15 [11]),
        .O(\sum_value[20]_i_43_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_44 
       (.I0(\temp_value_reg[14]_13 [15]),
        .I1(\temp_value_reg[15]_14 [15]),
        .I2(\temp_value_reg[0]_15 [15]),
        .I3(\sum_value[20]_i_40_n_0 ),
        .O(\sum_value[20]_i_44_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_45 
       (.I0(\temp_value_reg[14]_13 [14]),
        .I1(\temp_value_reg[15]_14 [14]),
        .I2(\temp_value_reg[0]_15 [14]),
        .I3(\sum_value[20]_i_41_n_0 ),
        .O(\sum_value[20]_i_45_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_46 
       (.I0(\temp_value_reg[14]_13 [13]),
        .I1(\temp_value_reg[15]_14 [13]),
        .I2(\temp_value_reg[0]_15 [13]),
        .I3(\sum_value[20]_i_42_n_0 ),
        .O(\sum_value[20]_i_46_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[20]_i_47 
       (.I0(\temp_value_reg[14]_13 [12]),
        .I1(\temp_value_reg[15]_14 [12]),
        .I2(\temp_value_reg[0]_15 [12]),
        .I3(\sum_value[20]_i_43_n_0 ),
        .O(\sum_value[20]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_value[20]_i_8 
       (.I0(\sum_value_reg[20]_i_22_n_1 ),
        .I1(\sum_value_reg[20]_i_23_n_1 ),
        .O(\sum_value[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_value[20]_i_9 
       (.I0(\sum_value_reg[20]_i_22_n_6 ),
        .I1(\sum_value_reg[20]_i_23_n_6 ),
        .O(\sum_value[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[7]_i_10 
       (.I0(\sum_value[7]_i_6_n_0 ),
        .I1(\sum_value[7]_i_21_n_0 ),
        .I2(\sum_value_reg[11]_i_16_n_7 ),
        .I3(\sum_value_reg[7]_i_24_n_4 ),
        .I4(\sum_value_reg[7]_i_23_n_4 ),
        .I5(\sum_value_reg[7]_i_22_n_4 ),
        .O(\sum_value[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[7]_i_11 
       (.I0(\sum_value_reg[7]_i_14_n_5 ),
        .I1(\sum_value[7]_i_26_n_0 ),
        .I2(\sum_value_reg[7]_i_22_n_6 ),
        .I3(\sum_value_reg[7]_i_23_n_6 ),
        .I4(\sum_value_reg[7]_i_24_n_6 ),
        .O(\sum_value[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sum_value[7]_i_12 
       (.I0(\sum_value_reg[7]_i_22_n_6 ),
        .I1(\sum_value_reg[7]_i_23_n_6 ),
        .I2(\sum_value_reg[7]_i_24_n_6 ),
        .I3(\sum_value_reg[7]_i_14_n_5 ),
        .I4(\sum_value[7]_i_26_n_0 ),
        .O(\sum_value[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_13 
       (.I0(\sum_value_reg[7]_i_23_n_6 ),
        .I1(\sum_value_reg[7]_i_24_n_6 ),
        .I2(\sum_value_reg[7]_i_22_n_6 ),
        .I3(\sum_value_reg[7]_i_14_n_6 ),
        .O(\sum_value[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[7]_i_15 
       (.I0(\sum_value[7]_i_11_n_0 ),
        .I1(\sum_value[7]_i_25_n_0 ),
        .I2(\sum_value_reg[7]_i_14_n_4 ),
        .I3(\sum_value_reg[7]_i_24_n_5 ),
        .I4(\sum_value_reg[7]_i_23_n_5 ),
        .I5(\sum_value_reg[7]_i_22_n_5 ),
        .O(\sum_value[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \sum_value[7]_i_16 
       (.I0(\sum_value[7]_i_26_n_0 ),
        .I1(\sum_value_reg[7]_i_14_n_5 ),
        .I2(\sum_value_reg[7]_i_22_n_6 ),
        .I3(\sum_value_reg[7]_i_24_n_6 ),
        .I4(\sum_value_reg[7]_i_23_n_6 ),
        .I5(\sum_value_reg[7]_i_14_n_6 ),
        .O(\sum_value[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \sum_value[7]_i_17 
       (.I0(\sum_value[7]_i_13_n_0 ),
        .I1(\sum_value_reg[7]_i_22_n_7 ),
        .I2(\sum_value_reg[7]_i_23_n_7 ),
        .I3(\sum_value_reg[7]_i_24_n_7 ),
        .O(\sum_value[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_18 
       (.I0(\sum_value_reg[7]_i_23_n_7 ),
        .I1(\sum_value_reg[7]_i_24_n_7 ),
        .I2(\sum_value_reg[7]_i_22_n_7 ),
        .I3(\sum_value_reg[7]_i_14_n_7 ),
        .O(\sum_value[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_19 
       (.I0(\sum_value_reg[11]_i_13_n_5 ),
        .I1(\sum_value_reg[11]_i_15_n_5 ),
        .I2(\sum_value_reg[11]_i_14_n_5 ),
        .O(\sum_value[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_20 
       (.I0(\sum_value_reg[11]_i_13_n_6 ),
        .I1(\sum_value_reg[11]_i_15_n_6 ),
        .I2(\sum_value_reg[11]_i_14_n_6 ),
        .O(\sum_value[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_21 
       (.I0(\sum_value_reg[11]_i_13_n_7 ),
        .I1(\sum_value_reg[11]_i_15_n_7 ),
        .I2(\sum_value_reg[11]_i_14_n_7 ),
        .O(\sum_value[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_25 
       (.I0(\sum_value_reg[7]_i_22_n_4 ),
        .I1(\sum_value_reg[7]_i_24_n_4 ),
        .I2(\sum_value_reg[7]_i_23_n_4 ),
        .O(\sum_value[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_26 
       (.I0(\sum_value_reg[7]_i_22_n_5 ),
        .I1(\sum_value_reg[7]_i_24_n_5 ),
        .I2(\sum_value_reg[7]_i_23_n_5 ),
        .O(\sum_value[7]_i_26_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_27 
       (.I0(\temp_value_reg[8]_7 [2]),
        .I1(\temp_value_reg[9]_8 [2]),
        .I2(\temp_value_reg[10]_9 [2]),
        .O(\sum_value[7]_i_27_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_28 
       (.I0(\temp_value_reg[8]_7 [1]),
        .I1(\temp_value_reg[9]_8 [1]),
        .I2(\temp_value_reg[10]_9 [1]),
        .O(\sum_value[7]_i_28_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_29 
       (.I0(\temp_value_reg[8]_7 [0]),
        .I1(\temp_value_reg[9]_8 [0]),
        .I2(\temp_value_reg[10]_9 [0]),
        .O(\sum_value[7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[7]_i_3 
       (.I0(\sum_value_reg[11]_i_16_n_5 ),
        .I1(\sum_value[7]_i_19_n_0 ),
        .I2(\sum_value_reg[11]_i_13_n_6 ),
        .I3(\sum_value_reg[11]_i_14_n_6 ),
        .I4(\sum_value_reg[11]_i_15_n_6 ),
        .O(\sum_value[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_30 
       (.I0(\temp_value_reg[8]_7 [3]),
        .I1(\temp_value_reg[9]_8 [3]),
        .I2(\temp_value_reg[10]_9 [3]),
        .I3(\sum_value[7]_i_27_n_0 ),
        .O(\sum_value[7]_i_30_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_31 
       (.I0(\temp_value_reg[8]_7 [2]),
        .I1(\temp_value_reg[9]_8 [2]),
        .I2(\temp_value_reg[10]_9 [2]),
        .I3(\sum_value[7]_i_28_n_0 ),
        .O(\sum_value[7]_i_31_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_32 
       (.I0(\temp_value_reg[8]_7 [1]),
        .I1(\temp_value_reg[9]_8 [1]),
        .I2(\temp_value_reg[10]_9 [1]),
        .I3(\sum_value[7]_i_29_n_0 ),
        .O(\sum_value[7]_i_32_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_33 
       (.I0(\temp_value_reg[8]_7 [0]),
        .I1(\temp_value_reg[9]_8 [0]),
        .I2(\temp_value_reg[10]_9 [0]),
        .O(\sum_value[7]_i_33_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_34 
       (.I0(\temp_value_reg[5]_4 [2]),
        .I1(\temp_value_reg[6]_5 [2]),
        .I2(\temp_value_reg[7]_6 [2]),
        .O(\sum_value[7]_i_34_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_35 
       (.I0(\temp_value_reg[5]_4 [1]),
        .I1(\temp_value_reg[6]_5 [1]),
        .I2(\temp_value_reg[7]_6 [1]),
        .O(\sum_value[7]_i_35_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_36 
       (.I0(\temp_value_reg[5]_4 [0]),
        .I1(\temp_value_reg[6]_5 [0]),
        .I2(\temp_value_reg[7]_6 [0]),
        .O(\sum_value[7]_i_36_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_37 
       (.I0(\temp_value_reg[5]_4 [3]),
        .I1(\temp_value_reg[6]_5 [3]),
        .I2(\temp_value_reg[7]_6 [3]),
        .I3(\sum_value[7]_i_34_n_0 ),
        .O(\sum_value[7]_i_37_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_38 
       (.I0(\temp_value_reg[5]_4 [2]),
        .I1(\temp_value_reg[6]_5 [2]),
        .I2(\temp_value_reg[7]_6 [2]),
        .I3(\sum_value[7]_i_35_n_0 ),
        .O(\sum_value[7]_i_38_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_39 
       (.I0(\temp_value_reg[5]_4 [1]),
        .I1(\temp_value_reg[6]_5 [1]),
        .I2(\temp_value_reg[7]_6 [1]),
        .I3(\sum_value[7]_i_36_n_0 ),
        .O(\sum_value[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[7]_i_4 
       (.I0(\sum_value_reg[11]_i_16_n_6 ),
        .I1(\sum_value[7]_i_20_n_0 ),
        .I2(\sum_value_reg[11]_i_13_n_7 ),
        .I3(\sum_value_reg[11]_i_14_n_7 ),
        .I4(\sum_value_reg[11]_i_15_n_7 ),
        .O(\sum_value[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_40 
       (.I0(\temp_value_reg[5]_4 [0]),
        .I1(\temp_value_reg[6]_5 [0]),
        .I2(\temp_value_reg[7]_6 [0]),
        .O(\sum_value[7]_i_40_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_41 
       (.I0(\temp_value_reg[2]_1 [2]),
        .I1(\temp_value_reg[3]_2 [2]),
        .I2(\temp_value_reg[4]_3 [2]),
        .O(\sum_value[7]_i_41_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_42 
       (.I0(\temp_value_reg[2]_1 [1]),
        .I1(\temp_value_reg[3]_2 [1]),
        .I2(\temp_value_reg[4]_3 [1]),
        .O(\sum_value[7]_i_42_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_43 
       (.I0(\temp_value_reg[2]_1 [0]),
        .I1(\temp_value_reg[3]_2 [0]),
        .I2(\temp_value_reg[4]_3 [0]),
        .O(\sum_value[7]_i_43_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_44 
       (.I0(\temp_value_reg[2]_1 [3]),
        .I1(\temp_value_reg[3]_2 [3]),
        .I2(\temp_value_reg[4]_3 [3]),
        .I3(\sum_value[7]_i_41_n_0 ),
        .O(\sum_value[7]_i_44_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_45 
       (.I0(\temp_value_reg[2]_1 [2]),
        .I1(\temp_value_reg[3]_2 [2]),
        .I2(\temp_value_reg[4]_3 [2]),
        .I3(\sum_value[7]_i_42_n_0 ),
        .O(\sum_value[7]_i_45_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_46 
       (.I0(\temp_value_reg[2]_1 [1]),
        .I1(\temp_value_reg[3]_2 [1]),
        .I2(\temp_value_reg[4]_3 [1]),
        .I3(\sum_value[7]_i_43_n_0 ),
        .O(\sum_value[7]_i_46_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_47 
       (.I0(\temp_value_reg[2]_1 [0]),
        .I1(\temp_value_reg[3]_2 [0]),
        .I2(\temp_value_reg[4]_3 [0]),
        .O(\sum_value[7]_i_47_n_0 ));
  (* HLUTNM = "lutpair82" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_48 
       (.I0(\sum_value_reg[11]_i_50_n_5 ),
        .I1(\sum_value_reg[11]_i_51_n_5 ),
        .I2(\temp_value_reg[1]_0 [2]),
        .O(\sum_value[7]_i_48_n_0 ));
  (* HLUTNM = "lutpair81" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_49 
       (.I0(\sum_value_reg[11]_i_50_n_6 ),
        .I1(\sum_value_reg[11]_i_51_n_6 ),
        .I2(\temp_value_reg[1]_0 [1]),
        .O(\sum_value[7]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[7]_i_5 
       (.I0(\sum_value_reg[11]_i_16_n_7 ),
        .I1(\sum_value[7]_i_21_n_0 ),
        .I2(\sum_value_reg[7]_i_22_n_4 ),
        .I3(\sum_value_reg[7]_i_23_n_4 ),
        .I4(\sum_value_reg[7]_i_24_n_4 ),
        .O(\sum_value[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair80" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_value[7]_i_50 
       (.I0(\sum_value_reg[11]_i_50_n_7 ),
        .I1(\sum_value_reg[11]_i_51_n_7 ),
        .I2(\temp_value_reg[1]_0 [0]),
        .O(\sum_value[7]_i_50_n_0 ));
  (* HLUTNM = "lutpair83" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_51 
       (.I0(\sum_value_reg[11]_i_50_n_4 ),
        .I1(\sum_value_reg[11]_i_51_n_4 ),
        .I2(\temp_value_reg[1]_0 [3]),
        .I3(\sum_value[7]_i_48_n_0 ),
        .O(\sum_value[7]_i_51_n_0 ));
  (* HLUTNM = "lutpair82" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_52 
       (.I0(\sum_value_reg[11]_i_50_n_5 ),
        .I1(\sum_value_reg[11]_i_51_n_5 ),
        .I2(\temp_value_reg[1]_0 [2]),
        .I3(\sum_value[7]_i_49_n_0 ),
        .O(\sum_value[7]_i_52_n_0 ));
  (* HLUTNM = "lutpair81" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_value[7]_i_53 
       (.I0(\sum_value_reg[11]_i_50_n_6 ),
        .I1(\sum_value_reg[11]_i_51_n_6 ),
        .I2(\temp_value_reg[1]_0 [1]),
        .I3(\sum_value[7]_i_50_n_0 ),
        .O(\sum_value[7]_i_53_n_0 ));
  (* HLUTNM = "lutpair80" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_value[7]_i_54 
       (.I0(\sum_value_reg[11]_i_50_n_7 ),
        .I1(\sum_value_reg[11]_i_51_n_7 ),
        .I2(\temp_value_reg[1]_0 [0]),
        .O(\sum_value[7]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_value[7]_i_6 
       (.I0(\sum_value_reg[7]_i_14_n_4 ),
        .I1(\sum_value[7]_i_25_n_0 ),
        .I2(\sum_value_reg[7]_i_22_n_5 ),
        .I3(\sum_value_reg[7]_i_23_n_5 ),
        .I4(\sum_value_reg[7]_i_24_n_5 ),
        .O(\sum_value[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[7]_i_7 
       (.I0(\sum_value[7]_i_3_n_0 ),
        .I1(\sum_value[11]_i_17_n_0 ),
        .I2(\sum_value_reg[11]_i_16_n_4 ),
        .I3(\sum_value_reg[11]_i_15_n_5 ),
        .I4(\sum_value_reg[11]_i_14_n_5 ),
        .I5(\sum_value_reg[11]_i_13_n_5 ),
        .O(\sum_value[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[7]_i_8 
       (.I0(\sum_value[7]_i_4_n_0 ),
        .I1(\sum_value[7]_i_19_n_0 ),
        .I2(\sum_value_reg[11]_i_16_n_5 ),
        .I3(\sum_value_reg[11]_i_15_n_6 ),
        .I4(\sum_value_reg[11]_i_14_n_6 ),
        .I5(\sum_value_reg[11]_i_13_n_6 ),
        .O(\sum_value[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sum_value[7]_i_9 
       (.I0(\sum_value[7]_i_5_n_0 ),
        .I1(\sum_value[7]_i_20_n_0 ),
        .I2(\sum_value_reg[11]_i_16_n_6 ),
        .I3(\sum_value_reg[11]_i_15_n_7 ),
        .I4(\sum_value_reg[11]_i_14_n_7 ),
        .I5(\sum_value_reg[11]_i_13_n_7 ),
        .O(\sum_value[7]_i_9_n_0 ));
  FDCE \sum_value_reg[10] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[10]),
        .Q(p_0_in_0[6]));
  FDCE \sum_value_reg[11] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[11]),
        .Q(p_0_in_0[7]));
  CARRY4 \sum_value_reg[11]_i_1 
       (.CI(\sum_value_reg[7]_i_1_n_0 ),
        .CO({\sum_value_reg[11]_i_1_n_0 ,\sum_value_reg[11]_i_1_n_1 ,\sum_value_reg[11]_i_1_n_2 ,\sum_value_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_2_n_0 ,\sum_value[11]_i_3_n_0 ,\sum_value[11]_i_4_n_0 ,\sum_value[11]_i_5_n_0 }),
        .O(p_1_in[11:8]),
        .S({\sum_value[11]_i_6_n_0 ,\sum_value[11]_i_7_n_0 ,\sum_value[11]_i_8_n_0 ,\sum_value[11]_i_9_n_0 }));
  CARRY4 \sum_value_reg[11]_i_13 
       (.CI(\sum_value_reg[7]_i_22_n_0 ),
        .CO({\sum_value_reg[11]_i_13_n_0 ,\sum_value_reg[11]_i_13_n_1 ,\sum_value_reg[11]_i_13_n_2 ,\sum_value_reg[11]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_18_n_0 ,\sum_value[11]_i_19_n_0 ,\sum_value[11]_i_20_n_0 ,\sum_value[11]_i_21_n_0 }),
        .O({\sum_value_reg[11]_i_13_n_4 ,\sum_value_reg[11]_i_13_n_5 ,\sum_value_reg[11]_i_13_n_6 ,\sum_value_reg[11]_i_13_n_7 }),
        .S({\sum_value[11]_i_22_n_0 ,\sum_value[11]_i_23_n_0 ,\sum_value[11]_i_24_n_0 ,\sum_value[11]_i_25_n_0 }));
  CARRY4 \sum_value_reg[11]_i_14 
       (.CI(\sum_value_reg[7]_i_23_n_0 ),
        .CO({\sum_value_reg[11]_i_14_n_0 ,\sum_value_reg[11]_i_14_n_1 ,\sum_value_reg[11]_i_14_n_2 ,\sum_value_reg[11]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_26_n_0 ,\sum_value[11]_i_27_n_0 ,\sum_value[11]_i_28_n_0 ,\sum_value[11]_i_29_n_0 }),
        .O({\sum_value_reg[11]_i_14_n_4 ,\sum_value_reg[11]_i_14_n_5 ,\sum_value_reg[11]_i_14_n_6 ,\sum_value_reg[11]_i_14_n_7 }),
        .S({\sum_value[11]_i_30_n_0 ,\sum_value[11]_i_31_n_0 ,\sum_value[11]_i_32_n_0 ,\sum_value[11]_i_33_n_0 }));
  CARRY4 \sum_value_reg[11]_i_15 
       (.CI(\sum_value_reg[7]_i_24_n_0 ),
        .CO({\sum_value_reg[11]_i_15_n_0 ,\sum_value_reg[11]_i_15_n_1 ,\sum_value_reg[11]_i_15_n_2 ,\sum_value_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_34_n_0 ,\sum_value[11]_i_35_n_0 ,\sum_value[11]_i_36_n_0 ,\sum_value[11]_i_37_n_0 }),
        .O({\sum_value_reg[11]_i_15_n_4 ,\sum_value_reg[11]_i_15_n_5 ,\sum_value_reg[11]_i_15_n_6 ,\sum_value_reg[11]_i_15_n_7 }),
        .S({\sum_value[11]_i_38_n_0 ,\sum_value[11]_i_39_n_0 ,\sum_value[11]_i_40_n_0 ,\sum_value[11]_i_41_n_0 }));
  CARRY4 \sum_value_reg[11]_i_16 
       (.CI(\sum_value_reg[7]_i_14_n_0 ),
        .CO({\sum_value_reg[11]_i_16_n_0 ,\sum_value_reg[11]_i_16_n_1 ,\sum_value_reg[11]_i_16_n_2 ,\sum_value_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_42_n_0 ,\sum_value[11]_i_43_n_0 ,\sum_value[11]_i_44_n_0 ,\sum_value[11]_i_45_n_0 }),
        .O({\sum_value_reg[11]_i_16_n_4 ,\sum_value_reg[11]_i_16_n_5 ,\sum_value_reg[11]_i_16_n_6 ,\sum_value_reg[11]_i_16_n_7 }),
        .S({\sum_value[11]_i_46_n_0 ,\sum_value[11]_i_47_n_0 ,\sum_value[11]_i_48_n_0 ,\sum_value[11]_i_49_n_0 }));
  CARRY4 \sum_value_reg[11]_i_50 
       (.CI(1'b0),
        .CO({\sum_value_reg[11]_i_50_n_0 ,\sum_value_reg[11]_i_50_n_1 ,\sum_value_reg[11]_i_50_n_2 ,\sum_value_reg[11]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_52_n_0 ,\sum_value[11]_i_53_n_0 ,\sum_value[11]_i_54_n_0 ,1'b0}),
        .O({\sum_value_reg[11]_i_50_n_4 ,\sum_value_reg[11]_i_50_n_5 ,\sum_value_reg[11]_i_50_n_6 ,\sum_value_reg[11]_i_50_n_7 }),
        .S({\sum_value[11]_i_55_n_0 ,\sum_value[11]_i_56_n_0 ,\sum_value[11]_i_57_n_0 ,\sum_value[11]_i_58_n_0 }));
  CARRY4 \sum_value_reg[11]_i_51 
       (.CI(1'b0),
        .CO({\sum_value_reg[11]_i_51_n_0 ,\sum_value_reg[11]_i_51_n_1 ,\sum_value_reg[11]_i_51_n_2 ,\sum_value_reg[11]_i_51_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[11]_i_59_n_0 ,\sum_value[11]_i_60_n_0 ,\sum_value[11]_i_61_n_0 ,1'b0}),
        .O({\sum_value_reg[11]_i_51_n_4 ,\sum_value_reg[11]_i_51_n_5 ,\sum_value_reg[11]_i_51_n_6 ,\sum_value_reg[11]_i_51_n_7 }),
        .S({\sum_value[11]_i_62_n_0 ,\sum_value[11]_i_63_n_0 ,\sum_value[11]_i_64_n_0 ,\sum_value[11]_i_65_n_0 }));
  FDCE \sum_value_reg[12] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[12]),
        .Q(p_0_in_0[8]));
  FDCE \sum_value_reg[13] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[13]),
        .Q(p_0_in_0[9]));
  FDCE \sum_value_reg[14] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[14]),
        .Q(p_0_in_0[10]));
  FDCE \sum_value_reg[15] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[15]),
        .Q(p_0_in_0[11]));
  CARRY4 \sum_value_reg[15]_i_1 
       (.CI(\sum_value_reg[11]_i_1_n_0 ),
        .CO({\sum_value_reg[15]_i_1_n_0 ,\sum_value_reg[15]_i_1_n_1 ,\sum_value_reg[15]_i_1_n_2 ,\sum_value_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_2_n_0 ,\sum_value[15]_i_3_n_0 ,\sum_value[15]_i_4_n_0 ,\sum_value[15]_i_5_n_0 }),
        .O(p_1_in[15:12]),
        .S({\sum_value[15]_i_6_n_0 ,\sum_value[15]_i_7_n_0 ,\sum_value[15]_i_8_n_0 ,\sum_value[15]_i_9_n_0 }));
  CARRY4 \sum_value_reg[15]_i_13 
       (.CI(\sum_value_reg[11]_i_13_n_0 ),
        .CO({\sum_value_reg[15]_i_13_n_0 ,\sum_value_reg[15]_i_13_n_1 ,\sum_value_reg[15]_i_13_n_2 ,\sum_value_reg[15]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_18_n_0 ,\sum_value[15]_i_19_n_0 ,\sum_value[15]_i_20_n_0 ,\sum_value[15]_i_21_n_0 }),
        .O({\sum_value_reg[15]_i_13_n_4 ,\sum_value_reg[15]_i_13_n_5 ,\sum_value_reg[15]_i_13_n_6 ,\sum_value_reg[15]_i_13_n_7 }),
        .S({\sum_value[15]_i_22_n_0 ,\sum_value[15]_i_23_n_0 ,\sum_value[15]_i_24_n_0 ,\sum_value[15]_i_25_n_0 }));
  CARRY4 \sum_value_reg[15]_i_14 
       (.CI(\sum_value_reg[11]_i_14_n_0 ),
        .CO({\sum_value_reg[15]_i_14_n_0 ,\sum_value_reg[15]_i_14_n_1 ,\sum_value_reg[15]_i_14_n_2 ,\sum_value_reg[15]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_26_n_0 ,\sum_value[15]_i_27_n_0 ,\sum_value[15]_i_28_n_0 ,\sum_value[15]_i_29_n_0 }),
        .O({\sum_value_reg[15]_i_14_n_4 ,\sum_value_reg[15]_i_14_n_5 ,\sum_value_reg[15]_i_14_n_6 ,\sum_value_reg[15]_i_14_n_7 }),
        .S({\sum_value[15]_i_30_n_0 ,\sum_value[15]_i_31_n_0 ,\sum_value[15]_i_32_n_0 ,\sum_value[15]_i_33_n_0 }));
  CARRY4 \sum_value_reg[15]_i_15 
       (.CI(\sum_value_reg[11]_i_15_n_0 ),
        .CO({\sum_value_reg[15]_i_15_n_0 ,\sum_value_reg[15]_i_15_n_1 ,\sum_value_reg[15]_i_15_n_2 ,\sum_value_reg[15]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_34_n_0 ,\sum_value[15]_i_35_n_0 ,\sum_value[15]_i_36_n_0 ,\sum_value[15]_i_37_n_0 }),
        .O({\sum_value_reg[15]_i_15_n_4 ,\sum_value_reg[15]_i_15_n_5 ,\sum_value_reg[15]_i_15_n_6 ,\sum_value_reg[15]_i_15_n_7 }),
        .S({\sum_value[15]_i_38_n_0 ,\sum_value[15]_i_39_n_0 ,\sum_value[15]_i_40_n_0 ,\sum_value[15]_i_41_n_0 }));
  CARRY4 \sum_value_reg[15]_i_16 
       (.CI(\sum_value_reg[11]_i_16_n_0 ),
        .CO({\sum_value_reg[15]_i_16_n_0 ,\sum_value_reg[15]_i_16_n_1 ,\sum_value_reg[15]_i_16_n_2 ,\sum_value_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_42_n_0 ,\sum_value[15]_i_43_n_0 ,\sum_value[15]_i_44_n_0 ,\sum_value[15]_i_45_n_0 }),
        .O({\sum_value_reg[15]_i_16_n_4 ,\sum_value_reg[15]_i_16_n_5 ,\sum_value_reg[15]_i_16_n_6 ,\sum_value_reg[15]_i_16_n_7 }),
        .S({\sum_value[15]_i_46_n_0 ,\sum_value[15]_i_47_n_0 ,\sum_value[15]_i_48_n_0 ,\sum_value[15]_i_49_n_0 }));
  CARRY4 \sum_value_reg[15]_i_50 
       (.CI(\sum_value_reg[11]_i_50_n_0 ),
        .CO({\sum_value_reg[15]_i_50_n_0 ,\sum_value_reg[15]_i_50_n_1 ,\sum_value_reg[15]_i_50_n_2 ,\sum_value_reg[15]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_52_n_0 ,\sum_value[15]_i_53_n_0 ,\sum_value[15]_i_54_n_0 ,\sum_value[15]_i_55_n_0 }),
        .O({\sum_value_reg[15]_i_50_n_4 ,\sum_value_reg[15]_i_50_n_5 ,\sum_value_reg[15]_i_50_n_6 ,\sum_value_reg[15]_i_50_n_7 }),
        .S({\sum_value[15]_i_56_n_0 ,\sum_value[15]_i_57_n_0 ,\sum_value[15]_i_58_n_0 ,\sum_value[15]_i_59_n_0 }));
  CARRY4 \sum_value_reg[15]_i_51 
       (.CI(\sum_value_reg[11]_i_51_n_0 ),
        .CO({\sum_value_reg[15]_i_51_n_0 ,\sum_value_reg[15]_i_51_n_1 ,\sum_value_reg[15]_i_51_n_2 ,\sum_value_reg[15]_i_51_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[15]_i_60_n_0 ,\sum_value[15]_i_61_n_0 ,\sum_value[15]_i_62_n_0 ,\sum_value[15]_i_63_n_0 }),
        .O({\sum_value_reg[15]_i_51_n_4 ,\sum_value_reg[15]_i_51_n_5 ,\sum_value_reg[15]_i_51_n_6 ,\sum_value_reg[15]_i_51_n_7 }),
        .S({\sum_value[15]_i_64_n_0 ,\sum_value[15]_i_65_n_0 ,\sum_value[15]_i_66_n_0 ,\sum_value[15]_i_67_n_0 }));
  FDCE \sum_value_reg[16] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[16]),
        .Q(p_0_in_0[12]));
  FDCE \sum_value_reg[17] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[17]),
        .Q(p_0_in_0[13]));
  FDCE \sum_value_reg[18] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[18]),
        .Q(p_0_in_0[14]));
  FDCE \sum_value_reg[19] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[19]),
        .Q(p_0_in_0[15]));
  CARRY4 \sum_value_reg[19]_i_1 
       (.CI(\sum_value_reg[15]_i_1_n_0 ),
        .CO({\sum_value_reg[19]_i_1_n_0 ,\sum_value_reg[19]_i_1_n_1 ,\sum_value_reg[19]_i_1_n_2 ,\sum_value_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_2_n_0 ,\sum_value[19]_i_3_n_0 ,\sum_value[19]_i_4_n_0 ,\sum_value[19]_i_5_n_0 }),
        .O(p_1_in[19:16]),
        .S({\sum_value[19]_i_6_n_0 ,\sum_value[19]_i_7_n_0 ,\sum_value[19]_i_8_n_0 ,\sum_value[19]_i_9_n_0 }));
  CARRY4 \sum_value_reg[19]_i_10 
       (.CI(\sum_value_reg[19]_i_17_n_0 ),
        .CO({\NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED [3],\sum_value_reg[19]_i_10_n_1 ,\NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED [1],\sum_value_reg[19]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_value[19]_i_20_n_0 }),
        .O({\NLW_sum_value_reg[19]_i_10_O_UNCONNECTED [3:2],\sum_value_reg[19]_i_10_n_6 ,\sum_value_reg[19]_i_10_n_7 }),
        .S({1'b0,1'b1,\sum_value[19]_i_21_n_0 ,\sum_value[19]_i_22_n_0 }));
  CARRY4 \sum_value_reg[19]_i_14 
       (.CI(\sum_value_reg[15]_i_13_n_0 ),
        .CO({\sum_value_reg[19]_i_14_n_0 ,\sum_value_reg[19]_i_14_n_1 ,\sum_value_reg[19]_i_14_n_2 ,\sum_value_reg[19]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_23_n_0 ,\sum_value[19]_i_24_n_0 ,\sum_value[19]_i_25_n_0 ,\sum_value[19]_i_26_n_0 }),
        .O({\sum_value_reg[19]_i_14_n_4 ,\sum_value_reg[19]_i_14_n_5 ,\sum_value_reg[19]_i_14_n_6 ,\sum_value_reg[19]_i_14_n_7 }),
        .S({\sum_value[19]_i_27_n_0 ,\sum_value[19]_i_28_n_0 ,\sum_value[19]_i_29_n_0 ,\sum_value[19]_i_30_n_0 }));
  CARRY4 \sum_value_reg[19]_i_15 
       (.CI(\sum_value_reg[15]_i_14_n_0 ),
        .CO({\sum_value_reg[19]_i_15_n_0 ,\sum_value_reg[19]_i_15_n_1 ,\sum_value_reg[19]_i_15_n_2 ,\sum_value_reg[19]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_31_n_0 ,\sum_value[19]_i_32_n_0 ,\sum_value[19]_i_33_n_0 ,\sum_value[19]_i_34_n_0 }),
        .O({\sum_value_reg[19]_i_15_n_4 ,\sum_value_reg[19]_i_15_n_5 ,\sum_value_reg[19]_i_15_n_6 ,\sum_value_reg[19]_i_15_n_7 }),
        .S({\sum_value[19]_i_35_n_0 ,\sum_value[19]_i_36_n_0 ,\sum_value[19]_i_37_n_0 ,\sum_value[19]_i_38_n_0 }));
  CARRY4 \sum_value_reg[19]_i_16 
       (.CI(\sum_value_reg[15]_i_15_n_0 ),
        .CO({\sum_value_reg[19]_i_16_n_0 ,\sum_value_reg[19]_i_16_n_1 ,\sum_value_reg[19]_i_16_n_2 ,\sum_value_reg[19]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_39_n_0 ,\sum_value[19]_i_40_n_0 ,\sum_value[19]_i_41_n_0 ,\sum_value[19]_i_42_n_0 }),
        .O({\sum_value_reg[19]_i_16_n_4 ,\sum_value_reg[19]_i_16_n_5 ,\sum_value_reg[19]_i_16_n_6 ,\sum_value_reg[19]_i_16_n_7 }),
        .S({\sum_value[19]_i_43_n_0 ,\sum_value[19]_i_44_n_0 ,\sum_value[19]_i_45_n_0 ,\sum_value[19]_i_46_n_0 }));
  CARRY4 \sum_value_reg[19]_i_17 
       (.CI(\sum_value_reg[15]_i_16_n_0 ),
        .CO({\sum_value_reg[19]_i_17_n_0 ,\sum_value_reg[19]_i_17_n_1 ,\sum_value_reg[19]_i_17_n_2 ,\sum_value_reg[19]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_47_n_0 ,\sum_value[19]_i_48_n_0 ,\sum_value[19]_i_49_n_0 ,\sum_value[19]_i_50_n_0 }),
        .O({\sum_value_reg[19]_i_17_n_4 ,\sum_value_reg[19]_i_17_n_5 ,\sum_value_reg[19]_i_17_n_6 ,\sum_value_reg[19]_i_17_n_7 }),
        .S({\sum_value[19]_i_51_n_0 ,\sum_value[19]_i_52_n_0 ,\sum_value[19]_i_53_n_0 ,\sum_value[19]_i_54_n_0 }));
  CARRY4 \sum_value_reg[19]_i_55 
       (.CI(\sum_value_reg[15]_i_50_n_0 ),
        .CO({\sum_value_reg[19]_i_55_n_0 ,\sum_value_reg[19]_i_55_n_1 ,\sum_value_reg[19]_i_55_n_2 ,\sum_value_reg[19]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_57_n_0 ,\sum_value[19]_i_58_n_0 ,\sum_value[19]_i_59_n_0 ,\sum_value[19]_i_60_n_0 }),
        .O({\sum_value_reg[19]_i_55_n_4 ,\sum_value_reg[19]_i_55_n_5 ,\sum_value_reg[19]_i_55_n_6 ,\sum_value_reg[19]_i_55_n_7 }),
        .S({\sum_value[19]_i_61_n_0 ,\sum_value[19]_i_62_n_0 ,\sum_value[19]_i_63_n_0 ,\sum_value[19]_i_64_n_0 }));
  CARRY4 \sum_value_reg[19]_i_56 
       (.CI(\sum_value_reg[15]_i_51_n_0 ),
        .CO({\sum_value_reg[19]_i_56_n_0 ,\sum_value_reg[19]_i_56_n_1 ,\sum_value_reg[19]_i_56_n_2 ,\sum_value_reg[19]_i_56_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[19]_i_65_n_0 ,\sum_value[19]_i_66_n_0 ,\sum_value[19]_i_67_n_0 ,\sum_value[19]_i_68_n_0 }),
        .O({\sum_value_reg[19]_i_56_n_4 ,\sum_value_reg[19]_i_56_n_5 ,\sum_value_reg[19]_i_56_n_6 ,\sum_value_reg[19]_i_56_n_7 }),
        .S({\sum_value[19]_i_69_n_0 ,\sum_value[19]_i_70_n_0 ,\sum_value[19]_i_71_n_0 ,\sum_value[19]_i_72_n_0 }));
  FDCE \sum_value_reg[20] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[20]),
        .Q(p_0_in_0[16]));
  CARRY4 \sum_value_reg[20]_i_1 
       (.CI(\sum_value_reg[19]_i_1_n_0 ),
        .CO(\NLW_sum_value_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_value_reg[20]_i_1_O_UNCONNECTED [3:1],p_1_in[20]}),
        .S({1'b0,1'b0,1'b0,\sum_value[20]_i_3_n_0 }));
  CARRY4 \sum_value_reg[20]_i_22 
       (.CI(\sum_value_reg[20]_i_24_n_0 ),
        .CO({\NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED [3],\sum_value_reg[20]_i_22_n_1 ,\NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED [1],\sum_value_reg[20]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_value[20]_i_26_n_0 }),
        .O({\NLW_sum_value_reg[20]_i_22_O_UNCONNECTED [3:2],\sum_value_reg[20]_i_22_n_6 ,\sum_value_reg[20]_i_22_n_7 }),
        .S({1'b0,1'b1,\sum_value[20]_i_27_n_0 ,\sum_value[20]_i_28_n_0 }));
  CARRY4 \sum_value_reg[20]_i_23 
       (.CI(\sum_value_reg[20]_i_25_n_0 ),
        .CO({\NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED [3],\sum_value_reg[20]_i_23_n_1 ,\NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED [1],\sum_value_reg[20]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_value[20]_i_29_n_0 }),
        .O({\NLW_sum_value_reg[20]_i_23_O_UNCONNECTED [3:2],\sum_value_reg[20]_i_23_n_6 ,\sum_value_reg[20]_i_23_n_7 }),
        .S({1'b0,1'b1,\sum_value[20]_i_30_n_0 ,\sum_value[20]_i_31_n_0 }));
  CARRY4 \sum_value_reg[20]_i_24 
       (.CI(\sum_value_reg[19]_i_55_n_0 ),
        .CO({\sum_value_reg[20]_i_24_n_0 ,\sum_value_reg[20]_i_24_n_1 ,\sum_value_reg[20]_i_24_n_2 ,\sum_value_reg[20]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[20]_i_32_n_0 ,\sum_value[20]_i_33_n_0 ,\sum_value[20]_i_34_n_0 ,\sum_value[20]_i_35_n_0 }),
        .O({\sum_value_reg[20]_i_24_n_4 ,\sum_value_reg[20]_i_24_n_5 ,\sum_value_reg[20]_i_24_n_6 ,\sum_value_reg[20]_i_24_n_7 }),
        .S({\sum_value[20]_i_36_n_0 ,\sum_value[20]_i_37_n_0 ,\sum_value[20]_i_38_n_0 ,\sum_value[20]_i_39_n_0 }));
  CARRY4 \sum_value_reg[20]_i_25 
       (.CI(\sum_value_reg[19]_i_56_n_0 ),
        .CO({\sum_value_reg[20]_i_25_n_0 ,\sum_value_reg[20]_i_25_n_1 ,\sum_value_reg[20]_i_25_n_2 ,\sum_value_reg[20]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[20]_i_40_n_0 ,\sum_value[20]_i_41_n_0 ,\sum_value[20]_i_42_n_0 ,\sum_value[20]_i_43_n_0 }),
        .O({\sum_value_reg[20]_i_25_n_4 ,\sum_value_reg[20]_i_25_n_5 ,\sum_value_reg[20]_i_25_n_6 ,\sum_value_reg[20]_i_25_n_7 }),
        .S({\sum_value[20]_i_44_n_0 ,\sum_value[20]_i_45_n_0 ,\sum_value[20]_i_46_n_0 ,\sum_value[20]_i_47_n_0 }));
  CARRY4 \sum_value_reg[20]_i_4 
       (.CI(\sum_value_reg[19]_i_16_n_0 ),
        .CO({\sum_value_reg[20]_i_4_n_0 ,\sum_value_reg[20]_i_4_n_1 ,\sum_value_reg[20]_i_4_n_2 ,\sum_value_reg[20]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[20]_i_8_n_0 ,\sum_value[20]_i_9_n_0 ,\sum_value[20]_i_10_n_0 ,\sum_value[20]_i_11_n_0 }),
        .O({\sum_value_reg[20]_i_4_n_4 ,\sum_value_reg[20]_i_4_n_5 ,\sum_value_reg[20]_i_4_n_6 ,\sum_value_reg[20]_i_4_n_7 }),
        .S({\sum_value[20]_i_12_n_0 ,\sum_value[20]_i_13_n_0 ,\sum_value[20]_i_14_n_0 ,\sum_value[20]_i_15_n_0 }));
  CARRY4 \sum_value_reg[20]_i_5 
       (.CI(\sum_value_reg[19]_i_15_n_0 ),
        .CO({\NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED [3],\sum_value_reg[20]_i_5_n_1 ,\NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED [1],\sum_value_reg[20]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_value[20]_i_16_n_0 }),
        .O({\NLW_sum_value_reg[20]_i_5_O_UNCONNECTED [3:2],\sum_value_reg[20]_i_5_n_6 ,\sum_value_reg[20]_i_5_n_7 }),
        .S({1'b0,1'b1,\sum_value[20]_i_17_n_0 ,\sum_value[20]_i_18_n_0 }));
  CARRY4 \sum_value_reg[20]_i_6 
       (.CI(\sum_value_reg[19]_i_14_n_0 ),
        .CO({\NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED [3],\sum_value_reg[20]_i_6_n_1 ,\NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED [1],\sum_value_reg[20]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_value[20]_i_19_n_0 }),
        .O({\NLW_sum_value_reg[20]_i_6_O_UNCONNECTED [3:2],\sum_value_reg[20]_i_6_n_6 ,\sum_value_reg[20]_i_6_n_7 }),
        .S({1'b0,1'b1,\sum_value[20]_i_20_n_0 ,\sum_value[20]_i_21_n_0 }));
  CARRY4 \sum_value_reg[20]_i_7 
       (.CI(\sum_value_reg[20]_i_4_n_0 ),
        .CO({\NLW_sum_value_reg[20]_i_7_CO_UNCONNECTED [3:1],\sum_value_reg[20]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sum_value_reg[20]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \sum_value_reg[4] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(p_0_in_0[0]));
  FDCE \sum_value_reg[5] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(p_0_in_0[1]));
  FDCE \sum_value_reg[6] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(p_0_in_0[2]));
  FDCE \sum_value_reg[7] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(p_0_in_0[3]));
  CARRY4 \sum_value_reg[7]_i_1 
       (.CI(\sum_value_reg[7]_i_2_n_0 ),
        .CO({\sum_value_reg[7]_i_1_n_0 ,\sum_value_reg[7]_i_1_n_1 ,\sum_value_reg[7]_i_1_n_2 ,\sum_value_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_3_n_0 ,\sum_value[7]_i_4_n_0 ,\sum_value[7]_i_5_n_0 ,\sum_value[7]_i_6_n_0 }),
        .O(p_1_in[7:4]),
        .S({\sum_value[7]_i_7_n_0 ,\sum_value[7]_i_8_n_0 ,\sum_value[7]_i_9_n_0 ,\sum_value[7]_i_10_n_0 }));
  CARRY4 \sum_value_reg[7]_i_14 
       (.CI(1'b0),
        .CO({\sum_value_reg[7]_i_14_n_0 ,\sum_value_reg[7]_i_14_n_1 ,\sum_value_reg[7]_i_14_n_2 ,\sum_value_reg[7]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_27_n_0 ,\sum_value[7]_i_28_n_0 ,\sum_value[7]_i_29_n_0 ,1'b0}),
        .O({\sum_value_reg[7]_i_14_n_4 ,\sum_value_reg[7]_i_14_n_5 ,\sum_value_reg[7]_i_14_n_6 ,\sum_value_reg[7]_i_14_n_7 }),
        .S({\sum_value[7]_i_30_n_0 ,\sum_value[7]_i_31_n_0 ,\sum_value[7]_i_32_n_0 ,\sum_value[7]_i_33_n_0 }));
  CARRY4 \sum_value_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\sum_value_reg[7]_i_2_n_0 ,\sum_value_reg[7]_i_2_n_1 ,\sum_value_reg[7]_i_2_n_2 ,\sum_value_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_11_n_0 ,\sum_value[7]_i_12_n_0 ,\sum_value[7]_i_13_n_0 ,\sum_value_reg[7]_i_14_n_7 }),
        .O(\NLW_sum_value_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({\sum_value[7]_i_15_n_0 ,\sum_value[7]_i_16_n_0 ,\sum_value[7]_i_17_n_0 ,\sum_value[7]_i_18_n_0 }));
  CARRY4 \sum_value_reg[7]_i_22 
       (.CI(1'b0),
        .CO({\sum_value_reg[7]_i_22_n_0 ,\sum_value_reg[7]_i_22_n_1 ,\sum_value_reg[7]_i_22_n_2 ,\sum_value_reg[7]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_34_n_0 ,\sum_value[7]_i_35_n_0 ,\sum_value[7]_i_36_n_0 ,1'b0}),
        .O({\sum_value_reg[7]_i_22_n_4 ,\sum_value_reg[7]_i_22_n_5 ,\sum_value_reg[7]_i_22_n_6 ,\sum_value_reg[7]_i_22_n_7 }),
        .S({\sum_value[7]_i_37_n_0 ,\sum_value[7]_i_38_n_0 ,\sum_value[7]_i_39_n_0 ,\sum_value[7]_i_40_n_0 }));
  CARRY4 \sum_value_reg[7]_i_23 
       (.CI(1'b0),
        .CO({\sum_value_reg[7]_i_23_n_0 ,\sum_value_reg[7]_i_23_n_1 ,\sum_value_reg[7]_i_23_n_2 ,\sum_value_reg[7]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_41_n_0 ,\sum_value[7]_i_42_n_0 ,\sum_value[7]_i_43_n_0 ,1'b0}),
        .O({\sum_value_reg[7]_i_23_n_4 ,\sum_value_reg[7]_i_23_n_5 ,\sum_value_reg[7]_i_23_n_6 ,\sum_value_reg[7]_i_23_n_7 }),
        .S({\sum_value[7]_i_44_n_0 ,\sum_value[7]_i_45_n_0 ,\sum_value[7]_i_46_n_0 ,\sum_value[7]_i_47_n_0 }));
  CARRY4 \sum_value_reg[7]_i_24 
       (.CI(1'b0),
        .CO({\sum_value_reg[7]_i_24_n_0 ,\sum_value_reg[7]_i_24_n_1 ,\sum_value_reg[7]_i_24_n_2 ,\sum_value_reg[7]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_value[7]_i_48_n_0 ,\sum_value[7]_i_49_n_0 ,\sum_value[7]_i_50_n_0 ,1'b0}),
        .O({\sum_value_reg[7]_i_24_n_4 ,\sum_value_reg[7]_i_24_n_5 ,\sum_value_reg[7]_i_24_n_6 ,\sum_value_reg[7]_i_24_n_7 }),
        .S({\sum_value[7]_i_51_n_0 ,\sum_value[7]_i_52_n_0 ,\sum_value[7]_i_53_n_0 ,\sum_value[7]_i_54_n_0 }));
  FDCE \sum_value_reg[8] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[8]),
        .Q(p_0_in_0[4]));
  FDCE \sum_value_reg[9] 
       (.C(clk_usec),
        .CE(s00_axi_aresetn),
        .CLR(SR),
        .D(p_1_in[9]),
        .Q(p_0_in_0[5]));
  FDRE \temp_value_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[0]_15 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[0]_15 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[0]_15 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[0]_15 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[0]_15 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[0]_15 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[0]_15 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[0]_15 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[0]_15 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[0]_15 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[0]_15 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[0]_15 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[0]_15 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[0]_15 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[0]_15 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[0]_15 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_9),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[0]_15 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[10][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[10]_9 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[10][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[10]_9 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[10][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[10]_9 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[10][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[10]_9 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[10][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[10]_9 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[10][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[10]_9 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[10][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[10]_9 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[10][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[10]_9 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[10][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[10]_9 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[10][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[10]_9 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[10][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[10]_9 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[10][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[10]_9 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[10][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[10]_9 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[10][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[10]_9 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[10][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[10]_9 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[10][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[10]_9 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[10][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_14),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[10]_9 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[11][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[11]_10 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[11][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[11]_10 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[11][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[11]_10 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[11][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[11]_10 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[11][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[11]_10 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[11][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[11]_10 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[11][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[11]_10 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[11][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[11]_10 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[11][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[11]_10 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[11][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[11]_10 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[11][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[11]_10 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[11][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[11]_10 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[11][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[11]_10 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[11][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[11]_10 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[11][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[11]_10 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[11][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[11]_10 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[11][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_6),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[11]_10 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[12][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[12]_11 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[12][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[12]_11 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[12][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[12]_11 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[12][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[12]_11 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[12][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[12]_11 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[12][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[12]_11 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[12][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[12]_11 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[12][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[12]_11 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[12][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[12]_11 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[12][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[12]_11 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[12][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[12]_11 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[12][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[12]_11 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[12][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[12]_11 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[12][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[12]_11 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[12][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[12]_11 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[12][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[12]_11 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[12][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_10),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[12]_11 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[13][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[13]_12 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[13][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[13]_12 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[13][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[13]_12 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[13][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[13]_12 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[13][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[13]_12 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[13][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[13]_12 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[13][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[13]_12 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[13][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[13]_12 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[13][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[13]_12 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[13][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[13]_12 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[13][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[13]_12 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[13][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[13]_12 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[13][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[13]_12 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[13][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[13]_12 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[13][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[13]_12 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[13][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[13]_12 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[13][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_17),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[13]_12 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[14][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[14]_13 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[14][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[14]_13 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[14][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[14]_13 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[14][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[14]_13 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[14][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[14]_13 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[14][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[14]_13 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[14][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[14]_13 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[14][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[14]_13 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[14][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[14]_13 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[14][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[14]_13 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[14][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[14]_13 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[14][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[14]_13 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[14][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[14]_13 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[14][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[14]_13 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[14][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[14]_13 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[14][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[14]_13 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[14][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_13),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[14]_13 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[15][0] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[15]_14 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[15][10] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[15]_14 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[15][11] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[15]_14 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[15][12] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[15]_14 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[15][13] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[15]_14 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[15][14] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[15]_14 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[15][15] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[15]_14 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[15][16] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[15]_14 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[15][1] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[15]_14 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[15][2] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[15]_14 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[15][3] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[15]_14 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[15][4] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[15]_14 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[15][5] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[15]_14 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[15][6] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[15]_14 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[15][7] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[15]_14 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[15][8] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[15]_14 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[15][9] 
       (.C(s00_axi_aclk),
        .CE(temp_value),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[15]_14 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[1]_0 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[1]_0 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[1]_0 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[1]_0 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[1]_0 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[1]_0 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[1]_0 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[1]_0 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[1]_0 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[1]_0 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[1]_0 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[1]_0 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[1]_0 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[1]_0 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_20),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[1]_0 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[2]_1 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[2]_1 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[2]_1 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[2]_1 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[2]_1 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[2]_1 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[2]_1 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[2]_1 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[2]_1 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[2]_1 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[2]_1 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[2]_1 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[2]_1 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[2]_1 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[2]_1 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[2]_1 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_16),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[2]_1 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[3]_2 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[3][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[3]_2 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[3][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[3]_2 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[3][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[3]_2 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[3][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[3]_2 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[3][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[3]_2 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[3][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[3]_2 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[3][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[3]_2 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[3]_2 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[3]_2 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[3]_2 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[3]_2 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[3]_2 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[3]_2 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[3]_2 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[3]_2 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_8),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[3]_2 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[4]_3 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[4][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[4]_3 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[4][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[4]_3 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[4][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[4]_3 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[4][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[4]_3 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[4][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[4]_3 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[4][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[4]_3 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[4][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[4]_3 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[4]_3 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[4]_3 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[4]_3 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[4]_3 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[4]_3 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[4]_3 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[4]_3 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[4][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[4]_3 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[4][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_12),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[4]_3 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[5]_4 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[5][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[5]_4 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[5][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[5]_4 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[5][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[5]_4 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[5][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[5]_4 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[5][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[5]_4 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[5][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[5]_4 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[5][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[5]_4 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[5]_4 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[5]_4 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[5]_4 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[5]_4 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[5]_4 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[5]_4 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[5]_4 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[5][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[5]_4 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[5][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_19),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[5]_4 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[6]_5 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[6][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[6]_5 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[6][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[6]_5 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[6][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[6]_5 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[6][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[6]_5 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[6][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[6]_5 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[6][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[6]_5 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[6][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[6]_5 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[6]_5 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[6]_5 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[6]_5 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[6]_5 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[6]_5 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[6]_5 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[6]_5 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[6][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[6]_5 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[6][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_15),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[6]_5 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[7]_6 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[7][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[7]_6 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[7][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[7]_6 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[7][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[7]_6 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[7][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[7]_6 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[7][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[7]_6 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[7][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[7]_6 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[7][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[7]_6 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[7]_6 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[7]_6 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[7]_6 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[7]_6 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[7]_6 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[7]_6 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[7]_6 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[7][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[7]_6 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[7][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_7),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[7]_6 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[8]_7 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[8][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[8]_7 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[8][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[8]_7 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[8][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[8]_7 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[8][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[8]_7 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[8][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[8]_7 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[8][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[8]_7 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[8][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[8]_7 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[8]_7 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[8]_7 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[8]_7 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[8]_7 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[8]_7 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[8]_7 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[8]_7 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[8][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[8]_7 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[8][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_11),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[8]_7 [9]),
        .R(1'b0));
  FDRE \temp_value_reg[9][0] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[0]),
        .Q(\temp_value_reg[9]_8 [0]),
        .R(1'b0));
  FDRE \temp_value_reg[9][10] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[10]),
        .Q(\temp_value_reg[9]_8 [10]),
        .R(1'b0));
  FDRE \temp_value_reg[9][11] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[11]),
        .Q(\temp_value_reg[9]_8 [11]),
        .R(1'b0));
  FDRE \temp_value_reg[9][12] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[12]),
        .Q(\temp_value_reg[9]_8 [12]),
        .R(1'b0));
  FDRE \temp_value_reg[9][13] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[13]),
        .Q(\temp_value_reg[9]_8 [13]),
        .R(1'b0));
  FDRE \temp_value_reg[9][14] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[14]),
        .Q(\temp_value_reg[9]_8 [14]),
        .R(1'b0));
  FDRE \temp_value_reg[9][15] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[15]),
        .Q(\temp_value_reg[9]_8 [15]),
        .R(1'b0));
  FDRE \temp_value_reg[9][16] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[16]),
        .Q(\temp_value_reg[9]_8 [16]),
        .R(1'b0));
  FDRE \temp_value_reg[9][1] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[1]),
        .Q(\temp_value_reg[9]_8 [1]),
        .R(1'b0));
  FDRE \temp_value_reg[9][2] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[2]),
        .Q(\temp_value_reg[9]_8 [2]),
        .R(1'b0));
  FDRE \temp_value_reg[9][3] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[3]),
        .Q(\temp_value_reg[9]_8 [3]),
        .R(1'b0));
  FDRE \temp_value_reg[9][4] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[4]),
        .Q(\temp_value_reg[9]_8 [4]),
        .R(1'b0));
  FDRE \temp_value_reg[9][5] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[5]),
        .Q(\temp_value_reg[9]_8 [5]),
        .R(1'b0));
  FDRE \temp_value_reg[9][6] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[6]),
        .Q(\temp_value_reg[9]_8 [6]),
        .R(1'b0));
  FDRE \temp_value_reg[9][7] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[7]),
        .Q(\temp_value_reg[9]_8 [7]),
        .R(1'b0));
  FDRE \temp_value_reg[9][8] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[8]),
        .Q(\temp_value_reg[9]_8 [8]),
        .R(1'b0));
  FDRE \temp_value_reg[9][9] 
       (.C(s00_axi_aclk),
        .CE(edg_echo_n_18),
        .D(count_usec_reg[9]),
        .Q(\temp_value_reg[9]_8 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    trig_i_3
       (.I0(trig_i_4_n_0),
        .I1(trig_i_5_n_0),
        .I2(trig_i_6_n_0),
        .I3(count_usec_reg[16]),
        .I4(count_usec_reg[9]),
        .I5(count_usec_reg[4]),
        .O(data1));
  LUT4 #(
    .INIT(16'hFFF8)) 
    trig_i_4
       (.I0(count_usec_reg[3]),
        .I1(count_usec_reg[2]),
        .I2(count_usec_reg[15]),
        .I3(count_usec_reg[10]),
        .O(trig_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    trig_i_5
       (.I0(count_usec_reg[8]),
        .I1(count_usec_reg[7]),
        .I2(count_usec_reg[6]),
        .I3(count_usec_reg[5]),
        .O(trig_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    trig_i_6
       (.I0(count_usec_reg[14]),
        .I1(count_usec_reg[13]),
        .I2(count_usec_reg[12]),
        .I3(count_usec_reg[11]),
        .O(trig_i_6_n_0));
  FDCE trig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(trig_reg_0),
        .Q(trig));
  mblaze_UltraSonic_myip_UltraSonic_0_0_clock_usec usec_clk
       (.AR(SR),
        .D(count_usec_reg),
        .O({usec_clk_n_3,usec_clk_n_4,usec_clk_n_5,usec_clk_n_6}),
        .clk_usec(clk_usec),
        .count_usec_e_reg({usec_clk_n_7,usec_clk_n_8,usec_clk_n_9,usec_clk_n_10}),
        .count_usec_e_reg_0({usec_clk_n_11,usec_clk_n_12,usec_clk_n_13,usec_clk_n_14}),
        .count_usec_e_reg_1({usec_clk_n_15,usec_clk_n_16,usec_clk_n_17,usec_clk_n_18}),
        .count_usec_e_reg_2(usec_clk_n_19),
        .\count_usec_reg[16] (count_usec_e_reg_n_0),
        .cp_in_cur_reg(usec_clk_n_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "clock_usec" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_clock_usec
   (AR,
    cp_in_cur_reg,
    clk_usec,
    O,
    count_usec_e_reg,
    count_usec_e_reg_0,
    count_usec_e_reg_1,
    count_usec_e_reg_2,
    s00_axi_aclk,
    \count_usec_reg[16] ,
    D,
    s00_axi_aresetn);
  output [0:0]AR;
  output cp_in_cur_reg;
  output clk_usec;
  output [3:0]O;
  output [3:0]count_usec_e_reg;
  output [3:0]count_usec_e_reg_0;
  output [3:0]count_usec_e_reg_1;
  output [0:0]count_usec_e_reg_2;
  input s00_axi_aclk;
  input \count_usec_reg[16] ;
  input [16:0]D;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [16:0]D;
  wire [3:0]O;
  wire clk_usec;
  wire \cnt_10nsec[4]_i_2_n_0 ;
  wire \cnt_10nsec[6]_i_1_n_0 ;
  wire \cnt_10nsec[6]_i_2_n_0 ;
  wire [6:0]cnt_10nsec_reg;
  wire [3:0]count_usec_e_reg;
  wire [3:0]count_usec_e_reg_0;
  wire [3:0]count_usec_e_reg_1;
  wire [0:0]count_usec_e_reg_2;
  wire \count_usec_reg[16] ;
  wire cp_in_cur_reg;
  wire [5:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  LUT2 #(
    .INIT(4'h1)) 
    \cnt_10nsec[0]_i_1 
       (.I0(cnt_10nsec_reg[0]),
        .I1(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_10nsec[1]_i_1 
       (.I0(cnt_10nsec_reg[1]),
        .I1(cnt_10nsec_reg[0]),
        .I2(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \cnt_10nsec[2]_i_1 
       (.I0(\cnt_10nsec[4]_i_2_n_0 ),
        .I1(cnt_10nsec_reg[0]),
        .I2(cnt_10nsec_reg[1]),
        .I3(cnt_10nsec_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \cnt_10nsec[3]_i_1 
       (.I0(\cnt_10nsec[4]_i_2_n_0 ),
        .I1(cnt_10nsec_reg[1]),
        .I2(cnt_10nsec_reg[0]),
        .I3(cnt_10nsec_reg[2]),
        .I4(cnt_10nsec_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \cnt_10nsec[4]_i_1 
       (.I0(cnt_10nsec_reg[3]),
        .I1(cnt_10nsec_reg[2]),
        .I2(cnt_10nsec_reg[0]),
        .I3(cnt_10nsec_reg[1]),
        .I4(cnt_10nsec_reg[4]),
        .I5(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFD000000000000)) 
    \cnt_10nsec[4]_i_2 
       (.I0(\cnt_10nsec[6]_i_2_n_0 ),
        .I1(cnt_10nsec_reg[4]),
        .I2(cnt_10nsec_reg[3]),
        .I3(cnt_10nsec_reg[2]),
        .I4(cnt_10nsec_reg[6]),
        .I5(cnt_10nsec_reg[5]),
        .O(\cnt_10nsec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222222A52222222)) 
    \cnt_10nsec[5]_i_1 
       (.I0(cnt_10nsec_reg[5]),
        .I1(cnt_10nsec_reg[6]),
        .I2(cnt_10nsec_reg[2]),
        .I3(cnt_10nsec_reg[3]),
        .I4(cnt_10nsec_reg[4]),
        .I5(\cnt_10nsec[6]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h00FF02FF40000000)) 
    \cnt_10nsec[6]_i_1 
       (.I0(\cnt_10nsec[6]_i_2_n_0 ),
        .I1(cnt_10nsec_reg[2]),
        .I2(cnt_10nsec_reg[3]),
        .I3(cnt_10nsec_reg[5]),
        .I4(cnt_10nsec_reg[4]),
        .I5(cnt_10nsec_reg[6]),
        .O(\cnt_10nsec[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_10nsec[6]_i_2 
       (.I0(cnt_10nsec_reg[0]),
        .I1(cnt_10nsec_reg[1]),
        .O(\cnt_10nsec[6]_i_2_n_0 ));
  FDCE \cnt_10nsec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(cnt_10nsec_reg[0]));
  FDCE \cnt_10nsec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(cnt_10nsec_reg[1]));
  FDCE \cnt_10nsec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(cnt_10nsec_reg[2]));
  FDCE \cnt_10nsec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(cnt_10nsec_reg[3]));
  FDCE \cnt_10nsec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(cnt_10nsec_reg[4]));
  FDCE \cnt_10nsec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(cnt_10nsec_reg[5]));
  FDCE \cnt_10nsec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_10nsec[6]_i_1_n_0 ),
        .Q(cnt_10nsec_reg[6]));
  mblaze_UltraSonic_myip_UltraSonic_0_0_edge_detector_n_0 edg
       (.AR(AR),
        .D(D),
        .O(O),
        .Q(cnt_10nsec_reg),
        .clk_usec(clk_usec),
        .count_usec_e_reg(count_usec_e_reg),
        .count_usec_e_reg_0(count_usec_e_reg_0),
        .count_usec_e_reg_1(count_usec_e_reg_1),
        .count_usec_e_reg_2(count_usec_e_reg_2),
        .\count_usec_reg[16] (\count_usec_reg[16] ),
        .cp_in_cur_reg_0(cp_in_cur_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_edge_detector_n
   (D,
    count_usec_e,
    E,
    \index_reg[1] ,
    \index_reg[1]_0 ,
    \index_reg[1]_1 ,
    s00_axi_aresetn_0,
    \index_reg[3] ,
    \index_reg[1]_2 ,
    \index_reg[1]_3 ,
    \index_reg[3]_0 ,
    \index_reg[0] ,
    \index_reg[0]_0 ,
    \index_reg[0]_1 ,
    s00_axi_aresetn_1,
    \index_reg[0]_2 ,
    \index_reg[0]_3 ,
    \index_reg[0]_4 ,
    s00_axi_aresetn_2,
    echo,
    s00_axi_aclk,
    AR,
    Q,
    count_usec_e_reg,
    data1,
    count_usec_e_reg_0,
    \temp_value_reg[15][0] ,
    s00_axi_aresetn);
  output [2:0]D;
  output count_usec_e;
  output [0:0]E;
  output [0:0]\index_reg[1] ;
  output [0:0]\index_reg[1]_0 ;
  output [0:0]\index_reg[1]_1 ;
  output [0:0]s00_axi_aresetn_0;
  output [0:0]\index_reg[3] ;
  output [0:0]\index_reg[1]_2 ;
  output [0:0]\index_reg[1]_3 ;
  output [0:0]\index_reg[3]_0 ;
  output [0:0]\index_reg[0] ;
  output [0:0]\index_reg[0]_0 ;
  output [0:0]\index_reg[0]_1 ;
  output [0:0]s00_axi_aresetn_1;
  output [0:0]\index_reg[0]_2 ;
  output [0:0]\index_reg[0]_3 ;
  output [0:0]\index_reg[0]_4 ;
  output [0:0]s00_axi_aresetn_2;
  input echo;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]Q;
  input count_usec_e_reg;
  input data1;
  input count_usec_e_reg_0;
  input [3:0]\temp_value_reg[15][0] ;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire count_usec_e;
  wire count_usec_e_i_2_n_0;
  wire count_usec_e_reg;
  wire count_usec_e_reg_0;
  wire cp_in_cur;
  wire cp_in_old;
  wire data1;
  wire echo;
  wire [0:0]\index_reg[0] ;
  wire [0:0]\index_reg[0]_0 ;
  wire [0:0]\index_reg[0]_1 ;
  wire [0:0]\index_reg[0]_2 ;
  wire [0:0]\index_reg[0]_3 ;
  wire [0:0]\index_reg[0]_4 ;
  wire [0:0]\index_reg[1] ;
  wire [0:0]\index_reg[1]_0 ;
  wire [0:0]\index_reg[1]_1 ;
  wire [0:0]\index_reg[1]_2 ;
  wire [0:0]\index_reg[1]_3 ;
  wire [0:0]\index_reg[3] ;
  wire [0:0]\index_reg[3]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_aresetn_0;
  wire [0:0]s00_axi_aresetn_1;
  wire [0:0]s00_axi_aresetn_2;
  wire \temp_value[1][16]_i_2_n_0 ;
  wire [3:0]\temp_value_reg[15][0] ;

  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    count_usec_e_i_1
       (.I0(count_usec_e_reg),
        .I1(data1),
        .I2(Q[1]),
        .I3(count_usec_e_i_2_n_0),
        .I4(count_usec_e_reg_0),
        .I5(Q[0]),
        .O(count_usec_e));
  LUT4 #(
    .INIT(16'hAE0A)) 
    count_usec_e_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(count_usec_e_i_2_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    cp_in_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(echo),
        .Q(cp_in_cur));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    cp_in_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(cp_in_cur),
        .Q(cp_in_old));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \index[3]_i_1 
       (.I0(cp_in_old),
        .I1(cp_in_cur),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFAAFFAABA55)) 
    \next_state[0]_i_1 
       (.I0(Q[2]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000000DF0)) 
    \next_state[2]_i_1 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000005120)) 
    \next_state[3]_i_2 
       (.I0(Q[2]),
        .I1(cp_in_old),
        .I2(cp_in_cur),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \temp_value[0][16]_i_1 
       (.I0(\temp_value_reg[15][0] [3]),
        .I1(\temp_value_reg[15][0] [2]),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [0]),
        .I5(\temp_value[1][16]_i_2_n_0 ),
        .O(\index_reg[3] ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \temp_value[10][16]_i_1 
       (.I0(\temp_value_reg[15][0] [0]),
        .I1(\temp_value[1][16]_i_2_n_0 ),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \temp_value[11][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [1]),
        .I2(\temp_value_reg[15][0] [0]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \temp_value[12][16]_i_1 
       (.I0(\temp_value_reg[15][0] [1]),
        .I1(s00_axi_aresetn),
        .I2(\temp_value_reg[15][0] [0]),
        .I3(\temp_value[1][16]_i_2_n_0 ),
        .I4(\temp_value_reg[15][0] [3]),
        .I5(\temp_value_reg[15][0] [2]),
        .O(\index_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \temp_value[13][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [0]),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \temp_value[14][16]_i_1 
       (.I0(\temp_value_reg[15][0] [0]),
        .I1(\temp_value[1][16]_i_2_n_0 ),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[0] ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \temp_value[15][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [1]),
        .I2(\temp_value_reg[15][0] [0]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \temp_value[1][16]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\temp_value_reg[15][0] [2]),
        .I2(\temp_value_reg[15][0] [3]),
        .I3(\temp_value[1][16]_i_2_n_0 ),
        .I4(\temp_value_reg[15][0] [0]),
        .I5(\temp_value_reg[15][0] [1]),
        .O(s00_axi_aresetn_2));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \temp_value[1][16]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(cp_in_cur),
        .I5(cp_in_old),
        .O(\temp_value[1][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \temp_value[2][16]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\temp_value_reg[15][0] [2]),
        .I2(\temp_value_reg[15][0] [3]),
        .I3(\temp_value_reg[15][0] [0]),
        .I4(\temp_value[1][16]_i_2_n_0 ),
        .I5(\temp_value_reg[15][0] [1]),
        .O(s00_axi_aresetn_1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \temp_value[3][16]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\temp_value_reg[15][0] [2]),
        .I2(\temp_value_reg[15][0] [3]),
        .I3(\temp_value[1][16]_i_2_n_0 ),
        .I4(\temp_value_reg[15][0] [1]),
        .I5(\temp_value_reg[15][0] [0]),
        .O(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \temp_value[4][16]_i_1 
       (.I0(\temp_value_reg[15][0] [3]),
        .I1(\temp_value_reg[15][0] [2]),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [0]),
        .I5(\temp_value[1][16]_i_2_n_0 ),
        .O(\index_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \temp_value[5][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [0]),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(\temp_value_reg[15][0] [2]),
        .I4(\temp_value_reg[15][0] [3]),
        .I5(s00_axi_aresetn),
        .O(\index_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \temp_value[6][16]_i_1 
       (.I0(\temp_value_reg[15][0] [0]),
        .I1(\temp_value[1][16]_i_2_n_0 ),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(\temp_value_reg[15][0] [2]),
        .I4(\temp_value_reg[15][0] [3]),
        .I5(s00_axi_aresetn),
        .O(\index_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \temp_value[7][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [1]),
        .I2(\temp_value_reg[15][0] [0]),
        .I3(\temp_value_reg[15][0] [2]),
        .I4(\temp_value_reg[15][0] [3]),
        .I5(s00_axi_aresetn),
        .O(\index_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \temp_value[8][16]_i_1 
       (.I0(\temp_value_reg[15][0] [1]),
        .I1(s00_axi_aresetn),
        .I2(\temp_value_reg[15][0] [0]),
        .I3(\temp_value[1][16]_i_2_n_0 ),
        .I4(\temp_value_reg[15][0] [3]),
        .I5(\temp_value_reg[15][0] [2]),
        .O(\index_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \temp_value[9][16]_i_1 
       (.I0(\temp_value[1][16]_i_2_n_0 ),
        .I1(\temp_value_reg[15][0] [0]),
        .I2(\temp_value_reg[15][0] [1]),
        .I3(s00_axi_aresetn),
        .I4(\temp_value_reg[15][0] [2]),
        .I5(\temp_value_reg[15][0] [3]),
        .O(\index_reg[0]_3 ));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_edge_detector_n_0
   (AR,
    cp_in_cur_reg_0,
    clk_usec,
    O,
    count_usec_e_reg,
    count_usec_e_reg_0,
    count_usec_e_reg_1,
    count_usec_e_reg_2,
    s00_axi_aclk,
    \count_usec_reg[16] ,
    D,
    s00_axi_aresetn,
    Q);
  output [0:0]AR;
  output cp_in_cur_reg_0;
  output clk_usec;
  output [3:0]O;
  output [3:0]count_usec_e_reg;
  output [3:0]count_usec_e_reg_0;
  output [3:0]count_usec_e_reg_1;
  output [0:0]count_usec_e_reg_2;
  input s00_axi_aclk;
  input \count_usec_reg[16] ;
  input [16:0]D;
  input s00_axi_aresetn;
  input [6:0]Q;

  wire [0:0]AR;
  wire [16:0]D;
  wire [3:0]O;
  wire [6:0]Q;
  wire clk_usec;
  wire \count_usec[0]_i_3_n_0 ;
  wire \count_usec[0]_i_4_n_0 ;
  wire \count_usec[0]_i_5_n_0 ;
  wire \count_usec[0]_i_6_n_0 ;
  wire \count_usec[0]_i_7_n_0 ;
  wire \count_usec[12]_i_2_n_0 ;
  wire \count_usec[12]_i_3_n_0 ;
  wire \count_usec[12]_i_4_n_0 ;
  wire \count_usec[12]_i_5_n_0 ;
  wire \count_usec[16]_i_2_n_0 ;
  wire \count_usec[4]_i_2_n_0 ;
  wire \count_usec[4]_i_3_n_0 ;
  wire \count_usec[4]_i_4_n_0 ;
  wire \count_usec[4]_i_5_n_0 ;
  wire \count_usec[8]_i_2_n_0 ;
  wire \count_usec[8]_i_3_n_0 ;
  wire \count_usec[8]_i_4_n_0 ;
  wire \count_usec[8]_i_5_n_0 ;
  wire [3:0]count_usec_e_reg;
  wire [3:0]count_usec_e_reg_0;
  wire [3:0]count_usec_e_reg_1;
  wire [0:0]count_usec_e_reg_2;
  wire \count_usec_reg[0]_i_2_n_0 ;
  wire \count_usec_reg[0]_i_2_n_1 ;
  wire \count_usec_reg[0]_i_2_n_2 ;
  wire \count_usec_reg[0]_i_2_n_3 ;
  wire \count_usec_reg[12]_i_1_n_0 ;
  wire \count_usec_reg[12]_i_1_n_1 ;
  wire \count_usec_reg[12]_i_1_n_2 ;
  wire \count_usec_reg[12]_i_1_n_3 ;
  wire \count_usec_reg[16] ;
  wire \count_usec_reg[4]_i_1_n_0 ;
  wire \count_usec_reg[4]_i_1_n_1 ;
  wire \count_usec_reg[4]_i_1_n_2 ;
  wire \count_usec_reg[4]_i_1_n_3 ;
  wire \count_usec_reg[8]_i_1_n_0 ;
  wire \count_usec_reg[8]_i_1_n_1 ;
  wire \count_usec_reg[8]_i_1_n_2 ;
  wire \count_usec_reg[8]_i_1_n_3 ;
  wire cp_in_cur;
  wire cp_in_cur_i_2_n_0;
  wire cp_in_cur_reg_0;
  wire cp_in_old;
  wire p_0_out;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:0]\NLW_count_usec_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_usec_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \count_usec[0]_i_1 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(\count_usec_reg[16] ),
        .O(cp_in_cur_reg_0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[0]_i_3 
       (.I0(\count_usec_reg[16] ),
        .I1(D[0]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[0]_i_4 
       (.I0(\count_usec_reg[16] ),
        .I1(D[3]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[0]_i_5 
       (.I0(\count_usec_reg[16] ),
        .I1(D[2]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[0]_i_6 
       (.I0(\count_usec_reg[16] ),
        .I1(D[1]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hCC4C)) 
    \count_usec[0]_i_7 
       (.I0(D[0]),
        .I1(\count_usec_reg[16] ),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[12]_i_2 
       (.I0(\count_usec_reg[16] ),
        .I1(D[15]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[12]_i_3 
       (.I0(\count_usec_reg[16] ),
        .I1(D[14]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[12]_i_4 
       (.I0(\count_usec_reg[16] ),
        .I1(D[13]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[12]_i_5 
       (.I0(\count_usec_reg[16] ),
        .I1(D[12]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[16]_i_2 
       (.I0(\count_usec_reg[16] ),
        .I1(D[16]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[4]_i_2 
       (.I0(\count_usec_reg[16] ),
        .I1(D[7]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[4]_i_3 
       (.I0(\count_usec_reg[16] ),
        .I1(D[6]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[4]_i_4 
       (.I0(\count_usec_reg[16] ),
        .I1(D[5]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[4]_i_5 
       (.I0(\count_usec_reg[16] ),
        .I1(D[4]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[8]_i_2 
       (.I0(\count_usec_reg[16] ),
        .I1(D[11]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[8]_i_3 
       (.I0(\count_usec_reg[16] ),
        .I1(D[10]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[8]_i_4 
       (.I0(\count_usec_reg[16] ),
        .I1(D[9]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \count_usec[8]_i_5 
       (.I0(\count_usec_reg[16] ),
        .I1(D[8]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\count_usec[8]_i_5_n_0 ));
  CARRY4 \count_usec_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_usec_reg[0]_i_2_n_0 ,\count_usec_reg[0]_i_2_n_1 ,\count_usec_reg[0]_i_2_n_2 ,\count_usec_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_usec[0]_i_3_n_0 }),
        .O(O),
        .S({\count_usec[0]_i_4_n_0 ,\count_usec[0]_i_5_n_0 ,\count_usec[0]_i_6_n_0 ,\count_usec[0]_i_7_n_0 }));
  CARRY4 \count_usec_reg[12]_i_1 
       (.CI(\count_usec_reg[8]_i_1_n_0 ),
        .CO({\count_usec_reg[12]_i_1_n_0 ,\count_usec_reg[12]_i_1_n_1 ,\count_usec_reg[12]_i_1_n_2 ,\count_usec_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_usec_e_reg_1),
        .S({\count_usec[12]_i_2_n_0 ,\count_usec[12]_i_3_n_0 ,\count_usec[12]_i_4_n_0 ,\count_usec[12]_i_5_n_0 }));
  CARRY4 \count_usec_reg[16]_i_1 
       (.CI(\count_usec_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_usec_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_usec_reg[16]_i_1_O_UNCONNECTED [3:1],count_usec_e_reg_2}),
        .S({1'b0,1'b0,1'b0,\count_usec[16]_i_2_n_0 }));
  CARRY4 \count_usec_reg[4]_i_1 
       (.CI(\count_usec_reg[0]_i_2_n_0 ),
        .CO({\count_usec_reg[4]_i_1_n_0 ,\count_usec_reg[4]_i_1_n_1 ,\count_usec_reg[4]_i_1_n_2 ,\count_usec_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_usec_e_reg),
        .S({\count_usec[4]_i_2_n_0 ,\count_usec[4]_i_3_n_0 ,\count_usec[4]_i_4_n_0 ,\count_usec[4]_i_5_n_0 }));
  CARRY4 \count_usec_reg[8]_i_1 
       (.CI(\count_usec_reg[4]_i_1_n_0 ),
        .CO({\count_usec_reg[8]_i_1_n_0 ,\count_usec_reg[8]_i_1_n_1 ,\count_usec_reg[8]_i_1_n_2 ,\count_usec_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count_usec_e_reg_0),
        .S({\count_usec[8]_i_2_n_0 ,\count_usec[8]_i_3_n_0 ,\count_usec[8]_i_4_n_0 ,\count_usec[8]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hFFFBAAAAAAAAAAAA)) 
    cp_in_cur_i_1
       (.I0(Q[6]),
        .I1(cp_in_cur_i_2_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h1)) 
    cp_in_cur_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(cp_in_cur_i_2_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    cp_in_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_out),
        .Q(cp_in_cur));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    cp_in_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(cp_in_cur),
        .Q(cp_in_old));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum_value[20]_i_2 
       (.I0(cp_in_old),
        .I1(cp_in_cur),
        .O(clk_usec));
  LUT1 #(
    .INIT(2'h1)) 
    trig_i_2
       (.I0(s00_axi_aresetn),
        .O(AR));
endmodule

(* ORIG_REF_NAME = "myip_UltraSonic_v1_0" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_myip_UltraSonic_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    trig,
    s00_axi_bvalid,
    s00_axi_aclk,
    echo,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output trig;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input echo;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire echo;
  wire myip_UltraSonic_v1_0_S00_AXI_inst_n_5;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire trig;
  wire trig_i_1_n_0;
  wire \usonic/data1 ;
  wire [3:0]\usonic/state ;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(myip_UltraSonic_v1_0_S00_AXI_inst_n_5),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  mblaze_UltraSonic_myip_UltraSonic_0_0_myip_UltraSonic_v1_0_S00_AXI myip_UltraSonic_v1_0_S00_AXI_inst
       (.Q(\usonic/state ),
        .aw_en_reg_0(myip_UltraSonic_v1_0_S00_AXI_inst_n_5),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .data1(\usonic/data1 ),
        .echo(echo),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .trig(trig),
        .trig_reg(trig_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAA8AA)) 
    trig_i_1
       (.I0(trig),
        .I1(\usonic/state [3]),
        .I2(\usonic/state [2]),
        .I3(\usonic/state [1]),
        .I4(\usonic/state [0]),
        .I5(\usonic/data1 ),
        .O(trig_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "myip_UltraSonic_v1_0_S00_AXI" *) 
module mblaze_UltraSonic_myip_UltraSonic_0_0_myip_UltraSonic_v1_0_S00_AXI
   (axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    trig,
    s00_axi_bvalid,
    aw_en_reg_0,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    data1,
    s00_axi_aclk,
    echo,
    trig_reg,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb);
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output trig;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output s00_axi_rvalid;
  output [3:0]Q;
  output [31:0]s00_axi_rdata;
  output data1;
  input s00_axi_aclk;
  input echo;
  input trig_reg;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;

  wire [3:0]Q;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire data1;
  wire [11:0]distance_cm;
  wire echo;
  wire [2:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg1;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire trig;
  wire trig_reg;
  wire usonic_n_0;

  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(usonic_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(usonic_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(usonic_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(usonic_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(usonic_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(usonic_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(usonic_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(usonic_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(usonic_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(usonic_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(distance_cm[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(distance_cm[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(distance_cm[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(distance_cm[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(distance_cm[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(distance_cm[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(distance_cm[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(distance_cm[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(distance_cm[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(distance_cm[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(distance_cm[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(distance_cm[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(usonic_n_0));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(usonic_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[0]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[0]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(usonic_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(usonic_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(usonic_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(usonic_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(usonic_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(usonic_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(usonic_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(usonic_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(usonic_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  mblaze_UltraSonic_myip_UltraSonic_0_0_UltraSonic_Profsr usonic
       (.Q(Q),
        .SR(usonic_n_0),
        .data1(data1),
        .\distance_cm_reg[11]_0 (distance_cm),
        .echo(echo),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .trig(trig),
        .trig_reg_0(trig_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
