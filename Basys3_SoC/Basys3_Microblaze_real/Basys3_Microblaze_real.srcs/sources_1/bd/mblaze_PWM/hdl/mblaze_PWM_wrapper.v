//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Nov 21 14:52:38 2023
//Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
//Command     : generate_target mblaze_PWM_wrapper.bd
//Design      : mblaze_PWM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mblaze_PWM_wrapper
   (pwm_100pc_0,
    pwm_100pc_1,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output pwm_100pc_0;
  output pwm_100pc_1;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire pwm_100pc_0;
  wire pwm_100pc_1;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mblaze_PWM mblaze_PWM_i
       (.pwm_100pc_0(pwm_100pc_0),
        .pwm_100pc_1(pwm_100pc_1),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
