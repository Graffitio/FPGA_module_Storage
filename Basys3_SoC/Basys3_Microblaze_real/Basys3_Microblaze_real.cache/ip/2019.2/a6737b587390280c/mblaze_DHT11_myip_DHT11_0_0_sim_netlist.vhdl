-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Nov 22 12:33:25 2023
-- Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mblaze_DHT11_myip_DHT11_0_0_sim_netlist.vhdl
-- Design      : mblaze_DHT11_myip_DHT11_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    cp_in_cur_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_usec[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal cp_in_cur : STD_LOGIC;
  signal cp_in_cur_i_2_n_0 : STD_LOGIC;
  signal cp_in_old : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  AR(0) <= \^ar\(0);
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\count_usec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg_0_sn_1,
      O => cp_in_cur_reg_0
    );
\count_usec[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_3_n_0\
    );
\count_usec[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(3),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_4_n_0\
    );
\count_usec[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(2),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_5_n_0\
    );
\count_usec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(1),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_6_n_0\
    );
\count_usec[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => count_usec_reg(0),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_7_n_0\
    );
\count_usec[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(15),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_2_n_0\
    );
\count_usec[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(14),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_3_n_0\
    );
\count_usec[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(13),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_4_n_0\
    );
\count_usec[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(12),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_5_n_0\
    );
\count_usec[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(19),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_2_n_0\
    );
\count_usec[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(18),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_3_n_0\
    );
\count_usec[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(17),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_4_n_0\
    );
\count_usec[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(16),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_5_n_0\
    );
\count_usec[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(21),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_2_n_0\
    );
\count_usec[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(20),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_3_n_0\
    );
\count_usec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(7),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_2_n_0\
    );
\count_usec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(6),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_3_n_0\
    );
\count_usec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(5),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_4_n_0\
    );
\count_usec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(4),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_5_n_0\
    );
\count_usec[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(11),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_2_n_0\
    );
\count_usec[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(10),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_3_n_0\
    );
\count_usec[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(9),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_4_n_0\
    );
\count_usec[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => count_usec_reg(8),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_5_n_0\
    );
\count_usec_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_usec_reg[0]_i_2_n_0\,
      CO(2) => \count_usec_reg[0]_i_2_n_1\,
      CO(1) => \count_usec_reg[0]_i_2_n_2\,
      CO(0) => \count_usec_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_usec[0]_i_3_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \count_usec[0]_i_4_n_0\,
      S(2) => \count_usec[0]_i_5_n_0\,
      S(1) => \count_usec[0]_i_6_n_0\,
      S(0) => \count_usec[0]_i_7_n_0\
    );
\count_usec_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[8]_i_1_n_0\,
      CO(3) => \count_usec_reg[12]_i_1_n_0\,
      CO(2) => \count_usec_reg[12]_i_1_n_1\,
      CO(1) => \count_usec_reg[12]_i_1_n_2\,
      CO(0) => \count_usec_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cp_in_cur_reg_3(3 downto 0),
      S(3) => \count_usec[12]_i_2_n_0\,
      S(2) => \count_usec[12]_i_3_n_0\,
      S(1) => \count_usec[12]_i_4_n_0\,
      S(0) => \count_usec[12]_i_5_n_0\
    );
\count_usec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[12]_i_1_n_0\,
      CO(3) => \count_usec_reg[16]_i_1_n_0\,
      CO(2) => \count_usec_reg[16]_i_1_n_1\,
      CO(1) => \count_usec_reg[16]_i_1_n_2\,
      CO(0) => \count_usec_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cp_in_cur_reg_4(3 downto 0),
      S(3) => \count_usec[16]_i_2_n_0\,
      S(2) => \count_usec[16]_i_3_n_0\,
      S(1) => \count_usec[16]_i_4_n_0\,
      S(0) => \count_usec[16]_i_5_n_0\
    );
\count_usec_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_usec_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => cp_in_cur_reg_5(1 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \count_usec[20]_i_2_n_0\,
      S(0) => \count_usec[20]_i_3_n_0\
    );
\count_usec_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[0]_i_2_n_0\,
      CO(3) => \count_usec_reg[4]_i_1_n_0\,
      CO(2) => \count_usec_reg[4]_i_1_n_1\,
      CO(1) => \count_usec_reg[4]_i_1_n_2\,
      CO(0) => \count_usec_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cp_in_cur_reg_1(3 downto 0),
      S(3) => \count_usec[4]_i_2_n_0\,
      S(2) => \count_usec[4]_i_3_n_0\,
      S(1) => \count_usec[4]_i_4_n_0\,
      S(0) => \count_usec[4]_i_5_n_0\
    );
\count_usec_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[4]_i_1_n_0\,
      CO(3) => \count_usec_reg[8]_i_1_n_0\,
      CO(2) => \count_usec_reg[8]_i_1_n_1\,
      CO(1) => \count_usec_reg[8]_i_1_n_2\,
      CO(0) => \count_usec_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cp_in_cur_reg_2(3 downto 0),
      S(3) => \count_usec[8]_i_2_n_0\,
      S(2) => \count_usec[8]_i_3_n_0\,
      S(1) => \count_usec[8]_i_4_n_0\,
      S(0) => \count_usec[8]_i_5_n_0\
    );
cp_in_cur_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => cp_in_cur_i_2_n_0,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(4),
      I5 => Q(5),
      O => p_0_out
    );
cp_in_cur_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => cp_in_cur_i_2_n_0
    );
cp_in_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_out,
      Q => cp_in_cur
    );
cp_in_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => cp_in_cur,
      Q => cp_in_old
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  port (
    count_usec_e_reg_C : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_data_reg[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[5]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_data_reg[38]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    next_state : out STD_LOGIC;
    \read_state_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \temp_data_reg[36]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[2]\ : out STD_LOGIC;
    \temp_data_reg[34]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_usec_e_reg_C_0 : in STD_LOGIC;
    count_usec_e_reg_C_1 : in STD_LOGIC;
    count_usec_e_reg_C_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \humidity_reg[7]\ : in STD_LOGIC_VECTOR ( 39 downto 0 );
    dht11_data_0 : in STD_LOGIC;
    count_usec_e_reg_C_3 : in STD_LOGIC;
    count_usec_e_reg_C_4 : in STD_LOGIC;
    \next_state_reg[5]_C\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \next_state_reg[5]_C_0\ : in STD_LOGIC;
    \next_state_reg[5]_C_1\ : in STD_LOGIC;
    \next_state_reg[4]_C\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    humidity1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \humidity[7]_i_3_0\ : in STD_LOGIC;
    \next_state_reg[0]_P\ : in STD_LOGIC;
    \next_state_reg[0]_P_0\ : in STD_LOGIC;
    \next_state_reg[0]_P_1\ : in STD_LOGIC;
    \next_state_reg[0]_P_2\ : in STD_LOGIC;
    \data_count_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count_usec_e_reg_C_5 : in STD_LOGIC;
    \data_count_reg[2]\ : in STD_LOGIC;
    \temp_data_reg[0]\ : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_data_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[3]_C\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal count_usec_e_C_i_2_n_0 : STD_LOGIC;
  signal count_usec_e_C_i_4_n_0 : STD_LOGIC;
  signal count_usec_e_C_i_6_n_0 : STD_LOGIC;
  signal count_usec_e_C_i_7_n_0 : STD_LOGIC;
  signal cp_in_cur : STD_LOGIC;
  signal cp_in_old : STD_LOGIC;
  signal \data_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_10_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_11_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_12_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_13_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_14_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_9_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_2_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_3_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_4_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_5_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_6_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[3]_C_i_3_n_0\ : STD_LOGIC;
  signal \next_state[4]_C_i_2_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_4_n_0\ : STD_LOGIC;
  signal \^temp_data_reg[22]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^temp_data_reg[36]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^temp_data_reg[38]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_count[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_count[2]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_count[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_state[1]_i_2\ : label is "soft_lutpair0";
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  \temp_data_reg[22]\(7 downto 0) <= \^temp_data_reg[22]\(7 downto 0);
  \temp_data_reg[36]\(2 downto 0) <= \^temp_data_reg[36]\(2 downto 0);
  \temp_data_reg[38]\(31 downto 0) <= \^temp_data_reg[38]\(31 downto 0);
count_usec_e_C_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => count_usec_e_C_i_2_n_0,
      I1 => count_usec_e_reg_C_0,
      I2 => count_usec_e_C_i_4_n_0,
      I3 => count_usec_e_reg_C_1,
      I4 => count_usec_e_C_i_6_n_0,
      I5 => count_usec_e_reg_C_2,
      O => count_usec_e_reg_C
    );
count_usec_e_C_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888F8F8F888"
    )
        port map (
      I0 => \next_state_reg[5]_C\(0),
      I1 => count_usec_e_reg_C_5,
      I2 => \data_count[2]_i_4_n_0\,
      I3 => \next_state_reg[5]_C\(2),
      I4 => \next_state_reg[5]_C\(4),
      I5 => \next_state_reg[5]_C_1\,
      O => count_usec_e_C_i_2_n_0
    );
count_usec_e_C_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F222002222"
    )
        port map (
      I0 => \next_state_reg[5]_C\(3),
      I1 => \next_state_reg[5]_C_1\,
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \next_state_reg[5]_C\(5),
      O => count_usec_e_C_i_4_n_0
    );
count_usec_e_C_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F000F0FB0"
    )
        port map (
      I0 => count_usec_e_C_i_7_n_0,
      I1 => count_usec_e_reg_C_3,
      I2 => count_usec_e_reg_C_4,
      I3 => \next_state_reg[5]_C\(2),
      I4 => \next_state_reg[5]_C\(0),
      I5 => \next_state_reg[5]_C\(1),
      O => count_usec_e_C_i_6_n_0
    );
