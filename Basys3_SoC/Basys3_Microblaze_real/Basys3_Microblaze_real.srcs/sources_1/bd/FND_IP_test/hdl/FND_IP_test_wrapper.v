//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Nov 23 12:52:50 2023
//Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
//Command     : generate_target FND_IP_test_wrapper.bd
//Design      : FND_IP_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FND_IP_test_wrapper
   (aclk_0,
    aresetn_0,
    com_0,
    seg_7_0);
  input aclk_0;
  input aresetn_0;
  output [3:0]com_0;
  output [7:0]seg_7_0;

  wire aclk_0;
  wire aresetn_0;
  wire [3:0]com_0;
  wire [7:0]seg_7_0;

  FND_IP_test FND_IP_test_i
       (.aclk_0(aclk_0),
        .aresetn_0(aresetn_0),
        .com_0(com_0),
        .seg_7_0(seg_7_0));
endmodule
