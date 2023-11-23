//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Nov 22 10:31:37 2023
//Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
//Command     : generate_target mblaze_UltraSonic_wrapper.bd
//Design      : mblaze_UltraSonic_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mblaze_UltraSonic_wrapper
   (echo_0,
    reset,
    sys_clock,
    trig_0,
    usb_uart_rxd,
    usb_uart_txd);
  input echo_0;
  input reset;
  input sys_clock;
  output trig_0;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire echo_0;
  wire reset;
  wire sys_clock;
  wire trig_0;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mblaze_UltraSonic mblaze_UltraSonic_i
       (.echo_0(echo_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .trig_0(trig_0),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