count_usec_e_C_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110011000100110"
    )
        port map (
      I0 => \next_state_reg[5]_C\(4),
      I1 => \next_state_reg[5]_C\(3),
      I2 => \data_count_reg[3]\(0),
      I3 => \data_count_reg[3]\(1),
      I4 => cp_in_old,
      I5 => cp_in_cur,
      O => count_usec_e_C_i_7_n_0
    );
cp_in_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => dht11_data,
      Q => cp_in_cur
    );
cp_in_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => cp_in_cur,
      Q => cp_in_old
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8AAA00002000"
    )
        port map (
      I0 => \data_count[2]_i_2_n_0\,
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => Q(0),
      O => D(0)
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \data_count[2]_i_2_n_0\,
      I1 => \data_count[1]_i_2_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      O => D(1)
    );
\data_count[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \data_count_reg[3]\(0),
      I1 => \data_count_reg[3]\(1),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \data_count[1]_i_2_n_0\
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \data_count[2]_i_2_n_0\,
      I1 => \data_count_reg[2]\,
      I2 => Q(1),
      I3 => \data_count[2]_i_4_n_0\,
      I4 => Q(0),
      I5 => Q(2),
      O => D(2)
    );
\data_count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"81FF"
    )
        port map (
      I0 => \data_count[5]_i_2_n_0\,
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \data_count[2]_i_2_n_0\
    );
\data_count[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      O => \data_count[2]_i_4_n_0\
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFBF0040"
    )
        port map (
      I0 => \data_count_reg[3]\(0),
      I1 => \data_count_reg[3]\(1),
      I2 => Q(2),
      I3 => \data_count[3]_i_2_n_0\,
      I4 => Q(3),
      I5 => Q(5),
      O => D(3)
    );
\data_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => Q(0),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => Q(1),
      O => \data_count[3]_i_2_n_0\
    );
\data_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => \data_count[5]_i_2_n_0\,
      I3 => Q(4),
      O => D(4)
    );
\data_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => \data_count[5]_i_2_n_0\,
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => D(5)
    );
\data_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \data_count_reg[3]\(0),
      I1 => \data_count_reg[3]\(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => \data_count[2]_i_4_n_0\,
      I5 => Q(1),
      O => \data_count[5]_i_2_n_0\
    );
dht11_data_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => dht11_data_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => dht11_data
    );
\humidity1__2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => \humidity1__2_carry__0_i_8_n_0\,
      I1 => \humidity1__2_carry__0_i_9_n_0\,
      I2 => \humidity_reg[7]\(36),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(37),
      O => \^temp_data_reg[36]\(2)
    );
\humidity1__2_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000344474777CFFF"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(11),
      I3 => \humidity_reg[7]\(27),
      I4 => \humidity_reg[7]\(26),
      I5 => \^temp_data_reg[22]\(3),
      O => \humidity1__2_carry__0_i_10_n_0\
    );
\humidity1__2_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CA5A5C33C5A5A"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => \humidity_reg[7]\(11),
      I2 => \^temp_data_reg[22]\(4),
      I3 => \humidity_reg[7]\(27),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(28),
      O => \humidity1__2_carry__0_i_11_n_0\
    );
\humidity1__2_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2EEC0F322E200"
    )
        port map (
      I0 => \humidity_reg[7]\(29),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(28),
      I3 => \^temp_data_reg[22]\(5),
      I4 => \humidity_reg[7]\(13),
      I5 => \humidity_reg[7]\(12),
      O => \humidity1__2_carry__0_i_12_n_0\
    );
\humidity1__2_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8748B47478B74B8"
    )
        port map (
      I0 => \humidity_reg[7]\(30),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(31),
      I3 => \humidity_reg[7]\(38),
      I4 => \humidity_reg[7]\(39),
      I5 => \humidity1__2_carry__0_i_16_n_0\,
      O => \humidity1__2_carry__0_i_13_n_0\
    );
\humidity1__2_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555455555557555"
    )
        port map (
      I0 => \humidity_reg[7]\(14),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(13),
      O => \humidity1__2_carry__0_i_14_n_0\
    );
\humidity1__2_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(13),
      I1 => \humidity_reg[7]\(14),
      I2 => \^temp_data_reg[22]\(6),
      I3 => \humidity_reg[7]\(29),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(30),
      O => \humidity1__2_carry__0_i_15_n_0\
    );
\humidity1__2_carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => \humidity_reg[7]\(23),
      I1 => \humidity_reg[7]\(22),
      I2 => \humidity_reg[7]\(15),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(14),
      O => \humidity1__2_carry__0_i_16_n_0\
    );
\humidity1__2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD54540"
    )
        port map (
      I0 => \humidity1__2_carry__0_i_10_n_0\,
      I1 => \humidity_reg[7]\(35),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(36),
      I4 => \humidity1__2_carry__0_i_11_n_0\,
      O => \^temp_data_reg[36]\(1)
    );
\humidity1__2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD54540"
    )
        port map (
      I0 => \humidity1__2_carry_i_12_n_0\,
      I1 => \humidity_reg[7]\(34),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(35),
      I4 => \humidity1__2_carry_i_13_n_0\,
      O => \^temp_data_reg[36]\(0)
    );
\humidity1__2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"871E1E78E187871E"
    )
        port map (
      I0 => \^temp_data_reg[38]\(30),
      I1 => \humidity1__2_carry__0_i_12_n_0\,
      I2 => \humidity1__2_carry__0_i_13_n_0\,
      I3 => \^temp_data_reg[38]\(22),
      I4 => \^temp_data_reg[22]\(6),
      I5 => \humidity1__2_carry__0_i_14_n_0\,
      O => S(3)
    );
\humidity1__2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(2),
      I1 => \humidity1__2_carry__0_i_12_n_0\,
      I2 => \humidity_reg[7]\(37),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(38),
      I5 => \humidity1__2_carry__0_i_15_n_0\,
      O => S(2)
    );
\humidity1__2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(1),
      I1 => \humidity1__2_carry__0_i_8_n_0\,
      I2 => \humidity_reg[7]\(36),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(37),
      I5 => \humidity1__2_carry__0_i_9_n_0\,
      O => S(1)
    );
\humidity1__2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(0),
      I1 => \humidity1__2_carry__0_i_10_n_0\,
      I2 => \humidity_reg[7]\(35),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(36),
      I5 => \humidity1__2_carry__0_i_11_n_0\,
      O => S(0)
    );
\humidity1__2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCBBB8B8883000"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(12),
      I3 => \humidity_reg[7]\(28),
      I4 => \humidity_reg[7]\(27),
      I5 => \^temp_data_reg[22]\(4),
      O => \humidity1__2_carry__0_i_8_n_0\
    );
\humidity1__2_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => \humidity_reg[7]\(13),
      I2 => \^temp_data_reg[22]\(5),
      I3 => \humidity_reg[7]\(28),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(29),
      O => \humidity1__2_carry__0_i_9_n_0\
    );
\humidity1__2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B8B8FF"
    )
        port map (
      I0 => \humidity_reg[7]\(33),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \humidity1__2_carry_i_9_n_0\,
      I4 => \humidity1__2_carry_i_10_n_0\,
      O => \^di\(3)
    );
\humidity1__2_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D003F11DD0CFF1D"
    )
        port map (
      I0 => \humidity_reg[7]\(25),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(24),
      I3 => \humidity1__2_carry_i_14_n_0\,
      I4 => \humidity_reg[7]\(9),
      I5 => \humidity_reg[7]\(8),
      O => \humidity1__2_carry_i_10_n_0\
    );
\humidity1__2_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55AC3C3A55A3C3C"
    )
        port map (
      I0 => \humidity_reg[7]\(8),
      I1 => \humidity_reg[7]\(9),
      I2 => \humidity1__2_carry_i_14_n_0\,
      I3 => \humidity_reg[7]\(24),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(25),
      O => \humidity1__2_carry_i_11_n_0\
    );
\humidity1__2_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00110C1D1D3FDDFF"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(9),
      I3 => \humidity_reg[7]\(26),
      I4 => \humidity_reg[7]\(25),
      I5 => \^temp_data_reg[22]\(2),
      O => \humidity1__2_carry_i_12_n_0\
    );
\humidity1__2_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CA5A5C33C5A5A"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \humidity_reg[7]\(10),
      I2 => \^temp_data_reg[22]\(3),
      I3 => \humidity_reg[7]\(26),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(27),
      O => \humidity1__2_carry_i_13_n_0\
    );
\humidity1__2_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555455555557555"
    )
        port map (
      I0 => \humidity_reg[7]\(17),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(16),
      O => \humidity1__2_carry_i_14_n_0\
    );
\humidity1__2_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \humidity1__2_carry_i_10_n_0\,
      I1 => \humidity1__2_carry_i_9_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(33),
      O => \^di\(2)
    );
\humidity1__2_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \humidity1__2_carry_i_11_n_0\,
      I1 => \humidity_reg[7]\(33),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(32),
      O => \^di\(1)
    );
