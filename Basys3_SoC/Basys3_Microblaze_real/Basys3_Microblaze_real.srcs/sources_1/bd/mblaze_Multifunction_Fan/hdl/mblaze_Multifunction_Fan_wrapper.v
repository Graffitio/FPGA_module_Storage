//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Nov 28 16:09:58 2023
//Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
//Command     : generate_target mblaze_Multifunction_Fan_wrapper.bd
//Design      : mblaze_Multifunction_Fan_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mblaze_Multifunction_Fan_wrapper
   (LED_bar_0,
    RX_0,
    blue_0,
    com_0,
    dht11_data_0,
    dip_switches_16bits_tri_i,
    echo_0,
    emcy_LED_0,
    green_0,
    red_0,
    reset,
    seg_7_0,
    song_0,
    speed_0,
    sys_clock,
    timer_led_0,
    trig_0,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]LED_bar_0;
  input RX_0;
  output blue_0;
  output [3:0]com_0;
  inout dht11_data_0;
  input [15:0]dip_switches_16bits_tri_i;
  input echo_0;
  output emcy_LED_0;
  output green_0;
  output red_0;
  input reset;
  output [7:0]seg_7_0;
  output song_0;
  output speed_0;
  input sys_clock;
  output [2:0]timer_led_0;
  output trig_0;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]LED_bar_0;
  wire RX_0;
  wire blue_0;
  wire [3:0]com_0;
  wire dht11_data_0;
  wire [15:0]dip_switches_16bits_tri_i;
  wire echo_0;
  wire emcy_LED_0;
  wire green_0;
  wire red_0;
  wire reset;
  wire [7:0]seg_7_0;
  wire song_0;
  wire speed_0;
  wire sys_clock;
  wire [2:0]timer_led_0;
  wire trig_0;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mblaze_Multifunction_Fan mblaze_Multifunction_Fan_i
       (.LED_bar_0(LED_bar_0),
        .RX_0(RX_0),
        .blue_0(blue_0),
        .com_0(com_0),
        .dht11_data_0(dht11_data_0),
        .dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .echo_0(echo_0),
        .emcy_LED_0(emcy_LED_0),
        .green_0(green_0),
        .red_0(red_0),
        .reset(reset),
        .seg_7_0(seg_7_0),
        .song_0(song_0),
        .speed_0(speed_0),
        .sys_clock(sys_clock),
        .timer_led_0(timer_led_0),
        .trig_0(trig_0),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
