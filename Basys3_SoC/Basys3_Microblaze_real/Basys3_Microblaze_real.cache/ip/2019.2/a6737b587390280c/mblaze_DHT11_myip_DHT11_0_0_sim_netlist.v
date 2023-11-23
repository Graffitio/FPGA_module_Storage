// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov 22 12:33:25 2023
// Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mblaze_DHT11_myip_DHT11_0_0_sim_netlist.v
// Design      : mblaze_DHT11_myip_DHT11_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11
   (s00_axi_aresetn_0,
    dht11_data_INST_0_i_1,
    Q,
    \temperature_reg[7]_0 ,
    dht11_data,
    s00_axi_aclk,
    dht11_data_0,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  output dht11_data_INST_0_i_1;
  output [7:0]Q;
  output [7:0]\temperature_reg[7]_0 ;
  inout dht11_data;
  input s00_axi_aclk;
  input dht11_data_0;
  input s00_axi_aresetn;

  wire [7:0]Q;
  wire count_usec_e_C_i_3_n_0;
  wire count_usec_e_C_i_5_n_0;
  wire count_usec_e_C_i_8_n_0;
  wire count_usec_e_reg_C_n_0;
  wire [21:0]count_usec_reg;
  wire \data_count[2]_i_3_n_0 ;
  wire \data_count_reg_n_0_[0] ;
  wire \data_count_reg_n_0_[1] ;
  wire \data_count_reg_n_0_[2] ;
  wire \data_count_reg_n_0_[3] ;
  wire \data_count_reg_n_0_[4] ;
  wire \data_count_reg_n_0_[5] ;
  wire dht11_data;
  wire dht11_data_0;
  wire dht11_data_INST_0_i_1;
  wire dht11_data_INST_0_i_3_n_0;
  wire dht11_data_INST_0_i_4_n_0;
  wire edg_dht_n_0;
  wire edg_dht_n_1;
  wire edg_dht_n_10;
  wire edg_dht_n_11;
  wire edg_dht_n_12;
  wire edg_dht_n_13;
  wire edg_dht_n_14;
  wire edg_dht_n_15;
  wire edg_dht_n_16;
  wire edg_dht_n_17;
  wire edg_dht_n_18;
  wire edg_dht_n_19;
  wire edg_dht_n_2;
  wire edg_dht_n_20;
  wire edg_dht_n_21;
  wire edg_dht_n_3;
  wire edg_dht_n_30;
  wire edg_dht_n_31;
  wire edg_dht_n_32;
  wire edg_dht_n_33;
  wire edg_dht_n_34;
  wire edg_dht_n_35;
  wire edg_dht_n_36;
  wire edg_dht_n_37;
  wire edg_dht_n_4;
  wire edg_dht_n_46;
  wire edg_dht_n_47;
  wire edg_dht_n_48;
  wire edg_dht_n_49;
  wire edg_dht_n_5;
  wire edg_dht_n_50;
  wire edg_dht_n_51;
  wire edg_dht_n_52;
  wire edg_dht_n_53;
  wire edg_dht_n_57;
  wire edg_dht_n_58;
  wire edg_dht_n_59;
  wire edg_dht_n_6;
  wire edg_dht_n_60;
  wire edg_dht_n_61;
  wire edg_dht_n_62;
  wire edg_dht_n_63;
  wire edg_dht_n_64;
  wire edg_dht_n_65;
  wire edg_dht_n_66;
  wire edg_dht_n_67;
  wire edg_dht_n_68;
  wire edg_dht_n_7;
  wire edg_dht_n_8;
  wire edg_dht_n_9;
  wire [7:0]humidity1;
  wire humidity1__2_carry__0_n_1;
  wire humidity1__2_carry__0_n_2;
  wire humidity1__2_carry__0_n_3;
  wire humidity1__2_carry_n_0;
  wire humidity1__2_carry_n_1;
  wire humidity1__2_carry_n_2;
  wire humidity1__2_carry_n_3;
  wire \humidity[7]_i_8_n_0 ;
  wire next_state;
  wire \next_state[0]_P_i_1_n_0 ;
  wire \next_state[0]_P_i_2_n_0 ;
  wire \next_state[0]_P_i_3_n_0 ;
  wire \next_state[0]_P_i_4_n_0 ;
  wire \next_state[0]_P_i_5_n_0 ;
  wire \next_state[0]_P_i_6_n_0 ;
  wire \next_state[0]_P_i_7_n_0 ;
  wire \next_state[0]_P_i_8_n_0 ;
  wire \next_state[0]_P_i_9_n_0 ;
  wire \next_state[1]_C_i_1_n_0 ;
  wire \next_state[2]_C_i_1_n_0 ;
  wire \next_state[2]_C_i_2_n_0 ;
  wire \next_state[3]_C_i_2_n_0 ;
  wire \next_state[4]_C_i_3_n_0 ;
  wire \next_state[4]_C_i_4_n_0 ;
  wire \next_state[5]_C_i_10_n_0 ;
  wire \next_state[5]_C_i_11_n_0 ;
  wire \next_state[5]_C_i_12_n_0 ;
  wire \next_state[5]_C_i_13_n_0 ;
  wire \next_state[5]_C_i_14_n_0 ;
  wire \next_state[5]_C_i_15_n_0 ;
  wire \next_state[5]_C_i_3_n_0 ;
  wire \next_state[5]_C_i_5_n_0 ;
  wire \next_state[5]_C_i_6_n_0 ;
  wire \next_state[5]_C_i_7_n_0 ;
  wire \next_state[5]_C_i_8_n_0 ;
  wire \next_state[5]_C_i_9_n_0 ;
  wire \next_state_reg[0]_P_n_0 ;
  wire \next_state_reg[1]_C_n_0 ;
  wire \next_state_reg[2]_C_n_0 ;
  wire \next_state_reg[3]_C_n_0 ;
  wire \next_state_reg[4]_C_n_0 ;
  wire \next_state_reg[5]_C_n_0 ;
  wire [7:0]p_0_in1_in;
  wire [1:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire [1:0]read_state;
  wire \read_state[1]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [5:0]state;
  wire [39:0]temp_data;
  wire \temp_data[0]_i_2_n_0 ;
  wire \temp_data[0]_i_3_n_0 ;
  wire \temp_data[0]_i_4_n_0 ;
  wire \temp_data[0]_i_5_n_0 ;
  wire \temp_data[0]_i_6_n_0 ;
  wire \temp_data[0]_i_7_n_0 ;
  wire \temp_data[39]_i_1_n_0 ;
  wire \temp_data[39]_i_3_n_0 ;
  wire [7:0]\temperature_reg[7]_0 ;
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
  wire usec_clk_n_2;
  wire usec_clk_n_20;
  wire usec_clk_n_21;
  wire usec_clk_n_22;
  wire usec_clk_n_23;
  wire usec_clk_n_3;
  wire usec_clk_n_4;
  wire usec_clk_n_5;
  wire usec_clk_n_6;
  wire usec_clk_n_7;
  wire usec_clk_n_8;
  wire usec_clk_n_9;
  wire [3:3]NLW_humidity1__2_carry__0_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    count_usec_e_C_i_3
       (.I0(\next_state[5]_C_i_3_n_0 ),
        .I1(state[1]),
        .O(count_usec_e_C_i_3_n_0));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    count_usec_e_C_i_5
       (.I0(\next_state[0]_P_i_5_n_0 ),
        .I1(\next_state[0]_P_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s00_axi_aresetn),
        .O(count_usec_e_C_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    count_usec_e_C_i_8
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[5]),
        .O(count_usec_e_C_i_8_n_0));
  FDCE count_usec_e_reg_C
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_0),
        .Q(count_usec_e_reg_C_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_5),
        .Q(count_usec_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[10] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_11),
        .Q(count_usec_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[11] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_10),
        .Q(count_usec_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[12] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_17),
        .Q(count_usec_reg[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[13] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_16),
        .Q(count_usec_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[14] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_15),
        .Q(count_usec_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[15] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_14),
        .Q(count_usec_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[16] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_21),
        .Q(count_usec_reg[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[17] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_20),
        .Q(count_usec_reg[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[18] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_19),
        .Q(count_usec_reg[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[19] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_18),
        .Q(count_usec_reg[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_4),
        .Q(count_usec_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[20] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_23),
        .Q(count_usec_reg[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[21] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_22),
        .Q(count_usec_reg[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_3),
        .Q(count_usec_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_2),
        .Q(count_usec_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_9),
        .Q(count_usec_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_8),
        .Q(count_usec_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_7),
        .Q(count_usec_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_6),
        .Q(count_usec_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[8] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_13),
        .Q(count_usec_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[9] 
       (.C(s00_axi_aclk),
        .CE(usec_clk_n_1),
        .CLR(s00_axi_aresetn_0),
        .D(usec_clk_n_12),
        .Q(count_usec_reg[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_count[2]_i_3 
       (.I0(read_state[1]),
        .I1(read_state[0]),
        .O(\data_count[2]_i_3_n_0 ));
  FDCE \data_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_6),
        .Q(\data_count_reg_n_0_[0] ));
  FDCE \data_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_5),
        .Q(\data_count_reg_n_0_[1] ));
  FDCE \data_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_4),
        .Q(\data_count_reg_n_0_[2] ));
  FDCE \data_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_3),
        .Q(\data_count_reg_n_0_[3] ));
  FDCE \data_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_2),
        .Q(\data_count_reg_n_0_[4] ));
  FDCE \data_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_1),
        .Q(\data_count_reg_n_0_[5] ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    dht11_data_INST_0_i_2
       (.I0(count_usec_e_C_i_3_n_0),
        .I1(\next_state[5]_C_i_5_n_0 ),
        .I2(dht11_data_INST_0_i_3_n_0),
        .I3(dht11_data_INST_0_i_4_n_0),
        .I4(dht11_data_0),
        .O(dht11_data_INST_0_i_1));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEFE)) 
    dht11_data_INST_0_i_3
       (.I0(state[3]),
        .I1(state[5]),
        .I2(state[4]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(dht11_data_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h11110111)) 
    dht11_data_INST_0_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\temp_data[0]_i_3_n_0 ),
        .I4(\next_state[0]_P_i_8_n_0 ),
        .O(dht11_data_INST_0_i_4_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p edg_dht
       (.AR(s00_axi_aresetn_0),
        .D({edg_dht_n_1,edg_dht_n_2,edg_dht_n_3,edg_dht_n_4,edg_dht_n_5,edg_dht_n_6}),
        .DI({edg_dht_n_7,edg_dht_n_8,edg_dht_n_9,edg_dht_n_10}),
        .E(edg_dht_n_21),
        .Q({\data_count_reg_n_0_[5] ,\data_count_reg_n_0_[4] ,\data_count_reg_n_0_[3] ,\data_count_reg_n_0_[2] ,\data_count_reg_n_0_[1] ,\data_count_reg_n_0_[0] }),
        .S({edg_dht_n_60,edg_dht_n_61,edg_dht_n_62,edg_dht_n_63}),
        .count_usec_e_reg_C(edg_dht_n_0),
        .count_usec_e_reg_C_0(count_usec_e_C_i_3_n_0),
        .count_usec_e_reg_C_1(count_usec_e_C_i_5_n_0),
        .count_usec_e_reg_C_2(count_usec_e_reg_C_n_0),
        .count_usec_e_reg_C_3(count_usec_e_C_i_8_n_0),
        .count_usec_e_reg_C_4(\next_state[0]_P_i_2_n_0 ),
        .count_usec_e_reg_C_5(\next_state[5]_C_i_9_n_0 ),
        .count_usec_reg(count_usec_reg[6]),
        .\data_count_reg[2] (\data_count[2]_i_3_n_0 ),
        .\data_count_reg[3] (read_state),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_0),
        .humidity1(humidity1),
        .\humidity[7]_i_3_0 (\humidity[7]_i_8_n_0 ),
        .\humidity_reg[7] (temp_data),
        .next_state(next_state),
        .\next_state_reg[0]_P (\next_state[5]_C_i_3_n_0 ),
        .\next_state_reg[0]_P_0 (\next_state[5]_C_i_5_n_0 ),
        .\next_state_reg[0]_P_1 (\next_state[0]_P_i_5_n_0 ),
        .\next_state_reg[0]_P_2 (\next_state[0]_P_i_4_n_0 ),
        .\next_state_reg[3]_C (\next_state[3]_C_i_2_n_0 ),
        .\next_state_reg[4]_C (\next_state[4]_C_i_3_n_0 ),
        .\next_state_reg[5]_C (state),
        .\next_state_reg[5]_C_0 (\next_state[5]_C_i_6_n_0 ),
        .\next_state_reg[5]_C_1 (\next_state[5]_C_i_7_n_0 ),
        .\read_state_reg[0] (p_0_in__0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\state_reg[1] (edg_dht_n_20),
        .\state_reg[2] (edg_dht_n_64),
        .\state_reg[5] (edg_dht_n_19),
        .\temp_data_reg[0] (\temp_data[0]_i_2_n_0 ),
        .\temp_data_reg[0]_0 (\temp_data[0]_i_3_n_0 ),
        .\temp_data_reg[22] ({edg_dht_n_11,edg_dht_n_12,edg_dht_n_13,edg_dht_n_14,edg_dht_n_15,edg_dht_n_16,edg_dht_n_17,edg_dht_n_18}),
        .\temp_data_reg[34] ({edg_dht_n_65,edg_dht_n_66,edg_dht_n_67,edg_dht_n_68}),
        .\temp_data_reg[36] ({edg_dht_n_57,edg_dht_n_58,edg_dht_n_59}),
        .\temp_data_reg[38] ({p_1_in,edg_dht_n_30,edg_dht_n_31,edg_dht_n_32,edg_dht_n_33,edg_dht_n_34,edg_dht_n_35,edg_dht_n_36,edg_dht_n_37,p_0_in1_in,edg_dht_n_46,edg_dht_n_47,edg_dht_n_48,edg_dht_n_49,edg_dht_n_50,edg_dht_n_51,edg_dht_n_52,edg_dht_n_53}));
  CARRY4 humidity1__2_carry
       (.CI(1'b0),
        .CO({humidity1__2_carry_n_0,humidity1__2_carry_n_1,humidity1__2_carry_n_2,humidity1__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({edg_dht_n_7,edg_dht_n_8,edg_dht_n_9,edg_dht_n_10}),
        .O(humidity1[3:0]),
        .S({edg_dht_n_65,edg_dht_n_66,edg_dht_n_67,edg_dht_n_68}));
  CARRY4 humidity1__2_carry__0
       (.CI(humidity1__2_carry_n_0),
        .CO({NLW_humidity1__2_carry__0_CO_UNCONNECTED[3],humidity1__2_carry__0_n_1,humidity1__2_carry__0_n_2,humidity1__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,edg_dht_n_57,edg_dht_n_58,edg_dht_n_59}),
        .O(humidity1[7:4]),
        .S({edg_dht_n_60,edg_dht_n_61,edg_dht_n_62,edg_dht_n_63}));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \humidity[7]_i_8 
       (.I0(state[4]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[5]),
        .O(\humidity[7]_i_8_n_0 ));
  FDRE \humidity_reg[0] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \humidity_reg[1] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \humidity_reg[2] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \humidity_reg[3] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \humidity_reg[4] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \humidity_reg[5] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \humidity_reg[6] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \humidity_reg[7] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFEF00E0EFEF)) 
    \next_state[0]_P_i_1 
       (.I0(\next_state[0]_P_i_2_n_0 ),
        .I1(\next_state[0]_P_i_3_n_0 ),
        .I2(\next_state[0]_P_i_4_n_0 ),
        .I3(\next_state[0]_P_i_5_n_0 ),
        .I4(\next_state[0]_P_i_6_n_0 ),
        .I5(\next_state[0]_P_i_7_n_0 ),
        .O(\next_state[0]_P_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \next_state[0]_P_i_2 
       (.I0(state[4]),
        .I1(state[5]),
        .I2(state[3]),
        .O(\next_state[0]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \next_state[0]_P_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\next_state[0]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \next_state[0]_P_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\next_state[0]_P_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \next_state[0]_P_i_5 
       (.I0(\next_state[0]_P_i_8_n_0 ),
        .I1(\temp_data[0]_i_4_n_0 ),
        .I2(\next_state[0]_P_i_9_n_0 ),
        .I3(state[2]),
        .O(\next_state[0]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000030001001F)) 
    \next_state[0]_P_i_6 
       (.I0(\next_state[5]_C_i_7_n_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[5]),
        .I4(state[4]),
        .I5(state[2]),
        .O(\next_state[0]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0001FFFFFFFF)) 
    \next_state[0]_P_i_7 
       (.I0(state[4]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s00_axi_aresetn),
        .O(\next_state[0]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    \next_state[0]_P_i_8 
       (.I0(count_usec_reg[6]),
        .I1(count_usec_reg[4]),
        .I2(count_usec_reg[5]),
        .I3(count_usec_reg[3]),
        .I4(count_usec_reg[1]),
        .I5(count_usec_reg[2]),
        .O(\next_state[0]_P_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state[0]_P_i_9 
       (.I0(\temp_data[0]_i_6_n_0 ),
        .I1(count_usec_reg[10]),
        .I2(count_usec_reg[14]),
        .I3(count_usec_reg[9]),
        .I4(count_usec_reg[7]),
        .I5(count_usec_reg[8]),
        .O(\next_state[0]_P_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \next_state[1]_C_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\next_state[2]_C_i_2_n_0 ),
        .I3(s00_axi_aresetn),
        .O(\next_state[1]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \next_state[2]_C_i_1 
       (.I0(\next_state[2]_C_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s00_axi_aresetn),
        .O(\next_state[2]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_state[2]_C_i_2 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[5]),
        .I3(state[4]),
        .O(\next_state[2]_C_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \next_state[3]_C_i_2 
       (.I0(state[5]),
        .I1(state[4]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s00_axi_aresetn),
        .O(\next_state[3]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDDD)) 
    \next_state[4]_C_i_3 
       (.I0(\next_state[0]_P_i_4_n_0 ),
        .I1(\next_state[0]_P_i_2_n_0 ),
        .I2(\next_state[4]_C_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\next_state[4]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \next_state[4]_C_i_4 
       (.I0(count_usec_reg[12]),
        .I1(count_usec_reg[13]),
        .I2(count_usec_reg[11]),
        .I3(\next_state[5]_C_i_11_n_0 ),
        .I4(\temp_data[0]_i_4_n_0 ),
        .I5(\next_state[0]_P_i_8_n_0 ),
        .O(\next_state[4]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA888A888A8888888)) 
    \next_state[5]_C_i_10 
       (.I0(count_usec_reg[6]),
        .I1(count_usec_reg[5]),
        .I2(count_usec_reg[4]),
        .I3(count_usec_reg[3]),
        .I4(count_usec_reg[2]),
        .I5(count_usec_reg[1]),
        .O(\next_state[5]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \next_state[5]_C_i_11 
       (.I0(count_usec_reg[8]),
        .I1(count_usec_reg[7]),
        .I2(count_usec_reg[9]),
        .I3(count_usec_reg[14]),
        .I4(count_usec_reg[10]),
        .O(\next_state[5]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \next_state[5]_C_i_12 
       (.I0(count_usec_reg[9]),
        .I1(count_usec_reg[10]),
        .O(\next_state[5]_C_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \next_state[5]_C_i_13 
       (.I0(count_usec_reg[3]),
        .I1(count_usec_reg[4]),
        .I2(count_usec_reg[0]),
        .I3(count_usec_reg[2]),
        .I4(count_usec_reg[1]),
        .O(\next_state[5]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000001FFFFFFF)) 
    \next_state[5]_C_i_14 
       (.I0(\temp_data[0]_i_6_n_0 ),
        .I1(\next_state[5]_C_i_15_n_0 ),
        .I2(count_usec_reg[14]),
        .I3(count_usec_reg[16]),
        .I4(count_usec_reg[15]),
        .I5(count_usec_reg[17]),
        .O(\next_state[5]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    \next_state[5]_C_i_15 
       (.I0(count_usec_reg[6]),
        .I1(count_usec_reg[7]),
        .I2(count_usec_reg[8]),
        .I3(count_usec_reg[9]),
        .I4(count_usec_reg[10]),
        .O(\next_state[5]_C_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \next_state[5]_C_i_3 
       (.I0(\temp_data[0]_i_4_n_0 ),
        .I1(\next_state[5]_C_i_8_n_0 ),
        .I2(count_usec_reg[13]),
        .I3(count_usec_reg[12]),
        .I4(count_usec_reg[14]),
        .O(\next_state[5]_C_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \next_state[5]_C_i_5 
       (.I0(\next_state[5]_C_i_9_n_0 ),
        .I1(state[0]),
        .O(\next_state[5]_C_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \next_state[5]_C_i_6 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(s00_axi_aresetn),
        .O(\next_state[5]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \next_state[5]_C_i_7 
       (.I0(\next_state[5]_C_i_10_n_0 ),
        .I1(count_usec_reg[12]),
        .I2(count_usec_reg[13]),
        .I3(count_usec_reg[11]),
        .I4(\next_state[5]_C_i_11_n_0 ),
        .I5(\temp_data[0]_i_4_n_0 ),
        .O(\next_state[5]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDDF)) 
    \next_state[5]_C_i_8 
       (.I0(count_usec_reg[11]),
        .I1(\next_state[5]_C_i_12_n_0 ),
        .I2(\temp_data[0]_i_5_n_0 ),
        .I3(count_usec_reg[6]),
        .I4(count_usec_reg[5]),
        .I5(\next_state[5]_C_i_13_n_0 ),
        .O(\next_state[5]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5555FF7F)) 
    \next_state[5]_C_i_9 
       (.I0(count_usec_reg[21]),
        .I1(count_usec_reg[19]),
        .I2(count_usec_reg[18]),
        .I3(\next_state[5]_C_i_14_n_0 ),
        .I4(count_usec_reg[20]),
        .O(\next_state[5]_C_i_9_n_0 ));
  FDPE \next_state_reg[0]_P 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .D(\next_state[0]_P_i_1_n_0 ),
        .PRE(s00_axi_aresetn_0),
        .Q(\next_state_reg[0]_P_n_0 ));
  FDCE \next_state_reg[1]_C 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state[1]_C_i_1_n_0 ),
        .Q(\next_state_reg[1]_C_n_0 ));
  FDCE \next_state_reg[2]_C 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state[2]_C_i_1_n_0 ),
        .Q(\next_state_reg[2]_C_n_0 ));
  FDCE \next_state_reg[3]_C 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_64),
        .Q(\next_state_reg[3]_C_n_0 ));
  FDCE \next_state_reg[4]_C 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_20),
        .Q(\next_state_reg[4]_C_n_0 ));
  FDCE \next_state_reg[5]_C 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(s00_axi_aresetn_0),
        .D(edg_dht_n_19),
        .Q(\next_state_reg[5]_C_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \read_state[1]_i_1 
       (.I0(state[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[4]),
        .O(\read_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT_NEDGE:10,S_WAIT_PEDGE:01" *) 
  FDPE \read_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .PRE(s00_axi_aresetn_0),
        .Q(read_state[0]));
  (* FSM_ENCODED_STATES = "S_WAIT_NEDGE:10,S_WAIT_PEDGE:01" *) 
  FDCE \read_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\read_state[1]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in__0[1]),
        .Q(read_state[1]));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state_reg[0]_P_n_0 ),
        .PRE(s00_axi_aresetn_0),
        .Q(state[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state_reg[1]_C_n_0 ),
        .Q(state[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state_reg[2]_C_n_0 ),
        .Q(state[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state_reg[3]_C_n_0 ),
        .Q(state[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state_reg[4]_C_n_0 ),
        .Q(state[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\next_state_reg[5]_C_n_0 ),
        .Q(state[5]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \temp_data[0]_i_2 
       (.I0(count_usec_reg[1]),
        .I1(count_usec_reg[2]),
        .I2(count_usec_reg[3]),
        .I3(count_usec_reg[5]),
        .I4(count_usec_reg[4]),
        .O(\temp_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \temp_data[0]_i_3 
       (.I0(\temp_data[0]_i_4_n_0 ),
        .I1(\temp_data[0]_i_5_n_0 ),
        .I2(count_usec_reg[9]),
        .I3(count_usec_reg[14]),
        .I4(count_usec_reg[10]),
        .I5(\temp_data[0]_i_6_n_0 ),
        .O(\temp_data[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \temp_data[0]_i_4 
       (.I0(\temp_data[0]_i_7_n_0 ),
        .I1(count_usec_reg[16]),
        .I2(count_usec_reg[17]),
        .I3(count_usec_reg[15]),
        .O(\temp_data[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_data[0]_i_5 
       (.I0(count_usec_reg[7]),
        .I1(count_usec_reg[8]),
        .O(\temp_data[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \temp_data[0]_i_6 
       (.I0(count_usec_reg[11]),
        .I1(count_usec_reg[13]),
        .I2(count_usec_reg[12]),
        .O(\temp_data[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_data[0]_i_7 
       (.I0(count_usec_reg[19]),
        .I1(count_usec_reg[18]),
        .I2(count_usec_reg[21]),
        .I3(count_usec_reg[20]),
        .O(\temp_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \temp_data[39]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(state[4]),
        .I2(state[3]),
        .I3(\temp_data[39]_i_3_n_0 ),
        .I4(state[0]),
        .I5(state[5]),
        .O(\temp_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_data[39]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\temp_data[39]_i_3_n_0 ));
  FDRE \temp_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_53),
        .Q(temp_data[0]),
        .R(1'b0));
  FDRE \temp_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(temp_data[10]),
        .R(1'b0));
  FDRE \temp_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(temp_data[11]),
        .R(1'b0));
  FDRE \temp_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(temp_data[12]),
        .R(1'b0));
  FDRE \temp_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[5]),
        .Q(temp_data[13]),
        .R(1'b0));
  FDRE \temp_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(temp_data[14]),
        .R(1'b0));
  FDRE \temp_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(temp_data[15]),
        .R(1'b0));
  FDRE \temp_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_18),
        .Q(temp_data[16]),
        .R(1'b0));
  FDRE \temp_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_17),
        .Q(temp_data[17]),
        .R(1'b0));
  FDRE \temp_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_16),
        .Q(temp_data[18]),
        .R(1'b0));
  FDRE \temp_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_15),
        .Q(temp_data[19]),
        .R(1'b0));
  FDRE \temp_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_52),
        .Q(temp_data[1]),
        .R(1'b0));
  FDRE \temp_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_14),
        .Q(temp_data[20]),
        .R(1'b0));
  FDRE \temp_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_13),
        .Q(temp_data[21]),
        .R(1'b0));
  FDRE \temp_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_12),
        .Q(temp_data[22]),
        .R(1'b0));
  FDRE \temp_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_11),
        .Q(temp_data[23]),
        .R(1'b0));
  FDRE \temp_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_37),
        .Q(temp_data[24]),
        .R(1'b0));
  FDRE \temp_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_36),
        .Q(temp_data[25]),
        .R(1'b0));
  FDRE \temp_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_35),
        .Q(temp_data[26]),
        .R(1'b0));
  FDRE \temp_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_34),
        .Q(temp_data[27]),
        .R(1'b0));
  FDRE \temp_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_33),
        .Q(temp_data[28]),
        .R(1'b0));
  FDRE \temp_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_32),
        .Q(temp_data[29]),
        .R(1'b0));
  FDRE \temp_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_51),
        .Q(temp_data[2]),
        .R(1'b0));
  FDRE \temp_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_31),
        .Q(temp_data[30]),
        .R(1'b0));
  FDRE \temp_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_30),
        .Q(temp_data[31]),
        .R(1'b0));
  FDRE \temp_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(temp_data[32]),
        .R(1'b0));
  FDRE \temp_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(temp_data[33]),
        .R(1'b0));
  FDRE \temp_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(temp_data[34]),
        .R(1'b0));
  FDRE \temp_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(temp_data[35]),
        .R(1'b0));
  FDRE \temp_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(temp_data[36]),
        .R(1'b0));
  FDRE \temp_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(temp_data[37]),
        .R(1'b0));
  FDRE \temp_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(temp_data[38]),
        .R(1'b0));
  FDRE \temp_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(temp_data[39]),
        .R(1'b0));
  FDRE \temp_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_50),
        .Q(temp_data[3]),
        .R(1'b0));
  FDRE \temp_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_49),
        .Q(temp_data[4]),
        .R(1'b0));
  FDRE \temp_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_48),
        .Q(temp_data[5]),
        .R(1'b0));
  FDRE \temp_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_47),
        .Q(temp_data[6]),
        .R(1'b0));
  FDRE \temp_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(edg_dht_n_46),
        .Q(temp_data[7]),
        .R(1'b0));
  FDRE \temp_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[0]),
        .Q(temp_data[8]),
        .R(1'b0));
  FDRE \temp_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\temp_data[39]_i_1_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(temp_data[9]),
        .R(1'b0));
  FDRE \temperature_reg[0] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_18),
        .Q(\temperature_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \temperature_reg[1] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_17),
        .Q(\temperature_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \temperature_reg[2] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_16),
        .Q(\temperature_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \temperature_reg[3] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_15),
        .Q(\temperature_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \temperature_reg[4] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_14),
        .Q(\temperature_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \temperature_reg[5] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_13),
        .Q(\temperature_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \temperature_reg[6] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_12),
        .Q(\temperature_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \temperature_reg[7] 
       (.C(s00_axi_aclk),
        .CE(edg_dht_n_21),
        .D(edg_dht_n_11),
        .Q(\temperature_reg[7]_0 [7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec usec_clk
       (.AR(s00_axi_aresetn_0),
        .O({usec_clk_n_2,usec_clk_n_3,usec_clk_n_4,usec_clk_n_5}),
        .count_usec_reg(count_usec_reg),
        .count_usec_reg_0_sp_1(count_usec_e_reg_C_n_0),
        .cp_in_cur_reg(usec_clk_n_1),
        .cp_in_cur_reg_0({usec_clk_n_6,usec_clk_n_7,usec_clk_n_8,usec_clk_n_9}),
        .cp_in_cur_reg_1({usec_clk_n_10,usec_clk_n_11,usec_clk_n_12,usec_clk_n_13}),
        .cp_in_cur_reg_2({usec_clk_n_14,usec_clk_n_15,usec_clk_n_16,usec_clk_n_17}),
        .cp_in_cur_reg_3({usec_clk_n_18,usec_clk_n_19,usec_clk_n_20,usec_clk_n_21}),
        .cp_in_cur_reg_4({usec_clk_n_22,usec_clk_n_23}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec
   (AR,
    cp_in_cur_reg,
    O,
    cp_in_cur_reg_0,
    cp_in_cur_reg_1,
    cp_in_cur_reg_2,
    cp_in_cur_reg_3,
    cp_in_cur_reg_4,
    s00_axi_aclk,
    count_usec_reg,
    count_usec_reg_0_sp_1,
    s00_axi_aresetn);
  output [0:0]AR;
  output cp_in_cur_reg;
  output [3:0]O;
  output [3:0]cp_in_cur_reg_0;
  output [3:0]cp_in_cur_reg_1;
  output [3:0]cp_in_cur_reg_2;
  output [3:0]cp_in_cur_reg_3;
  output [1:0]cp_in_cur_reg_4;
  input s00_axi_aclk;
  input [21:0]count_usec_reg;
  input count_usec_reg_0_sp_1;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [3:0]O;
  wire \cnt_10nsec[4]_i_2_n_0 ;
  wire \cnt_10nsec[5]_i_1_n_0 ;
  wire \cnt_10nsec[6]_i_1_n_0 ;
  wire \cnt_10nsec[6]_i_2_n_0 ;
  wire [6:0]cnt_10nsec_reg;
  wire [21:0]count_usec_reg;
  wire count_usec_reg_0_sn_1;
  wire cp_in_cur_reg;
  wire [3:0]cp_in_cur_reg_0;
  wire [3:0]cp_in_cur_reg_1;
  wire [3:0]cp_in_cur_reg_2;
  wire [3:0]cp_in_cur_reg_3;
  wire [1:0]cp_in_cur_reg_4;
  wire [4:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_10nsec[0]_i_1 
       (.I0(cnt_10nsec_reg[0]),
        .I1(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_10nsec[1]_i_1 
       (.I0(cnt_10nsec_reg[1]),
        .I1(cnt_10nsec_reg[0]),
        .I2(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cnt_10nsec[2]_i_1 
       (.I0(cnt_10nsec_reg[0]),
        .I1(cnt_10nsec_reg[1]),
        .I2(cnt_10nsec_reg[2]),
        .I3(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnt_10nsec[3]_i_1 
       (.I0(cnt_10nsec_reg[2]),
        .I1(cnt_10nsec_reg[1]),
        .I2(cnt_10nsec_reg[0]),
        .I3(cnt_10nsec_reg[3]),
        .I4(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \cnt_10nsec[4]_i_1 
       (.I0(cnt_10nsec_reg[3]),
        .I1(cnt_10nsec_reg[0]),
        .I2(cnt_10nsec_reg[1]),
        .I3(cnt_10nsec_reg[2]),
        .I4(cnt_10nsec_reg[4]),
        .I5(\cnt_10nsec[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \cnt_10nsec[4]_i_2 
       (.I0(\cnt_10nsec[6]_i_2_n_0 ),
        .I1(cnt_10nsec_reg[3]),
        .I2(cnt_10nsec_reg[2]),
        .I3(cnt_10nsec_reg[4]),
        .I4(cnt_10nsec_reg[6]),
        .I5(cnt_10nsec_reg[5]),
        .O(\cnt_10nsec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h15555557C0000000)) 
    \cnt_10nsec[5]_i_1 
       (.I0(cnt_10nsec_reg[6]),
        .I1(cnt_10nsec_reg[4]),
        .I2(cnt_10nsec_reg[2]),
        .I3(\cnt_10nsec[6]_i_2_n_0 ),
        .I4(cnt_10nsec_reg[3]),
        .I5(cnt_10nsec_reg[5]),
        .O(\cnt_10nsec[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF01FF80000000)) 
    \cnt_10nsec[6]_i_1 
       (.I0(cnt_10nsec_reg[2]),
        .I1(\cnt_10nsec[6]_i_2_n_0 ),
        .I2(cnt_10nsec_reg[3]),
        .I3(cnt_10nsec_reg[5]),
        .I4(cnt_10nsec_reg[4]),
        .I5(cnt_10nsec_reg[6]),
        .O(\cnt_10nsec[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
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
        .D(\cnt_10nsec[5]_i_1_n_0 ),
        .Q(cnt_10nsec_reg[5]));
  FDCE \cnt_10nsec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_10nsec[6]_i_1_n_0 ),
        .Q(cnt_10nsec_reg[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n edg
       (.AR(AR),
        .O(O),
        .Q(cnt_10nsec_reg),
        .count_usec_reg(count_usec_reg),
        .count_usec_reg_0_sp_1(count_usec_reg_0_sn_1),
        .cp_in_cur_reg_0(cp_in_cur_reg),
        .cp_in_cur_reg_1(cp_in_cur_reg_0),
        .cp_in_cur_reg_2(cp_in_cur_reg_1),
        .cp_in_cur_reg_3(cp_in_cur_reg_2),
        .cp_in_cur_reg_4(cp_in_cur_reg_3),
        .cp_in_cur_reg_5(cp_in_cur_reg_4),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (AR,
    cp_in_cur_reg_0,
    O,
    cp_in_cur_reg_1,
    cp_in_cur_reg_2,
    cp_in_cur_reg_3,
    cp_in_cur_reg_4,
    cp_in_cur_reg_5,
    s00_axi_aclk,
    count_usec_reg,
    count_usec_reg_0_sp_1,
    s00_axi_aresetn,
    Q);
  output [0:0]AR;
  output cp_in_cur_reg_0;
  output [3:0]O;
  output [3:0]cp_in_cur_reg_1;
  output [3:0]cp_in_cur_reg_2;
  output [3:0]cp_in_cur_reg_3;
  output [3:0]cp_in_cur_reg_4;
  output [1:0]cp_in_cur_reg_5;
  input s00_axi_aclk;
  input [21:0]count_usec_reg;
  input count_usec_reg_0_sp_1;
  input s00_axi_aresetn;
  input [6:0]Q;

  wire [0:0]AR;
  wire [3:0]O;
  wire [6:0]Q;
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
  wire \count_usec[16]_i_3_n_0 ;
  wire \count_usec[16]_i_4_n_0 ;
  wire \count_usec[16]_i_5_n_0 ;
  wire \count_usec[20]_i_2_n_0 ;
  wire \count_usec[20]_i_3_n_0 ;
  wire \count_usec[4]_i_2_n_0 ;
  wire \count_usec[4]_i_3_n_0 ;
  wire \count_usec[4]_i_4_n_0 ;
  wire \count_usec[4]_i_5_n_0 ;
  wire \count_usec[8]_i_2_n_0 ;
  wire \count_usec[8]_i_3_n_0 ;
  wire \count_usec[8]_i_4_n_0 ;
  wire \count_usec[8]_i_5_n_0 ;
  wire [21:0]count_usec_reg;
  wire \count_usec_reg[0]_i_2_n_0 ;
  wire \count_usec_reg[0]_i_2_n_1 ;
  wire \count_usec_reg[0]_i_2_n_2 ;
  wire \count_usec_reg[0]_i_2_n_3 ;
  wire \count_usec_reg[12]_i_1_n_0 ;
  wire \count_usec_reg[12]_i_1_n_1 ;
  wire \count_usec_reg[12]_i_1_n_2 ;
  wire \count_usec_reg[12]_i_1_n_3 ;
  wire \count_usec_reg[16]_i_1_n_0 ;
  wire \count_usec_reg[16]_i_1_n_1 ;
  wire \count_usec_reg[16]_i_1_n_2 ;
  wire \count_usec_reg[16]_i_1_n_3 ;
  wire \count_usec_reg[20]_i_1_n_3 ;
  wire \count_usec_reg[4]_i_1_n_0 ;
  wire \count_usec_reg[4]_i_1_n_1 ;
  wire \count_usec_reg[4]_i_1_n_2 ;
  wire \count_usec_reg[4]_i_1_n_3 ;
  wire \count_usec_reg[8]_i_1_n_0 ;
  wire \count_usec_reg[8]_i_1_n_1 ;
  wire \count_usec_reg[8]_i_1_n_2 ;
  wire \count_usec_reg[8]_i_1_n_3 ;
  wire count_usec_reg_0_sn_1;
  wire cp_in_cur;
  wire cp_in_cur_i_2_n_0;
  wire cp_in_cur_reg_0;
  wire [3:0]cp_in_cur_reg_1;
  wire [3:0]cp_in_cur_reg_2;
  wire [3:0]cp_in_cur_reg_3;
  wire [3:0]cp_in_cur_reg_4;
  wire [1:0]cp_in_cur_reg_5;
  wire cp_in_old;
  wire p_0_out;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:1]\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED ;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT3 #(
    .INIT(8'h4F)) 
    \count_usec[0]_i_1 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg_0_sn_1),
        .O(cp_in_cur_reg_0));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[0]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[0]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[3]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[0]_i_5 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[2]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[0]_i_6 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[1]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \count_usec[0]_i_7 
       (.I0(count_usec_reg[0]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[12]_i_2 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[15]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[12]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[14]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[12]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[13]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[12]_i_5 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[12]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[16]_i_2 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[19]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[16]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[18]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[16]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[17]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[16]_i_5 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[16]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[20]_i_2 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[21]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[20]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[20]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[4]_i_2 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[7]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[4]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[6]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[4]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[5]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[4]_i_5 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[4]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[8]_i_2 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[11]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[8]_i_3 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[10]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[8]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[9]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB00)) 
    \count_usec[8]_i_5 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(count_usec_reg[8]),
        .I3(count_usec_reg_0_sn_1),
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
        .O(cp_in_cur_reg_3),
        .S({\count_usec[12]_i_2_n_0 ,\count_usec[12]_i_3_n_0 ,\count_usec[12]_i_4_n_0 ,\count_usec[12]_i_5_n_0 }));
  CARRY4 \count_usec_reg[16]_i_1 
       (.CI(\count_usec_reg[12]_i_1_n_0 ),
        .CO({\count_usec_reg[16]_i_1_n_0 ,\count_usec_reg[16]_i_1_n_1 ,\count_usec_reg[16]_i_1_n_2 ,\count_usec_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cp_in_cur_reg_4),
        .S({\count_usec[16]_i_2_n_0 ,\count_usec[16]_i_3_n_0 ,\count_usec[16]_i_4_n_0 ,\count_usec[16]_i_5_n_0 }));
  CARRY4 \count_usec_reg[20]_i_1 
       (.CI(\count_usec_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_usec_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED [3:2],cp_in_cur_reg_5}),
        .S({1'b0,1'b0,\count_usec[20]_i_2_n_0 ,\count_usec[20]_i_3_n_0 }));
  CARRY4 \count_usec_reg[4]_i_1 
       (.CI(\count_usec_reg[0]_i_2_n_0 ),
        .CO({\count_usec_reg[4]_i_1_n_0 ,\count_usec_reg[4]_i_1_n_1 ,\count_usec_reg[4]_i_1_n_2 ,\count_usec_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cp_in_cur_reg_1),
        .S({\count_usec[4]_i_2_n_0 ,\count_usec[4]_i_3_n_0 ,\count_usec[4]_i_4_n_0 ,\count_usec[4]_i_5_n_0 }));
  CARRY4 \count_usec_reg[8]_i_1 
       (.CI(\count_usec_reg[4]_i_1_n_0 ),
        .CO({\count_usec_reg[8]_i_1_n_0 ,\count_usec_reg[8]_i_1_n_1 ,\count_usec_reg[8]_i_1_n_2 ,\count_usec_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cp_in_cur_reg_2),
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
   (count_usec_e_reg_C,
    D,
    DI,
    \temp_data_reg[22] ,
    \state_reg[5] ,
    \state_reg[1] ,
    E,
    \temp_data_reg[38] ,
    next_state,
    \read_state_reg[0] ,
    \temp_data_reg[36] ,
    S,
    \state_reg[2] ,
    \temp_data_reg[34] ,
    dht11_data,
    s00_axi_aclk,
    AR,
    count_usec_e_reg_C_0,
    count_usec_e_reg_C_1,
    count_usec_e_reg_C_2,
    Q,
    \humidity_reg[7] ,
    dht11_data_0,
    count_usec_e_reg_C_3,
    count_usec_e_reg_C_4,
    \next_state_reg[5]_C ,
    \next_state_reg[5]_C_0 ,
    \next_state_reg[5]_C_1 ,
    \next_state_reg[4]_C ,
    s00_axi_aresetn,
    humidity1,
    \humidity[7]_i_3_0 ,
    \next_state_reg[0]_P ,
    \next_state_reg[0]_P_0 ,
    \next_state_reg[0]_P_1 ,
    \next_state_reg[0]_P_2 ,
    \data_count_reg[3] ,
    count_usec_e_reg_C_5,
    \data_count_reg[2] ,
    \temp_data_reg[0] ,
    count_usec_reg,
    \temp_data_reg[0]_0 ,
    \next_state_reg[3]_C );
  output count_usec_e_reg_C;
  output [5:0]D;
  output [3:0]DI;
  output [7:0]\temp_data_reg[22] ;
  output \state_reg[5] ;
  output \state_reg[1] ;
  output [0:0]E;
  output [31:0]\temp_data_reg[38] ;
  output next_state;
  output [1:0]\read_state_reg[0] ;
  output [2:0]\temp_data_reg[36] ;
  output [3:0]S;
  output \state_reg[2] ;
  output [3:0]\temp_data_reg[34] ;
  inout dht11_data;
  input s00_axi_aclk;
  input [0:0]AR;
  input count_usec_e_reg_C_0;
  input count_usec_e_reg_C_1;
  input count_usec_e_reg_C_2;
  input [5:0]Q;
  input [39:0]\humidity_reg[7] ;
  input dht11_data_0;
  input count_usec_e_reg_C_3;
  input count_usec_e_reg_C_4;
  input [5:0]\next_state_reg[5]_C ;
  input \next_state_reg[5]_C_0 ;
  input \next_state_reg[5]_C_1 ;
  input \next_state_reg[4]_C ;
  input s00_axi_aresetn;
  input [7:0]humidity1;
  input \humidity[7]_i_3_0 ;
  input \next_state_reg[0]_P ;
  input \next_state_reg[0]_P_0 ;
  input \next_state_reg[0]_P_1 ;
  input \next_state_reg[0]_P_2 ;
  input [1:0]\data_count_reg[3] ;
  input count_usec_e_reg_C_5;
  input \data_count_reg[2] ;
  input \temp_data_reg[0] ;
  input [0:0]count_usec_reg;
  input \temp_data_reg[0]_0 ;
  input \next_state_reg[3]_C ;

  wire [0:0]AR;
  wire [5:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [3:0]S;
  wire count_usec_e_C_i_2_n_0;
  wire count_usec_e_C_i_4_n_0;
  wire count_usec_e_C_i_6_n_0;
  wire count_usec_e_C_i_7_n_0;
  wire count_usec_e_reg_C;
  wire count_usec_e_reg_C_0;
  wire count_usec_e_reg_C_1;
  wire count_usec_e_reg_C_2;
  wire count_usec_e_reg_C_3;
  wire count_usec_e_reg_C_4;
  wire count_usec_e_reg_C_5;
  wire [0:0]count_usec_reg;
  wire cp_in_cur;
  wire cp_in_old;
  wire \data_count[1]_i_2_n_0 ;
  wire \data_count[2]_i_2_n_0 ;
  wire \data_count[2]_i_4_n_0 ;
  wire \data_count[3]_i_2_n_0 ;
  wire \data_count[5]_i_2_n_0 ;
  wire \data_count_reg[2] ;
  wire [1:0]\data_count_reg[3] ;
  wire dht11_data;
  wire dht11_data_0;
  wire [7:0]humidity1;
  wire humidity1__2_carry__0_i_10_n_0;
  wire humidity1__2_carry__0_i_11_n_0;
  wire humidity1__2_carry__0_i_12_n_0;
  wire humidity1__2_carry__0_i_13_n_0;
  wire humidity1__2_carry__0_i_14_n_0;
  wire humidity1__2_carry__0_i_15_n_0;
  wire humidity1__2_carry__0_i_16_n_0;
  wire humidity1__2_carry__0_i_8_n_0;
  wire humidity1__2_carry__0_i_9_n_0;
  wire humidity1__2_carry_i_10_n_0;
  wire humidity1__2_carry_i_11_n_0;
  wire humidity1__2_carry_i_12_n_0;
  wire humidity1__2_carry_i_13_n_0;
  wire humidity1__2_carry_i_14_n_0;
  wire humidity1__2_carry_i_9_n_0;
  wire \humidity[7]_i_2_n_0 ;
  wire \humidity[7]_i_3_0 ;
  wire \humidity[7]_i_3_n_0 ;
  wire \humidity[7]_i_4_n_0 ;
  wire \humidity[7]_i_5_n_0 ;
  wire \humidity[7]_i_6_n_0 ;
  wire \humidity[7]_i_7_n_0 ;
  wire [39:0]\humidity_reg[7] ;
  wire next_state;
  wire \next_state[3]_C_i_3_n_0 ;
  wire \next_state[4]_C_i_2_n_0 ;
  wire \next_state[5]_C_i_4_n_0 ;
  wire \next_state_reg[0]_P ;
  wire \next_state_reg[0]_P_0 ;
  wire \next_state_reg[0]_P_1 ;
  wire \next_state_reg[0]_P_2 ;
  wire \next_state_reg[3]_C ;
  wire \next_state_reg[4]_C ;
  wire [5:0]\next_state_reg[5]_C ;
  wire \next_state_reg[5]_C_0 ;
  wire \next_state_reg[5]_C_1 ;
  wire [1:0]\read_state_reg[0] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[5] ;
  wire \temp_data_reg[0] ;
  wire \temp_data_reg[0]_0 ;
  wire [7:0]\temp_data_reg[22] ;
  wire [3:0]\temp_data_reg[34] ;
  wire [2:0]\temp_data_reg[36] ;
  wire [31:0]\temp_data_reg[38] ;

  LUT6 #(
    .INIT(64'h00FEFFFF00FE0000)) 
    count_usec_e_C_i_1
       (.I0(count_usec_e_C_i_2_n_0),
        .I1(count_usec_e_reg_C_0),
        .I2(count_usec_e_C_i_4_n_0),
        .I3(count_usec_e_reg_C_1),
        .I4(count_usec_e_C_i_6_n_0),
        .I5(count_usec_e_reg_C_2),
        .O(count_usec_e_reg_C));
  LUT6 #(
    .INIT(64'hF888F888F8F8F888)) 
    count_usec_e_C_i_2
       (.I0(\next_state_reg[5]_C [0]),
        .I1(count_usec_e_reg_C_5),
        .I2(\data_count[2]_i_4_n_0 ),
        .I3(\next_state_reg[5]_C [2]),
        .I4(\next_state_reg[5]_C [4]),
        .I5(\next_state_reg[5]_C_1 ),
        .O(count_usec_e_C_i_2_n_0));
  LUT6 #(
    .INIT(64'hF2FFF2F222002222)) 
    count_usec_e_C_i_4
       (.I0(\next_state_reg[5]_C [3]),
        .I1(\next_state_reg[5]_C_1 ),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\next_state_reg[5]_C [5]),
        .O(count_usec_e_C_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000F000F0FB0)) 
    count_usec_e_C_i_6
       (.I0(count_usec_e_C_i_7_n_0),
        .I1(count_usec_e_reg_C_3),
        .I2(count_usec_e_reg_C_4),
        .I3(\next_state_reg[5]_C [2]),
        .I4(\next_state_reg[5]_C [0]),
        .I5(\next_state_reg[5]_C [1]),
        .O(count_usec_e_C_i_6_n_0));
  LUT6 #(
    .INIT(64'h0110011000100110)) 
    count_usec_e_C_i_7
       (.I0(\next_state_reg[5]_C [4]),
        .I1(\next_state_reg[5]_C [3]),
        .I2(\data_count_reg[3] [0]),
        .I3(\data_count_reg[3] [1]),
        .I4(cp_in_old),
        .I5(cp_in_cur),
        .O(count_usec_e_C_i_7_n_0));
  FDCE cp_in_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(dht11_data),
        .Q(cp_in_cur));
  FDCE cp_in_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(cp_in_cur),
        .Q(cp_in_old));
  LUT6 #(
    .INIT(64'hAAAA8AAA00002000)) 
    \data_count[0]_i_1 
       (.I0(\data_count[2]_i_2_n_0 ),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_count[1]_i_1 
       (.I0(\data_count[2]_i_2_n_0 ),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \data_count[1]_i_2 
       (.I0(\data_count_reg[3] [0]),
        .I1(\data_count_reg[3] [1]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\data_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \data_count[2]_i_1 
       (.I0(\data_count[2]_i_2_n_0 ),
        .I1(\data_count_reg[2] ),
        .I2(Q[1]),
        .I3(\data_count[2]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h81FF)) 
    \data_count[2]_i_2 
       (.I0(\data_count[5]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\data_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_count[2]_i_4 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .O(\data_count[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBF0040)) 
    \data_count[3]_i_1 
       (.I0(\data_count_reg[3] [0]),
        .I1(\data_count_reg[3] [1]),
        .I2(Q[2]),
        .I3(\data_count[3]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \data_count[3]_i_2 
       (.I0(Q[0]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(Q[1]),
        .O(\data_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \data_count[4]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\data_count[5]_i_2_n_0 ),
        .I3(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h0180)) 
    \data_count[5]_i_1 
       (.I0(\data_count[5]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \data_count[5]_i_2 
       (.I0(\data_count_reg[3] [0]),
        .I1(\data_count_reg[3] [1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\data_count[2]_i_4_n_0 ),
        .I5(Q[1]),
        .O(\data_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    dht11_data_INST_0
       (.I0(1'b0),
        .I1(dht11_data_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(dht11_data));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    humidity1__2_carry__0_i_1
       (.I0(humidity1__2_carry__0_i_8_n_0),
        .I1(humidity1__2_carry__0_i_9_n_0),
        .I2(\humidity_reg[7] [36]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [37]),
        .O(\temp_data_reg[36] [2]));
  LUT6 #(
    .INIT(64'h000344474777CFFF)) 
    humidity1__2_carry__0_i_10
       (.I0(\humidity_reg[7] [10]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [11]),
        .I3(\humidity_reg[7] [27]),
        .I4(\humidity_reg[7] [26]),
        .I5(\temp_data_reg[22] [3]),
        .O(humidity1__2_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    humidity1__2_carry__0_i_11
       (.I0(\humidity_reg[7] [12]),
        .I1(\humidity_reg[7] [11]),
        .I2(\temp_data_reg[22] [4]),
        .I3(\humidity_reg[7] [27]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [28]),
        .O(humidity1__2_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFE2EEC0F322E200)) 
    humidity1__2_carry__0_i_12
       (.I0(\humidity_reg[7] [29]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [28]),
        .I3(\temp_data_reg[22] [5]),
        .I4(\humidity_reg[7] [13]),
        .I5(\humidity_reg[7] [12]),
        .O(humidity1__2_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hB8748B47478B74B8)) 
    humidity1__2_carry__0_i_13
       (.I0(\humidity_reg[7] [30]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [31]),
        .I3(\humidity_reg[7] [38]),
        .I4(\humidity_reg[7] [39]),
        .I5(humidity1__2_carry__0_i_16_n_0),
        .O(humidity1__2_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h5555455555557555)) 
    humidity1__2_carry__0_i_14
       (.I0(\humidity_reg[7] [14]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [13]),
        .O(humidity1__2_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry__0_i_15
       (.I0(\humidity_reg[7] [13]),
        .I1(\humidity_reg[7] [14]),
        .I2(\temp_data_reg[22] [6]),
        .I3(\humidity_reg[7] [29]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [30]),
        .O(humidity1__2_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    humidity1__2_carry__0_i_16
       (.I0(\humidity_reg[7] [23]),
        .I1(\humidity_reg[7] [22]),
        .I2(\humidity_reg[7] [15]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [14]),
        .O(humidity1__2_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hDFD54540)) 
    humidity1__2_carry__0_i_2
       (.I0(humidity1__2_carry__0_i_10_n_0),
        .I1(\humidity_reg[7] [35]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [36]),
        .I4(humidity1__2_carry__0_i_11_n_0),
        .O(\temp_data_reg[36] [1]));
  LUT5 #(
    .INIT(32'hDFD54540)) 
    humidity1__2_carry__0_i_3
       (.I0(humidity1__2_carry_i_12_n_0),
        .I1(\humidity_reg[7] [34]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [35]),
        .I4(humidity1__2_carry_i_13_n_0),
        .O(\temp_data_reg[36] [0]));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    humidity1__2_carry__0_i_4
       (.I0(\temp_data_reg[38] [30]),
        .I1(humidity1__2_carry__0_i_12_n_0),
        .I2(humidity1__2_carry__0_i_13_n_0),
        .I3(\temp_data_reg[38] [22]),
        .I4(\temp_data_reg[22] [6]),
        .I5(humidity1__2_carry__0_i_14_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_5
       (.I0(\temp_data_reg[36] [2]),
        .I1(humidity1__2_carry__0_i_12_n_0),
        .I2(\humidity_reg[7] [37]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [38]),
        .I5(humidity1__2_carry__0_i_15_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_6
       (.I0(\temp_data_reg[36] [1]),
        .I1(humidity1__2_carry__0_i_8_n_0),
        .I2(\humidity_reg[7] [36]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [37]),
        .I5(humidity1__2_carry__0_i_9_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_7
       (.I0(\temp_data_reg[36] [0]),
        .I1(humidity1__2_carry__0_i_10_n_0),
        .I2(\humidity_reg[7] [35]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [36]),
        .I5(humidity1__2_carry__0_i_11_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFCBBB8B8883000)) 
    humidity1__2_carry__0_i_8
       (.I0(\humidity_reg[7] [11]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [12]),
        .I3(\humidity_reg[7] [28]),
        .I4(\humidity_reg[7] [27]),
        .I5(\temp_data_reg[22] [4]),
        .O(humidity1__2_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry__0_i_9
       (.I0(\humidity_reg[7] [12]),
        .I1(\humidity_reg[7] [13]),
        .I2(\temp_data_reg[22] [5]),
        .I3(\humidity_reg[7] [28]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [29]),
        .O(humidity1__2_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'h00B8B8FF)) 
    humidity1__2_carry_i_1
       (.I0(\humidity_reg[7] [33]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [34]),
        .I3(humidity1__2_carry_i_9_n_0),
        .I4(humidity1__2_carry_i_10_n_0),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h1D003F11DD0CFF1D)) 
    humidity1__2_carry_i_10
       (.I0(\humidity_reg[7] [25]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [24]),
        .I3(humidity1__2_carry_i_14_n_0),
        .I4(\humidity_reg[7] [9]),
        .I5(\humidity_reg[7] [8]),
        .O(humidity1__2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    humidity1__2_carry_i_11
       (.I0(\humidity_reg[7] [8]),
        .I1(\humidity_reg[7] [9]),
        .I2(humidity1__2_carry_i_14_n_0),
        .I3(\humidity_reg[7] [24]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [25]),
        .O(humidity1__2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h00110C1D1D3FDDFF)) 
    humidity1__2_carry_i_12
       (.I0(\humidity_reg[7] [10]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [9]),
        .I3(\humidity_reg[7] [26]),
        .I4(\humidity_reg[7] [25]),
        .I5(\temp_data_reg[22] [2]),
        .O(humidity1__2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    humidity1__2_carry_i_13
       (.I0(\humidity_reg[7] [11]),
        .I1(\humidity_reg[7] [10]),
        .I2(\temp_data_reg[22] [3]),
        .I3(\humidity_reg[7] [26]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [27]),
        .O(humidity1__2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h5555455555557555)) 
    humidity1__2_carry_i_14
       (.I0(\humidity_reg[7] [17]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [16]),
        .O(humidity1__2_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    humidity1__2_carry_i_2
       (.I0(humidity1__2_carry_i_10_n_0),
        .I1(humidity1__2_carry_i_9_n_0),
        .I2(\humidity_reg[7] [34]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [33]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hA959)) 
    humidity1__2_carry_i_3
       (.I0(humidity1__2_carry_i_11_n_0),
        .I1(\humidity_reg[7] [33]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [32]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC3AAC3553C553CAA)) 
    humidity1__2_carry_i_4
       (.I0(\humidity_reg[7] [8]),
        .I1(\humidity_reg[7] [7]),
        .I2(\humidity_reg[7] [23]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [24]),
        .I5(\temp_data_reg[22] [0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry_i_5
       (.I0(DI[3]),
        .I1(humidity1__2_carry_i_12_n_0),
        .I2(\humidity_reg[7] [34]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [35]),
        .I5(humidity1__2_carry_i_13_n_0),
        .O(\temp_data_reg[34] [3]));
  LUT5 #(
    .INIT(32'h9A999AAA)) 
    humidity1__2_carry_i_6
       (.I0(DI[2]),
        .I1(humidity1__2_carry_i_11_n_0),
        .I2(\humidity_reg[7] [32]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [33]),
        .O(\temp_data_reg[34] [2]));
  LUT6 #(
    .INIT(64'h5656566A6A6A566A)) 
    humidity1__2_carry_i_7
       (.I0(DI[1]),
        .I1(\temp_data_reg[38] [16]),
        .I2(\temp_data_reg[22] [0]),
        .I3(\humidity_reg[7] [8]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [7]),
        .O(\temp_data_reg[34] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    humidity1__2_carry_i_8
       (.I0(DI[0]),
        .I1(\humidity_reg[7] [32]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [31]),
        .O(\temp_data_reg[34] [0]));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry_i_9
       (.I0(\humidity_reg[7] [9]),
        .I1(\humidity_reg[7] [10]),
        .I2(\temp_data_reg[22] [2]),
        .I3(\humidity_reg[7] [25]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [26]),
        .O(humidity1__2_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h01000001)) 
    \humidity[7]_i_1 
       (.I0(\data_count[2]_i_2_n_0 ),
        .I1(\humidity[7]_i_2_n_0 ),
        .I2(\humidity[7]_i_3_n_0 ),
        .I3(humidity1[0]),
        .I4(\temp_data_reg[38] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \humidity[7]_i_2 
       (.I0(\humidity[7]_i_4_n_0 ),
        .I1(humidity1[7]),
        .I2(\temp_data_reg[38] [7]),
        .I3(\temp_data_reg[38] [3]),
        .I4(humidity1[3]),
        .I5(\humidity[7]_i_5_n_0 ),
        .O(\humidity[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFFFBA)) 
    \humidity[7]_i_3 
       (.I0(\humidity[7]_i_6_n_0 ),
        .I1(\temp_data_reg[38] [7]),
        .I2(humidity1[7]),
        .I3(\temp_data_reg[38] [5]),
        .I4(humidity1[5]),
        .I5(\humidity[7]_i_7_n_0 ),
        .O(\humidity[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \humidity[7]_i_4 
       (.I0(humidity1[4]),
        .I1(\humidity_reg[7] [3]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [4]),
        .I4(\temp_data_reg[38] [2]),
        .I5(humidity1[2]),
        .O(\humidity[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FFFFFFFF47B8)) 
    \humidity[7]_i_5 
       (.I0(\humidity_reg[7] [0]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [1]),
        .I3(humidity1[1]),
        .I4(\temp_data_reg[38] [6]),
        .I5(humidity1[6]),
        .O(\humidity[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFDFDFDDDDDD)) 
    \humidity[7]_i_6 
       (.I0(s00_axi_aresetn),
        .I1(\humidity[7]_i_3_0 ),
        .I2(humidity1[3]),
        .I3(\humidity_reg[7] [2]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [3]),
        .O(\humidity[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \humidity[7]_i_7 
       (.I0(\humidity_reg[7] [3]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [4]),
        .I3(humidity1[4]),
        .I4(humidity1[2]),
        .I5(\temp_data_reg[38] [2]),
        .O(\humidity[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h002A0008)) 
    \next_state[3]_C_i_1 
       (.I0(\next_state_reg[4]_C ),
        .I1(\next_state_reg[5]_C [2]),
        .I2(\next_state_reg[5]_C [3]),
        .I3(\next_state_reg[3]_C ),
        .I4(\next_state[3]_C_i_3_n_0 ),
        .O(\state_reg[2] ));
  LUT4 #(
    .INIT(16'h4044)) 
    \next_state[3]_C_i_3 
       (.I0(\next_state_reg[5]_C_1 ),
        .I1(\next_state_reg[5]_C [3]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\next_state[3]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \next_state[4]_C_i_1 
       (.I0(\next_state[4]_C_i_2_n_0 ),
        .I1(\next_state_reg[4]_C ),
        .I2(\next_state_reg[5]_C [1]),
        .I3(\next_state_reg[5]_C [2]),
        .I4(\next_state_reg[5]_C [0]),
        .I5(s00_axi_aresetn),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000000400D0)) 
    \next_state[4]_C_i_2 
       (.I0(cp_in_old),
        .I1(cp_in_cur),
        .I2(\next_state_reg[5]_C [4]),
        .I3(\next_state_reg[5]_C [5]),
        .I4(\next_state_reg[5]_C [3]),
        .I5(\next_state_reg[5]_C_1 ),
        .O(\next_state[4]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F44FFFFFFFF)) 
    \next_state[5]_C_i_1 
       (.I0(\data_count[2]_i_2_n_0 ),
        .I1(\next_state_reg[5]_C [5]),
        .I2(\next_state_reg[0]_P ),
        .I3(\next_state_reg[5]_C [1]),
        .I4(\next_state[5]_C_i_4_n_0 ),
        .I5(\next_state_reg[0]_P_0 ),
        .O(next_state));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \next_state[5]_C_i_2 
       (.I0(\data_count[2]_i_4_n_0 ),
        .I1(\next_state_reg[5]_C [5]),
        .I2(\next_state_reg[5]_C [3]),
        .I3(\next_state_reg[5]_C_0 ),
        .I4(\next_state_reg[5]_C [4]),
        .I5(\next_state_reg[5]_C_1 ),
        .O(\state_reg[5] ));
  LUT6 #(
    .INIT(64'hFDFFFDFFFFFFFDFF)) 
    \next_state[5]_C_i_4 
       (.I0(\next_state_reg[0]_P_1 ),
        .I1(\next_state_reg[5]_C [4]),
        .I2(\next_state_reg[5]_C [3]),
        .I3(\next_state_reg[0]_P_2 ),
        .I4(\next_state_reg[5]_C [2]),
        .I5(\data_count[2]_i_4_n_0 ),
        .O(\next_state[5]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFD4F)) 
    \read_state[0]_i_1 
       (.I0(cp_in_cur),
        .I1(cp_in_old),
        .I2(\data_count_reg[3] [1]),
        .I3(\data_count_reg[3] [0]),
        .O(\read_state_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4604)) 
    \read_state[1]_i_2 
       (.I0(\data_count_reg[3] [0]),
        .I1(\data_count_reg[3] [1]),
        .I2(cp_in_old),
        .I3(cp_in_cur),
        .O(\read_state_reg[0] [1]));
  LUT5 #(
    .INIT(32'hFACAFAFA)) 
    \temp_data[0]_i_1 
       (.I0(\humidity_reg[7] [0]),
        .I1(\temp_data_reg[0] ),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(count_usec_reg),
        .I4(\temp_data_reg[0]_0 ),
        .O(\temp_data_reg[38] [0]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[10]_i_1 
       (.I0(\humidity_reg[7] [10]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [9]),
        .O(\temp_data_reg[38] [10]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[11]_i_1 
       (.I0(\humidity_reg[7] [10]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [11]),
        .O(\temp_data_reg[38] [11]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[12]_i_1 
       (.I0(\humidity_reg[7] [11]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [12]),
        .O(\temp_data_reg[38] [12]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[13]_i_1 
       (.I0(\humidity_reg[7] [12]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(\data_count_reg[3] [1]),
        .I4(\data_count_reg[3] [0]),
        .I5(\humidity_reg[7] [13]),
        .O(\temp_data_reg[38] [13]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[14]_i_1 
       (.I0(\humidity_reg[7] [13]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(\data_count_reg[3] [1]),
        .I4(\data_count_reg[3] [0]),
        .I5(\humidity_reg[7] [14]),
        .O(\temp_data_reg[38] [14]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[15]_i_1 
       (.I0(\humidity_reg[7] [14]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [15]),
        .O(\temp_data_reg[38] [15]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[16]_i_1 
       (.I0(\humidity_reg[7] [15]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [16]),
        .O(\temp_data_reg[22] [0]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[17]_i_1 
       (.I0(\humidity_reg[7] [16]),
        .I1(cp_in_cur),
        .I2(cp_in_old),
        .I3(\data_count_reg[3] [1]),
        .I4(\data_count_reg[3] [0]),
        .I5(\humidity_reg[7] [17]),
        .O(\temp_data_reg[22] [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[18]_i_1 
       (.I0(\humidity_reg[7] [17]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [18]),
        .O(\temp_data_reg[22] [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[19]_i_1 
       (.I0(\humidity_reg[7] [18]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [19]),
        .O(\temp_data_reg[22] [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[1]_i_1 
       (.I0(\humidity_reg[7] [0]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [1]),
        .O(\temp_data_reg[38] [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[20]_i_1 
       (.I0(\humidity_reg[7] [19]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [20]),
        .O(\temp_data_reg[22] [4]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[21]_i_1 
       (.I0(\humidity_reg[7] [20]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [21]),
        .O(\temp_data_reg[22] [5]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[22]_i_1 
       (.I0(\humidity_reg[7] [21]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [22]),
        .O(\temp_data_reg[22] [6]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[23]_i_1 
       (.I0(\humidity_reg[7] [22]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [23]),
        .O(\temp_data_reg[22] [7]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[24]_i_1 
       (.I0(\humidity_reg[7] [23]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [24]),
        .O(\temp_data_reg[38] [16]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[25]_i_1 
       (.I0(\humidity_reg[7] [24]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [25]),
        .O(\temp_data_reg[38] [17]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[26]_i_1 
       (.I0(\humidity_reg[7] [25]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [26]),
        .O(\temp_data_reg[38] [18]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[27]_i_1 
       (.I0(\humidity_reg[7] [26]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [27]),
        .O(\temp_data_reg[38] [19]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[28]_i_1 
       (.I0(\humidity_reg[7] [27]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [28]),
        .O(\temp_data_reg[38] [20]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[29]_i_1 
       (.I0(\humidity_reg[7] [28]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [29]),
        .O(\temp_data_reg[38] [21]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[2]_i_1 
       (.I0(\humidity_reg[7] [1]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [2]),
        .O(\temp_data_reg[38] [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[30]_i_1 
       (.I0(\humidity_reg[7] [29]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [30]),
        .O(\temp_data_reg[38] [22]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[31]_i_1 
       (.I0(\humidity_reg[7] [30]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [31]),
        .O(\temp_data_reg[38] [23]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[32]_i_1 
       (.I0(\humidity_reg[7] [31]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [32]),
        .O(\temp_data_reg[38] [24]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[33]_i_1 
       (.I0(\humidity_reg[7] [32]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [33]),
        .O(\temp_data_reg[38] [25]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[34]_i_1 
       (.I0(\humidity_reg[7] [34]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [33]),
        .O(\temp_data_reg[38] [26]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[35]_i_1 
       (.I0(\humidity_reg[7] [35]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [34]),
        .O(\temp_data_reg[38] [27]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[36]_i_1 
       (.I0(\humidity_reg[7] [36]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [35]),
        .O(\temp_data_reg[38] [28]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[37]_i_1 
       (.I0(\humidity_reg[7] [37]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [36]),
        .O(\temp_data_reg[38] [29]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[38]_i_1 
       (.I0(\humidity_reg[7] [38]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [37]),
        .O(\temp_data_reg[38] [30]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[39]_i_2 
       (.I0(\humidity_reg[7] [38]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [39]),
        .O(\temp_data_reg[38] [31]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[3]_i_1 
       (.I0(\humidity_reg[7] [2]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [3]),
        .O(\temp_data_reg[38] [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[4]_i_1 
       (.I0(\humidity_reg[7] [3]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [4]),
        .O(\temp_data_reg[38] [4]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[5]_i_1 
       (.I0(\humidity_reg[7] [4]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [5]),
        .O(\temp_data_reg[38] [5]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[6]_i_1 
       (.I0(\humidity_reg[7] [5]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [6]),
        .O(\temp_data_reg[38] [6]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[7]_i_1 
       (.I0(\humidity_reg[7] [6]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [7]),
        .O(\temp_data_reg[38] [7]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[8]_i_1 
       (.I0(\humidity_reg[7] [7]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [8]),
        .O(\temp_data_reg[38] [8]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[9]_i_1 
       (.I0(\humidity_reg[7] [9]),
        .I1(\data_count_reg[3] [0]),
        .I2(\data_count_reg[3] [1]),
        .I3(cp_in_old),
        .I4(cp_in_cur),
        .I5(\humidity_reg[7] [8]),
        .O(\temp_data_reg[38] [9]));
endmodule

(* CHECK_LICENSE_TYPE = "mblaze_DHT11_myip_DHT11_0_0,myip_DHT11_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_DHT11_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (dht11_data,
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
  inout dht11_data;
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
  wire dht11_data;
  wire dht11_data_INST_0_i_1_n_0;
  wire inst_n_0;
  wire inst_n_6;
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

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDCE #(
    .INIT(1'b1)) 
    dht11_data_INST_0_i_1
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(inst_n_6),
        .Q(dht11_data_INST_0_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0 inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_INST_0_i_1_n_0),
        .dht11_data_INST_0_i_1(inst_n_6),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(inst_n_0),
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0
   (s00_axi_aresetn_0,
    axi_wready_reg,
    axi_awready_reg,
    axi_arready_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    dht11_data_INST_0_i_1,
    s00_axi_rdata,
    dht11_data,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    dht11_data_0,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_aresetn_0;
  output axi_wready_reg;
  output axi_awready_reg;
  output axi_arready_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output dht11_data_INST_0_i_1;
  output [31:0]s00_axi_rdata;
  inout dht11_data;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input dht11_data_0;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire dht11_data;
  wire dht11_data_0;
  wire dht11_data_INST_0_i_1;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI myip_DHT11_v1_0_S00_AXI_inst
       (.AR(s00_axi_aresetn_0),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_0),
        .dht11_data_INST_0_i_1(dht11_data_INST_0_i_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI
   (AR,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    dht11_data_INST_0_i_1,
    s00_axi_rdata,
    dht11_data,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    dht11_data_0,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output [0:0]AR;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output dht11_data_INST_0_i_1;
  output [31:0]s00_axi_rdata;
  inout dht11_data;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input dht11_data_0;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]AR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
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
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire dht11_data;
  wire dht11_data_0;
  wire dht11_data_INST_0_i_1;
  wire [7:0]humidity;
  wire [31:0]reg_data_out;
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
  wire [2:0]sel0;
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
  wire [7:0]temperature;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(AR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .R(AR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(AR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(AR));
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
        .R(AR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(AR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(AR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(AR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(AR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(AR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(temperature[0]),
        .I4(sel0[0]),
        .I5(humidity[0]),
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
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[10]),
        .I4(sel0[0]),
        .I5(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[11]),
        .I4(sel0[0]),
        .I5(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[12]),
        .I4(sel0[0]),
        .I5(slv_reg3[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[13]),
        .I4(sel0[0]),
        .I5(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[14]),
        .I4(sel0[0]),
        .I5(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[15]),
        .I4(sel0[0]),
        .I5(slv_reg3[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[16]),
        .I4(sel0[0]),
        .I5(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[17]),
        .I4(sel0[0]),
        .I5(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[18]),
        .I4(sel0[0]),
        .I5(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[19]),
        .I4(sel0[0]),
        .I5(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(temperature[1]),
        .I4(sel0[0]),
        .I5(humidity[1]),
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
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[20]),
        .I4(sel0[0]),
        .I5(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[21]),
        .I4(sel0[0]),
        .I5(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[22]),
        .I4(sel0[0]),
        .I5(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[23]),
        .I4(sel0[0]),
        .I5(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[24]),
        .I4(sel0[0]),
        .I5(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[25]),
        .I4(sel0[0]),
        .I5(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[26]),
        .I4(sel0[0]),
        .I5(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[27]),
        .I4(sel0[0]),
        .I5(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[28]),
        .I4(sel0[0]),
        .I5(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[29]),
        .I4(sel0[0]),
        .I5(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(temperature[2]),
        .I4(sel0[0]),
        .I5(humidity[2]),
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
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[30]),
        .I4(sel0[0]),
        .I5(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[31]),
        .I4(sel0[0]),
        .I5(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(temperature[3]),
        .I4(sel0[0]),
        .I5(humidity[3]),
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
        .I3(temperature[4]),
        .I4(sel0[0]),
        .I5(humidity[4]),
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
        .I3(temperature[5]),
        .I4(sel0[0]),
        .I5(humidity[5]),
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
        .I3(temperature[6]),
        .I4(sel0[0]),
        .I5(humidity[6]),
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
        .I3(temperature[7]),
        .I4(sel0[0]),
        .I5(humidity[7]),
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
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[8]),
        .I4(sel0[0]),
        .I5(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[9]),
        .I4(sel0[0]),
        .I5(slv_reg3[9]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(AR));
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
        .R(AR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(AR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(AR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(AR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(AR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(AR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(AR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(AR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(AR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(AR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(AR));
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
        .R(AR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(AR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(AR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(AR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(AR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(AR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(AR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(AR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(AR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(AR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(AR));
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
        .R(AR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(AR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(AR));
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
        .R(AR));
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
        .R(AR));
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
        .R(AR));
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
        .R(AR));
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
        .R(AR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(AR));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(AR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11 dht11
       (.Q(humidity),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_0),
        .dht11_data_INST_0_i_1(dht11_data_INST_0_i_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AR),
        .\temperature_reg[7]_0 (temperature));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(AR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(AR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(AR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(AR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(AR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(AR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(AR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(AR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(AR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(AR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(AR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(AR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(AR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(AR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(AR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(AR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(AR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(AR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(AR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(AR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(AR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(AR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(AR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(AR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(AR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(AR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(AR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(AR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(AR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(AR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(AR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(AR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(AR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(AR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(AR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(AR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(AR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(AR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(AR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(AR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(AR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(AR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(AR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(AR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(AR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(AR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(AR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(AR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(AR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(AR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(AR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(AR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(AR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(AR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(AR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(AR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(AR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(AR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(AR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(AR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(AR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(AR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(AR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(AR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(AR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(AR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(AR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(AR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(AR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(AR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(AR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(AR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(AR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(AR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(AR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(AR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(AR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(AR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(AR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(AR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(AR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(AR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(AR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(AR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(AR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(AR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(AR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(AR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(AR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(AR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(AR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(AR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(AR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(AR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(AR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(AR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(AR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(AR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(AR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(AR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(AR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(AR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(AR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(AR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(AR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(AR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(AR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(AR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(AR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(AR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(AR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(AR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(AR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(AR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(AR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(AR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(AR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(AR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(AR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(AR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(AR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(AR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(AR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(AR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(AR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(AR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(AR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(AR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(AR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(AR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(AR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(AR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(AR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(AR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(AR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(AR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(AR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(AR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(AR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(AR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(AR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(AR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(AR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(AR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(AR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(AR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(AR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(AR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(AR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(AR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(AR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(AR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(AR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(AR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(AR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(AR));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(AR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(AR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(AR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(AR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(AR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(AR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(AR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(AR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(AR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(AR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(AR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(AR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(AR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(AR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(AR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(AR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(AR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(AR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(AR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(AR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(AR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(AR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(AR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(AR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(AR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(AR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(AR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(AR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(AR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(AR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(AR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(AR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
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