\humidity1__2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3AAC3553C553CAA"
    )
        port map (
      I0 => \humidity_reg[7]\(8),
      I1 => \humidity_reg[7]\(7),
      I2 => \humidity_reg[7]\(23),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(24),
      I5 => \^temp_data_reg[22]\(0),
      O => \^di\(0)
    );
\humidity1__2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^di\(3),
      I1 => \humidity1__2_carry_i_12_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(35),
      I5 => \humidity1__2_carry_i_13_n_0\,
      O => \temp_data_reg[34]\(3)
    );
\humidity1__2_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A999AAA"
    )
        port map (
      I0 => \^di\(2),
      I1 => \humidity1__2_carry_i_11_n_0\,
      I2 => \humidity_reg[7]\(32),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(33),
      O => \temp_data_reg[34]\(2)
    );
\humidity1__2_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A6A6A566A"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^temp_data_reg[38]\(16),
      I2 => \^temp_data_reg[22]\(0),
      I3 => \humidity_reg[7]\(8),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(7),
      O => \temp_data_reg[34]\(1)
    );
\humidity1__2_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \humidity_reg[7]\(32),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(31),
      O => \temp_data_reg[34]\(0)
    );
\humidity1__2_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(9),
      I1 => \humidity_reg[7]\(10),
      I2 => \^temp_data_reg[22]\(2),
      I3 => \humidity_reg[7]\(25),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(26),
      O => \humidity1__2_carry_i_9_n_0\
    );
\humidity[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000001"
    )
        port map (
      I0 => \data_count[2]_i_2_n_0\,
      I1 => \humidity[7]_i_2_n_0\,
      I2 => \humidity[7]_i_3_n_0\,
      I3 => humidity1(0),
      I4 => \^temp_data_reg[38]\(0),
      O => E(0)
    );
\humidity[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \humidity[7]_i_4_n_0\,
      I1 => humidity1(7),
      I2 => \^temp_data_reg[38]\(7),
      I3 => \^temp_data_reg[38]\(3),
      I4 => humidity1(3),
      I5 => \humidity[7]_i_5_n_0\,
      O => \humidity[7]_i_2_n_0\
    );
\humidity[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFFFBA"
    )
        port map (
      I0 => \humidity[7]_i_6_n_0\,
      I1 => \^temp_data_reg[38]\(7),
      I2 => humidity1(7),
      I3 => \^temp_data_reg[38]\(5),
      I4 => humidity1(5),
      I5 => \humidity[7]_i_7_n_0\,
      O => \humidity[7]_i_3_n_0\
    );
\humidity[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => humidity1(4),
      I1 => \humidity_reg[7]\(3),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(4),
      I4 => \^temp_data_reg[38]\(2),
      I5 => humidity1(2),
      O => \humidity[7]_i_4_n_0\
    );
\humidity[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B8FFFFFFFF47B8"
    )
        port map (
      I0 => \humidity_reg[7]\(0),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(1),
      I3 => humidity1(1),
      I4 => \^temp_data_reg[38]\(6),
      I5 => humidity1(6),
      O => \humidity[7]_i_5_n_0\
    );
\humidity[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDFDFDFDDDDDD"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \humidity[7]_i_3_0\,
      I2 => humidity1(3),
      I3 => \humidity_reg[7]\(2),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(3),
      O => \humidity[7]_i_6_n_0\
    );
\humidity[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \humidity_reg[7]\(3),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(4),
      I3 => humidity1(4),
      I4 => humidity1(2),
      I5 => \^temp_data_reg[38]\(2),
      O => \humidity[7]_i_7_n_0\
    );
\next_state[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A0008"
    )
        port map (
      I0 => \next_state_reg[4]_C\,
      I1 => \next_state_reg[5]_C\(2),
      I2 => \next_state_reg[5]_C\(3),
      I3 => \next_state_reg[3]_C\,
      I4 => \next_state[3]_C_i_3_n_0\,
      O => \state_reg[2]\
    );
\next_state[3]_C_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \next_state_reg[5]_C_1\,
      I1 => \next_state_reg[5]_C\(3),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \next_state[3]_C_i_3_n_0\
    );
\next_state[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \next_state[4]_C_i_2_n_0\,
      I1 => \next_state_reg[4]_C\,
      I2 => \next_state_reg[5]_C\(1),
      I3 => \next_state_reg[5]_C\(2),
      I4 => \next_state_reg[5]_C\(0),
      I5 => s00_axi_aresetn,
      O => \state_reg[1]\
    );
\next_state[4]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000400D0"
    )
        port map (
      I0 => cp_in_old,
      I1 => cp_in_cur,
      I2 => \next_state_reg[5]_C\(4),
      I3 => \next_state_reg[5]_C\(5),
      I4 => \next_state_reg[5]_C\(3),
      I5 => \next_state_reg[5]_C_1\,
      O => \next_state[4]_C_i_2_n_0\
    );
\next_state[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4F44FFFFFFFF"
    )
        port map (
      I0 => \data_count[2]_i_2_n_0\,
      I1 => \next_state_reg[5]_C\(5),
      I2 => \next_state_reg[0]_P\,
      I3 => \next_state_reg[5]_C\(1),
      I4 => \next_state[5]_C_i_4_n_0\,
      I5 => \next_state_reg[0]_P_0\,
      O => next_state
    );
\next_state[5]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \data_count[2]_i_4_n_0\,
      I1 => \next_state_reg[5]_C\(5),
      I2 => \next_state_reg[5]_C\(3),
      I3 => \next_state_reg[5]_C_0\,
      I4 => \next_state_reg[5]_C\(4),
      I5 => \next_state_reg[5]_C_1\,
      O => \state_reg[5]\
    );
\next_state[5]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFFFFFFFDFF"
    )
        port map (
      I0 => \next_state_reg[0]_P_1\,
      I1 => \next_state_reg[5]_C\(4),
      I2 => \next_state_reg[5]_C\(3),
      I3 => \next_state_reg[0]_P_2\,
      I4 => \next_state_reg[5]_C\(2),
      I5 => \data_count[2]_i_4_n_0\,
      O => \next_state[5]_C_i_4_n_0\
    );
\read_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD4F"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => \data_count_reg[3]\(1),
      I3 => \data_count_reg[3]\(0),
      O => \read_state_reg[0]\(0)
    );
\read_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4604"
    )
        port map (
      I0 => \data_count_reg[3]\(0),
      I1 => \data_count_reg[3]\(1),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \read_state_reg[0]\(1)
    );
\temp_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACAFAFA"
    )
        port map (
      I0 => \humidity_reg[7]\(0),
      I1 => \temp_data_reg[0]\,
      I2 => \data_count[1]_i_2_n_0\,
      I3 => count_usec_reg(0),
      I4 => \temp_data_reg[0]_0\,
      O => \^temp_data_reg[38]\(0)
    );
\temp_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(9),
      O => \^temp_data_reg[38]\(10)
    );
\temp_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(11),
      O => \^temp_data_reg[38]\(11)
    );
\temp_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(12),
      O => \^temp_data_reg[38]\(12)
    );
\temp_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => \data_count_reg[3]\(1),
      I4 => \data_count_reg[3]\(0),
      I5 => \humidity_reg[7]\(13),
      O => \^temp_data_reg[38]\(13)
    );
\temp_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(13),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => \data_count_reg[3]\(1),
      I4 => \data_count_reg[3]\(0),
      I5 => \humidity_reg[7]\(14),
      O => \^temp_data_reg[38]\(14)
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(14),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(15),
      O => \^temp_data_reg[38]\(15)
    );
\temp_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(15),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(16),
      O => \^temp_data_reg[22]\(0)
    );
\temp_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(16),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => \data_count_reg[3]\(1),
      I4 => \data_count_reg[3]\(0),
      I5 => \humidity_reg[7]\(17),
      O => \^temp_data_reg[22]\(1)
    );
\temp_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(17),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(18),
      O => \^temp_data_reg[22]\(2)
    );
\temp_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(18),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(19),
      O => \^temp_data_reg[22]\(3)
    );
\temp_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(0),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(1),
      O => \^temp_data_reg[38]\(1)
    );
\temp_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(19),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(20),
      O => \^temp_data_reg[22]\(4)
    );
\temp_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(20),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(21),
      O => \^temp_data_reg[22]\(5)
    );
\temp_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(21),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(22),
      O => \^temp_data_reg[22]\(6)
    );
\temp_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(22),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(23),
      O => \^temp_data_reg[22]\(7)
    );
\temp_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(23),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(24),
      O => \^temp_data_reg[38]\(16)
    );
\temp_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(24),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(25),
      O => \^temp_data_reg[38]\(17)
    );
\temp_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(25),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(26),
      O => \^temp_data_reg[38]\(18)
    );
\temp_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(26),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(27),
      O => \^temp_data_reg[38]\(19)
    );
\temp_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(27),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(28),
      O => \^temp_data_reg[38]\(20)
    );
\temp_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(28),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(29),
      O => \^temp_data_reg[38]\(21)
    );
\temp_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(1),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(2),
      O => \^temp_data_reg[38]\(2)
    );
\temp_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(29),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(30),
      O => \^temp_data_reg[38]\(22)
    );
\temp_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(30),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(31),
      O => \^temp_data_reg[38]\(23)
    );
\temp_data[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(31),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(32),
      O => \^temp_data_reg[38]\(24)
    );
\temp_data[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(32),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(33),
      O => \^temp_data_reg[38]\(25)
    );
