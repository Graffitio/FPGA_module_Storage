-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Nov 24 10:20:24 2023
-- Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/Ian_Jung/workplace/cora_z7/cora_cpu_2019/Basys3_Microblaze_real/Basys3_Microblaze_real.srcs/sources_1/bd/mblaze_I2C/ip/mblaze_I2C_clk_wiz_0_0/mblaze_I2C_clk_wiz_0_0_stub.vhdl
-- Design      : mblaze_I2C_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mblaze_I2C_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mblaze_I2C_clk_wiz_0_0;

architecture stub of mblaze_I2C_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