\temp_data[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(34),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(33),
      O => \^temp_data_reg[38]\(26)
    );
\temp_data[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(35),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(34),
      O => \^temp_data_reg[38]\(27)
    );
\temp_data[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(36),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(35),
      O => \^temp_data_reg[38]\(28)
    );
\temp_data[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(37),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(36),
      O => \^temp_data_reg[38]\(29)
    );
\temp_data[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(38),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(37),
      O => \^temp_data_reg[38]\(30)
    );
\temp_data[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(38),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(39),
      O => \^temp_data_reg[38]\(31)
    );
\temp_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(2),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(3),
      O => \^temp_data_reg[38]\(3)
    );
\temp_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(3),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(4),
      O => \^temp_data_reg[38]\(4)
    );
\temp_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(4),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(5),
      O => \^temp_data_reg[38]\(5)
    );
\temp_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(5),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(6),
      O => \^temp_data_reg[38]\(6)
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(6),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(7),
      O => \^temp_data_reg[38]\(7)
    );
\temp_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(7),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(8),
      O => \^temp_data_reg[38]\(8)
    );
\temp_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(9),
      I1 => \data_count_reg[3]\(0),
      I2 => \data_count_reg[3]\(1),
      I3 => cp_in_old,
      I4 => cp_in_cur,
      I5 => \humidity_reg[7]\(8),
      O => \^temp_data_reg[38]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    cp_in_cur_reg : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cp_in_cur_reg_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_10nsec[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_10nsec[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_10nsec[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_10nsec[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_10nsec_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_10nsec[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_10nsec[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_10nsec[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_10nsec[6]_i_2\ : label is "soft_lutpair4";
begin
  AR(0) <= \^ar\(0);
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
\cnt_10nsec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_10nsec_reg(0),
      I1 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(0)
    );
\cnt_10nsec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cnt_10nsec_reg(1),
      I1 => cnt_10nsec_reg(0),
      I2 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(1)
    );
\cnt_10nsec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => cnt_10nsec_reg(0),
      I1 => cnt_10nsec_reg(1),
      I2 => cnt_10nsec_reg(2),
      I3 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(2)
    );
\cnt_10nsec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => cnt_10nsec_reg(2),
      I1 => cnt_10nsec_reg(1),
      I2 => cnt_10nsec_reg(0),
      I3 => cnt_10nsec_reg(3),
      I4 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(3)
    );
\cnt_10nsec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => cnt_10nsec_reg(3),
      I1 => cnt_10nsec_reg(0),
      I2 => cnt_10nsec_reg(1),
      I3 => cnt_10nsec_reg(2),
      I4 => cnt_10nsec_reg(4),
      I5 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(4)
    );
\cnt_10nsec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \cnt_10nsec[6]_i_2_n_0\,
      I1 => cnt_10nsec_reg(3),
      I2 => cnt_10nsec_reg(2),
      I3 => cnt_10nsec_reg(4),
      I4 => cnt_10nsec_reg(6),
      I5 => cnt_10nsec_reg(5),
      O => \cnt_10nsec[4]_i_2_n_0\
    );
\cnt_10nsec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555557C0000000"
    )
        port map (
      I0 => cnt_10nsec_reg(6),
      I1 => cnt_10nsec_reg(4),
      I2 => cnt_10nsec_reg(2),
      I3 => \cnt_10nsec[6]_i_2_n_0\,
      I4 => cnt_10nsec_reg(3),
      I5 => cnt_10nsec_reg(5),
      O => \cnt_10nsec[5]_i_1_n_0\
    );
\cnt_10nsec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF80000000"
    )
        port map (
      I0 => cnt_10nsec_reg(2),
      I1 => \cnt_10nsec[6]_i_2_n_0\,
      I2 => cnt_10nsec_reg(3),
      I3 => cnt_10nsec_reg(5),
      I4 => cnt_10nsec_reg(4),
      I5 => cnt_10nsec_reg(6),
      O => \cnt_10nsec[6]_i_1_n_0\
    );
\cnt_10nsec[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_10nsec_reg(0),
      I1 => cnt_10nsec_reg(1),
      O => \cnt_10nsec[6]_i_2_n_0\
    );
\cnt_10nsec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(0),
      Q => cnt_10nsec_reg(0)
    );
\cnt_10nsec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => cnt_10nsec_reg(1)
    );
\cnt_10nsec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(2),
      Q => cnt_10nsec_reg(2)
    );
\cnt_10nsec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(3),
      Q => cnt_10nsec_reg(3)
    );
\cnt_10nsec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(4),
      Q => cnt_10nsec_reg(4)
    );
\cnt_10nsec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt_10nsec[5]_i_1_n_0\,
      Q => cnt_10nsec_reg(5)
    );
\cnt_10nsec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt_10nsec[6]_i_1_n_0\,
      Q => cnt_10nsec_reg(6)
    );
edg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^ar\(0),
      O(3 downto 0) => O(3 downto 0),
      Q(6 downto 0) => cnt_10nsec_reg(6 downto 0),
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      count_usec_reg_0_sp_1 => count_usec_reg_0_sn_1,
      cp_in_cur_reg_0 => cp_in_cur_reg,
      cp_in_cur_reg_1(3 downto 0) => cp_in_cur_reg_0(3 downto 0),
      cp_in_cur_reg_2(3 downto 0) => cp_in_cur_reg_1(3 downto 0),
      cp_in_cur_reg_3(3 downto 0) => cp_in_cur_reg_2(3 downto 0),
      cp_in_cur_reg_4(3 downto 0) => cp_in_cur_reg_3(3 downto 0),
      cp_in_cur_reg_5(1 downto 0) => cp_in_cur_reg_4(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11 is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    dht11_data_INST_0_i_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \temperature_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    dht11_data_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11 is
  signal count_usec_e_C_i_3_n_0 : STD_LOGIC;
  signal count_usec_e_C_i_5_n_0 : STD_LOGIC;
  signal count_usec_e_C_i_8_n_0 : STD_LOGIC;
  signal count_usec_e_reg_C_n_0 : STD_LOGIC;
  signal count_usec_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \data_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[5]\ : STD_LOGIC;
  signal dht11_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal dht11_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal edg_dht_n_0 : STD_LOGIC;
  signal edg_dht_n_1 : STD_LOGIC;
  signal edg_dht_n_10 : STD_LOGIC;
  signal edg_dht_n_11 : STD_LOGIC;
  signal edg_dht_n_12 : STD_LOGIC;
  signal edg_dht_n_13 : STD_LOGIC;
  signal edg_dht_n_14 : STD_LOGIC;
  signal edg_dht_n_15 : STD_LOGIC;
  signal edg_dht_n_16 : STD_LOGIC;
  signal edg_dht_n_17 : STD_LOGIC;
  signal edg_dht_n_18 : STD_LOGIC;
  signal edg_dht_n_19 : STD_LOGIC;
  signal edg_dht_n_2 : STD_LOGIC;
  signal edg_dht_n_20 : STD_LOGIC;
  signal edg_dht_n_21 : STD_LOGIC;
  signal edg_dht_n_3 : STD_LOGIC;
  signal edg_dht_n_30 : STD_LOGIC;
  signal edg_dht_n_31 : STD_LOGIC;
  signal edg_dht_n_32 : STD_LOGIC;
  signal edg_dht_n_33 : STD_LOGIC;
  signal edg_dht_n_34 : STD_LOGIC;
  signal edg_dht_n_35 : STD_LOGIC;
  signal edg_dht_n_36 : STD_LOGIC;
  signal edg_dht_n_37 : STD_LOGIC;
  signal edg_dht_n_4 : STD_LOGIC;
  signal edg_dht_n_46 : STD_LOGIC;
  signal edg_dht_n_47 : STD_LOGIC;
  signal edg_dht_n_48 : STD_LOGIC;
  signal edg_dht_n_49 : STD_LOGIC;
  signal edg_dht_n_5 : STD_LOGIC;
  signal edg_dht_n_50 : STD_LOGIC;
  signal edg_dht_n_51 : STD_LOGIC;
  signal edg_dht_n_52 : STD_LOGIC;
  signal edg_dht_n_53 : STD_LOGIC;
  signal edg_dht_n_57 : STD_LOGIC;
  signal edg_dht_n_58 : STD_LOGIC;
  signal edg_dht_n_59 : STD_LOGIC;
  signal edg_dht_n_6 : STD_LOGIC;
  signal edg_dht_n_60 : STD_LOGIC;
  signal edg_dht_n_61 : STD_LOGIC;
  signal edg_dht_n_62 : STD_LOGIC;
  signal edg_dht_n_63 : STD_LOGIC;
  signal edg_dht_n_64 : STD_LOGIC;
  signal edg_dht_n_65 : STD_LOGIC;
  signal edg_dht_n_66 : STD_LOGIC;
  signal edg_dht_n_67 : STD_LOGIC;
  signal edg_dht_n_68 : STD_LOGIC;
  signal edg_dht_n_7 : STD_LOGIC;
  signal edg_dht_n_8 : STD_LOGIC;
  signal edg_dht_n_9 : STD_LOGIC;
  signal humidity1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \humidity1__2_carry__0_n_1\ : STD_LOGIC;
  signal \humidity1__2_carry__0_n_2\ : STD_LOGIC;
  signal \humidity1__2_carry__0_n_3\ : STD_LOGIC;
  signal \humidity1__2_carry_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_n_1\ : STD_LOGIC;
  signal \humidity1__2_carry_n_2\ : STD_LOGIC;
  signal \humidity1__2_carry_n_3\ : STD_LOGIC;
  signal \humidity[7]_i_8_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \next_state[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_2_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_3_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_4_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_5_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_6_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_7_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_8_n_0\ : STD_LOGIC;
  signal \next_state[0]_P_i_9_n_0\ : STD_LOGIC;
  signal \next_state[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_C_i_2_n_0\ : STD_LOGIC;
  signal \next_state[3]_C_i_2_n_0\ : STD_LOGIC;
  signal \next_state[4]_C_i_3_n_0\ : STD_LOGIC;
  signal \next_state[4]_C_i_4_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_10_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_11_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_12_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_13_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_14_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_15_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_3_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_5_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_6_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_7_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_8_n_0\ : STD_LOGIC;
  signal \next_state[5]_C_i_9_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]_P_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_C_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_C_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_C_n_0\ : STD_LOGIC;
  signal \next_state_reg[4]_C_n_0\ : STD_LOGIC;
  signal \next_state_reg[5]_C_n_0\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal temp_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \temp_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \temp_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data[39]_i_3_n_0\ : STD_LOGIC;
  signal usec_clk_n_1 : STD_LOGIC;
  signal usec_clk_n_10 : STD_LOGIC;
  signal usec_clk_n_11 : STD_LOGIC;
  signal usec_clk_n_12 : STD_LOGIC;
  signal usec_clk_n_13 : STD_LOGIC;
  signal usec_clk_n_14 : STD_LOGIC;
  signal usec_clk_n_15 : STD_LOGIC;
  signal usec_clk_n_16 : STD_LOGIC;
  signal usec_clk_n_17 : STD_LOGIC;
  signal usec_clk_n_18 : STD_LOGIC;
  signal usec_clk_n_19 : STD_LOGIC;
  signal usec_clk_n_2 : STD_LOGIC;
  signal usec_clk_n_20 : STD_LOGIC;
  signal usec_clk_n_21 : STD_LOGIC;
  signal usec_clk_n_22 : STD_LOGIC;
  signal usec_clk_n_23 : STD_LOGIC;
  signal usec_clk_n_3 : STD_LOGIC;
  signal usec_clk_n_4 : STD_LOGIC;
  signal usec_clk_n_5 : STD_LOGIC;
  signal usec_clk_n_6 : STD_LOGIC;
  signal usec_clk_n_7 : STD_LOGIC;
  signal usec_clk_n_8 : STD_LOGIC;
  signal usec_clk_n_9 : STD_LOGIC;
  signal \NLW_humidity1__2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e_C_i_8 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of dht11_data_INST_0_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_state[0]_P_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_state[1]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[2]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[2]_C_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_state[5]_C_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[5]_C_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[5]_C_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state[5]_C_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_state[5]_C_i_9\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \read_state_reg[0]\ : label is "S_WAIT_NEDGE:10,S_WAIT_PEDGE:01";
  attribute FSM_ENCODED_STATES of \read_state_reg[1]\ : label is "S_WAIT_NEDGE:10,S_WAIT_PEDGE:01";
  attribute SOFT_HLUTNM of \temp_data[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp_data[0]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_data[39]_i_3\ : label is "soft_lutpair11";
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
count_usec_e_C_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \next_state[5]_C_i_3_n_0\,
      I1 => state(1),
      O => count_usec_e_C_i_3_n_0
    );
count_usec_e_C_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \next_state[0]_P_i_5_n_0\,
      I1 => \next_state[0]_P_i_2_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => s00_axi_aresetn,
      O => count_usec_e_C_i_5_n_0
    );
count_usec_e_C_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => state(5),
      O => count_usec_e_C_i_8_n_0
    );
count_usec_e_reg_C: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_0,
      Q => count_usec_e_reg_C_n_0
    );
\count_usec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_5,
      Q => count_usec_reg(0)
    );
\count_usec_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_11,
      Q => count_usec_reg(10)
    );
\count_usec_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_10,
      Q => count_usec_reg(11)
    );
\count_usec_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_17,
      Q => count_usec_reg(12)
    );
\count_usec_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_16,
      Q => count_usec_reg(13)
    );
\count_usec_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_15,
      Q => count_usec_reg(14)
    );
\count_usec_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_14,
      Q => count_usec_reg(15)
    );
\count_usec_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_21,
      Q => count_usec_reg(16)
    );
\count_usec_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_20,
      Q => count_usec_reg(17)
    );
\count_usec_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_19,
      Q => count_usec_reg(18)
    );
\count_usec_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_18,
      Q => count_usec_reg(19)
    );
\count_usec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_4,
      Q => count_usec_reg(1)
    );
\count_usec_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_23,
      Q => count_usec_reg(20)
    );
\count_usec_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_22,
      Q => count_usec_reg(21)
    );
\count_usec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_3,
      Q => count_usec_reg(2)
    );
\count_usec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_2,
      Q => count_usec_reg(3)
    );
\count_usec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_9,
      Q => count_usec_reg(4)
    );
\count_usec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_8,
      Q => count_usec_reg(5)
    );
\count_usec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_7,
      Q => count_usec_reg(6)
    );
\count_usec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_6,
      Q => count_usec_reg(7)
    );
\count_usec_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_13,
      Q => count_usec_reg(8)
    );
\count_usec_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^s00_axi_aresetn_0\,
      D => usec_clk_n_12,
      Q => count_usec_reg(9)
    );
\data_count[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(1),
      I1 => read_state(0),
      O => \data_count[2]_i_3_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_6,
      Q => \data_count_reg_n_0_[0]\
    );
\data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_5,
      Q => \data_count_reg_n_0_[1]\
    );
\data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_4,
      Q => \data_count_reg_n_0_[2]\
    );
\data_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_3,
      Q => \data_count_reg_n_0_[3]\
    );
\data_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_2,
      Q => \data_count_reg_n_0_[4]\
    );
\data_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_1,
      Q => \data_count_reg_n_0_[5]\
    );
dht11_data_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => count_usec_e_C_i_3_n_0,
      I1 => \next_state[5]_C_i_5_n_0\,
      I2 => dht11_data_INST_0_i_3_n_0,
      I3 => dht11_data_INST_0_i_4_n_0,
      I4 => dht11_data_0,
      O => dht11_data_INST_0_i_1
    );
dht11_data_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEFE"
    )
        port map (
      I0 => state(3),
      I1 => state(5),
      I2 => state(4),
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => dht11_data_INST_0_i_3_n_0
    );
dht11_data_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110111"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \temp_data[0]_i_3_n_0\,
      I4 => \next_state[0]_P_i_8_n_0\,
      O => dht11_data_INST_0_i_4_n_0
    );
edg_dht: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(5) => edg_dht_n_1,
      D(4) => edg_dht_n_2,
      D(3) => edg_dht_n_3,
      D(2) => edg_dht_n_4,
      D(1) => edg_dht_n_5,
      D(0) => edg_dht_n_6,
      DI(3) => edg_dht_n_7,
      DI(2) => edg_dht_n_8,
      DI(1) => edg_dht_n_9,
      DI(0) => edg_dht_n_10,
      E(0) => edg_dht_n_21,
      Q(5) => \data_count_reg_n_0_[5]\,
      Q(4) => \data_count_reg_n_0_[4]\,
      Q(3) => \data_count_reg_n_0_[3]\,
      Q(2) => \data_count_reg_n_0_[2]\,
      Q(1) => \data_count_reg_n_0_[1]\,
      Q(0) => \data_count_reg_n_0_[0]\,
      S(3) => edg_dht_n_60,
      S(2) => edg_dht_n_61,
      S(1) => edg_dht_n_62,
      S(0) => edg_dht_n_63,
      count_usec_e_reg_C => edg_dht_n_0,
      count_usec_e_reg_C_0 => count_usec_e_C_i_3_n_0,
      count_usec_e_reg_C_1 => count_usec_e_C_i_5_n_0,
      count_usec_e_reg_C_2 => count_usec_e_reg_C_n_0,
      count_usec_e_reg_C_3 => count_usec_e_C_i_8_n_0,
      count_usec_e_reg_C_4 => \next_state[0]_P_i_2_n_0\,
      count_usec_e_reg_C_5 => \next_state[5]_C_i_9_n_0\,
      count_usec_reg(0) => count_usec_reg(6),
      \data_count_reg[2]\ => \data_count[2]_i_3_n_0\,
      \data_count_reg[3]\(1 downto 0) => read_state(1 downto 0),
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_0,
      humidity1(7 downto 0) => humidity1(7 downto 0),
      \humidity[7]_i_3_0\ => \humidity[7]_i_8_n_0\,
      \humidity_reg[7]\(39 downto 0) => temp_data(39 downto 0),
      next_state => next_state,
      \next_state_reg[0]_P\ => \next_state[5]_C_i_3_n_0\,
      \next_state_reg[0]_P_0\ => \next_state[5]_C_i_5_n_0\,
      \next_state_reg[0]_P_1\ => \next_state[0]_P_i_5_n_0\,
      \next_state_reg[0]_P_2\ => \next_state[0]_P_i_4_n_0\,
      \next_state_reg[3]_C\ => \next_state[3]_C_i_2_n_0\,
      \next_state_reg[4]_C\ => \next_state[4]_C_i_3_n_0\,
      \next_state_reg[5]_C\(5 downto 0) => state(5 downto 0),
      \next_state_reg[5]_C_0\ => \next_state[5]_C_i_6_n_0\,
      \next_state_reg[5]_C_1\ => \next_state[5]_C_i_7_n_0\,
      \read_state_reg[0]\(1 downto 0) => \p_0_in__0\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \state_reg[1]\ => edg_dht_n_20,
      \state_reg[2]\ => edg_dht_n_64,
      \state_reg[5]\ => edg_dht_n_19,
      \temp_data_reg[0]\ => \temp_data[0]_i_2_n_0\,
      \temp_data_reg[0]_0\ => \temp_data[0]_i_3_n_0\,
      \temp_data_reg[22]\(7) => edg_dht_n_11,
      \temp_data_reg[22]\(6) => edg_dht_n_12,
      \temp_data_reg[22]\(5) => edg_dht_n_13,
      \temp_data_reg[22]\(4) => edg_dht_n_14,
      \temp_data_reg[22]\(3) => edg_dht_n_15,
      \temp_data_reg[22]\(2) => edg_dht_n_16,
      \temp_data_reg[22]\(1) => edg_dht_n_17,
      \temp_data_reg[22]\(0) => edg_dht_n_18,
      \temp_data_reg[34]\(3) => edg_dht_n_65,
      \temp_data_reg[34]\(2) => edg_dht_n_66,
      \temp_data_reg[34]\(1) => edg_dht_n_67,
      \temp_data_reg[34]\(0) => edg_dht_n_68,
      \temp_data_reg[36]\(2) => edg_dht_n_57,
      \temp_data_reg[36]\(1) => edg_dht_n_58,
      \temp_data_reg[36]\(0) => edg_dht_n_59,
      \temp_data_reg[38]\(31 downto 24) => p_1_in(7 downto 0),
      \temp_data_reg[38]\(23) => edg_dht_n_30,
      \temp_data_reg[38]\(22) => edg_dht_n_31,
      \temp_data_reg[38]\(21) => edg_dht_n_32,
      \temp_data_reg[38]\(20) => edg_dht_n_33,
      \temp_data_reg[38]\(19) => edg_dht_n_34,
      \temp_data_reg[38]\(18) => edg_dht_n_35,
      \temp_data_reg[38]\(17) => edg_dht_n_36,
      \temp_data_reg[38]\(16) => edg_dht_n_37,
      \temp_data_reg[38]\(15 downto 8) => p_0_in1_in(7 downto 0),
      \temp_data_reg[38]\(7) => edg_dht_n_46,
      \temp_data_reg[38]\(6) => edg_dht_n_47,
      \temp_data_reg[38]\(5) => edg_dht_n_48,
      \temp_data_reg[38]\(4) => edg_dht_n_49,
      \temp_data_reg[38]\(3) => edg_dht_n_50,
      \temp_data_reg[38]\(2) => edg_dht_n_51,
      \temp_data_reg[38]\(1) => edg_dht_n_52,
      \temp_data_reg[38]\(0) => edg_dht_n_53
    );
\humidity1__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \humidity1__2_carry_n_0\,
      CO(2) => \humidity1__2_carry_n_1\,
      CO(1) => \humidity1__2_carry_n_2\,
      CO(0) => \humidity1__2_carry_n_3\,
      CYINIT => '0',
      DI(3) => edg_dht_n_7,
      DI(2) => edg_dht_n_8,
      DI(1) => edg_dht_n_9,
      DI(0) => edg_dht_n_10,
      O(3 downto 0) => humidity1(3 downto 0),
      S(3) => edg_dht_n_65,
      S(2) => edg_dht_n_66,
      S(1) => edg_dht_n_67,
      S(0) => edg_dht_n_68
    );
\humidity1__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \humidity1__2_carry_n_0\,
      CO(3) => \NLW_humidity1__2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \humidity1__2_carry__0_n_1\,
      CO(1) => \humidity1__2_carry__0_n_2\,
      CO(0) => \humidity1__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => edg_dht_n_57,
      DI(1) => edg_dht_n_58,
      DI(0) => edg_dht_n_59,
      O(3 downto 0) => humidity1(7 downto 4),
      S(3) => edg_dht_n_60,
      S(2) => edg_dht_n_61,
      S(1) => edg_dht_n_62,
      S(0) => edg_dht_n_63
    );
\humidity[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => state(5),
      O => \humidity[7]_i_8_n_0\
    );
\humidity_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(0),
      Q => Q(0),
      R => '0'
    );
\humidity_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(1),
      Q => Q(1),
      R => '0'
    );
\humidity_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(2),
      Q => Q(2),
      R => '0'
    );
\humidity_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(3),
      Q => Q(3),
      R => '0'
    );
\humidity_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(4),
      Q => Q(4),
      R => '0'
    );
\humidity_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(5),
      Q => Q(5),
      R => '0'
    );
\humidity_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(6),
      Q => Q(6),
      R => '0'
    );
\humidity_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => p_1_in(7),
      Q => Q(7),
      R => '0'
    );
\next_state[0]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEF00E0EFEF"
    )
        port map (
      I0 => \next_state[0]_P_i_2_n_0\,
      I1 => \next_state[0]_P_i_3_n_0\,
      I2 => \next_state[0]_P_i_4_n_0\,
      I3 => \next_state[0]_P_i_5_n_0\,
      I4 => \next_state[0]_P_i_6_n_0\,
      I5 => \next_state[0]_P_i_7_n_0\,
      O => \next_state[0]_P_i_1_n_0\
    );
\next_state[0]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => state(4),
      I1 => state(5),
      I2 => state(3),
      O => \next_state[0]_P_i_2_n_0\
    );
\next_state[0]_P_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \next_state[0]_P_i_3_n_0\
    );
\next_state[0]_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => state(4),
      I5 => state(5),
      O => \next_state[0]_P_i_4_n_0\
    );
\next_state[0]_P_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \next_state[0]_P_i_8_n_0\,
      I1 => \temp_data[0]_i_4_n_0\,
      I2 => \next_state[0]_P_i_9_n_0\,
      I3 => state(2),
      O => \next_state[0]_P_i_5_n_0\
    );
\next_state[0]_P_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000030001001F"
    )
        port map (
      I0 => \next_state[5]_C_i_7_n_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(5),
      I4 => state(4),
      I5 => state(2),
      O => \next_state[0]_P_i_6_n_0\
    );
\next_state[0]_P_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0001FFFFFFFF"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => s00_axi_aresetn,
      O => \next_state[0]_P_i_7_n_0\
    );
\next_state[0]_P_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => count_usec_reg(4),
      I2 => count_usec_reg(5),
      I3 => count_usec_reg(3),
      I4 => count_usec_reg(1),
      I5 => count_usec_reg(2),
      O => \next_state[0]_P_i_8_n_0\
    );
\next_state[0]_P_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \temp_data[0]_i_6_n_0\,
      I1 => count_usec_reg(10),
      I2 => count_usec_reg(14),
      I3 => count_usec_reg(9),
      I4 => count_usec_reg(7),
      I5 => count_usec_reg(8),
      O => \next_state[0]_P_i_9_n_0\
    );
\next_state[1]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \next_state[2]_C_i_2_n_0\,
      I3 => s00_axi_aresetn,
      O => \next_state[1]_C_i_1_n_0\
    );
\next_state[2]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \next_state[2]_C_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => s00_axi_aresetn,
      O => \next_state[2]_C_i_1_n_0\
    );
\next_state[2]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(5),
      I3 => state(4),
      O => \next_state[2]_C_i_2_n_0\
    );
\next_state[3]_C_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => state(5),
      I1 => state(4),
      I2 => state(1),
      I3 => state(0),
      I4 => s00_axi_aresetn,
      O => \next_state[3]_C_i_2_n_0\
    );
\next_state[4]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDDD"
    )
        port map (
      I0 => \next_state[0]_P_i_4_n_0\,
      I1 => \next_state[0]_P_i_2_n_0\,
      I2 => \next_state[4]_C_i_4_n_0\,
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => \next_state[4]_C_i_3_n_0\
    );
\next_state[4]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => count_usec_reg(12),
      I1 => count_usec_reg(13),
      I2 => count_usec_reg(11),
      I3 => \next_state[5]_C_i_11_n_0\,
      I4 => \temp_data[0]_i_4_n_0\,
      I5 => \next_state[0]_P_i_8_n_0\,
      O => \next_state[4]_C_i_4_n_0\
    );
\next_state[5]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A8888888"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => count_usec_reg(5),
      I2 => count_usec_reg(4),
      I3 => count_usec_reg(3),
      I4 => count_usec_reg(2),
      I5 => count_usec_reg(1),
      O => \next_state[5]_C_i_10_n_0\
    );
\next_state[5]_C_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_usec_reg(8),
      I1 => count_usec_reg(7),
      I2 => count_usec_reg(9),
      I3 => count_usec_reg(14),
      I4 => count_usec_reg(10),
      O => \next_state[5]_C_i_11_n_0\
    );
\next_state[5]_C_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => count_usec_reg(10),
      O => \next_state[5]_C_i_12_n_0\
    );
\next_state[5]_C_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => count_usec_reg(4),
      I2 => count_usec_reg(0),
      I3 => count_usec_reg(2),
      I4 => count_usec_reg(1),
      O => \next_state[5]_C_i_13_n_0\
    );
\next_state[5]_C_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001FFFFFFF"
    )
        port map (
      I0 => \temp_data[0]_i_6_n_0\,
      I1 => \next_state[5]_C_i_15_n_0\,
      I2 => count_usec_reg(14),
      I3 => count_usec_reg(16),
      I4 => count_usec_reg(15),
      I5 => count_usec_reg(17),
      O => \next_state[5]_C_i_14_n_0\
    );
\next_state[5]_C_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => count_usec_reg(7),
      I2 => count_usec_reg(8),
      I3 => count_usec_reg(9),
      I4 => count_usec_reg(10),
      O => \next_state[5]_C_i_15_n_0\
    );
\next_state[5]_C_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => \temp_data[0]_i_4_n_0\,
      I1 => \next_state[5]_C_i_8_n_0\,
      I2 => count_usec_reg(13),
      I3 => count_usec_reg(12),
      I4 => count_usec_reg(14),
      O => \next_state[5]_C_i_3_n_0\
    );
\next_state[5]_C_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \next_state[5]_C_i_9_n_0\,
      I1 => state(0),
      O => \next_state[5]_C_i_5_n_0\
    );
\next_state[5]_C_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => s00_axi_aresetn,
      O => \next_state[5]_C_i_6_n_0\
    );
\next_state[5]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \next_state[5]_C_i_10_n_0\,
      I1 => count_usec_reg(12),
      I2 => count_usec_reg(13),
      I3 => count_usec_reg(11),
      I4 => \next_state[5]_C_i_11_n_0\,
      I5 => \temp_data[0]_i_4_n_0\,
      O => \next_state[5]_C_i_7_n_0\
    );
\next_state[5]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDF"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => \next_state[5]_C_i_12_n_0\,
      I2 => \temp_data[0]_i_5_n_0\,
      I3 => count_usec_reg(6),
      I4 => count_usec_reg(5),
      I5 => \next_state[5]_C_i_13_n_0\,
      O => \next_state[5]_C_i_8_n_0\
    );
\next_state[5]_C_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555FF7F"
    )
        port map (
      I0 => count_usec_reg(21),
      I1 => count_usec_reg(19),
      I2 => count_usec_reg(18),
      I3 => \next_state[5]_C_i_14_n_0\,
      I4 => count_usec_reg(20),
      O => \next_state[5]_C_i_9_n_0\
    );
\next_state_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      D => \next_state[0]_P_i_1_n_0\,
      PRE => \^s00_axi_aresetn_0\,
      Q => \next_state_reg[0]_P_n_0\
    );
\next_state_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[1]_C_i_1_n_0\,
      Q => \next_state_reg[1]_C_n_0\
    );
\next_state_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state[2]_C_i_1_n_0\,
      Q => \next_state_reg[2]_C_n_0\
    );
\next_state_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_64,
      Q => \next_state_reg[3]_C_n_0\
    );
\next_state_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_20,
      Q => \next_state_reg[4]_C_n_0\
    );
\next_state_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^s00_axi_aresetn_0\,
      D => edg_dht_n_19,
      Q => \next_state_reg[5]_C_n_0\
    );
\read_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => state(5),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(4),
      O => \read_state[1]_i_1_n_0\
    );
\read_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      D => \p_0_in__0\(0),
      PRE => \^s00_axi_aresetn_0\,
      Q => read_state(0)
    );
\read_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \read_state[1]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(1),
      Q => read_state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg[0]_P_n_0\,
      PRE => \^s00_axi_aresetn_0\,
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg[1]_C_n_0\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg[2]_C_n_0\,
      Q => state(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg[3]_C_n_0\,
      Q => state(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg[4]_C_n_0\,
      Q => state(4)
    );
\state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \next_state_reg[5]_C_n_0\,
      Q => state(5)
    );
\temp_data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => count_usec_reg(1),
      I1 => count_usec_reg(2),
      I2 => count_usec_reg(3),
      I3 => count_usec_reg(5),
      I4 => count_usec_reg(4),
      O => \temp_data[0]_i_2_n_0\
    );
\temp_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \temp_data[0]_i_4_n_0\,
      I1 => \temp_data[0]_i_5_n_0\,
      I2 => count_usec_reg(9),
      I3 => count_usec_reg(14),
      I4 => count_usec_reg(10),
      I5 => \temp_data[0]_i_6_n_0\,
      O => \temp_data[0]_i_3_n_0\
    );
\temp_data[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \temp_data[0]_i_7_n_0\,
      I1 => count_usec_reg(16),
      I2 => count_usec_reg(17),
      I3 => count_usec_reg(15),
      O => \temp_data[0]_i_4_n_0\
    );
\temp_data[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_usec_reg(7),
      I1 => count_usec_reg(8),
      O => \temp_data[0]_i_5_n_0\
    );
\temp_data[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => count_usec_reg(13),
      I2 => count_usec_reg(12),
      O => \temp_data[0]_i_6_n_0\
    );
\temp_data[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_usec_reg(19),
      I1 => count_usec_reg(18),
      I2 => count_usec_reg(21),
      I3 => count_usec_reg(20),
      O => \temp_data[0]_i_7_n_0\
    );
\temp_data[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => state(4),
      I2 => state(3),
      I3 => \temp_data[39]_i_3_n_0\,
      I4 => state(0),
      I5 => state(5),
      O => \temp_data[39]_i_1_n_0\
    );
\temp_data[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \temp_data[39]_i_3_n_0\
    );
\temp_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_53,
      Q => temp_data(0),
      R => '0'
    );
\temp_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(2),
      Q => temp_data(10),
      R => '0'
    );
\temp_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(3),
      Q => temp_data(11),
      R => '0'
    );
\temp_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(4),
      Q => temp_data(12),
      R => '0'
    );
\temp_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(5),
      Q => temp_data(13),
      R => '0'
    );
\temp_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(6),
      Q => temp_data(14),
      R => '0'
    );
\temp_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(7),
      Q => temp_data(15),
      R => '0'
    );
\temp_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_18,
      Q => temp_data(16),
      R => '0'
    );
\temp_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_17,
      Q => temp_data(17),
      R => '0'
    );
\temp_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_16,
      Q => temp_data(18),
      R => '0'
    );
\temp_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_15,
      Q => temp_data(19),
      R => '0'
    );
\temp_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_52,
      Q => temp_data(1),
      R => '0'
    );
\temp_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_14,
      Q => temp_data(20),
      R => '0'
    );
\temp_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_13,
      Q => temp_data(21),
      R => '0'
    );
\temp_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_12,
      Q => temp_data(22),
      R => '0'
    );
\temp_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_11,
      Q => temp_data(23),
      R => '0'
    );
\temp_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_37,
      Q => temp_data(24),
      R => '0'
    );
\temp_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_36,
      Q => temp_data(25),
      R => '0'
    );
\temp_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_35,
      Q => temp_data(26),
      R => '0'
    );
\temp_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_34,
      Q => temp_data(27),
      R => '0'
    );
\temp_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_33,
      Q => temp_data(28),
      R => '0'
    );
\temp_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_32,
      Q => temp_data(29),
      R => '0'
    );
\temp_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_51,
      Q => temp_data(2),
      R => '0'
    );
\temp_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_31,
      Q => temp_data(30),
      R => '0'
    );
\temp_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_30,
      Q => temp_data(31),
      R => '0'
    );
\temp_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(0),
      Q => temp_data(32),
      R => '0'
    );
\temp_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(1),
      Q => temp_data(33),
      R => '0'
    );
\temp_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(2),
      Q => temp_data(34),
      R => '0'
    );
\temp_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(3),
      Q => temp_data(35),
      R => '0'
    );
\temp_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(4),
      Q => temp_data(36),
      R => '0'
    );
\temp_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(5),
      Q => temp_data(37),
      R => '0'
    );
\temp_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(6),
      Q => temp_data(38),
      R => '0'
    );
\temp_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_1_in(7),
      Q => temp_data(39),
      R => '0'
    );
\temp_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_50,
      Q => temp_data(3),
      R => '0'
    );
\temp_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_49,
      Q => temp_data(4),
      R => '0'
    );
\temp_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_48,
      Q => temp_data(5),
      R => '0'
    );
\temp_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_47,
      Q => temp_data(6),
      R => '0'
    );
\temp_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => edg_dht_n_46,
      Q => temp_data(7),
      R => '0'
    );
\temp_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(0),
      Q => temp_data(8),
      R => '0'
    );
\temp_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \temp_data[39]_i_1_n_0\,
      D => p_0_in1_in(1),
      Q => temp_data(9),
      R => '0'
    );
\temperature_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_18,
      Q => \temperature_reg[7]_0\(0),
      R => '0'
    );
\temperature_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_17,
      Q => \temperature_reg[7]_0\(1),
      R => '0'
    );
\temperature_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_16,
      Q => \temperature_reg[7]_0\(2),
      R => '0'
    );
\temperature_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_15,
      Q => \temperature_reg[7]_0\(3),
      R => '0'
    );
\temperature_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_14,
      Q => \temperature_reg[7]_0\(4),
      R => '0'
    );
\temperature_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_13,
      Q => \temperature_reg[7]_0\(5),
      R => '0'
    );
\temperature_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_12,
      Q => \temperature_reg[7]_0\(6),
      R => '0'
    );
\temperature_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_dht_n_21,
      D => edg_dht_n_11,
      Q => \temperature_reg[7]_0\(7),
      R => '0'
    );
usec_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      O(3) => usec_clk_n_2,
      O(2) => usec_clk_n_3,
      O(1) => usec_clk_n_4,
      O(0) => usec_clk_n_5,
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      count_usec_reg_0_sp_1 => count_usec_e_reg_C_n_0,
      cp_in_cur_reg => usec_clk_n_1,
      cp_in_cur_reg_0(3) => usec_clk_n_6,
      cp_in_cur_reg_0(2) => usec_clk_n_7,
      cp_in_cur_reg_0(1) => usec_clk_n_8,
      cp_in_cur_reg_0(0) => usec_clk_n_9,
      cp_in_cur_reg_1(3) => usec_clk_n_10,
      cp_in_cur_reg_1(2) => usec_clk_n_11,
      cp_in_cur_reg_1(1) => usec_clk_n_12,
      cp_in_cur_reg_1(0) => usec_clk_n_13,
      cp_in_cur_reg_2(3) => usec_clk_n_14,
      cp_in_cur_reg_2(2) => usec_clk_n_15,
      cp_in_cur_reg_2(1) => usec_clk_n_16,
      cp_in_cur_reg_2(0) => usec_clk_n_17,
      cp_in_cur_reg_3(3) => usec_clk_n_18,
      cp_in_cur_reg_3(2) => usec_clk_n_19,
      cp_in_cur_reg_3(1) => usec_clk_n_20,
      cp_in_cur_reg_3(0) => usec_clk_n_21,
      cp_in_cur_reg_4(1) => usec_clk_n_22,
      cp_in_cur_reg_4(0) => usec_clk_n_23,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    dht11_data_INST_0_i_1 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dht11_data_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal humidity : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal temperature : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair13";
begin
  AR(0) <= \^ar\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^ar\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => \^ar\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => \^ar\(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => \^ar\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \^ar\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \^ar\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \^ar\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => \^ar\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \^ar\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^ar\(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => temperature(0),
      I4 => sel0(0),
      I5 => humidity(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(10),
      I4 => sel0(0),
      I5 => slv_reg3(10),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(11),
      I4 => sel0(0),
      I5 => slv_reg3(11),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(12),
      I4 => sel0(0),
      I5 => slv_reg3(12),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(13),
      I4 => sel0(0),
      I5 => slv_reg3(13),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(14),
      I4 => sel0(0),
      I5 => slv_reg3(14),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(15),
      I4 => sel0(0),
      I5 => slv_reg3(15),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(16),
      I4 => sel0(0),
      I5 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(17),
      I4 => sel0(0),
      I5 => slv_reg3(17),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(18),
      I4 => sel0(0),
      I5 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(19),
      I4 => sel0(0),
      I5 => slv_reg3(19),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => temperature(1),
      I4 => sel0(0),
      I5 => humidity(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(20),
      I4 => sel0(0),
      I5 => slv_reg3(20),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(21),
      I4 => sel0(0),
      I5 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(22),
      I4 => sel0(0),
      I5 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(23),
      I4 => sel0(0),
      I5 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(24),
      I4 => sel0(0),
      I5 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(25),
      I4 => sel0(0),
      I5 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(26),
      I4 => sel0(0),
      I5 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(27),
      I4 => sel0(0),
      I5 => slv_reg3(27),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(28),
      I4 => sel0(0),
      I5 => slv_reg3(28),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(29),
      I4 => sel0(0),
      I5 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => temperature(2),
      I4 => sel0(0),
      I5 => humidity(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(30),
      I4 => sel0(0),
      I5 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(31),
      I4 => sel0(0),
      I5 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => temperature(3),
      I4 => sel0(0),
      I5 => humidity(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => temperature(4),
      I4 => sel0(0),
      I5 => humidity(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => temperature(5),
      I4 => sel0(0),
      I5 => humidity(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => temperature(6),
      I4 => sel0(0),
      I5 => humidity(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => temperature(7),
      I4 => sel0(0),
      I5 => humidity(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(8),
      I4 => sel0(0),
      I5 => slv_reg3(8),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(9),
      I4 => sel0(0),
      I5 => slv_reg3(9),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^ar\(0)
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^ar\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^ar\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^ar\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^ar\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^ar\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^ar\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^ar\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^ar\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^ar\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^ar\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^ar\(0)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => reg_data_out(1),
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^ar\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^ar\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^ar\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^ar\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^ar\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^ar\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^ar\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^ar\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^ar\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^ar\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^ar\(0)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2),
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^ar\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^ar\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^ar\(0)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => reg_data_out(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^ar\(0)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => reg_data_out(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^ar\(0)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      O => reg_data_out(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^ar\(0)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      O => reg_data_out(6),
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^ar\(0)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      O => reg_data_out(7),
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^ar\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^ar\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^ar\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \^ar\(0)
    );
dht11: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DHT11
     port map (
      Q(7 downto 0) => humidity(7 downto 0),
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_0,
      dht11_data_INST_0_i_1 => dht11_data_INST_0_i_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^ar\(0),
      \temperature_reg[7]_0\(7 downto 0) => temperature(7 downto 0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^ar\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^ar\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^ar\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^ar\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^ar\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^ar\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^ar\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^ar\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^ar\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^ar\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^ar\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^ar\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^ar\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^ar\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^ar\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^ar\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^ar\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^ar\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^ar\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^ar\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^ar\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^ar\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^ar\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^ar\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^ar\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^ar\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^ar\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^ar\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^ar\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^ar\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^ar\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^ar\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^ar\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^ar\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^ar\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^ar\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^ar\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^ar\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^ar\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^ar\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^ar\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^ar\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^ar\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^ar\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^ar\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^ar\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^ar\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^ar\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^ar\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^ar\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^ar\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^ar\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^ar\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^ar\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^ar\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^ar\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^ar\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^ar\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^ar\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^ar\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^ar\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^ar\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^ar\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^ar\(0)
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => \^ar\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => \^ar\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => \^ar\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => \^ar\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => \^ar\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => \^ar\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => \^ar\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => \^ar\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => \^ar\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => \^ar\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => \^ar\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => \^ar\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => \^ar\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => \^ar\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => \^ar\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => \^ar\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => \^ar\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => \^ar\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => \^ar\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => \^ar\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => \^ar\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => \^ar\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => \^ar\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => \^ar\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => \^ar\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => \^ar\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => \^ar\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => \^ar\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => \^ar\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => \^ar\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => \^ar\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => \^ar\(0)
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => \^ar\(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => \^ar\(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => \^ar\(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => \^ar\(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => \^ar\(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => \^ar\(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => \^ar\(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => \^ar\(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => \^ar\(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => \^ar\(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => \^ar\(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => \^ar\(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => \^ar\(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => \^ar\(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => \^ar\(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => \^ar\(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => \^ar\(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => \^ar\(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => \^ar\(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => \^ar\(0)
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => \^ar\(0)
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => \^ar\(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => \^ar\(0)
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => \^ar\(0)
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => \^ar\(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => \^ar\(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => \^ar\(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => \^ar\(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => \^ar\(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => \^ar\(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => \^ar\(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => \^ar\(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(4),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(4),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(4),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(4),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => \^ar\(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => \^ar\(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => \^ar\(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => \^ar\(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => \^ar\(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => \^ar\(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => \^ar\(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => \^ar\(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => \^ar\(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => \^ar\(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => \^ar\(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => \^ar\(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => \^ar\(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => \^ar\(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => \^ar\(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => \^ar\(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => \^ar\(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => \^ar\(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => \^ar\(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => \^ar\(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => \^ar\(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => \^ar\(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => \^ar\(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => \^ar\(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => \^ar\(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => \^ar\(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => \^ar\(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => \^ar\(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => \^ar\(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => \^ar\(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => \^ar\(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => \^ar\(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => \^ar\(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => \^ar\(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => \^ar\(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => \^ar\(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => \^ar\(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => \^ar\(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => \^ar\(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => \^ar\(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => \^ar\(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => \^ar\(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => \^ar\(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => \^ar\(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => \^ar\(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => \^ar\(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => \^ar\(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => \^ar\(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => \^ar\(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => \^ar\(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => \^ar\(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => \^ar\(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => \^ar\(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => \^ar\(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => \^ar\(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => \^ar\(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => \^ar\(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => \^ar\(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => \^ar\(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => \^ar\(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => \^ar\(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => \^ar\(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => \^ar\(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => \^ar\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0 is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    dht11_data_INST_0_i_1 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dht11_data_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0 is
begin
myip_DHT11_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0_S00_AXI
     port map (
      AR(0) => s00_axi_aresetn_0,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_wready_reg_0 => axi_wready_reg,
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_0,
      dht11_data_INST_0_i_1 => dht11_data_INST_0_i_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mblaze_DHT11_myip_DHT11_0_0,myip_DHT11_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_DHT11_v1_0,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal dht11_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
dht11_data_INST_0_i_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => inst_n_0,
      D => inst_n_6,
      Q => dht11_data_INST_0_i_1_n_0
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_DHT11_v1_0
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_wready_reg => s00_axi_wready,
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_INST_0_i_1_n_0,
      dht11_data_INST_0_i_1 => inst_n_6,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => inst_n_0,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
