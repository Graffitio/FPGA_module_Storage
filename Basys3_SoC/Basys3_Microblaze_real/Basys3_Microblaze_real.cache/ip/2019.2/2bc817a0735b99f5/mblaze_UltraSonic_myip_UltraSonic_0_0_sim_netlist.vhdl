-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Nov 22 10:42:23 2023
-- Host        : DESKTOP-CPLDPO1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mblaze_UltraSonic_myip_UltraSonic_0_0_sim_netlist.vhdl
-- Design      : mblaze_UltraSonic_myip_UltraSonic_0_0
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
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    count_usec_e : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \index_reg[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    echo : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg : in STD_LOGIC;
    data1 : in STD_LOGIC;
    count_usec_e_reg_0 : in STD_LOGIC;
    \temp_value_reg[15][0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal count_usec_e_i_2_n_0 : STD_LOGIC;
  signal cp_in_cur : STD_LOGIC;
  signal cp_in_old : STD_LOGIC;
  signal \temp_value[1][16]_i_2_n_0\ : STD_LOGIC;
begin
count_usec_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => count_usec_e_reg,
      I1 => data1,
      I2 => Q(1),
      I3 => count_usec_e_i_2_n_0,
      I4 => count_usec_e_reg_0,
      I5 => Q(0),
      O => count_usec_e
    );
count_usec_e_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE0A"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => count_usec_e_i_2_n_0
    );
cp_in_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => echo,
      Q => cp_in_cur
    );
cp_in_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => cp_in_cur,
      Q => cp_in_old
    );
\index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => cp_in_old,
      I1 => cp_in_cur,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(2),
      O => E(0)
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFFAABA55"
    )
        port map (
      I0 => Q(2),
      I1 => cp_in_cur,
      I2 => cp_in_old,
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => D(0)
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000DF0"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(3),
      O => D(1)
    );
\next_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005120"
    )
        port map (
      I0 => Q(2),
      I1 => cp_in_old,
      I2 => cp_in_cur,
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => D(2)
    );
\temp_value[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(3),
      I1 => \temp_value_reg[15][0]\(2),
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(0),
      I5 => \temp_value[1][16]_i_2_n_0\,
      O => \index_reg[3]\(0)
    );
\temp_value[10][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(0),
      I1 => \temp_value[1][16]_i_2_n_0\,
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[0]_0\(0)
    );
\temp_value[11][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(1),
      I2 => \temp_value_reg[15][0]\(0),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[1]_0\(0)
    );
\temp_value[12][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(1),
      I1 => s00_axi_aresetn,
      I2 => \temp_value_reg[15][0]\(0),
      I3 => \temp_value[1][16]_i_2_n_0\,
      I4 => \temp_value_reg[15][0]\(3),
      I5 => \temp_value_reg[15][0]\(2),
      O => \index_reg[1]_2\(0)
    );
\temp_value[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(0),
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[0]_2\(0)
    );
\temp_value[14][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(0),
      I1 => \temp_value[1][16]_i_2_n_0\,
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[0]\(0)
    );
\temp_value[15][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(1),
      I2 => \temp_value_reg[15][0]\(0),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[1]\(0)
    );
\temp_value[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \temp_value_reg[15][0]\(2),
      I2 => \temp_value_reg[15][0]\(3),
      I3 => \temp_value[1][16]_i_2_n_0\,
      I4 => \temp_value_reg[15][0]\(0),
      I5 => \temp_value_reg[15][0]\(1),
      O => s00_axi_aresetn_2(0)
    );
\temp_value[1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => cp_in_cur,
      I5 => cp_in_old,
      O => \temp_value[1][16]_i_2_n_0\
    );
\temp_value[2][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \temp_value_reg[15][0]\(2),
      I2 => \temp_value_reg[15][0]\(3),
      I3 => \temp_value_reg[15][0]\(0),
      I4 => \temp_value[1][16]_i_2_n_0\,
      I5 => \temp_value_reg[15][0]\(1),
      O => s00_axi_aresetn_1(0)
    );
\temp_value[3][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \temp_value_reg[15][0]\(2),
      I2 => \temp_value_reg[15][0]\(3),
      I3 => \temp_value[1][16]_i_2_n_0\,
      I4 => \temp_value_reg[15][0]\(1),
      I5 => \temp_value_reg[15][0]\(0),
      O => s00_axi_aresetn_0(0)
    );
\temp_value[4][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(3),
      I1 => \temp_value_reg[15][0]\(2),
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(0),
      I5 => \temp_value[1][16]_i_2_n_0\,
      O => \index_reg[3]_0\(0)
    );
\temp_value[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(0),
      I2 => \temp_value_reg[15][0]\(1),
      I3 => \temp_value_reg[15][0]\(2),
      I4 => \temp_value_reg[15][0]\(3),
      I5 => s00_axi_aresetn,
      O => \index_reg[0]_4\(0)
    );
\temp_value[6][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(0),
      I1 => \temp_value[1][16]_i_2_n_0\,
      I2 => \temp_value_reg[15][0]\(1),
      I3 => \temp_value_reg[15][0]\(2),
      I4 => \temp_value_reg[15][0]\(3),
      I5 => s00_axi_aresetn,
      O => \index_reg[0]_1\(0)
    );
\temp_value[7][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(1),
      I2 => \temp_value_reg[15][0]\(0),
      I3 => \temp_value_reg[15][0]\(2),
      I4 => \temp_value_reg[15][0]\(3),
      I5 => s00_axi_aresetn,
      O => \index_reg[1]_1\(0)
    );
\temp_value[8][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \temp_value_reg[15][0]\(1),
      I1 => s00_axi_aresetn,
      I2 => \temp_value_reg[15][0]\(0),
      I3 => \temp_value[1][16]_i_2_n_0\,
      I4 => \temp_value_reg[15][0]\(3),
      I5 => \temp_value_reg[15][0]\(2),
      O => \index_reg[1]_3\(0)
    );
\temp_value[9][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \temp_value[1][16]_i_2_n_0\,
      I1 => \temp_value_reg[15][0]\(0),
      I2 => \temp_value_reg[15][0]\(1),
      I3 => s00_axi_aresetn,
      I4 => \temp_value_reg[15][0]\(2),
      I5 => \temp_value_reg[15][0]\(3),
      O => \index_reg[0]_3\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    cp_in_cur_reg_0 : out STD_LOGIC;
    clk_usec : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \count_usec_reg[16]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 is
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
  signal \count_usec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal cp_in_cur : STD_LOGIC;
  signal cp_in_cur_i_2_n_0 : STD_LOGIC;
  signal cp_in_old : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal \NLW_count_usec_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_usec_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_usec[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sum_value[20]_i_2\ : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
\count_usec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => cp_in_cur,
      I1 => cp_in_old,
      I2 => \count_usec_reg[16]\,
      O => cp_in_cur_reg_0
    );
\count_usec[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(0),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[0]_i_3_n_0\
    );
\count_usec[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(3),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[0]_i_4_n_0\
    );
\count_usec[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(2),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[0]_i_5_n_0\
    );
\count_usec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(1),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[0]_i_6_n_0\
    );
\count_usec[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4C"
    )
        port map (
      I0 => D(0),
      I1 => \count_usec_reg[16]\,
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[0]_i_7_n_0\
    );
\count_usec[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(15),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[12]_i_2_n_0\
    );
\count_usec[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(14),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[12]_i_3_n_0\
    );
\count_usec[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(13),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[12]_i_4_n_0\
    );
\count_usec[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(12),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[12]_i_5_n_0\
    );
\count_usec[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(16),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[16]_i_2_n_0\
    );
\count_usec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(7),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[4]_i_2_n_0\
    );
\count_usec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(6),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[4]_i_3_n_0\
    );
\count_usec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(5),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[4]_i_4_n_0\
    );
\count_usec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(4),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[4]_i_5_n_0\
    );
\count_usec[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(11),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[8]_i_2_n_0\
    );
\count_usec[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(10),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[8]_i_3_n_0\
    );
\count_usec[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(9),
      I2 => cp_in_old,
      I3 => cp_in_cur,
      O => \count_usec[8]_i_4_n_0\
    );
\count_usec[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \count_usec_reg[16]\,
      I1 => D(8),
      I2 => cp_in_old,
      I3 => cp_in_cur,
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
      O(3 downto 0) => count_usec_e_reg_1(3 downto 0),
      S(3) => \count_usec[12]_i_2_n_0\,
      S(2) => \count_usec[12]_i_3_n_0\,
      S(1) => \count_usec[12]_i_4_n_0\,
      S(0) => \count_usec[12]_i_5_n_0\
    );
\count_usec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_usec_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_usec_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => count_usec_e_reg_2(0),
      S(3 downto 1) => B"000",
      S(0) => \count_usec[16]_i_2_n_0\
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
      O(3 downto 0) => count_usec_e_reg(3 downto 0),
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
      O(3 downto 0) => count_usec_e_reg_0(3 downto 0),
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
\sum_value[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cp_in_old,
      I1 => cp_in_cur,
      O => clk_usec
    );
trig_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
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
    clk_usec : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    count_usec_e_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \count_usec_reg[16]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_10nsec[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_10nsec[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_10nsec[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_10nsec_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_10nsec[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_10nsec[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_10nsec[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_10nsec[6]_i_2\ : label is "soft_lutpair2";
begin
  AR(0) <= \^ar\(0);
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
      INIT => X"1540"
    )
        port map (
      I0 => \cnt_10nsec[4]_i_2_n_0\,
      I1 => cnt_10nsec_reg(0),
      I2 => cnt_10nsec_reg(1),
      I3 => cnt_10nsec_reg(2),
      O => p_0_in(2)
    );
\cnt_10nsec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \cnt_10nsec[4]_i_2_n_0\,
      I1 => cnt_10nsec_reg(1),
      I2 => cnt_10nsec_reg(0),
      I3 => cnt_10nsec_reg(2),
      I4 => cnt_10nsec_reg(3),
      O => p_0_in(3)
    );
\cnt_10nsec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => cnt_10nsec_reg(3),
      I1 => cnt_10nsec_reg(2),
      I2 => cnt_10nsec_reg(0),
      I3 => cnt_10nsec_reg(1),
      I4 => cnt_10nsec_reg(4),
      I5 => \cnt_10nsec[4]_i_2_n_0\,
      O => p_0_in(4)
    );
\cnt_10nsec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD000000000000"
    )
        port map (
      I0 => \cnt_10nsec[6]_i_2_n_0\,
      I1 => cnt_10nsec_reg(4),
      I2 => cnt_10nsec_reg(3),
      I3 => cnt_10nsec_reg(2),
      I4 => cnt_10nsec_reg(6),
      I5 => cnt_10nsec_reg(5),
      O => \cnt_10nsec[4]_i_2_n_0\
    );
\cnt_10nsec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222A52222222"
    )
        port map (
      I0 => cnt_10nsec_reg(5),
      I1 => cnt_10nsec_reg(6),
      I2 => cnt_10nsec_reg(2),
      I3 => cnt_10nsec_reg(3),
      I4 => cnt_10nsec_reg(4),
      I5 => \cnt_10nsec[6]_i_2_n_0\,
      O => p_0_in(5)
    );
\cnt_10nsec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF02FF40000000"
    )
        port map (
      I0 => \cnt_10nsec[6]_i_2_n_0\,
      I1 => cnt_10nsec_reg(2),
      I2 => cnt_10nsec_reg(3),
      I3 => cnt_10nsec_reg(5),
      I4 => cnt_10nsec_reg(4),
      I5 => cnt_10nsec_reg(6),
      O => \cnt_10nsec[6]_i_1_n_0\
    );
\cnt_10nsec[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
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
      D => p_0_in(5),
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
edg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0
     port map (
      AR(0) => \^ar\(0),
      D(16 downto 0) => D(16 downto 0),
      O(3 downto 0) => O(3 downto 0),
      Q(6 downto 0) => cnt_10nsec_reg(6 downto 0),
      clk_usec => clk_usec,
      count_usec_e_reg(3 downto 0) => count_usec_e_reg(3 downto 0),
      count_usec_e_reg_0(3 downto 0) => count_usec_e_reg_0(3 downto 0),
      count_usec_e_reg_1(3 downto 0) => count_usec_e_reg_1(3 downto 0),
      count_usec_e_reg_2(0) => count_usec_e_reg_2(0),
      \count_usec_reg[16]\ => \count_usec_reg[16]\,
      cp_in_cur_reg_0 => cp_in_cur_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UltraSonic_Profsr is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    trig : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \distance_cm_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    echo : in STD_LOGIC;
    trig_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UltraSonic_Profsr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UltraSonic_Profsr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_usec : STD_LOGIC;
  signal \count_usec_e__0\ : STD_LOGIC;
  signal count_usec_e_n_0 : STD_LOGIC;
  signal count_usec_e_reg_n_0 : STD_LOGIC;
  signal count_usec_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^data1\ : STD_LOGIC;
  signal \distance_cm[0]_i_10_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_11_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_13_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_14_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_15_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_16_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_17_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_18_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_19_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_20_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_21_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_23_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_24_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_25_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_26_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_27_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_28_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_29_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_30_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_31_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_32_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_33_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_35_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_36_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_37_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_38_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_39_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_40_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_41_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_42_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_44_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_45_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_46_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_47_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_48_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_49_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_4_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_50_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_51_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_53_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_54_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_55_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_56_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_57_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_58_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_59_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_5_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_60_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_61_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_62_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_6_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_7_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_8_n_0\ : STD_LOGIC;
  signal \distance_cm[0]_i_9_n_0\ : STD_LOGIC;
  signal \distance_cm[10]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_10_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_12_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_13_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_14_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_15_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_16_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_17_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_18_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_19_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_21_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_22_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_23_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_26_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_27_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_28_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_29_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_30_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_31_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_32_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_33_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_35_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_36_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_37_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_38_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_39_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_40_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_41_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_42_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_43_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_44_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_46_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_47_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_48_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_49_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_50_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_51_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_52_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_53_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_55_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_56_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_57_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_58_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_59_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_60_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_61_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_62_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_63_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_64_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_65_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_66_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_67_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_68_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_69_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_6_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_70_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_71_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_72_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_73_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_74_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_75_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_76_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_7_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_8_n_0\ : STD_LOGIC;
  signal \distance_cm[11]_i_9_n_0\ : STD_LOGIC;
  signal \distance_cm[1]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[2]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[3]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[3]_i_3_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_10_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_11_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_13_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_14_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_15_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_16_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_17_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_18_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_19_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_20_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_21_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_22_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_23_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_3_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_4_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_5_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_6_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_7_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_8_n_0\ : STD_LOGIC;
  signal \distance_cm[4]_i_9_n_0\ : STD_LOGIC;
  signal \distance_cm[5]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[6]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[7]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_10_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_11_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_12_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_3_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_4_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_5_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_6_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_7_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_8_n_0\ : STD_LOGIC;
  signal \distance_cm[8]_i_9_n_0\ : STD_LOGIC;
  signal \distance_cm[9]_i_1_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_22_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_34_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_43_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_52_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_52_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_52_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[0]_i_52_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_11_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_11_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_11_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_11_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_20_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_24_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_24_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_24_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_24_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_25_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_25_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_25_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_25_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_34_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_45_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_45_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_45_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_45_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_4_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_4_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_4_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_54_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_12_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \distance_cm_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal edg_echo_n_0 : STD_LOGIC;
  signal edg_echo_n_1 : STD_LOGIC;
  signal edg_echo_n_10 : STD_LOGIC;
  signal edg_echo_n_11 : STD_LOGIC;
  signal edg_echo_n_12 : STD_LOGIC;
  signal edg_echo_n_13 : STD_LOGIC;
  signal edg_echo_n_14 : STD_LOGIC;
  signal edg_echo_n_15 : STD_LOGIC;
  signal edg_echo_n_16 : STD_LOGIC;
  signal edg_echo_n_17 : STD_LOGIC;
  signal edg_echo_n_18 : STD_LOGIC;
  signal edg_echo_n_19 : STD_LOGIC;
  signal edg_echo_n_2 : STD_LOGIC;
  signal edg_echo_n_20 : STD_LOGIC;
  signal edg_echo_n_4 : STD_LOGIC;
  signal edg_echo_n_6 : STD_LOGIC;
  signal edg_echo_n_7 : STD_LOGIC;
  signal edg_echo_n_8 : STD_LOGIC;
  signal edg_echo_n_9 : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 20 downto 4 );
  signal \sum_value[11]_i_10_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_11_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_12_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_17_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_18_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_19_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_20_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_21_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_22_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_23_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_24_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_25_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_26_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_27_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_28_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_29_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_2_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_30_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_31_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_32_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_33_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_34_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_35_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_36_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_37_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_38_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_39_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_3_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_40_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_41_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_42_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_43_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_44_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_45_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_46_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_47_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_48_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_49_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_4_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_52_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_53_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_54_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_55_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_56_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_57_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_58_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_59_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_5_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_60_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_61_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_62_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_63_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_64_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_65_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_6_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_7_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_8_n_0\ : STD_LOGIC;
  signal \sum_value[11]_i_9_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_18_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_19_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_20_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_21_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_22_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_23_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_24_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_25_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_26_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_27_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_28_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_29_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_30_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_31_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_32_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_33_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_34_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_35_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_36_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_37_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_38_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_39_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_40_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_41_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_42_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_43_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_44_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_45_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_46_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_47_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_48_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_49_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_52_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_53_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_54_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_55_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_56_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_57_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_58_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_59_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_60_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_61_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_62_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_63_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_64_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_65_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_66_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_67_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum_value[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_11_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_12_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_13_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_18_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_19_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_20_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_21_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_22_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_23_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_24_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_25_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_26_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_27_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_28_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_29_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_2_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_30_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_31_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_32_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_33_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_34_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_35_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_36_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_37_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_38_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_39_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_3_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_40_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_41_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_42_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_43_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_44_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_45_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_46_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_47_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_48_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_49_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_4_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_50_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_51_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_52_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_53_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_54_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_57_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_58_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_59_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_5_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_60_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_61_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_62_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_63_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_64_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_65_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_66_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_67_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_68_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_69_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_6_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_70_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_71_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_72_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_7_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_8_n_0\ : STD_LOGIC;
  signal \sum_value[19]_i_9_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_10_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_11_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_12_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_13_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_14_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_15_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_16_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_17_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_18_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_19_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_20_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_21_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_26_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_27_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_28_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_29_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_30_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_31_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_32_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_33_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_34_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_35_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_36_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_37_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_38_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_39_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_3_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_40_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_41_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_42_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_43_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_44_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_45_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_46_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_47_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_8_n_0\ : STD_LOGIC;
  signal \sum_value[20]_i_9_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_10_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_11_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_12_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_13_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_15_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_16_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_17_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_18_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_19_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_20_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_21_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_25_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_26_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_27_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_28_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_29_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_30_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_31_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_32_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_33_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_34_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_35_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_36_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_37_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_38_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_39_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_40_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_41_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_42_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_43_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_44_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_45_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_46_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_47_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_48_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_49_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_50_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_51_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_52_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_53_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_54_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_6_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_7_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_8_n_0\ : STD_LOGIC;
  signal \sum_value[7]_i_9_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_13_n_7\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_14_n_7\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_15_n_7\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_16_n_7\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_50_n_7\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_0\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_1\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_2\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_3\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_4\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_5\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_6\ : STD_LOGIC;
  signal \sum_value_reg[11]_i_51_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_13_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_14_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_15_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_16_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_50_n_7\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_0\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_1\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_2\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_3\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_4\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_5\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_6\ : STD_LOGIC;
  signal \sum_value_reg[15]_i_51_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_10_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_10_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_10_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_10_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_14_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_15_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_16_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_17_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_55_n_7\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_0\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_1\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_2\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_3\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_4\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_5\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_6\ : STD_LOGIC;
  signal \sum_value_reg[19]_i_56_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_22_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_22_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_22_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_22_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_23_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_23_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_23_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_23_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_0\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_2\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_4\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_5\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_24_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_0\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_2\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_4\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_5\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_25_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_0\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_2\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_4\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_5\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_4_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_5_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_5_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_5_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_5_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_6_n_1\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_6_n_3\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_6_n_6\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_6_n_7\ : STD_LOGIC;
  signal \sum_value_reg[20]_i_7_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_4\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_5\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_6\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_14_n_7\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_4\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_5\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_6\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_22_n_7\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_4\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_5\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_6\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_23_n_7\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_3\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_4\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_5\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_6\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_24_n_7\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \sum_value_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal temp_value : STD_LOGIC;
  signal \temp_value_reg[0]_15\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[10]_9\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[11]_10\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[12]_11\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[13]_12\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[14]_13\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[15]_14\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[1]_0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[2]_1\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[3]_2\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[4]_3\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[5]_4\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[6]_5\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[7]_6\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[8]_7\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \temp_value_reg[9]_8\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal trig_i_4_n_0 : STD_LOGIC;
  signal trig_i_5_n_0 : STD_LOGIC;
  signal trig_i_6_n_0 : STD_LOGIC;
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
  signal usec_clk_n_3 : STD_LOGIC;
  signal usec_clk_n_4 : STD_LOGIC;
  signal usec_clk_n_5 : STD_LOGIC;
  signal usec_clk_n_6 : STD_LOGIC;
  signal usec_clk_n_7 : STD_LOGIC;
  signal usec_clk_n_8 : STD_LOGIC;
  signal usec_clk_n_9 : STD_LOGIC;
  signal \NLW_distance_cm_reg[0]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_distance_cm_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[0]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_distance_cm_reg[0]_i_52_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[11]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_distance_cm_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_distance_cm_reg[11]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_distance_cm_reg[11]_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[11]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_distance_cm_reg[11]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_distance_cm_reg[11]_i_45_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_distance_cm_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[19]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_value_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_value_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_value_reg[20]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_value_reg[20]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_value_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \distance_cm[0]_i_21\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \distance_cm[0]_i_23\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \distance_cm[0]_i_24\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \distance_cm[0]_i_25\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \distance_cm[0]_i_33\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \distance_cm[4]_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \distance_cm[4]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \distance_cm[4]_i_14\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \distance_cm[4]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \distance_cm[8]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \index[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \index[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[1]_i_1\ : label is "soft_lutpair4";
  attribute HLUTNM : string;
  attribute HLUTNM of \sum_value[11]_i_18\ : label is "lutpair54";
  attribute HLUTNM of \sum_value[11]_i_19\ : label is "lutpair53";
  attribute HLUTNM of \sum_value[11]_i_20\ : label is "lutpair52";
  attribute HLUTNM of \sum_value[11]_i_21\ : label is "lutpair51";
  attribute HLUTNM of \sum_value[11]_i_22\ : label is "lutpair55";
  attribute HLUTNM of \sum_value[11]_i_23\ : label is "lutpair54";
  attribute HLUTNM of \sum_value[11]_i_24\ : label is "lutpair53";
  attribute HLUTNM of \sum_value[11]_i_25\ : label is "lutpair52";
  attribute HLUTNM of \sum_value[11]_i_26\ : label is "lutpair70";
  attribute HLUTNM of \sum_value[11]_i_27\ : label is "lutpair69";
  attribute HLUTNM of \sum_value[11]_i_28\ : label is "lutpair68";
  attribute HLUTNM of \sum_value[11]_i_29\ : label is "lutpair67";
  attribute HLUTNM of \sum_value[11]_i_30\ : label is "lutpair71";
  attribute HLUTNM of \sum_value[11]_i_31\ : label is "lutpair70";
  attribute HLUTNM of \sum_value[11]_i_32\ : label is "lutpair69";
  attribute HLUTNM of \sum_value[11]_i_33\ : label is "lutpair68";
  attribute HLUTNM of \sum_value[11]_i_34\ : label is "lutpair86";
  attribute HLUTNM of \sum_value[11]_i_35\ : label is "lutpair85";
  attribute HLUTNM of \sum_value[11]_i_36\ : label is "lutpair84";
  attribute HLUTNM of \sum_value[11]_i_37\ : label is "lutpair83";
  attribute HLUTNM of \sum_value[11]_i_38\ : label is "lutpair87";
  attribute HLUTNM of \sum_value[11]_i_39\ : label is "lutpair86";
  attribute HLUTNM of \sum_value[11]_i_40\ : label is "lutpair85";
  attribute HLUTNM of \sum_value[11]_i_41\ : label is "lutpair84";
  attribute HLUTNM of \sum_value[11]_i_42\ : label is "lutpair38";
  attribute HLUTNM of \sum_value[11]_i_43\ : label is "lutpair37";
  attribute HLUTNM of \sum_value[11]_i_44\ : label is "lutpair36";
  attribute HLUTNM of \sum_value[11]_i_45\ : label is "lutpair35";
  attribute HLUTNM of \sum_value[11]_i_46\ : label is "lutpair39";
  attribute HLUTNM of \sum_value[11]_i_47\ : label is "lutpair38";
  attribute HLUTNM of \sum_value[11]_i_48\ : label is "lutpair37";
  attribute HLUTNM of \sum_value[11]_i_49\ : label is "lutpair36";
  attribute HLUTNM of \sum_value[11]_i_52\ : label is "lutpair18";
  attribute HLUTNM of \sum_value[11]_i_53\ : label is "lutpair17";
  attribute HLUTNM of \sum_value[11]_i_54\ : label is "lutpair16";
  attribute HLUTNM of \sum_value[11]_i_55\ : label is "lutpair19";
  attribute HLUTNM of \sum_value[11]_i_56\ : label is "lutpair18";
  attribute HLUTNM of \sum_value[11]_i_57\ : label is "lutpair17";
  attribute HLUTNM of \sum_value[11]_i_58\ : label is "lutpair16";
  attribute HLUTNM of \sum_value[11]_i_59\ : label is "lutpair2";
  attribute HLUTNM of \sum_value[11]_i_60\ : label is "lutpair1";
  attribute HLUTNM of \sum_value[11]_i_61\ : label is "lutpair0";
  attribute HLUTNM of \sum_value[11]_i_62\ : label is "lutpair3";
  attribute HLUTNM of \sum_value[11]_i_63\ : label is "lutpair2";
  attribute HLUTNM of \sum_value[11]_i_64\ : label is "lutpair1";
  attribute HLUTNM of \sum_value[11]_i_65\ : label is "lutpair0";
  attribute HLUTNM of \sum_value[15]_i_18\ : label is "lutpair58";
  attribute HLUTNM of \sum_value[15]_i_19\ : label is "lutpair57";
  attribute HLUTNM of \sum_value[15]_i_20\ : label is "lutpair56";
  attribute HLUTNM of \sum_value[15]_i_21\ : label is "lutpair55";
  attribute HLUTNM of \sum_value[15]_i_22\ : label is "lutpair59";
  attribute HLUTNM of \sum_value[15]_i_23\ : label is "lutpair58";
  attribute HLUTNM of \sum_value[15]_i_24\ : label is "lutpair57";
  attribute HLUTNM of \sum_value[15]_i_25\ : label is "lutpair56";
  attribute HLUTNM of \sum_value[15]_i_26\ : label is "lutpair74";
  attribute HLUTNM of \sum_value[15]_i_27\ : label is "lutpair73";
  attribute HLUTNM of \sum_value[15]_i_28\ : label is "lutpair72";
  attribute HLUTNM of \sum_value[15]_i_29\ : label is "lutpair71";
  attribute HLUTNM of \sum_value[15]_i_30\ : label is "lutpair75";
  attribute HLUTNM of \sum_value[15]_i_31\ : label is "lutpair74";
  attribute HLUTNM of \sum_value[15]_i_32\ : label is "lutpair73";
  attribute HLUTNM of \sum_value[15]_i_33\ : label is "lutpair72";
  attribute HLUTNM of \sum_value[15]_i_34\ : label is "lutpair90";
  attribute HLUTNM of \sum_value[15]_i_35\ : label is "lutpair89";
  attribute HLUTNM of \sum_value[15]_i_36\ : label is "lutpair88";
  attribute HLUTNM of \sum_value[15]_i_37\ : label is "lutpair87";
  attribute HLUTNM of \sum_value[15]_i_38\ : label is "lutpair91";
  attribute HLUTNM of \sum_value[15]_i_39\ : label is "lutpair90";
  attribute HLUTNM of \sum_value[15]_i_40\ : label is "lutpair89";
  attribute HLUTNM of \sum_value[15]_i_41\ : label is "lutpair88";
  attribute HLUTNM of \sum_value[15]_i_42\ : label is "lutpair42";
  attribute HLUTNM of \sum_value[15]_i_43\ : label is "lutpair41";
  attribute HLUTNM of \sum_value[15]_i_44\ : label is "lutpair40";
  attribute HLUTNM of \sum_value[15]_i_45\ : label is "lutpair39";
  attribute HLUTNM of \sum_value[15]_i_46\ : label is "lutpair43";
  attribute HLUTNM of \sum_value[15]_i_47\ : label is "lutpair42";
  attribute HLUTNM of \sum_value[15]_i_48\ : label is "lutpair41";
  attribute HLUTNM of \sum_value[15]_i_49\ : label is "lutpair40";
  attribute HLUTNM of \sum_value[15]_i_52\ : label is "lutpair22";
  attribute HLUTNM of \sum_value[15]_i_53\ : label is "lutpair21";
  attribute HLUTNM of \sum_value[15]_i_54\ : label is "lutpair20";
  attribute HLUTNM of \sum_value[15]_i_55\ : label is "lutpair19";
  attribute HLUTNM of \sum_value[15]_i_56\ : label is "lutpair23";
  attribute HLUTNM of \sum_value[15]_i_57\ : label is "lutpair22";
  attribute HLUTNM of \sum_value[15]_i_58\ : label is "lutpair21";
  attribute HLUTNM of \sum_value[15]_i_59\ : label is "lutpair20";
  attribute HLUTNM of \sum_value[15]_i_60\ : label is "lutpair6";
  attribute HLUTNM of \sum_value[15]_i_61\ : label is "lutpair5";
  attribute HLUTNM of \sum_value[15]_i_62\ : label is "lutpair4";
  attribute HLUTNM of \sum_value[15]_i_63\ : label is "lutpair3";
  attribute HLUTNM of \sum_value[15]_i_64\ : label is "lutpair7";
  attribute HLUTNM of \sum_value[15]_i_65\ : label is "lutpair6";
  attribute HLUTNM of \sum_value[15]_i_66\ : label is "lutpair5";
  attribute HLUTNM of \sum_value[15]_i_67\ : label is "lutpair4";
  attribute SOFT_HLUTNM of \sum_value[19]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum_value[19]_i_19\ : label is "soft_lutpair5";
  attribute HLUTNM of \sum_value[19]_i_20\ : label is "lutpair47";
  attribute HLUTNM of \sum_value[19]_i_23\ : label is "lutpair62";
  attribute HLUTNM of \sum_value[19]_i_24\ : label is "lutpair61";
  attribute HLUTNM of \sum_value[19]_i_25\ : label is "lutpair60";
  attribute HLUTNM of \sum_value[19]_i_26\ : label is "lutpair59";
  attribute HLUTNM of \sum_value[19]_i_27\ : label is "lutpair63";
  attribute HLUTNM of \sum_value[19]_i_28\ : label is "lutpair62";
  attribute HLUTNM of \sum_value[19]_i_29\ : label is "lutpair61";
  attribute HLUTNM of \sum_value[19]_i_30\ : label is "lutpair60";
  attribute HLUTNM of \sum_value[19]_i_31\ : label is "lutpair78";
  attribute HLUTNM of \sum_value[19]_i_32\ : label is "lutpair77";
  attribute HLUTNM of \sum_value[19]_i_33\ : label is "lutpair76";
  attribute HLUTNM of \sum_value[19]_i_34\ : label is "lutpair75";
  attribute HLUTNM of \sum_value[19]_i_35\ : label is "lutpair79";
  attribute HLUTNM of \sum_value[19]_i_36\ : label is "lutpair78";
  attribute HLUTNM of \sum_value[19]_i_37\ : label is "lutpair77";
  attribute HLUTNM of \sum_value[19]_i_38\ : label is "lutpair76";
  attribute HLUTNM of \sum_value[19]_i_39\ : label is "lutpair94";
  attribute HLUTNM of \sum_value[19]_i_40\ : label is "lutpair93";
  attribute HLUTNM of \sum_value[19]_i_41\ : label is "lutpair92";
  attribute HLUTNM of \sum_value[19]_i_42\ : label is "lutpair91";
  attribute HLUTNM of \sum_value[19]_i_43\ : label is "lutpair95";
  attribute HLUTNM of \sum_value[19]_i_44\ : label is "lutpair94";
  attribute HLUTNM of \sum_value[19]_i_45\ : label is "lutpair93";
  attribute HLUTNM of \sum_value[19]_i_46\ : label is "lutpair92";
  attribute HLUTNM of \sum_value[19]_i_47\ : label is "lutpair46";
  attribute HLUTNM of \sum_value[19]_i_48\ : label is "lutpair45";
  attribute HLUTNM of \sum_value[19]_i_49\ : label is "lutpair44";
  attribute HLUTNM of \sum_value[19]_i_50\ : label is "lutpair43";
  attribute HLUTNM of \sum_value[19]_i_51\ : label is "lutpair47";
  attribute HLUTNM of \sum_value[19]_i_52\ : label is "lutpair46";
  attribute HLUTNM of \sum_value[19]_i_53\ : label is "lutpair45";
  attribute HLUTNM of \sum_value[19]_i_54\ : label is "lutpair44";
  attribute HLUTNM of \sum_value[19]_i_57\ : label is "lutpair26";
  attribute HLUTNM of \sum_value[19]_i_58\ : label is "lutpair25";
  attribute HLUTNM of \sum_value[19]_i_59\ : label is "lutpair24";
  attribute HLUTNM of \sum_value[19]_i_60\ : label is "lutpair23";
  attribute HLUTNM of \sum_value[19]_i_61\ : label is "lutpair27";
  attribute HLUTNM of \sum_value[19]_i_62\ : label is "lutpair26";
  attribute HLUTNM of \sum_value[19]_i_63\ : label is "lutpair25";
  attribute HLUTNM of \sum_value[19]_i_64\ : label is "lutpair24";
  attribute HLUTNM of \sum_value[19]_i_65\ : label is "lutpair10";
  attribute HLUTNM of \sum_value[19]_i_66\ : label is "lutpair9";
  attribute HLUTNM of \sum_value[19]_i_67\ : label is "lutpair8";
  attribute HLUTNM of \sum_value[19]_i_68\ : label is "lutpair7";
  attribute HLUTNM of \sum_value[19]_i_69\ : label is "lutpair11";
  attribute HLUTNM of \sum_value[19]_i_70\ : label is "lutpair10";
  attribute HLUTNM of \sum_value[19]_i_71\ : label is "lutpair9";
  attribute HLUTNM of \sum_value[19]_i_72\ : label is "lutpair8";
  attribute HLUTNM of \sum_value[20]_i_11\ : label is "lutpair95";
  attribute HLUTNM of \sum_value[20]_i_16\ : label is "lutpair79";
  attribute HLUTNM of \sum_value[20]_i_19\ : label is "lutpair63";
  attribute HLUTNM of \sum_value[20]_i_26\ : label is "lutpair31";
  attribute HLUTNM of \sum_value[20]_i_29\ : label is "lutpair15";
  attribute HLUTNM of \sum_value[20]_i_32\ : label is "lutpair30";
  attribute HLUTNM of \sum_value[20]_i_33\ : label is "lutpair29";
  attribute HLUTNM of \sum_value[20]_i_34\ : label is "lutpair28";
  attribute HLUTNM of \sum_value[20]_i_35\ : label is "lutpair27";
  attribute HLUTNM of \sum_value[20]_i_36\ : label is "lutpair31";
  attribute HLUTNM of \sum_value[20]_i_37\ : label is "lutpair30";
  attribute HLUTNM of \sum_value[20]_i_38\ : label is "lutpair29";
  attribute HLUTNM of \sum_value[20]_i_39\ : label is "lutpair28";
  attribute HLUTNM of \sum_value[20]_i_40\ : label is "lutpair14";
  attribute HLUTNM of \sum_value[20]_i_41\ : label is "lutpair13";
  attribute HLUTNM of \sum_value[20]_i_42\ : label is "lutpair12";
  attribute HLUTNM of \sum_value[20]_i_43\ : label is "lutpair11";
  attribute HLUTNM of \sum_value[20]_i_44\ : label is "lutpair15";
  attribute HLUTNM of \sum_value[20]_i_45\ : label is "lutpair14";
  attribute HLUTNM of \sum_value[20]_i_46\ : label is "lutpair13";
  attribute HLUTNM of \sum_value[20]_i_47\ : label is "lutpair12";
  attribute HLUTNM of \sum_value[7]_i_27\ : label is "lutpair34";
  attribute HLUTNM of \sum_value[7]_i_28\ : label is "lutpair33";
  attribute HLUTNM of \sum_value[7]_i_29\ : label is "lutpair32";
  attribute HLUTNM of \sum_value[7]_i_30\ : label is "lutpair35";
  attribute HLUTNM of \sum_value[7]_i_31\ : label is "lutpair34";
  attribute HLUTNM of \sum_value[7]_i_32\ : label is "lutpair33";
  attribute HLUTNM of \sum_value[7]_i_33\ : label is "lutpair32";
  attribute HLUTNM of \sum_value[7]_i_34\ : label is "lutpair50";
  attribute HLUTNM of \sum_value[7]_i_35\ : label is "lutpair49";
  attribute HLUTNM of \sum_value[7]_i_36\ : label is "lutpair48";
  attribute HLUTNM of \sum_value[7]_i_37\ : label is "lutpair51";
  attribute HLUTNM of \sum_value[7]_i_38\ : label is "lutpair50";
  attribute HLUTNM of \sum_value[7]_i_39\ : label is "lutpair49";
  attribute HLUTNM of \sum_value[7]_i_40\ : label is "lutpair48";
  attribute HLUTNM of \sum_value[7]_i_41\ : label is "lutpair66";
  attribute HLUTNM of \sum_value[7]_i_42\ : label is "lutpair65";
  attribute HLUTNM of \sum_value[7]_i_43\ : label is "lutpair64";
  attribute HLUTNM of \sum_value[7]_i_44\ : label is "lutpair67";
  attribute HLUTNM of \sum_value[7]_i_45\ : label is "lutpair66";
  attribute HLUTNM of \sum_value[7]_i_46\ : label is "lutpair65";
  attribute HLUTNM of \sum_value[7]_i_47\ : label is "lutpair64";
  attribute HLUTNM of \sum_value[7]_i_48\ : label is "lutpair82";
  attribute HLUTNM of \sum_value[7]_i_49\ : label is "lutpair81";
  attribute HLUTNM of \sum_value[7]_i_50\ : label is "lutpair80";
  attribute HLUTNM of \sum_value[7]_i_51\ : label is "lutpair83";
  attribute HLUTNM of \sum_value[7]_i_52\ : label is "lutpair82";
  attribute HLUTNM of \sum_value[7]_i_53\ : label is "lutpair81";
  attribute HLUTNM of \sum_value[7]_i_54\ : label is "lutpair80";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  SR(0) <= \^sr\(0);
  data1 <= \^data1\;
count_usec_e: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => count_usec_e_n_0
    );
count_usec_e_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \count_usec_e__0\,
      Q => count_usec_e_reg_n_0
    );
\count_usec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_6,
      Q => count_usec_reg(0)
    );
\count_usec_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_12,
      Q => count_usec_reg(10)
    );
\count_usec_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_11,
      Q => count_usec_reg(11)
    );
\count_usec_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_18,
      Q => count_usec_reg(12)
    );
\count_usec_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_17,
      Q => count_usec_reg(13)
    );
\count_usec_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_16,
      Q => count_usec_reg(14)
    );
\count_usec_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_15,
      Q => count_usec_reg(15)
    );
\count_usec_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_19,
      Q => count_usec_reg(16)
    );
\count_usec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_5,
      Q => count_usec_reg(1)
    );
\count_usec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_4,
      Q => count_usec_reg(2)
    );
\count_usec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_3,
      Q => count_usec_reg(3)
    );
\count_usec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_10,
      Q => count_usec_reg(4)
    );
\count_usec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_9,
      Q => count_usec_reg(5)
    );
\count_usec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_8,
      Q => count_usec_reg(6)
    );
\count_usec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_7,
      Q => count_usec_reg(7)
    );
\count_usec_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_14,
      Q => count_usec_reg(8)
    );
\count_usec_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_1,
      CLR => \^sr\(0),
      D => usec_clk_n_13,
      Q => count_usec_reg(9)
    );
\distance_cm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[0]_i_2_n_4\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[3]_i_2_n_7\,
      O => \distance_cm[0]_i_1_n_0\
    );
\distance_cm[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[0]_i_6_n_0\,
      I1 => \distance_cm[0]_i_23_n_0\,
      I2 => p_0_in_0(7),
      I3 => \distance_cm_reg[0]_i_22_n_5\,
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(8),
      O => \distance_cm[0]_i_10_n_0\
    );
\distance_cm[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[0]_i_7_n_0\,
      I1 => \distance_cm[0]_i_24_n_0\,
      I2 => p_0_in_0(6),
      I3 => \distance_cm_reg[0]_i_22_n_6\,
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(7),
      O => \distance_cm[0]_i_11_n_0\
    );
\distance_cm[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[0]_i_33_n_0\,
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(0),
      I4 => \distance_cm_reg[0]_i_34_n_4\,
      O => \distance_cm[0]_i_13_n_0\
    );
\distance_cm[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(0),
      I2 => \distance_cm_reg[0]_i_34_n_4\,
      I3 => p_0_in_0(4),
      I4 => \distance_cm[0]_i_33_n_0\,
      O => \distance_cm[0]_i_14_n_0\
    );
\distance_cm[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \distance_cm_reg[0]_i_34_n_4\,
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(3),
      O => \distance_cm[0]_i_15_n_0\
    );
\distance_cm[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \distance_cm_reg[0]_i_34_n_6\,
      I2 => p_0_in_0(1),
      O => \distance_cm[0]_i_16_n_0\
    );
\distance_cm[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[0]_i_13_n_0\,
      I1 => \distance_cm[0]_i_25_n_0\,
      I2 => p_0_in_0(5),
      I3 => \distance_cm_reg[0]_i_22_n_7\,
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(6),
      O => \distance_cm[0]_i_17_n_0\
    );
\distance_cm[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966669666969699"
    )
        port map (
      I0 => \distance_cm[0]_i_33_n_0\,
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(5),
      I3 => \distance_cm_reg[0]_i_34_n_4\,
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \distance_cm[0]_i_18_n_0\
    );
\distance_cm[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => \distance_cm[0]_i_15_n_0\,
      I1 => p_0_in_0(2),
      I2 => \distance_cm_reg[0]_i_34_n_5\,
      I3 => p_0_in_0(4),
      O => \distance_cm[0]_i_19_n_0\
    );
\distance_cm[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \distance_cm_reg[0]_i_34_n_6\,
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(4),
      I4 => \distance_cm_reg[0]_i_34_n_5\,
      I5 => p_0_in_0(2),
      O => \distance_cm[0]_i_20_n_0\
    );
\distance_cm[0]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(10),
      I1 => \distance_cm_reg[4]_i_12_n_7\,
      I2 => p_0_in_0(5),
      O => \distance_cm[0]_i_21_n_0\
    );
\distance_cm[0]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => \distance_cm_reg[0]_i_22_n_4\,
      I2 => p_0_in_0(4),
      O => \distance_cm[0]_i_23_n_0\
    );
\distance_cm[0]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => \distance_cm_reg[0]_i_22_n_5\,
      I2 => p_0_in_0(3),
      O => \distance_cm[0]_i_24_n_0\
    );
\distance_cm[0]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => \distance_cm_reg[0]_i_22_n_6\,
      I2 => p_0_in_0(2),
      O => \distance_cm[0]_i_25_n_0\
    );
\distance_cm[0]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \distance_cm_reg[0]_i_34_n_7\,
      I2 => p_0_in_0(0),
      O => \distance_cm[0]_i_26_n_0\
    );
\distance_cm[0]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \distance_cm_reg[0]_i_34_n_7\,
      I2 => p_0_in_0(0),
      O => \distance_cm[0]_i_27_n_0\
    );
\distance_cm[0]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[0]_i_43_n_5\,
      I1 => p_0_in_0(0),
      O => \distance_cm[0]_i_28_n_0\
    );
\distance_cm[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \distance_cm_reg[0]_i_34_n_7\,
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => \distance_cm_reg[0]_i_34_n_6\,
      I5 => p_0_in_0(1),
      O => \distance_cm[0]_i_29_n_0\
    );
\distance_cm[0]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \distance_cm_reg[0]_i_34_n_7\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \distance_cm_reg[0]_i_43_n_4\,
      O => \distance_cm[0]_i_30_n_0\
    );
\distance_cm[0]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \distance_cm_reg[0]_i_43_n_5\,
      I2 => \distance_cm_reg[0]_i_43_n_4\,
      I3 => p_0_in_0(1),
      O => \distance_cm[0]_i_31_n_0\
    );
\distance_cm[0]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \distance_cm_reg[0]_i_43_n_5\,
      O => \distance_cm[0]_i_32_n_0\
    );
\distance_cm[0]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => \distance_cm_reg[0]_i_22_n_7\,
      I2 => p_0_in_0(1),
      O => \distance_cm[0]_i_33_n_0\
    );
\distance_cm[0]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => p_0_in_0(10),
      I2 => p_0_in_0(12),
      O => \distance_cm[0]_i_35_n_0\
    );
\distance_cm[0]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => p_0_in_0(9),
      I2 => p_0_in_0(11),
      O => \distance_cm[0]_i_36_n_0\
    );
\distance_cm[0]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(12),
      I1 => p_0_in_0(8),
      I2 => p_0_in_0(10),
      O => \distance_cm[0]_i_37_n_0\
    );
\distance_cm[0]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => p_0_in_0(7),
      I2 => p_0_in_0(9),
      O => \distance_cm[0]_i_38_n_0\
    );
\distance_cm[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(12),
      I1 => p_0_in_0(10),
      I2 => p_0_in_0(14),
      I3 => p_0_in_0(15),
      I4 => p_0_in_0(11),
      I5 => p_0_in_0(13),
      O => \distance_cm[0]_i_39_n_0\
    );
\distance_cm[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[0]_i_21_n_0\,
      I1 => p_0_in_0(8),
      I2 => p_0_in_0(9),
      I3 => p_0_in_0(4),
      I4 => \distance_cm_reg[0]_i_22_n_4\,
      O => \distance_cm[0]_i_4_n_0\
    );
\distance_cm[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => p_0_in_0(9),
      I2 => p_0_in_0(13),
      I3 => p_0_in_0(14),
      I4 => p_0_in_0(10),
      I5 => p_0_in_0(12),
      O => \distance_cm[0]_i_40_n_0\
    );
\distance_cm[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(10),
      I1 => p_0_in_0(8),
      I2 => p_0_in_0(12),
      I3 => p_0_in_0(13),
      I4 => p_0_in_0(9),
      I5 => p_0_in_0(11),
      O => \distance_cm[0]_i_41_n_0\
    );
\distance_cm[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => p_0_in_0(7),
      I2 => p_0_in_0(11),
      I3 => p_0_in_0(12),
      I4 => p_0_in_0(8),
      I5 => p_0_in_0(10),
      O => \distance_cm[0]_i_42_n_0\
    );
\distance_cm[0]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(10),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(8),
      O => \distance_cm[0]_i_44_n_0\
    );
\distance_cm[0]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => p_0_in_0(5),
      I2 => p_0_in_0(7),
      O => \distance_cm[0]_i_45_n_0\
    );
\distance_cm[0]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(6),
      O => \distance_cm[0]_i_46_n_0\
    );
\distance_cm[0]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(5),
      O => \distance_cm[0]_i_47_n_0\
    );
\distance_cm[0]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(10),
      I3 => p_0_in_0(11),
      I4 => p_0_in_0(7),
      I5 => p_0_in_0(9),
      O => \distance_cm[0]_i_48_n_0\
    );
\distance_cm[0]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => p_0_in_0(5),
      I2 => p_0_in_0(9),
      I3 => p_0_in_0(10),
      I4 => p_0_in_0(6),
      I5 => p_0_in_0(8),
      O => \distance_cm[0]_i_49_n_0\
    );
\distance_cm[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[0]_i_23_n_0\,
      I1 => p_0_in_0(7),
      I2 => p_0_in_0(8),
      I3 => p_0_in_0(3),
      I4 => \distance_cm_reg[0]_i_22_n_5\,
      O => \distance_cm[0]_i_5_n_0\
    );
\distance_cm[0]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(8),
      I3 => p_0_in_0(9),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(7),
      O => \distance_cm[0]_i_50_n_0\
    );
\distance_cm[0]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(8),
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(6),
      O => \distance_cm[0]_i_51_n_0\
    );
\distance_cm[0]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(4),
      O => \distance_cm[0]_i_53_n_0\
    );
\distance_cm[0]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      O => \distance_cm[0]_i_54_n_0\
    );
\distance_cm[0]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      O => \distance_cm[0]_i_55_n_0\
    );
\distance_cm[0]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(6),
      I3 => p_0_in_0(7),
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(5),
      O => \distance_cm[0]_i_56_n_0\
    );
\distance_cm[0]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(6),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(4),
      O => \distance_cm[0]_i_57_n_0\
    );
\distance_cm[0]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(4),
      I4 => p_0_in_0(0),
      O => \distance_cm[0]_i_58_n_0\
    );
\distance_cm[0]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(2),
      O => \distance_cm[0]_i_59_n_0\
    );
\distance_cm[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[0]_i_24_n_0\,
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(2),
      I4 => \distance_cm_reg[0]_i_22_n_6\,
      O => \distance_cm[0]_i_6_n_0\
    );
\distance_cm[0]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(3),
      O => \distance_cm[0]_i_60_n_0\
    );
\distance_cm[0]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      O => \distance_cm[0]_i_61_n_0\
    );
\distance_cm[0]_i_62\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0(1),
      O => \distance_cm[0]_i_62_n_0\
    );
\distance_cm[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[0]_i_25_n_0\,
      I1 => p_0_in_0(5),
      I2 => p_0_in_0(6),
      I3 => p_0_in_0(1),
      I4 => \distance_cm_reg[0]_i_22_n_7\,
      O => \distance_cm[0]_i_7_n_0\
    );
\distance_cm[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[0]_i_4_n_0\,
      I1 => \distance_cm[4]_i_15_n_0\,
      I2 => p_0_in_0(9),
      I3 => \distance_cm_reg[4]_i_12_n_7\,
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(10),
      O => \distance_cm[0]_i_8_n_0\
    );
\distance_cm[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[0]_i_5_n_0\,
      I1 => \distance_cm[0]_i_21_n_0\,
      I2 => p_0_in_0(8),
      I3 => \distance_cm_reg[0]_i_22_n_4\,
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(9),
      O => \distance_cm[0]_i_9_n_0\
    );
\distance_cm[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_6\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[11]_i_5_n_5\,
      O => \distance_cm[10]_i_1_n_0\
    );
\distance_cm[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_5\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[11]_i_5_n_4\,
      O => \distance_cm[11]_i_1_n_0\
    );
\distance_cm[11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC93"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => p_0_in_0(15),
      I2 => \distance_cm_reg[11]_i_24_n_1\,
      I3 => p_0_in_0(14),
      O => \distance_cm[11]_i_10_n_0\
    );
\distance_cm[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_4_n_7\,
      I1 => p_0_in_0(15),
      O => \distance_cm[11]_i_12_n_0\
    );
\distance_cm[11]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_20_n_4\,
      I1 => p_0_in_0(14),
      O => \distance_cm[11]_i_13_n_0\
    );
\distance_cm[11]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_20_n_5\,
      I1 => p_0_in_0(13),
      O => \distance_cm[11]_i_14_n_0\
    );
\distance_cm[11]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_20_n_6\,
      I1 => p_0_in_0(12),
      O => \distance_cm[11]_i_15_n_0\
    );
\distance_cm[11]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => \distance_cm_reg[11]_i_4_n_7\,
      I2 => \distance_cm_reg[11]_i_4_n_6\,
      I3 => p_0_in_0(16),
      O => \distance_cm[11]_i_16_n_0\
    );
\distance_cm[11]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => \distance_cm_reg[11]_i_20_n_4\,
      I2 => \distance_cm_reg[11]_i_4_n_7\,
      I3 => p_0_in_0(15),
      O => \distance_cm[11]_i_17_n_0\
    );
\distance_cm[11]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => \distance_cm_reg[11]_i_20_n_5\,
      I2 => \distance_cm_reg[11]_i_20_n_4\,
      I3 => p_0_in_0(14),
      O => \distance_cm[11]_i_18_n_0\
    );
\distance_cm[11]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(12),
      I1 => \distance_cm_reg[11]_i_20_n_6\,
      I2 => \distance_cm_reg[11]_i_20_n_5\,
      I3 => p_0_in_0(13),
      O => \distance_cm[11]_i_19_n_0\
    );
\distance_cm[11]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_4\,
      I1 => \distance_cm_reg[11]_i_2_n_5\,
      O => \distance_cm[11]_i_21_n_0\
    );
\distance_cm[11]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_7\,
      I1 => \distance_cm_reg[11]_i_2_n_6\,
      O => \distance_cm[11]_i_22_n_0\
    );
\distance_cm[11]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_5\,
      I1 => \distance_cm_reg[8]_i_2_n_4\,
      I2 => \distance_cm_reg[11]_i_2_n_7\,
      O => \distance_cm[11]_i_23_n_0\
    );
\distance_cm[11]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_20_n_7\,
      I1 => p_0_in_0(11),
      O => \distance_cm[11]_i_26_n_0\
    );
\distance_cm[11]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_34_n_4\,
      I1 => p_0_in_0(10),
      O => \distance_cm[11]_i_27_n_0\
    );
\distance_cm[11]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_34_n_5\,
      I1 => p_0_in_0(9),
      O => \distance_cm[11]_i_28_n_0\
    );
\distance_cm[11]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_34_n_6\,
      I1 => p_0_in_0(8),
      O => \distance_cm[11]_i_29_n_0\
    );
\distance_cm[11]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => \distance_cm_reg[11]_i_20_n_7\,
      I2 => \distance_cm_reg[11]_i_20_n_6\,
      I3 => p_0_in_0(12),
      O => \distance_cm[11]_i_30_n_0\
    );
\distance_cm[11]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(10),
      I1 => \distance_cm_reg[11]_i_34_n_4\,
      I2 => \distance_cm_reg[11]_i_20_n_7\,
      I3 => p_0_in_0(11),
      O => \distance_cm[11]_i_31_n_0\
    );
\distance_cm[11]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(9),
      I1 => \distance_cm_reg[11]_i_34_n_5\,
      I2 => \distance_cm_reg[11]_i_34_n_4\,
      I3 => p_0_in_0(10),
      O => \distance_cm[11]_i_32_n_0\
    );
\distance_cm[11]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(8),
      I1 => \distance_cm_reg[11]_i_34_n_6\,
      I2 => \distance_cm_reg[11]_i_34_n_5\,
      I3 => p_0_in_0(9),
      O => \distance_cm[11]_i_33_n_0\
    );
\distance_cm[11]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_5\,
      I1 => \distance_cm_reg[11]_i_2_n_6\,
      O => \distance_cm[11]_i_35_n_0\
    );
\distance_cm[11]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_7\,
      I1 => \distance_cm_reg[8]_i_2_n_6\,
      I2 => \distance_cm_reg[11]_i_2_n_5\,
      O => \distance_cm[11]_i_36_n_0\
    );
\distance_cm[11]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_4\,
      I1 => \distance_cm_reg[8]_i_2_n_7\,
      I2 => \distance_cm_reg[11]_i_2_n_6\,
      O => \distance_cm[11]_i_37_n_0\
    );
\distance_cm[11]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_5\,
      I1 => \distance_cm_reg[4]_i_2_n_4\,
      I2 => \distance_cm_reg[11]_i_2_n_7\,
      O => \distance_cm[11]_i_38_n_0\
    );
\distance_cm[11]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_6\,
      I1 => \distance_cm_reg[8]_i_2_n_5\,
      I2 => \distance_cm_reg[8]_i_2_n_4\,
      I3 => \distance_cm_reg[11]_i_2_n_5\,
      O => \distance_cm[11]_i_39_n_0\
    );
\distance_cm[11]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_5\,
      I1 => \distance_cm_reg[8]_i_2_n_6\,
      I2 => \distance_cm_reg[11]_i_2_n_7\,
      I3 => \distance_cm_reg[8]_i_2_n_5\,
      I4 => \distance_cm_reg[11]_i_2_n_6\,
      O => \distance_cm[11]_i_40_n_0\
    );
\distance_cm[11]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_6\,
      I1 => \distance_cm_reg[8]_i_2_n_7\,
      I2 => \distance_cm_reg[8]_i_2_n_4\,
      I3 => \distance_cm_reg[11]_i_2_n_7\,
      I4 => \distance_cm_reg[8]_i_2_n_6\,
      I5 => \distance_cm_reg[11]_i_2_n_5\,
      O => \distance_cm[11]_i_41_n_0\
    );
\distance_cm[11]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_7\,
      I1 => \distance_cm_reg[4]_i_2_n_4\,
      I2 => \distance_cm_reg[8]_i_2_n_5\,
      I3 => \distance_cm_reg[8]_i_2_n_4\,
      I4 => \distance_cm_reg[8]_i_2_n_7\,
      I5 => \distance_cm_reg[11]_i_2_n_6\,
      O => \distance_cm[11]_i_42_n_0\
    );
\distance_cm[11]_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0(16),
      O => \distance_cm[11]_i_43_n_0\
    );
\distance_cm[11]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => p_0_in_0(16),
      O => \distance_cm[11]_i_44_n_0\
    );
\distance_cm[11]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_34_n_7\,
      I1 => p_0_in_0(7),
      O => \distance_cm[11]_i_46_n_0\
    );
\distance_cm[11]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_54_n_4\,
      I1 => p_0_in_0(6),
      O => \distance_cm[11]_i_47_n_0\
    );
\distance_cm[11]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_54_n_5\,
      I1 => p_0_in_0(5),
      O => \distance_cm[11]_i_48_n_0\
    );
\distance_cm[11]_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_54_n_6\,
      I1 => p_0_in_0(4),
      O => \distance_cm[11]_i_49_n_0\
    );
\distance_cm[11]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => \distance_cm_reg[11]_i_34_n_7\,
      I2 => \distance_cm_reg[11]_i_34_n_6\,
      I3 => p_0_in_0(8),
      O => \distance_cm[11]_i_50_n_0\
    );
\distance_cm[11]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => \distance_cm_reg[11]_i_54_n_4\,
      I2 => \distance_cm_reg[11]_i_34_n_7\,
      I3 => p_0_in_0(7),
      O => \distance_cm[11]_i_51_n_0\
    );
\distance_cm[11]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => \distance_cm_reg[11]_i_54_n_5\,
      I2 => \distance_cm_reg[11]_i_54_n_4\,
      I3 => p_0_in_0(6),
      O => \distance_cm[11]_i_52_n_0\
    );
\distance_cm[11]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => \distance_cm_reg[11]_i_54_n_6\,
      I2 => \distance_cm_reg[11]_i_54_n_5\,
      I3 => p_0_in_0(5),
      O => \distance_cm[11]_i_53_n_0\
    );
\distance_cm[11]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_6\,
      I1 => \distance_cm_reg[4]_i_2_n_5\,
      I2 => \distance_cm_reg[8]_i_2_n_4\,
      O => \distance_cm[11]_i_55_n_0\
    );
\distance_cm[11]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_7\,
      I1 => \distance_cm_reg[4]_i_2_n_6\,
      I2 => \distance_cm_reg[8]_i_2_n_5\,
      O => \distance_cm[11]_i_56_n_0\
    );
\distance_cm[11]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_4\,
      I1 => \distance_cm_reg[4]_i_2_n_7\,
      I2 => \distance_cm_reg[8]_i_2_n_6\,
      O => \distance_cm[11]_i_57_n_0\
    );
\distance_cm[11]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_5\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      I2 => \distance_cm_reg[8]_i_2_n_7\,
      O => \distance_cm[11]_i_58_n_0\
    );
\distance_cm[11]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_4\,
      I1 => \distance_cm_reg[4]_i_2_n_5\,
      I2 => \distance_cm_reg[8]_i_2_n_6\,
      I3 => \distance_cm_reg[8]_i_2_n_5\,
      I4 => \distance_cm_reg[4]_i_2_n_4\,
      I5 => \distance_cm_reg[11]_i_2_n_7\,
      O => \distance_cm[11]_i_59_n_0\
    );
\distance_cm[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(15),
      O => \distance_cm[11]_i_6_n_0\
    );
\distance_cm[11]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_5\,
      I1 => \distance_cm_reg[4]_i_2_n_6\,
      I2 => \distance_cm_reg[8]_i_2_n_7\,
      I3 => \distance_cm_reg[8]_i_2_n_6\,
      I4 => \distance_cm_reg[4]_i_2_n_5\,
      I5 => \distance_cm_reg[8]_i_2_n_4\,
      O => \distance_cm[11]_i_60_n_0\
    );
\distance_cm[11]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_6\,
      I1 => \distance_cm_reg[4]_i_2_n_7\,
      I2 => \distance_cm_reg[4]_i_2_n_4\,
      I3 => \distance_cm_reg[8]_i_2_n_7\,
      I4 => \distance_cm_reg[4]_i_2_n_6\,
      I5 => \distance_cm_reg[8]_i_2_n_5\,
      O => \distance_cm[11]_i_61_n_0\
    );
\distance_cm[11]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_7\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      I2 => \distance_cm_reg[4]_i_2_n_5\,
      I3 => \distance_cm_reg[4]_i_2_n_4\,
      I4 => \distance_cm_reg[4]_i_2_n_7\,
      I5 => \distance_cm_reg[8]_i_2_n_6\,
      O => \distance_cm[11]_i_62_n_0\
    );
\distance_cm[11]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_54_n_7\,
      I1 => p_0_in_0(3),
      O => \distance_cm[11]_i_63_n_0\
    );
\distance_cm[11]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_7\,
      I1 => p_0_in_0(2),
      O => \distance_cm[11]_i_64_n_0\
    );
\distance_cm[11]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[0]_i_2_n_4\,
      I1 => p_0_in_0(1),
      O => \distance_cm[11]_i_65_n_0\
    );
\distance_cm[11]_i_66\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \distance_cm_reg[11]_i_54_n_7\,
      I2 => \distance_cm_reg[11]_i_54_n_6\,
      I3 => p_0_in_0(4),
      O => \distance_cm[11]_i_66_n_0\
    );
\distance_cm[11]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \distance_cm_reg[4]_i_2_n_7\,
      I2 => \distance_cm_reg[11]_i_54_n_7\,
      I3 => p_0_in_0(3),
      O => \distance_cm[11]_i_67_n_0\
    );
\distance_cm[11]_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      I2 => \distance_cm_reg[4]_i_2_n_7\,
      I3 => p_0_in_0(2),
      O => \distance_cm[11]_i_68_n_0\
    );
\distance_cm[11]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      O => \distance_cm[11]_i_69_n_0\
    );
\distance_cm[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(14),
      O => \distance_cm[11]_i_7_n_0\
    );
\distance_cm[11]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_5\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      I2 => \distance_cm_reg[8]_i_2_n_7\,
      O => \distance_cm[11]_i_70_n_0\
    );
\distance_cm[11]_i_71\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_5\,
      I1 => \distance_cm_reg[4]_i_2_n_7\,
      O => \distance_cm[11]_i_71_n_0\
    );
\distance_cm[11]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_6\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      O => \distance_cm[11]_i_72_n_0\
    );
\distance_cm[11]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_5\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      I2 => \distance_cm_reg[8]_i_2_n_7\,
      I3 => \distance_cm_reg[4]_i_2_n_6\,
      I4 => \distance_cm_reg[4]_i_2_n_4\,
      O => \distance_cm[11]_i_73_n_0\
    );
\distance_cm[11]_i_74\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_7\,
      I1 => \distance_cm_reg[4]_i_2_n_5\,
      I2 => \distance_cm_reg[4]_i_2_n_6\,
      I3 => \distance_cm_reg[4]_i_2_n_4\,
      O => \distance_cm[11]_i_74_n_0\
    );
\distance_cm[11]_i_75\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \distance_cm_reg[0]_i_2_n_4\,
      I1 => \distance_cm_reg[4]_i_2_n_6\,
      I2 => \distance_cm_reg[4]_i_2_n_7\,
      I3 => \distance_cm_reg[4]_i_2_n_5\,
      O => \distance_cm[11]_i_75_n_0\
    );
\distance_cm[11]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_6\,
      I1 => \distance_cm_reg[0]_i_2_n_4\,
      O => \distance_cm[11]_i_76_n_0\
    );
\distance_cm[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(16),
      O => \distance_cm[11]_i_8_n_0\
    );
\distance_cm[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC93"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => p_0_in_0(16),
      I2 => \distance_cm_reg[11]_i_24_n_1\,
      I3 => p_0_in_0(15),
      O => \distance_cm[11]_i_9_n_0\
    );
\distance_cm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_7\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[3]_i_2_n_6\,
      O => \distance_cm[1]_i_1_n_0\
    );
\distance_cm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_6\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[3]_i_2_n_5\,
      O => \distance_cm[2]_i_1_n_0\
    );
\distance_cm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_5\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[3]_i_2_n_4\,
      O => \distance_cm[3]_i_1_n_0\
    );
\distance_cm[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \distance_cm_reg[0]_i_2_n_4\,
      O => \distance_cm[3]_i_3_n_0\
    );
\distance_cm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[4]_i_2_n_4\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[7]_i_2_n_7\,
      O => \distance_cm[4]_i_1_n_0\
    );
\distance_cm[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[4]_i_6_n_0\,
      I1 => \distance_cm[4]_i_14_n_0\,
      I2 => p_0_in_0(10),
      I3 => \distance_cm_reg[4]_i_12_n_6\,
      I4 => p_0_in_0(6),
      I5 => p_0_in_0(11),
      O => \distance_cm[4]_i_10_n_0\
    );
\distance_cm[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => \distance_cm_reg[11]_i_24_n_7\,
      I2 => p_0_in_0(9),
      O => \distance_cm[4]_i_11_n_0\
    );
\distance_cm[4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => \distance_cm_reg[4]_i_12_n_4\,
      I2 => p_0_in_0(8),
      O => \distance_cm[4]_i_13_n_0\
    );
\distance_cm[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(12),
      I1 => \distance_cm_reg[4]_i_12_n_5\,
      I2 => p_0_in_0(7),
      O => \distance_cm[4]_i_14_n_0\
    );
\distance_cm[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(11),
      I1 => \distance_cm_reg[4]_i_12_n_6\,
      I2 => p_0_in_0(6),
      O => \distance_cm[4]_i_15_n_0\
    );
\distance_cm[4]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(16),
      I1 => p_0_in_0(14),
      O => \distance_cm[4]_i_16_n_0\
    );
\distance_cm[4]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => p_0_in_0(13),
      O => \distance_cm[4]_i_17_n_0\
    );
\distance_cm[4]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(16),
      I1 => p_0_in_0(12),
      I2 => p_0_in_0(14),
      O => \distance_cm[4]_i_18_n_0\
    );
\distance_cm[4]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => p_0_in_0(11),
      I2 => p_0_in_0(13),
      O => \distance_cm[4]_i_19_n_0\
    );
\distance_cm[4]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => p_0_in_0(16),
      I2 => p_0_in_0(15),
      O => \distance_cm[4]_i_20_n_0\
    );
\distance_cm[4]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => p_0_in_0(15),
      I2 => p_0_in_0(14),
      I3 => p_0_in_0(16),
      O => \distance_cm[4]_i_21_n_0\
    );
\distance_cm[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => p_0_in_0(14),
      I1 => p_0_in_0(12),
      I2 => p_0_in_0(16),
      I3 => p_0_in_0(13),
      I4 => p_0_in_0(15),
      O => \distance_cm[4]_i_22_n_0\
    );
\distance_cm[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => p_0_in_0(13),
      I1 => p_0_in_0(11),
      I2 => p_0_in_0(15),
      I3 => p_0_in_0(16),
      I4 => p_0_in_0(12),
      I5 => p_0_in_0(14),
      O => \distance_cm[4]_i_23_n_0\
    );
\distance_cm[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[4]_i_11_n_0\,
      I1 => p_0_in_0(12),
      I2 => p_0_in_0(13),
      I3 => p_0_in_0(8),
      I4 => \distance_cm_reg[4]_i_12_n_4\,
      O => \distance_cm[4]_i_3_n_0\
    );
\distance_cm[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[4]_i_13_n_0\,
      I1 => p_0_in_0(11),
      I2 => p_0_in_0(12),
      I3 => p_0_in_0(7),
      I4 => \distance_cm_reg[4]_i_12_n_5\,
      O => \distance_cm[4]_i_4_n_0\
    );
\distance_cm[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[4]_i_14_n_0\,
      I1 => p_0_in_0(10),
      I2 => p_0_in_0(11),
      I3 => p_0_in_0(6),
      I4 => \distance_cm_reg[4]_i_12_n_6\,
      O => \distance_cm[4]_i_5_n_0\
    );
\distance_cm[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[4]_i_15_n_0\,
      I1 => p_0_in_0(9),
      I2 => p_0_in_0(10),
      I3 => p_0_in_0(5),
      I4 => \distance_cm_reg[4]_i_12_n_7\,
      O => \distance_cm[4]_i_6_n_0\
    );
\distance_cm[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[4]_i_3_n_0\,
      I1 => \distance_cm[8]_i_12_n_0\,
      I2 => p_0_in_0(13),
      I3 => \distance_cm_reg[11]_i_24_n_7\,
      I4 => p_0_in_0(9),
      I5 => p_0_in_0(14),
      O => \distance_cm[4]_i_7_n_0\
    );
\distance_cm[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[4]_i_4_n_0\,
      I1 => \distance_cm[4]_i_11_n_0\,
      I2 => p_0_in_0(12),
      I3 => \distance_cm_reg[4]_i_12_n_4\,
      I4 => p_0_in_0(8),
      I5 => p_0_in_0(13),
      O => \distance_cm[4]_i_8_n_0\
    );
\distance_cm[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[4]_i_5_n_0\,
      I1 => \distance_cm[4]_i_13_n_0\,
      I2 => p_0_in_0(11),
      I3 => \distance_cm_reg[4]_i_12_n_5\,
      I4 => p_0_in_0(7),
      I5 => p_0_in_0(12),
      O => \distance_cm[4]_i_9_n_0\
    );
\distance_cm[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_7\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[7]_i_2_n_6\,
      O => \distance_cm[5]_i_1_n_0\
    );
\distance_cm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_6\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[7]_i_2_n_5\,
      O => \distance_cm[6]_i_1_n_0\
    );
\distance_cm[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_5\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[7]_i_2_n_4\,
      O => \distance_cm[7]_i_1_n_0\
    );
\distance_cm[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[8]_i_2_n_4\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[11]_i_5_n_7\,
      O => \distance_cm[8]_i_1_n_0\
    );
\distance_cm[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \distance_cm[8]_i_6_n_0\,
      I1 => \distance_cm[8]_i_11_n_0\,
      I2 => p_0_in_0(14),
      I3 => \distance_cm_reg[11]_i_24_n_6\,
      I4 => p_0_in_0(10),
      I5 => p_0_in_0(15),
      O => \distance_cm[8]_i_10_n_0\
    );
\distance_cm[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in_0(16),
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(11),
      O => \distance_cm[8]_i_11_n_0\
    );
\distance_cm[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in_0(15),
      I1 => \distance_cm_reg[11]_i_24_n_6\,
      I2 => p_0_in_0(10),
      O => \distance_cm[8]_i_12_n_0\
    );
\distance_cm[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F674"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_24_n_1\,
      I1 => p_0_in_0(13),
      I2 => p_0_in_0(16),
      I3 => p_0_in_0(12),
      O => \distance_cm[8]_i_3_n_0\
    );
\distance_cm[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74F66074"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_24_n_1\,
      I1 => p_0_in_0(12),
      I2 => p_0_in_0(15),
      I3 => p_0_in_0(16),
      I4 => p_0_in_0(11),
      O => \distance_cm[8]_i_4_n_0\
    );
\distance_cm[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[8]_i_11_n_0\,
      I1 => p_0_in_0(14),
      I2 => p_0_in_0(15),
      I3 => p_0_in_0(10),
      I4 => \distance_cm_reg[11]_i_24_n_6\,
      O => \distance_cm[8]_i_5_n_0\
    );
\distance_cm[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \distance_cm[8]_i_12_n_0\,
      I1 => p_0_in_0(13),
      I2 => p_0_in_0(14),
      I3 => p_0_in_0(9),
      I4 => \distance_cm_reg[11]_i_24_n_7\,
      O => \distance_cm[8]_i_6_n_0\
    );
\distance_cm[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0E1C3"
    )
        port map (
      I0 => p_0_in_0(12),
      I1 => p_0_in_0(16),
      I2 => p_0_in_0(14),
      I3 => \distance_cm_reg[11]_i_24_n_1\,
      I4 => p_0_in_0(13),
      O => \distance_cm[8]_i_7_n_0\
    );
\distance_cm[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96695AA5"
    )
        port map (
      I0 => \distance_cm[8]_i_4_n_0\,
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(13),
      I3 => p_0_in_0(16),
      I4 => p_0_in_0(12),
      O => \distance_cm[8]_i_8_n_0\
    );
\distance_cm[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5699696695AA5"
    )
        port map (
      I0 => \distance_cm[8]_i_5_n_0\,
      I1 => \distance_cm_reg[11]_i_24_n_1\,
      I2 => p_0_in_0(12),
      I3 => p_0_in_0(15),
      I4 => p_0_in_0(11),
      I5 => p_0_in_0(16),
      O => \distance_cm[8]_i_9_n_0\
    );
\distance_cm[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \distance_cm_reg[11]_i_2_n_7\,
      I1 => \distance_cm_reg[11]_i_3_n_0\,
      I2 => p_0_in_0(16),
      I3 => \distance_cm_reg[11]_i_4_n_6\,
      I4 => \distance_cm_reg[11]_i_5_n_6\,
      O => \distance_cm[9]_i_1_n_0\
    );
\distance_cm_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[0]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(0)
    );
\distance_cm_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_cm_reg[0]_i_12_n_0\,
      CO(2) => \distance_cm_reg[0]_i_12_n_1\,
      CO(1) => \distance_cm_reg[0]_i_12_n_2\,
      CO(0) => \distance_cm_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_26_n_0\,
      DI(2) => \distance_cm[0]_i_27_n_0\,
      DI(1) => \distance_cm[0]_i_28_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_distance_cm_reg[0]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[0]_i_29_n_0\,
      S(2) => \distance_cm[0]_i_30_n_0\,
      S(1) => \distance_cm[0]_i_31_n_0\,
      S(0) => \distance_cm[0]_i_32_n_0\
    );
\distance_cm_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_3_n_0\,
      CO(3) => \distance_cm_reg[0]_i_2_n_0\,
      CO(2) => \distance_cm_reg[0]_i_2_n_1\,
      CO(1) => \distance_cm_reg[0]_i_2_n_2\,
      CO(0) => \distance_cm_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_4_n_0\,
      DI(2) => \distance_cm[0]_i_5_n_0\,
      DI(1) => \distance_cm[0]_i_6_n_0\,
      DI(0) => \distance_cm[0]_i_7_n_0\,
      O(3) => \distance_cm_reg[0]_i_2_n_4\,
      O(2 downto 0) => \NLW_distance_cm_reg[0]_i_2_O_UNCONNECTED\(2 downto 0),
      S(3) => \distance_cm[0]_i_8_n_0\,
      S(2) => \distance_cm[0]_i_9_n_0\,
      S(1) => \distance_cm[0]_i_10_n_0\,
      S(0) => \distance_cm[0]_i_11_n_0\
    );
\distance_cm_reg[0]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_34_n_0\,
      CO(3) => \distance_cm_reg[0]_i_22_n_0\,
      CO(2) => \distance_cm_reg[0]_i_22_n_1\,
      CO(1) => \distance_cm_reg[0]_i_22_n_2\,
      CO(0) => \distance_cm_reg[0]_i_22_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_35_n_0\,
      DI(2) => \distance_cm[0]_i_36_n_0\,
      DI(1) => \distance_cm[0]_i_37_n_0\,
      DI(0) => \distance_cm[0]_i_38_n_0\,
      O(3) => \distance_cm_reg[0]_i_22_n_4\,
      O(2) => \distance_cm_reg[0]_i_22_n_5\,
      O(1) => \distance_cm_reg[0]_i_22_n_6\,
      O(0) => \distance_cm_reg[0]_i_22_n_7\,
      S(3) => \distance_cm[0]_i_39_n_0\,
      S(2) => \distance_cm[0]_i_40_n_0\,
      S(1) => \distance_cm[0]_i_41_n_0\,
      S(0) => \distance_cm[0]_i_42_n_0\
    );
\distance_cm_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_12_n_0\,
      CO(3) => \distance_cm_reg[0]_i_3_n_0\,
      CO(2) => \distance_cm_reg[0]_i_3_n_1\,
      CO(1) => \distance_cm_reg[0]_i_3_n_2\,
      CO(0) => \distance_cm_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_13_n_0\,
      DI(2) => \distance_cm[0]_i_14_n_0\,
      DI(1) => \distance_cm[0]_i_15_n_0\,
      DI(0) => \distance_cm[0]_i_16_n_0\,
      O(3 downto 0) => \NLW_distance_cm_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[0]_i_17_n_0\,
      S(2) => \distance_cm[0]_i_18_n_0\,
      S(1) => \distance_cm[0]_i_19_n_0\,
      S(0) => \distance_cm[0]_i_20_n_0\
    );
\distance_cm_reg[0]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_43_n_0\,
      CO(3) => \distance_cm_reg[0]_i_34_n_0\,
      CO(2) => \distance_cm_reg[0]_i_34_n_1\,
      CO(1) => \distance_cm_reg[0]_i_34_n_2\,
      CO(0) => \distance_cm_reg[0]_i_34_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_44_n_0\,
      DI(2) => \distance_cm[0]_i_45_n_0\,
      DI(1) => \distance_cm[0]_i_46_n_0\,
      DI(0) => \distance_cm[0]_i_47_n_0\,
      O(3) => \distance_cm_reg[0]_i_34_n_4\,
      O(2) => \distance_cm_reg[0]_i_34_n_5\,
      O(1) => \distance_cm_reg[0]_i_34_n_6\,
      O(0) => \distance_cm_reg[0]_i_34_n_7\,
      S(3) => \distance_cm[0]_i_48_n_0\,
      S(2) => \distance_cm[0]_i_49_n_0\,
      S(1) => \distance_cm[0]_i_50_n_0\,
      S(0) => \distance_cm[0]_i_51_n_0\
    );
\distance_cm_reg[0]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_52_n_0\,
      CO(3) => \distance_cm_reg[0]_i_43_n_0\,
      CO(2) => \distance_cm_reg[0]_i_43_n_1\,
      CO(1) => \distance_cm_reg[0]_i_43_n_2\,
      CO(0) => \distance_cm_reg[0]_i_43_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[0]_i_53_n_0\,
      DI(2) => \distance_cm[0]_i_54_n_0\,
      DI(1) => \distance_cm[0]_i_55_n_0\,
      DI(0) => p_0_in_0(2),
      O(3) => \distance_cm_reg[0]_i_43_n_4\,
      O(2) => \distance_cm_reg[0]_i_43_n_5\,
      O(1 downto 0) => \NLW_distance_cm_reg[0]_i_43_O_UNCONNECTED\(1 downto 0),
      S(3) => \distance_cm[0]_i_56_n_0\,
      S(2) => \distance_cm[0]_i_57_n_0\,
      S(1) => \distance_cm[0]_i_58_n_0\,
      S(0) => \distance_cm[0]_i_59_n_0\
    );
\distance_cm_reg[0]_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_cm_reg[0]_i_52_n_0\,
      CO(2) => \distance_cm_reg[0]_i_52_n_1\,
      CO(1) => \distance_cm_reg[0]_i_52_n_2\,
      CO(0) => \distance_cm_reg[0]_i_52_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => p_0_in_0(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => \NLW_distance_cm_reg[0]_i_52_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[0]_i_60_n_0\,
      S(2) => \distance_cm[0]_i_61_n_0\,
      S(1) => \distance_cm[0]_i_62_n_0\,
      S(0) => p_0_in_0(0)
    );
\distance_cm_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[10]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(10)
    );
\distance_cm_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[11]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(11)
    );
\distance_cm_reg[11]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_25_n_0\,
      CO(3) => \distance_cm_reg[11]_i_11_n_0\,
      CO(2) => \distance_cm_reg[11]_i_11_n_1\,
      CO(1) => \distance_cm_reg[11]_i_11_n_2\,
      CO(0) => \distance_cm_reg[11]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_26_n_0\,
      DI(2) => \distance_cm[11]_i_27_n_0\,
      DI(1) => \distance_cm[11]_i_28_n_0\,
      DI(0) => \distance_cm[11]_i_29_n_0\,
      O(3 downto 0) => \NLW_distance_cm_reg[11]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[11]_i_30_n_0\,
      S(2) => \distance_cm[11]_i_31_n_0\,
      S(1) => \distance_cm[11]_i_32_n_0\,
      S(0) => \distance_cm[11]_i_33_n_0\
    );
\distance_cm_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_distance_cm_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \distance_cm_reg[11]_i_2_n_2\,
      CO(0) => \distance_cm_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \distance_cm[11]_i_6_n_0\,
      DI(0) => \distance_cm[11]_i_7_n_0\,
      O(3) => \NLW_distance_cm_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2) => \distance_cm_reg[11]_i_2_n_5\,
      O(1) => \distance_cm_reg[11]_i_2_n_6\,
      O(0) => \distance_cm_reg[11]_i_2_n_7\,
      S(3) => '0',
      S(2) => \distance_cm[11]_i_8_n_0\,
      S(1) => \distance_cm[11]_i_9_n_0\,
      S(0) => \distance_cm[11]_i_10_n_0\
    );
\distance_cm_reg[11]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_34_n_0\,
      CO(3) => \distance_cm_reg[11]_i_20_n_0\,
      CO(2) => \distance_cm_reg[11]_i_20_n_1\,
      CO(1) => \distance_cm_reg[11]_i_20_n_2\,
      CO(0) => \distance_cm_reg[11]_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_35_n_0\,
      DI(2) => \distance_cm[11]_i_36_n_0\,
      DI(1) => \distance_cm[11]_i_37_n_0\,
      DI(0) => \distance_cm[11]_i_38_n_0\,
      O(3) => \distance_cm_reg[11]_i_20_n_4\,
      O(2) => \distance_cm_reg[11]_i_20_n_5\,
      O(1) => \distance_cm_reg[11]_i_20_n_6\,
      O(0) => \distance_cm_reg[11]_i_20_n_7\,
      S(3) => \distance_cm[11]_i_39_n_0\,
      S(2) => \distance_cm[11]_i_40_n_0\,
      S(1) => \distance_cm[11]_i_41_n_0\,
      S(0) => \distance_cm[11]_i_42_n_0\
    );
\distance_cm_reg[11]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[4]_i_12_n_0\,
      CO(3) => \NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED\(3),
      CO(2) => \distance_cm_reg[11]_i_24_n_1\,
      CO(1) => \NLW_distance_cm_reg[11]_i_24_CO_UNCONNECTED\(1),
      CO(0) => \distance_cm_reg[11]_i_24_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => p_0_in_0(16 downto 15),
      O(3 downto 2) => \NLW_distance_cm_reg[11]_i_24_O_UNCONNECTED\(3 downto 2),
      O(1) => \distance_cm_reg[11]_i_24_n_6\,
      O(0) => \distance_cm_reg[11]_i_24_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \distance_cm[11]_i_43_n_0\,
      S(0) => \distance_cm[11]_i_44_n_0\
    );
\distance_cm_reg[11]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_45_n_0\,
      CO(3) => \distance_cm_reg[11]_i_25_n_0\,
      CO(2) => \distance_cm_reg[11]_i_25_n_1\,
      CO(1) => \distance_cm_reg[11]_i_25_n_2\,
      CO(0) => \distance_cm_reg[11]_i_25_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_46_n_0\,
      DI(2) => \distance_cm[11]_i_47_n_0\,
      DI(1) => \distance_cm[11]_i_48_n_0\,
      DI(0) => \distance_cm[11]_i_49_n_0\,
      O(3 downto 0) => \NLW_distance_cm_reg[11]_i_25_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[11]_i_50_n_0\,
      S(2) => \distance_cm[11]_i_51_n_0\,
      S(1) => \distance_cm[11]_i_52_n_0\,
      S(0) => \distance_cm[11]_i_53_n_0\
    );
\distance_cm_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_11_n_0\,
      CO(3) => \distance_cm_reg[11]_i_3_n_0\,
      CO(2) => \distance_cm_reg[11]_i_3_n_1\,
      CO(1) => \distance_cm_reg[11]_i_3_n_2\,
      CO(0) => \distance_cm_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_12_n_0\,
      DI(2) => \distance_cm[11]_i_13_n_0\,
      DI(1) => \distance_cm[11]_i_14_n_0\,
      DI(0) => \distance_cm[11]_i_15_n_0\,
      O(3 downto 0) => \NLW_distance_cm_reg[11]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[11]_i_16_n_0\,
      S(2) => \distance_cm[11]_i_17_n_0\,
      S(1) => \distance_cm[11]_i_18_n_0\,
      S(0) => \distance_cm[11]_i_19_n_0\
    );
\distance_cm_reg[11]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_54_n_0\,
      CO(3) => \distance_cm_reg[11]_i_34_n_0\,
      CO(2) => \distance_cm_reg[11]_i_34_n_1\,
      CO(1) => \distance_cm_reg[11]_i_34_n_2\,
      CO(0) => \distance_cm_reg[11]_i_34_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_55_n_0\,
      DI(2) => \distance_cm[11]_i_56_n_0\,
      DI(1) => \distance_cm[11]_i_57_n_0\,
      DI(0) => \distance_cm[11]_i_58_n_0\,
      O(3) => \distance_cm_reg[11]_i_34_n_4\,
      O(2) => \distance_cm_reg[11]_i_34_n_5\,
      O(1) => \distance_cm_reg[11]_i_34_n_6\,
      O(0) => \distance_cm_reg[11]_i_34_n_7\,
      S(3) => \distance_cm[11]_i_59_n_0\,
      S(2) => \distance_cm[11]_i_60_n_0\,
      S(1) => \distance_cm[11]_i_61_n_0\,
      S(0) => \distance_cm[11]_i_62_n_0\
    );
\distance_cm_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[11]_i_20_n_0\,
      CO(3 downto 1) => \NLW_distance_cm_reg[11]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \distance_cm_reg[11]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \distance_cm[11]_i_21_n_0\,
      O(3 downto 2) => \NLW_distance_cm_reg[11]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1) => \distance_cm_reg[11]_i_4_n_6\,
      O(0) => \distance_cm_reg[11]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \distance_cm[11]_i_22_n_0\,
      S(0) => \distance_cm[11]_i_23_n_0\
    );
\distance_cm_reg[11]_i_45\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_cm_reg[11]_i_45_n_0\,
      CO(2) => \distance_cm_reg[11]_i_45_n_1\,
      CO(1) => \distance_cm_reg[11]_i_45_n_2\,
      CO(0) => \distance_cm_reg[11]_i_45_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_63_n_0\,
      DI(2) => \distance_cm[11]_i_64_n_0\,
      DI(1) => \distance_cm[11]_i_65_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_distance_cm_reg[11]_i_45_O_UNCONNECTED\(3 downto 0),
      S(3) => \distance_cm[11]_i_66_n_0\,
      S(2) => \distance_cm[11]_i_67_n_0\,
      S(1) => \distance_cm[11]_i_68_n_0\,
      S(0) => \distance_cm[11]_i_69_n_0\
    );
\distance_cm_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[7]_i_2_n_0\,
      CO(3) => \NLW_distance_cm_reg[11]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \distance_cm_reg[11]_i_5_n_1\,
      CO(1) => \distance_cm_reg[11]_i_5_n_2\,
      CO(0) => \distance_cm_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \distance_cm_reg[11]_i_5_n_4\,
      O(2) => \distance_cm_reg[11]_i_5_n_5\,
      O(1) => \distance_cm_reg[11]_i_5_n_6\,
      O(0) => \distance_cm_reg[11]_i_5_n_7\,
      S(3) => \distance_cm_reg[11]_i_2_n_5\,
      S(2) => \distance_cm_reg[11]_i_2_n_6\,
      S(1) => \distance_cm_reg[11]_i_2_n_7\,
      S(0) => \distance_cm_reg[8]_i_2_n_4\
    );
\distance_cm_reg[11]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_cm_reg[11]_i_54_n_0\,
      CO(2) => \distance_cm_reg[11]_i_54_n_1\,
      CO(1) => \distance_cm_reg[11]_i_54_n_2\,
      CO(0) => \distance_cm_reg[11]_i_54_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[11]_i_70_n_0\,
      DI(2) => \distance_cm[11]_i_71_n_0\,
      DI(1) => \distance_cm[11]_i_72_n_0\,
      DI(0) => '0',
      O(3) => \distance_cm_reg[11]_i_54_n_4\,
      O(2) => \distance_cm_reg[11]_i_54_n_5\,
      O(1) => \distance_cm_reg[11]_i_54_n_6\,
      O(0) => \distance_cm_reg[11]_i_54_n_7\,
      S(3) => \distance_cm[11]_i_73_n_0\,
      S(2) => \distance_cm[11]_i_74_n_0\,
      S(1) => \distance_cm[11]_i_75_n_0\,
      S(0) => \distance_cm[11]_i_76_n_0\
    );
\distance_cm_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[1]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(1)
    );
\distance_cm_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[2]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(2)
    );
\distance_cm_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[3]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(3)
    );
\distance_cm_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_cm_reg[3]_i_2_n_0\,
      CO(2) => \distance_cm_reg[3]_i_2_n_1\,
      CO(1) => \distance_cm_reg[3]_i_2_n_2\,
      CO(0) => \distance_cm_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \distance_cm_reg[3]_i_2_n_4\,
      O(2) => \distance_cm_reg[3]_i_2_n_5\,
      O(1) => \distance_cm_reg[3]_i_2_n_6\,
      O(0) => \distance_cm_reg[3]_i_2_n_7\,
      S(3) => \distance_cm_reg[4]_i_2_n_5\,
      S(2) => \distance_cm_reg[4]_i_2_n_6\,
      S(1) => \distance_cm_reg[4]_i_2_n_7\,
      S(0) => \distance_cm[3]_i_3_n_0\
    );
\distance_cm_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[4]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(4)
    );
\distance_cm_reg[4]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_22_n_0\,
      CO(3) => \distance_cm_reg[4]_i_12_n_0\,
      CO(2) => \distance_cm_reg[4]_i_12_n_1\,
      CO(1) => \distance_cm_reg[4]_i_12_n_2\,
      CO(0) => \distance_cm_reg[4]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[4]_i_16_n_0\,
      DI(2) => \distance_cm[4]_i_17_n_0\,
      DI(1) => \distance_cm[4]_i_18_n_0\,
      DI(0) => \distance_cm[4]_i_19_n_0\,
      O(3) => \distance_cm_reg[4]_i_12_n_4\,
      O(2) => \distance_cm_reg[4]_i_12_n_5\,
      O(1) => \distance_cm_reg[4]_i_12_n_6\,
      O(0) => \distance_cm_reg[4]_i_12_n_7\,
      S(3) => \distance_cm[4]_i_20_n_0\,
      S(2) => \distance_cm[4]_i_21_n_0\,
      S(1) => \distance_cm[4]_i_22_n_0\,
      S(0) => \distance_cm[4]_i_23_n_0\
    );
\distance_cm_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[0]_i_2_n_0\,
      CO(3) => \distance_cm_reg[4]_i_2_n_0\,
      CO(2) => \distance_cm_reg[4]_i_2_n_1\,
      CO(1) => \distance_cm_reg[4]_i_2_n_2\,
      CO(0) => \distance_cm_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[4]_i_3_n_0\,
      DI(2) => \distance_cm[4]_i_4_n_0\,
      DI(1) => \distance_cm[4]_i_5_n_0\,
      DI(0) => \distance_cm[4]_i_6_n_0\,
      O(3) => \distance_cm_reg[4]_i_2_n_4\,
      O(2) => \distance_cm_reg[4]_i_2_n_5\,
      O(1) => \distance_cm_reg[4]_i_2_n_6\,
      O(0) => \distance_cm_reg[4]_i_2_n_7\,
      S(3) => \distance_cm[4]_i_7_n_0\,
      S(2) => \distance_cm[4]_i_8_n_0\,
      S(1) => \distance_cm[4]_i_9_n_0\,
      S(0) => \distance_cm[4]_i_10_n_0\
    );
\distance_cm_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[5]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(5)
    );
\distance_cm_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[6]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(6)
    );
\distance_cm_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[7]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(7)
    );
\distance_cm_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[3]_i_2_n_0\,
      CO(3) => \distance_cm_reg[7]_i_2_n_0\,
      CO(2) => \distance_cm_reg[7]_i_2_n_1\,
      CO(1) => \distance_cm_reg[7]_i_2_n_2\,
      CO(0) => \distance_cm_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \distance_cm_reg[7]_i_2_n_4\,
      O(2) => \distance_cm_reg[7]_i_2_n_5\,
      O(1) => \distance_cm_reg[7]_i_2_n_6\,
      O(0) => \distance_cm_reg[7]_i_2_n_7\,
      S(3) => \distance_cm_reg[8]_i_2_n_5\,
      S(2) => \distance_cm_reg[8]_i_2_n_6\,
      S(1) => \distance_cm_reg[8]_i_2_n_7\,
      S(0) => \distance_cm_reg[4]_i_2_n_4\
    );
\distance_cm_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[8]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(8)
    );
\distance_cm_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_cm_reg[4]_i_2_n_0\,
      CO(3) => \distance_cm_reg[8]_i_2_n_0\,
      CO(2) => \distance_cm_reg[8]_i_2_n_1\,
      CO(1) => \distance_cm_reg[8]_i_2_n_2\,
      CO(0) => \distance_cm_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \distance_cm[8]_i_3_n_0\,
      DI(2) => \distance_cm[8]_i_4_n_0\,
      DI(1) => \distance_cm[8]_i_5_n_0\,
      DI(0) => \distance_cm[8]_i_6_n_0\,
      O(3) => \distance_cm_reg[8]_i_2_n_4\,
      O(2) => \distance_cm_reg[8]_i_2_n_5\,
      O(1) => \distance_cm_reg[8]_i_2_n_6\,
      O(0) => \distance_cm_reg[8]_i_2_n_7\,
      S(3) => \distance_cm[8]_i_7_n_0\,
      S(2) => \distance_cm[8]_i_8_n_0\,
      S(1) => \distance_cm[8]_i_9_n_0\,
      S(0) => \distance_cm[8]_i_10_n_0\
    );
\distance_cm_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => '1',
      CLR => \^sr\(0),
      D => \distance_cm[9]_i_1_n_0\,
      Q => \distance_cm_reg[11]_0\(9)
    );
edg_echo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^sr\(0),
      D(2) => edg_echo_n_0,
      D(1) => edg_echo_n_1,
      D(0) => edg_echo_n_2,
      E(0) => edg_echo_n_4,
      Q(3 downto 0) => \^q\(3 downto 0),
      count_usec_e => \count_usec_e__0\,
      count_usec_e_reg => count_usec_e_n_0,
      count_usec_e_reg_0 => \next_state[3]_i_3_n_0\,
      data1 => \^data1\,
      echo => echo,
      \index_reg[0]\(0) => edg_echo_n_13,
      \index_reg[0]_0\(0) => edg_echo_n_14,
      \index_reg[0]_1\(0) => edg_echo_n_15,
      \index_reg[0]_2\(0) => edg_echo_n_17,
      \index_reg[0]_3\(0) => edg_echo_n_18,
      \index_reg[0]_4\(0) => edg_echo_n_19,
      \index_reg[1]\(0) => temp_value,
      \index_reg[1]_0\(0) => edg_echo_n_6,
      \index_reg[1]_1\(0) => edg_echo_n_7,
      \index_reg[1]_2\(0) => edg_echo_n_10,
      \index_reg[1]_3\(0) => edg_echo_n_11,
      \index_reg[3]\(0) => edg_echo_n_9,
      \index_reg[3]_0\(0) => edg_echo_n_12,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0(0) => edg_echo_n_8,
      s00_axi_aresetn_1(0) => edg_echo_n_16,
      s00_axi_aresetn_2(0) => edg_echo_n_20,
      \temp_value_reg[15][0]\(3 downto 0) => index_reg(3 downto 0)
    );
\index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index_reg(0),
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => index_reg(1),
      I1 => index_reg(0),
      O => \p_0_in__0\(1)
    );
\index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => index_reg(2),
      I1 => index_reg(0),
      I2 => index_reg(1),
      O => \p_0_in__0\(2)
    );
\index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => index_reg(3),
      I1 => index_reg(1),
      I2 => index_reg(0),
      I3 => index_reg(2),
      O => \p_0_in__0\(3)
    );
\index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_4,
      CLR => \^sr\(0),
      D => \index[0]_i_1_n_0\,
      Q => index_reg(0)
    );
\index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_4,
      CLR => \^sr\(0),
      D => \p_0_in__0\(1),
      Q => index_reg(1)
    );
\index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_4,
      CLR => \^sr\(0),
      D => \p_0_in__0\(2),
      Q => index_reg(2)
    );
\index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_4,
      CLR => \^sr\(0),
      D => \p_0_in__0\(3),
      Q => index_reg(3)
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \next_state[1]_i_1_n_0\
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFFFFFEFFFF"
    )
        port map (
      I0 => \next_state[3]_i_3_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^data1\,
      O => \next_state[3]_i_1_n_0\
    );
\next_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \next_state[3]_i_4_n_0\,
      I1 => trig_i_6_n_0,
      I2 => count_usec_reg(16),
      I3 => count_usec_reg(15),
      O => \next_state[3]_i_3_n_0\
    );
\next_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000E0000000"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => count_usec_reg(6),
      I2 => count_usec_reg(9),
      I3 => count_usec_reg(10),
      I4 => count_usec_reg(7),
      I5 => count_usec_reg(8),
      O => \next_state[3]_i_4_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state[3]_i_1_n_0\,
      CLR => \^sr\(0),
      D => edg_echo_n_2,
      Q => next_state(0)
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state[3]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \next_state[1]_i_1_n_0\,
      Q => next_state(1)
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state[3]_i_1_n_0\,
      CLR => \^sr\(0),
      D => edg_echo_n_1,
      Q => next_state(2)
    );
\next_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \next_state[3]_i_1_n_0\,
      CLR => \^sr\(0),
      D => edg_echo_n_0,
      Q => next_state(3)
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => next_state(0),
      PRE => \^sr\(0),
      Q => \^q\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => next_state(1),
      Q => \^q\(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => next_state(2),
      Q => \^q\(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => next_state(3),
      Q => \^q\(3)
    );
\sum_value[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[15]_i_13_n_5\,
      I1 => \sum_value_reg[15]_i_15_n_5\,
      I2 => \sum_value_reg[15]_i_14_n_5\,
      O => \sum_value[11]_i_10_n_0\
    );
\sum_value[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[15]_i_13_n_6\,
      I1 => \sum_value_reg[15]_i_15_n_6\,
      I2 => \sum_value_reg[15]_i_14_n_6\,
      O => \sum_value[11]_i_11_n_0\
    );
\sum_value[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[15]_i_13_n_7\,
      I1 => \sum_value_reg[15]_i_15_n_7\,
      I2 => \sum_value_reg[15]_i_14_n_7\,
      O => \sum_value[11]_i_12_n_0\
    );
\sum_value[11]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[11]_i_13_n_4\,
      I1 => \sum_value_reg[11]_i_15_n_4\,
      I2 => \sum_value_reg[11]_i_14_n_4\,
      O => \sum_value[11]_i_17_n_0\
    );
\sum_value[11]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(6),
      I1 => \temp_value_reg[6]_5\(6),
      I2 => \temp_value_reg[7]_6\(6),
      O => \sum_value[11]_i_18_n_0\
    );
\sum_value[11]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(5),
      I1 => \temp_value_reg[6]_5\(5),
      I2 => \temp_value_reg[7]_6\(5),
      O => \sum_value[11]_i_19_n_0\
    );
\sum_value[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[15]_i_16_n_5\,
      I1 => \sum_value[11]_i_10_n_0\,
      I2 => \sum_value_reg[15]_i_13_n_6\,
      I3 => \sum_value_reg[15]_i_14_n_6\,
      I4 => \sum_value_reg[15]_i_15_n_6\,
      O => \sum_value[11]_i_2_n_0\
    );
\sum_value[11]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(4),
      I1 => \temp_value_reg[6]_5\(4),
      I2 => \temp_value_reg[7]_6\(4),
      O => \sum_value[11]_i_20_n_0\
    );
\sum_value[11]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(3),
      I1 => \temp_value_reg[6]_5\(3),
      I2 => \temp_value_reg[7]_6\(3),
      O => \sum_value[11]_i_21_n_0\
    );
\sum_value[11]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(7),
      I1 => \temp_value_reg[6]_5\(7),
      I2 => \temp_value_reg[7]_6\(7),
      I3 => \sum_value[11]_i_18_n_0\,
      O => \sum_value[11]_i_22_n_0\
    );
\sum_value[11]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(6),
      I1 => \temp_value_reg[6]_5\(6),
      I2 => \temp_value_reg[7]_6\(6),
      I3 => \sum_value[11]_i_19_n_0\,
      O => \sum_value[11]_i_23_n_0\
    );
\sum_value[11]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(5),
      I1 => \temp_value_reg[6]_5\(5),
      I2 => \temp_value_reg[7]_6\(5),
      I3 => \sum_value[11]_i_20_n_0\,
      O => \sum_value[11]_i_24_n_0\
    );
\sum_value[11]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(4),
      I1 => \temp_value_reg[6]_5\(4),
      I2 => \temp_value_reg[7]_6\(4),
      I3 => \sum_value[11]_i_21_n_0\,
      O => \sum_value[11]_i_25_n_0\
    );
\sum_value[11]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(6),
      I1 => \temp_value_reg[3]_2\(6),
      I2 => \temp_value_reg[4]_3\(6),
      O => \sum_value[11]_i_26_n_0\
    );
\sum_value[11]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(5),
      I1 => \temp_value_reg[3]_2\(5),
      I2 => \temp_value_reg[4]_3\(5),
      O => \sum_value[11]_i_27_n_0\
    );
\sum_value[11]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(4),
      I1 => \temp_value_reg[3]_2\(4),
      I2 => \temp_value_reg[4]_3\(4),
      O => \sum_value[11]_i_28_n_0\
    );
\sum_value[11]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(3),
      I1 => \temp_value_reg[3]_2\(3),
      I2 => \temp_value_reg[4]_3\(3),
      O => \sum_value[11]_i_29_n_0\
    );
\sum_value[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[15]_i_16_n_6\,
      I1 => \sum_value[11]_i_11_n_0\,
      I2 => \sum_value_reg[15]_i_13_n_7\,
      I3 => \sum_value_reg[15]_i_14_n_7\,
      I4 => \sum_value_reg[15]_i_15_n_7\,
      O => \sum_value[11]_i_3_n_0\
    );
\sum_value[11]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(7),
      I1 => \temp_value_reg[3]_2\(7),
      I2 => \temp_value_reg[4]_3\(7),
      I3 => \sum_value[11]_i_26_n_0\,
      O => \sum_value[11]_i_30_n_0\
    );
\sum_value[11]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(6),
      I1 => \temp_value_reg[3]_2\(6),
      I2 => \temp_value_reg[4]_3\(6),
      I3 => \sum_value[11]_i_27_n_0\,
      O => \sum_value[11]_i_31_n_0\
    );
\sum_value[11]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(5),
      I1 => \temp_value_reg[3]_2\(5),
      I2 => \temp_value_reg[4]_3\(5),
      I3 => \sum_value[11]_i_28_n_0\,
      O => \sum_value[11]_i_32_n_0\
    );
\sum_value[11]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(4),
      I1 => \temp_value_reg[3]_2\(4),
      I2 => \temp_value_reg[4]_3\(4),
      I3 => \sum_value[11]_i_29_n_0\,
      O => \sum_value[11]_i_33_n_0\
    );
\sum_value[11]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_5\,
      I1 => \sum_value_reg[15]_i_51_n_5\,
      I2 => \temp_value_reg[1]_0\(6),
      O => \sum_value[11]_i_34_n_0\
    );
\sum_value[11]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_6\,
      I1 => \sum_value_reg[15]_i_51_n_6\,
      I2 => \temp_value_reg[1]_0\(5),
      O => \sum_value[11]_i_35_n_0\
    );
\sum_value[11]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_7\,
      I1 => \sum_value_reg[15]_i_51_n_7\,
      I2 => \temp_value_reg[1]_0\(4),
      O => \sum_value[11]_i_36_n_0\
    );
\sum_value[11]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_4\,
      I1 => \sum_value_reg[11]_i_51_n_4\,
      I2 => \temp_value_reg[1]_0\(3),
      O => \sum_value[11]_i_37_n_0\
    );
\sum_value[11]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_4\,
      I1 => \sum_value_reg[15]_i_51_n_4\,
      I2 => \temp_value_reg[1]_0\(7),
      I3 => \sum_value[11]_i_34_n_0\,
      O => \sum_value[11]_i_38_n_0\
    );
\sum_value[11]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_5\,
      I1 => \sum_value_reg[15]_i_51_n_5\,
      I2 => \temp_value_reg[1]_0\(6),
      I3 => \sum_value[11]_i_35_n_0\,
      O => \sum_value[11]_i_39_n_0\
    );
\sum_value[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[15]_i_16_n_7\,
      I1 => \sum_value[11]_i_12_n_0\,
      I2 => \sum_value_reg[11]_i_13_n_4\,
      I3 => \sum_value_reg[11]_i_14_n_4\,
      I4 => \sum_value_reg[11]_i_15_n_4\,
      O => \sum_value[11]_i_4_n_0\
    );
\sum_value[11]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_6\,
      I1 => \sum_value_reg[15]_i_51_n_6\,
      I2 => \temp_value_reg[1]_0\(5),
      I3 => \sum_value[11]_i_36_n_0\,
      O => \sum_value[11]_i_40_n_0\
    );
\sum_value[11]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_7\,
      I1 => \sum_value_reg[15]_i_51_n_7\,
      I2 => \temp_value_reg[1]_0\(4),
      I3 => \sum_value[11]_i_37_n_0\,
      O => \sum_value[11]_i_41_n_0\
    );
\sum_value[11]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(6),
      I1 => \temp_value_reg[9]_8\(6),
      I2 => \temp_value_reg[10]_9\(6),
      O => \sum_value[11]_i_42_n_0\
    );
\sum_value[11]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(5),
      I1 => \temp_value_reg[9]_8\(5),
      I2 => \temp_value_reg[10]_9\(5),
      O => \sum_value[11]_i_43_n_0\
    );
\sum_value[11]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(4),
      I1 => \temp_value_reg[9]_8\(4),
      I2 => \temp_value_reg[10]_9\(4),
      O => \sum_value[11]_i_44_n_0\
    );
\sum_value[11]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(3),
      I1 => \temp_value_reg[9]_8\(3),
      I2 => \temp_value_reg[10]_9\(3),
      O => \sum_value[11]_i_45_n_0\
    );
\sum_value[11]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(7),
      I1 => \temp_value_reg[9]_8\(7),
      I2 => \temp_value_reg[10]_9\(7),
      I3 => \sum_value[11]_i_42_n_0\,
      O => \sum_value[11]_i_46_n_0\
    );
\sum_value[11]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(6),
      I1 => \temp_value_reg[9]_8\(6),
      I2 => \temp_value_reg[10]_9\(6),
      I3 => \sum_value[11]_i_43_n_0\,
      O => \sum_value[11]_i_47_n_0\
    );
\sum_value[11]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(5),
      I1 => \temp_value_reg[9]_8\(5),
      I2 => \temp_value_reg[10]_9\(5),
      I3 => \sum_value[11]_i_44_n_0\,
      O => \sum_value[11]_i_48_n_0\
    );
\sum_value[11]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(4),
      I1 => \temp_value_reg[9]_8\(4),
      I2 => \temp_value_reg[10]_9\(4),
      I3 => \sum_value[11]_i_45_n_0\,
      O => \sum_value[11]_i_49_n_0\
    );
\sum_value[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[11]_i_16_n_4\,
      I1 => \sum_value[11]_i_17_n_0\,
      I2 => \sum_value_reg[11]_i_13_n_5\,
      I3 => \sum_value_reg[11]_i_14_n_5\,
      I4 => \sum_value_reg[11]_i_15_n_5\,
      O => \sum_value[11]_i_5_n_0\
    );
\sum_value[11]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(2),
      I1 => \temp_value_reg[12]_11\(2),
      I2 => \temp_value_reg[13]_12\(2),
      O => \sum_value[11]_i_52_n_0\
    );
\sum_value[11]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(1),
      I1 => \temp_value_reg[12]_11\(1),
      I2 => \temp_value_reg[13]_12\(1),
      O => \sum_value[11]_i_53_n_0\
    );
\sum_value[11]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(0),
      I1 => \temp_value_reg[12]_11\(0),
      I2 => \temp_value_reg[13]_12\(0),
      O => \sum_value[11]_i_54_n_0\
    );
\sum_value[11]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(3),
      I1 => \temp_value_reg[12]_11\(3),
      I2 => \temp_value_reg[13]_12\(3),
      I3 => \sum_value[11]_i_52_n_0\,
      O => \sum_value[11]_i_55_n_0\
    );
\sum_value[11]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(2),
      I1 => \temp_value_reg[12]_11\(2),
      I2 => \temp_value_reg[13]_12\(2),
      I3 => \sum_value[11]_i_53_n_0\,
      O => \sum_value[11]_i_56_n_0\
    );
\sum_value[11]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(1),
      I1 => \temp_value_reg[12]_11\(1),
      I2 => \temp_value_reg[13]_12\(1),
      I3 => \sum_value[11]_i_54_n_0\,
      O => \sum_value[11]_i_57_n_0\
    );
\sum_value[11]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(0),
      I1 => \temp_value_reg[12]_11\(0),
      I2 => \temp_value_reg[13]_12\(0),
      O => \sum_value[11]_i_58_n_0\
    );
\sum_value[11]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(2),
      I1 => \temp_value_reg[15]_14\(2),
      I2 => \temp_value_reg[0]_15\(2),
      O => \sum_value[11]_i_59_n_0\
    );
\sum_value[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[11]_i_2_n_0\,
      I1 => \sum_value[15]_i_17_n_0\,
      I2 => \sum_value_reg[15]_i_16_n_4\,
      I3 => \sum_value_reg[15]_i_15_n_5\,
      I4 => \sum_value_reg[15]_i_14_n_5\,
      I5 => \sum_value_reg[15]_i_13_n_5\,
      O => \sum_value[11]_i_6_n_0\
    );
\sum_value[11]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(1),
      I1 => \temp_value_reg[15]_14\(1),
      I2 => \temp_value_reg[0]_15\(1),
      O => \sum_value[11]_i_60_n_0\
    );
\sum_value[11]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(0),
      I1 => \temp_value_reg[15]_14\(0),
      I2 => \temp_value_reg[0]_15\(0),
      O => \sum_value[11]_i_61_n_0\
    );
\sum_value[11]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(3),
      I1 => \temp_value_reg[15]_14\(3),
      I2 => \temp_value_reg[0]_15\(3),
      I3 => \sum_value[11]_i_59_n_0\,
      O => \sum_value[11]_i_62_n_0\
    );
\sum_value[11]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(2),
      I1 => \temp_value_reg[15]_14\(2),
      I2 => \temp_value_reg[0]_15\(2),
      I3 => \sum_value[11]_i_60_n_0\,
      O => \sum_value[11]_i_63_n_0\
    );
\sum_value[11]_i_64\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(1),
      I1 => \temp_value_reg[15]_14\(1),
      I2 => \temp_value_reg[0]_15\(1),
      I3 => \sum_value[11]_i_61_n_0\,
      O => \sum_value[11]_i_64_n_0\
    );
\sum_value[11]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(0),
      I1 => \temp_value_reg[15]_14\(0),
      I2 => \temp_value_reg[0]_15\(0),
      O => \sum_value[11]_i_65_n_0\
    );
\sum_value[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[11]_i_3_n_0\,
      I1 => \sum_value[11]_i_10_n_0\,
      I2 => \sum_value_reg[15]_i_16_n_5\,
      I3 => \sum_value_reg[15]_i_15_n_6\,
      I4 => \sum_value_reg[15]_i_14_n_6\,
      I5 => \sum_value_reg[15]_i_13_n_6\,
      O => \sum_value[11]_i_7_n_0\
    );
\sum_value[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[11]_i_4_n_0\,
      I1 => \sum_value[11]_i_11_n_0\,
      I2 => \sum_value_reg[15]_i_16_n_6\,
      I3 => \sum_value_reg[15]_i_15_n_7\,
      I4 => \sum_value_reg[15]_i_14_n_7\,
      I5 => \sum_value_reg[15]_i_13_n_7\,
      O => \sum_value[11]_i_8_n_0\
    );
\sum_value[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[11]_i_5_n_0\,
      I1 => \sum_value[11]_i_12_n_0\,
      I2 => \sum_value_reg[15]_i_16_n_7\,
      I3 => \sum_value_reg[11]_i_15_n_4\,
      I4 => \sum_value_reg[11]_i_14_n_4\,
      I5 => \sum_value_reg[11]_i_13_n_4\,
      O => \sum_value[11]_i_9_n_0\
    );
\sum_value[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[19]_i_14_n_5\,
      I1 => \sum_value_reg[19]_i_16_n_5\,
      I2 => \sum_value_reg[19]_i_15_n_5\,
      O => \sum_value[15]_i_10_n_0\
    );
\sum_value[15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[19]_i_14_n_6\,
      I1 => \sum_value_reg[19]_i_16_n_6\,
      I2 => \sum_value_reg[19]_i_15_n_6\,
      O => \sum_value[15]_i_11_n_0\
    );
\sum_value[15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[19]_i_14_n_7\,
      I1 => \sum_value_reg[19]_i_16_n_7\,
      I2 => \sum_value_reg[19]_i_15_n_7\,
      O => \sum_value[15]_i_12_n_0\
    );
\sum_value[15]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[15]_i_13_n_4\,
      I1 => \sum_value_reg[15]_i_15_n_4\,
      I2 => \sum_value_reg[15]_i_14_n_4\,
      O => \sum_value[15]_i_17_n_0\
    );
\sum_value[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(10),
      I1 => \temp_value_reg[6]_5\(10),
      I2 => \temp_value_reg[7]_6\(10),
      O => \sum_value[15]_i_18_n_0\
    );
\sum_value[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(9),
      I1 => \temp_value_reg[6]_5\(9),
      I2 => \temp_value_reg[7]_6\(9),
      O => \sum_value[15]_i_19_n_0\
    );
\sum_value[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_17_n_5\,
      I1 => \sum_value[15]_i_10_n_0\,
      I2 => \sum_value_reg[19]_i_14_n_6\,
      I3 => \sum_value_reg[19]_i_15_n_6\,
      I4 => \sum_value_reg[19]_i_16_n_6\,
      O => \sum_value[15]_i_2_n_0\
    );
\sum_value[15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(8),
      I1 => \temp_value_reg[6]_5\(8),
      I2 => \temp_value_reg[7]_6\(8),
      O => \sum_value[15]_i_20_n_0\
    );
\sum_value[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(7),
      I1 => \temp_value_reg[6]_5\(7),
      I2 => \temp_value_reg[7]_6\(7),
      O => \sum_value[15]_i_21_n_0\
    );
\sum_value[15]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(11),
      I1 => \temp_value_reg[6]_5\(11),
      I2 => \temp_value_reg[7]_6\(11),
      I3 => \sum_value[15]_i_18_n_0\,
      O => \sum_value[15]_i_22_n_0\
    );
\sum_value[15]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(10),
      I1 => \temp_value_reg[6]_5\(10),
      I2 => \temp_value_reg[7]_6\(10),
      I3 => \sum_value[15]_i_19_n_0\,
      O => \sum_value[15]_i_23_n_0\
    );
\sum_value[15]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(9),
      I1 => \temp_value_reg[6]_5\(9),
      I2 => \temp_value_reg[7]_6\(9),
      I3 => \sum_value[15]_i_20_n_0\,
      O => \sum_value[15]_i_24_n_0\
    );
\sum_value[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(8),
      I1 => \temp_value_reg[6]_5\(8),
      I2 => \temp_value_reg[7]_6\(8),
      I3 => \sum_value[15]_i_21_n_0\,
      O => \sum_value[15]_i_25_n_0\
    );
\sum_value[15]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(10),
      I1 => \temp_value_reg[3]_2\(10),
      I2 => \temp_value_reg[4]_3\(10),
      O => \sum_value[15]_i_26_n_0\
    );
\sum_value[15]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(9),
      I1 => \temp_value_reg[3]_2\(9),
      I2 => \temp_value_reg[4]_3\(9),
      O => \sum_value[15]_i_27_n_0\
    );
\sum_value[15]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(8),
      I1 => \temp_value_reg[3]_2\(8),
      I2 => \temp_value_reg[4]_3\(8),
      O => \sum_value[15]_i_28_n_0\
    );
\sum_value[15]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(7),
      I1 => \temp_value_reg[3]_2\(7),
      I2 => \temp_value_reg[4]_3\(7),
      O => \sum_value[15]_i_29_n_0\
    );
\sum_value[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_17_n_6\,
      I1 => \sum_value[15]_i_11_n_0\,
      I2 => \sum_value_reg[19]_i_14_n_7\,
      I3 => \sum_value_reg[19]_i_15_n_7\,
      I4 => \sum_value_reg[19]_i_16_n_7\,
      O => \sum_value[15]_i_3_n_0\
    );
\sum_value[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(11),
      I1 => \temp_value_reg[3]_2\(11),
      I2 => \temp_value_reg[4]_3\(11),
      I3 => \sum_value[15]_i_26_n_0\,
      O => \sum_value[15]_i_30_n_0\
    );
\sum_value[15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(10),
      I1 => \temp_value_reg[3]_2\(10),
      I2 => \temp_value_reg[4]_3\(10),
      I3 => \sum_value[15]_i_27_n_0\,
      O => \sum_value[15]_i_31_n_0\
    );
\sum_value[15]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(9),
      I1 => \temp_value_reg[3]_2\(9),
      I2 => \temp_value_reg[4]_3\(9),
      I3 => \sum_value[15]_i_28_n_0\,
      O => \sum_value[15]_i_32_n_0\
    );
\sum_value[15]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(8),
      I1 => \temp_value_reg[3]_2\(8),
      I2 => \temp_value_reg[4]_3\(8),
      I3 => \sum_value[15]_i_29_n_0\,
      O => \sum_value[15]_i_33_n_0\
    );
\sum_value[15]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_5\,
      I1 => \sum_value_reg[19]_i_56_n_5\,
      I2 => \temp_value_reg[1]_0\(10),
      O => \sum_value[15]_i_34_n_0\
    );
\sum_value[15]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_6\,
      I1 => \sum_value_reg[19]_i_56_n_6\,
      I2 => \temp_value_reg[1]_0\(9),
      O => \sum_value[15]_i_35_n_0\
    );
\sum_value[15]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_7\,
      I1 => \sum_value_reg[19]_i_56_n_7\,
      I2 => \temp_value_reg[1]_0\(8),
      O => \sum_value[15]_i_36_n_0\
    );
\sum_value[15]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[15]_i_50_n_4\,
      I1 => \sum_value_reg[15]_i_51_n_4\,
      I2 => \temp_value_reg[1]_0\(7),
      O => \sum_value[15]_i_37_n_0\
    );
\sum_value[15]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_4\,
      I1 => \sum_value_reg[19]_i_56_n_4\,
      I2 => \temp_value_reg[1]_0\(11),
      I3 => \sum_value[15]_i_34_n_0\,
      O => \sum_value[15]_i_38_n_0\
    );
\sum_value[15]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_5\,
      I1 => \sum_value_reg[19]_i_56_n_5\,
      I2 => \temp_value_reg[1]_0\(10),
      I3 => \sum_value[15]_i_35_n_0\,
      O => \sum_value[15]_i_39_n_0\
    );
\sum_value[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_17_n_7\,
      I1 => \sum_value[15]_i_12_n_0\,
      I2 => \sum_value_reg[15]_i_13_n_4\,
      I3 => \sum_value_reg[15]_i_14_n_4\,
      I4 => \sum_value_reg[15]_i_15_n_4\,
      O => \sum_value[15]_i_4_n_0\
    );
\sum_value[15]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_6\,
      I1 => \sum_value_reg[19]_i_56_n_6\,
      I2 => \temp_value_reg[1]_0\(9),
      I3 => \sum_value[15]_i_36_n_0\,
      O => \sum_value[15]_i_40_n_0\
    );
\sum_value[15]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_7\,
      I1 => \sum_value_reg[19]_i_56_n_7\,
      I2 => \temp_value_reg[1]_0\(8),
      I3 => \sum_value[15]_i_37_n_0\,
      O => \sum_value[15]_i_41_n_0\
    );
\sum_value[15]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(10),
      I1 => \temp_value_reg[9]_8\(10),
      I2 => \temp_value_reg[10]_9\(10),
      O => \sum_value[15]_i_42_n_0\
    );
\sum_value[15]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(9),
      I1 => \temp_value_reg[9]_8\(9),
      I2 => \temp_value_reg[10]_9\(9),
      O => \sum_value[15]_i_43_n_0\
    );
\sum_value[15]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(8),
      I1 => \temp_value_reg[9]_8\(8),
      I2 => \temp_value_reg[10]_9\(8),
      O => \sum_value[15]_i_44_n_0\
    );
\sum_value[15]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(7),
      I1 => \temp_value_reg[9]_8\(7),
      I2 => \temp_value_reg[10]_9\(7),
      O => \sum_value[15]_i_45_n_0\
    );
\sum_value[15]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(11),
      I1 => \temp_value_reg[9]_8\(11),
      I2 => \temp_value_reg[10]_9\(11),
      I3 => \sum_value[15]_i_42_n_0\,
      O => \sum_value[15]_i_46_n_0\
    );
\sum_value[15]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(10),
      I1 => \temp_value_reg[9]_8\(10),
      I2 => \temp_value_reg[10]_9\(10),
      I3 => \sum_value[15]_i_43_n_0\,
      O => \sum_value[15]_i_47_n_0\
    );
\sum_value[15]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(9),
      I1 => \temp_value_reg[9]_8\(9),
      I2 => \temp_value_reg[10]_9\(9),
      I3 => \sum_value[15]_i_44_n_0\,
      O => \sum_value[15]_i_48_n_0\
    );
\sum_value[15]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(8),
      I1 => \temp_value_reg[9]_8\(8),
      I2 => \temp_value_reg[10]_9\(8),
      I3 => \sum_value[15]_i_45_n_0\,
      O => \sum_value[15]_i_49_n_0\
    );
\sum_value[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[15]_i_16_n_4\,
      I1 => \sum_value[15]_i_17_n_0\,
      I2 => \sum_value_reg[15]_i_13_n_5\,
      I3 => \sum_value_reg[15]_i_14_n_5\,
      I4 => \sum_value_reg[15]_i_15_n_5\,
      O => \sum_value[15]_i_5_n_0\
    );
\sum_value[15]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(6),
      I1 => \temp_value_reg[12]_11\(6),
      I2 => \temp_value_reg[13]_12\(6),
      O => \sum_value[15]_i_52_n_0\
    );
\sum_value[15]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(5),
      I1 => \temp_value_reg[12]_11\(5),
      I2 => \temp_value_reg[13]_12\(5),
      O => \sum_value[15]_i_53_n_0\
    );
\sum_value[15]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(4),
      I1 => \temp_value_reg[12]_11\(4),
      I2 => \temp_value_reg[13]_12\(4),
      O => \sum_value[15]_i_54_n_0\
    );
\sum_value[15]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(3),
      I1 => \temp_value_reg[12]_11\(3),
      I2 => \temp_value_reg[13]_12\(3),
      O => \sum_value[15]_i_55_n_0\
    );
\sum_value[15]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(7),
      I1 => \temp_value_reg[12]_11\(7),
      I2 => \temp_value_reg[13]_12\(7),
      I3 => \sum_value[15]_i_52_n_0\,
      O => \sum_value[15]_i_56_n_0\
    );
\sum_value[15]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(6),
      I1 => \temp_value_reg[12]_11\(6),
      I2 => \temp_value_reg[13]_12\(6),
      I3 => \sum_value[15]_i_53_n_0\,
      O => \sum_value[15]_i_57_n_0\
    );
\sum_value[15]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(5),
      I1 => \temp_value_reg[12]_11\(5),
      I2 => \temp_value_reg[13]_12\(5),
      I3 => \sum_value[15]_i_54_n_0\,
      O => \sum_value[15]_i_58_n_0\
    );
\sum_value[15]_i_59\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(4),
      I1 => \temp_value_reg[12]_11\(4),
      I2 => \temp_value_reg[13]_12\(4),
      I3 => \sum_value[15]_i_55_n_0\,
      O => \sum_value[15]_i_59_n_0\
    );
\sum_value[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[15]_i_2_n_0\,
      I1 => \sum_value[19]_i_18_n_0\,
      I2 => \sum_value_reg[19]_i_17_n_4\,
      I3 => \sum_value_reg[19]_i_16_n_5\,
      I4 => \sum_value_reg[19]_i_15_n_5\,
      I5 => \sum_value_reg[19]_i_14_n_5\,
      O => \sum_value[15]_i_6_n_0\
    );
\sum_value[15]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(6),
      I1 => \temp_value_reg[15]_14\(6),
      I2 => \temp_value_reg[0]_15\(6),
      O => \sum_value[15]_i_60_n_0\
    );
\sum_value[15]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(5),
      I1 => \temp_value_reg[15]_14\(5),
      I2 => \temp_value_reg[0]_15\(5),
      O => \sum_value[15]_i_61_n_0\
    );
\sum_value[15]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(4),
      I1 => \temp_value_reg[15]_14\(4),
      I2 => \temp_value_reg[0]_15\(4),
      O => \sum_value[15]_i_62_n_0\
    );
\sum_value[15]_i_63\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(3),
      I1 => \temp_value_reg[15]_14\(3),
      I2 => \temp_value_reg[0]_15\(3),
      O => \sum_value[15]_i_63_n_0\
    );
\sum_value[15]_i_64\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(7),
      I1 => \temp_value_reg[15]_14\(7),
      I2 => \temp_value_reg[0]_15\(7),
      I3 => \sum_value[15]_i_60_n_0\,
      O => \sum_value[15]_i_64_n_0\
    );
\sum_value[15]_i_65\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(6),
      I1 => \temp_value_reg[15]_14\(6),
      I2 => \temp_value_reg[0]_15\(6),
      I3 => \sum_value[15]_i_61_n_0\,
      O => \sum_value[15]_i_65_n_0\
    );
\sum_value[15]_i_66\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(5),
      I1 => \temp_value_reg[15]_14\(5),
      I2 => \temp_value_reg[0]_15\(5),
      I3 => \sum_value[15]_i_62_n_0\,
      O => \sum_value[15]_i_66_n_0\
    );
\sum_value[15]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(4),
      I1 => \temp_value_reg[15]_14\(4),
      I2 => \temp_value_reg[0]_15\(4),
      I3 => \sum_value[15]_i_63_n_0\,
      O => \sum_value[15]_i_67_n_0\
    );
\sum_value[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[15]_i_3_n_0\,
      I1 => \sum_value[15]_i_10_n_0\,
      I2 => \sum_value_reg[19]_i_17_n_5\,
      I3 => \sum_value_reg[19]_i_16_n_6\,
      I4 => \sum_value_reg[19]_i_15_n_6\,
      I5 => \sum_value_reg[19]_i_14_n_6\,
      O => \sum_value[15]_i_7_n_0\
    );
\sum_value[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[15]_i_4_n_0\,
      I1 => \sum_value[15]_i_11_n_0\,
      I2 => \sum_value_reg[19]_i_17_n_6\,
      I3 => \sum_value_reg[19]_i_16_n_7\,
      I4 => \sum_value_reg[19]_i_15_n_7\,
      I5 => \sum_value_reg[19]_i_14_n_7\,
      O => \sum_value[15]_i_8_n_0\
    );
\sum_value[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[15]_i_5_n_0\,
      I1 => \sum_value[15]_i_12_n_0\,
      I2 => \sum_value_reg[19]_i_17_n_7\,
      I3 => \sum_value_reg[15]_i_15_n_4\,
      I4 => \sum_value_reg[15]_i_14_n_4\,
      I5 => \sum_value_reg[15]_i_13_n_4\,
      O => \sum_value[15]_i_9_n_0\
    );
\sum_value[19]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[20]_i_6_n_1\,
      I1 => \sum_value_reg[20]_i_4_n_5\,
      I2 => \sum_value_reg[20]_i_5_n_1\,
      O => \sum_value[19]_i_11_n_0\
    );
\sum_value[19]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[20]_i_6_n_6\,
      I1 => \sum_value_reg[20]_i_4_n_6\,
      I2 => \sum_value_reg[20]_i_5_n_6\,
      O => \sum_value[19]_i_12_n_0\
    );
\sum_value[19]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[20]_i_6_n_7\,
      I1 => \sum_value_reg[20]_i_4_n_7\,
      I2 => \sum_value_reg[20]_i_5_n_7\,
      O => \sum_value[19]_i_13_n_0\
    );
\sum_value[19]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[19]_i_14_n_4\,
      I1 => \sum_value_reg[19]_i_16_n_4\,
      I2 => \sum_value_reg[19]_i_15_n_4\,
      O => \sum_value[19]_i_18_n_0\
    );
\sum_value[19]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_4_n_6\,
      I1 => \sum_value_reg[20]_i_5_n_6\,
      I2 => \sum_value_reg[20]_i_6_n_6\,
      O => \sum_value[19]_i_19_n_0\
    );
\sum_value[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_10_n_1\,
      I1 => \sum_value[19]_i_11_n_0\,
      I2 => \sum_value_reg[20]_i_6_n_6\,
      I3 => \sum_value_reg[20]_i_5_n_6\,
      I4 => \sum_value_reg[20]_i_4_n_6\,
      O => \sum_value[19]_i_2_n_0\
    );
\sum_value[19]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(15),
      I1 => \temp_value_reg[9]_8\(15),
      I2 => \temp_value_reg[10]_9\(15),
      O => \sum_value[19]_i_20_n_0\
    );
\sum_value[19]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(16),
      I1 => \temp_value_reg[9]_8\(16),
      I2 => \temp_value_reg[10]_9\(16),
      O => \sum_value[19]_i_21_n_0\
    );
\sum_value[19]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[19]_i_20_n_0\,
      I1 => \temp_value_reg[9]_8\(16),
      I2 => \temp_value_reg[8]_7\(16),
      I3 => \temp_value_reg[10]_9\(16),
      O => \sum_value[19]_i_22_n_0\
    );
\sum_value[19]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(14),
      I1 => \temp_value_reg[6]_5\(14),
      I2 => \temp_value_reg[7]_6\(14),
      O => \sum_value[19]_i_23_n_0\
    );
\sum_value[19]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(13),
      I1 => \temp_value_reg[6]_5\(13),
      I2 => \temp_value_reg[7]_6\(13),
      O => \sum_value[19]_i_24_n_0\
    );
\sum_value[19]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(12),
      I1 => \temp_value_reg[6]_5\(12),
      I2 => \temp_value_reg[7]_6\(12),
      O => \sum_value[19]_i_25_n_0\
    );
\sum_value[19]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(11),
      I1 => \temp_value_reg[6]_5\(11),
      I2 => \temp_value_reg[7]_6\(11),
      O => \sum_value[19]_i_26_n_0\
    );
\sum_value[19]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(15),
      I1 => \temp_value_reg[6]_5\(15),
      I2 => \temp_value_reg[7]_6\(15),
      I3 => \sum_value[19]_i_23_n_0\,
      O => \sum_value[19]_i_27_n_0\
    );
\sum_value[19]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(14),
      I1 => \temp_value_reg[6]_5\(14),
      I2 => \temp_value_reg[7]_6\(14),
      I3 => \sum_value[19]_i_24_n_0\,
      O => \sum_value[19]_i_28_n_0\
    );
\sum_value[19]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(13),
      I1 => \temp_value_reg[6]_5\(13),
      I2 => \temp_value_reg[7]_6\(13),
      I3 => \sum_value[19]_i_25_n_0\,
      O => \sum_value[19]_i_29_n_0\
    );
\sum_value[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_10_n_6\,
      I1 => \sum_value[19]_i_12_n_0\,
      I2 => \sum_value_reg[20]_i_6_n_7\,
      I3 => \sum_value_reg[20]_i_5_n_7\,
      I4 => \sum_value_reg[20]_i_4_n_7\,
      O => \sum_value[19]_i_3_n_0\
    );
\sum_value[19]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(12),
      I1 => \temp_value_reg[6]_5\(12),
      I2 => \temp_value_reg[7]_6\(12),
      I3 => \sum_value[19]_i_26_n_0\,
      O => \sum_value[19]_i_30_n_0\
    );
\sum_value[19]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(14),
      I1 => \temp_value_reg[3]_2\(14),
      I2 => \temp_value_reg[4]_3\(14),
      O => \sum_value[19]_i_31_n_0\
    );
\sum_value[19]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(13),
      I1 => \temp_value_reg[3]_2\(13),
      I2 => \temp_value_reg[4]_3\(13),
      O => \sum_value[19]_i_32_n_0\
    );
\sum_value[19]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(12),
      I1 => \temp_value_reg[3]_2\(12),
      I2 => \temp_value_reg[4]_3\(12),
      O => \sum_value[19]_i_33_n_0\
    );
\sum_value[19]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(11),
      I1 => \temp_value_reg[3]_2\(11),
      I2 => \temp_value_reg[4]_3\(11),
      O => \sum_value[19]_i_34_n_0\
    );
\sum_value[19]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(15),
      I1 => \temp_value_reg[3]_2\(15),
      I2 => \temp_value_reg[4]_3\(15),
      I3 => \sum_value[19]_i_31_n_0\,
      O => \sum_value[19]_i_35_n_0\
    );
\sum_value[19]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(14),
      I1 => \temp_value_reg[3]_2\(14),
      I2 => \temp_value_reg[4]_3\(14),
      I3 => \sum_value[19]_i_32_n_0\,
      O => \sum_value[19]_i_36_n_0\
    );
\sum_value[19]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(13),
      I1 => \temp_value_reg[3]_2\(13),
      I2 => \temp_value_reg[4]_3\(13),
      I3 => \sum_value[19]_i_33_n_0\,
      O => \sum_value[19]_i_37_n_0\
    );
\sum_value[19]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(12),
      I1 => \temp_value_reg[3]_2\(12),
      I2 => \temp_value_reg[4]_3\(12),
      I3 => \sum_value[19]_i_34_n_0\,
      O => \sum_value[19]_i_38_n_0\
    );
\sum_value[19]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_5\,
      I1 => \sum_value_reg[20]_i_25_n_5\,
      I2 => \temp_value_reg[1]_0\(14),
      O => \sum_value[19]_i_39_n_0\
    );
\sum_value[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_10_n_7\,
      I1 => \sum_value[19]_i_13_n_0\,
      I2 => \sum_value_reg[19]_i_14_n_4\,
      I3 => \sum_value_reg[19]_i_15_n_4\,
      I4 => \sum_value_reg[19]_i_16_n_4\,
      O => \sum_value[19]_i_4_n_0\
    );
\sum_value[19]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_6\,
      I1 => \sum_value_reg[20]_i_25_n_6\,
      I2 => \temp_value_reg[1]_0\(13),
      O => \sum_value[19]_i_40_n_0\
    );
\sum_value[19]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_7\,
      I1 => \sum_value_reg[20]_i_25_n_7\,
      I2 => \temp_value_reg[1]_0\(12),
      O => \sum_value[19]_i_41_n_0\
    );
\sum_value[19]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[19]_i_55_n_4\,
      I1 => \sum_value_reg[19]_i_56_n_4\,
      I2 => \temp_value_reg[1]_0\(11),
      O => \sum_value[19]_i_42_n_0\
    );
\sum_value[19]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_4\,
      I1 => \sum_value_reg[20]_i_25_n_4\,
      I2 => \temp_value_reg[1]_0\(15),
      I3 => \sum_value[19]_i_39_n_0\,
      O => \sum_value[19]_i_43_n_0\
    );
\sum_value[19]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_5\,
      I1 => \sum_value_reg[20]_i_25_n_5\,
      I2 => \temp_value_reg[1]_0\(14),
      I3 => \sum_value[19]_i_40_n_0\,
      O => \sum_value[19]_i_44_n_0\
    );
\sum_value[19]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_6\,
      I1 => \sum_value_reg[20]_i_25_n_6\,
      I2 => \temp_value_reg[1]_0\(13),
      I3 => \sum_value[19]_i_41_n_0\,
      O => \sum_value[19]_i_45_n_0\
    );
\sum_value[19]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_7\,
      I1 => \sum_value_reg[20]_i_25_n_7\,
      I2 => \temp_value_reg[1]_0\(12),
      I3 => \sum_value[19]_i_42_n_0\,
      O => \sum_value[19]_i_46_n_0\
    );
\sum_value[19]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(14),
      I1 => \temp_value_reg[9]_8\(14),
      I2 => \temp_value_reg[10]_9\(14),
      O => \sum_value[19]_i_47_n_0\
    );
\sum_value[19]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(13),
      I1 => \temp_value_reg[9]_8\(13),
      I2 => \temp_value_reg[10]_9\(13),
      O => \sum_value[19]_i_48_n_0\
    );
\sum_value[19]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(12),
      I1 => \temp_value_reg[9]_8\(12),
      I2 => \temp_value_reg[10]_9\(12),
      O => \sum_value[19]_i_49_n_0\
    );
\sum_value[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[19]_i_17_n_4\,
      I1 => \sum_value[19]_i_18_n_0\,
      I2 => \sum_value_reg[19]_i_14_n_5\,
      I3 => \sum_value_reg[19]_i_15_n_5\,
      I4 => \sum_value_reg[19]_i_16_n_5\,
      O => \sum_value[19]_i_5_n_0\
    );
\sum_value[19]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(11),
      I1 => \temp_value_reg[9]_8\(11),
      I2 => \temp_value_reg[10]_9\(11),
      O => \sum_value[19]_i_50_n_0\
    );
\sum_value[19]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(15),
      I1 => \temp_value_reg[9]_8\(15),
      I2 => \temp_value_reg[10]_9\(15),
      I3 => \sum_value[19]_i_47_n_0\,
      O => \sum_value[19]_i_51_n_0\
    );
\sum_value[19]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(14),
      I1 => \temp_value_reg[9]_8\(14),
      I2 => \temp_value_reg[10]_9\(14),
      I3 => \sum_value[19]_i_48_n_0\,
      O => \sum_value[19]_i_52_n_0\
    );
\sum_value[19]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(13),
      I1 => \temp_value_reg[9]_8\(13),
      I2 => \temp_value_reg[10]_9\(13),
      I3 => \sum_value[19]_i_49_n_0\,
      O => \sum_value[19]_i_53_n_0\
    );
\sum_value[19]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(12),
      I1 => \temp_value_reg[9]_8\(12),
      I2 => \temp_value_reg[10]_9\(12),
      I3 => \sum_value[19]_i_50_n_0\,
      O => \sum_value[19]_i_54_n_0\
    );
\sum_value[19]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(10),
      I1 => \temp_value_reg[12]_11\(10),
      I2 => \temp_value_reg[13]_12\(10),
      O => \sum_value[19]_i_57_n_0\
    );
\sum_value[19]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(9),
      I1 => \temp_value_reg[12]_11\(9),
      I2 => \temp_value_reg[13]_12\(9),
      O => \sum_value[19]_i_58_n_0\
    );
\sum_value[19]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(8),
      I1 => \temp_value_reg[12]_11\(8),
      I2 => \temp_value_reg[13]_12\(8),
      O => \sum_value[19]_i_59_n_0\
    );
\sum_value[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => \sum_value[19]_i_19_n_0\,
      I1 => \sum_value_reg[19]_i_10_n_1\,
      I2 => \sum_value_reg[20]_i_4_n_4\,
      I3 => \sum_value_reg[20]_i_4_n_5\,
      I4 => \sum_value_reg[20]_i_5_n_1\,
      I5 => \sum_value_reg[20]_i_6_n_1\,
      O => \sum_value[19]_i_6_n_0\
    );
\sum_value[19]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(7),
      I1 => \temp_value_reg[12]_11\(7),
      I2 => \temp_value_reg[13]_12\(7),
      O => \sum_value[19]_i_60_n_0\
    );
\sum_value[19]_i_61\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(11),
      I1 => \temp_value_reg[12]_11\(11),
      I2 => \temp_value_reg[13]_12\(11),
      I3 => \sum_value[19]_i_57_n_0\,
      O => \sum_value[19]_i_61_n_0\
    );
\sum_value[19]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(10),
      I1 => \temp_value_reg[12]_11\(10),
      I2 => \temp_value_reg[13]_12\(10),
      I3 => \sum_value[19]_i_58_n_0\,
      O => \sum_value[19]_i_62_n_0\
    );
\sum_value[19]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(9),
      I1 => \temp_value_reg[12]_11\(9),
      I2 => \temp_value_reg[13]_12\(9),
      I3 => \sum_value[19]_i_59_n_0\,
      O => \sum_value[19]_i_63_n_0\
    );
\sum_value[19]_i_64\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(8),
      I1 => \temp_value_reg[12]_11\(8),
      I2 => \temp_value_reg[13]_12\(8),
      I3 => \sum_value[19]_i_60_n_0\,
      O => \sum_value[19]_i_64_n_0\
    );
\sum_value[19]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(10),
      I1 => \temp_value_reg[15]_14\(10),
      I2 => \temp_value_reg[0]_15\(10),
      O => \sum_value[19]_i_65_n_0\
    );
\sum_value[19]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(9),
      I1 => \temp_value_reg[15]_14\(9),
      I2 => \temp_value_reg[0]_15\(9),
      O => \sum_value[19]_i_66_n_0\
    );
\sum_value[19]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(8),
      I1 => \temp_value_reg[15]_14\(8),
      I2 => \temp_value_reg[0]_15\(8),
      O => \sum_value[19]_i_67_n_0\
    );
\sum_value[19]_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(7),
      I1 => \temp_value_reg[15]_14\(7),
      I2 => \temp_value_reg[0]_15\(7),
      O => \sum_value[19]_i_68_n_0\
    );
\sum_value[19]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(11),
      I1 => \temp_value_reg[15]_14\(11),
      I2 => \temp_value_reg[0]_15\(11),
      I3 => \sum_value[19]_i_65_n_0\,
      O => \sum_value[19]_i_69_n_0\
    );
\sum_value[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[19]_i_3_n_0\,
      I1 => \sum_value[19]_i_11_n_0\,
      I2 => \sum_value_reg[19]_i_10_n_1\,
      I3 => \sum_value_reg[20]_i_4_n_6\,
      I4 => \sum_value_reg[20]_i_5_n_6\,
      I5 => \sum_value_reg[20]_i_6_n_6\,
      O => \sum_value[19]_i_7_n_0\
    );
\sum_value[19]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(10),
      I1 => \temp_value_reg[15]_14\(10),
      I2 => \temp_value_reg[0]_15\(10),
      I3 => \sum_value[19]_i_66_n_0\,
      O => \sum_value[19]_i_70_n_0\
    );
\sum_value[19]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(9),
      I1 => \temp_value_reg[15]_14\(9),
      I2 => \temp_value_reg[0]_15\(9),
      I3 => \sum_value[19]_i_67_n_0\,
      O => \sum_value[19]_i_71_n_0\
    );
\sum_value[19]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(8),
      I1 => \temp_value_reg[15]_14\(8),
      I2 => \temp_value_reg[0]_15\(8),
      I3 => \sum_value[19]_i_68_n_0\,
      O => \sum_value[19]_i_72_n_0\
    );
\sum_value[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[19]_i_4_n_0\,
      I1 => \sum_value[19]_i_12_n_0\,
      I2 => \sum_value_reg[19]_i_10_n_6\,
      I3 => \sum_value_reg[20]_i_4_n_7\,
      I4 => \sum_value_reg[20]_i_5_n_7\,
      I5 => \sum_value_reg[20]_i_6_n_7\,
      O => \sum_value[19]_i_8_n_0\
    );
\sum_value[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[19]_i_5_n_0\,
      I1 => \sum_value[19]_i_13_n_0\,
      I2 => \sum_value_reg[19]_i_10_n_7\,
      I3 => \sum_value_reg[19]_i_16_n_4\,
      I4 => \sum_value_reg[19]_i_15_n_4\,
      I5 => \sum_value_reg[19]_i_14_n_4\,
      O => \sum_value[19]_i_9_n_0\
    );
\sum_value[20]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_22_n_7\,
      I1 => \sum_value_reg[20]_i_23_n_7\,
      I2 => \temp_value_reg[1]_0\(16),
      O => \sum_value[20]_i_10_n_0\
    );
\sum_value[20]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_24_n_4\,
      I1 => \sum_value_reg[20]_i_25_n_4\,
      I2 => \temp_value_reg[1]_0\(15),
      O => \sum_value[20]_i_11_n_0\
    );
\sum_value[20]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_22_n_1\,
      I1 => \sum_value_reg[20]_i_23_n_1\,
      O => \sum_value[20]_i_12_n_0\
    );
\sum_value[20]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \sum_value_reg[20]_i_23_n_6\,
      I1 => \sum_value_reg[20]_i_22_n_6\,
      I2 => \sum_value_reg[20]_i_22_n_1\,
      I3 => \sum_value_reg[20]_i_23_n_1\,
      O => \sum_value[20]_i_13_n_0\
    );
\sum_value[20]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \temp_value_reg[1]_0\(16),
      I1 => \sum_value_reg[20]_i_23_n_7\,
      I2 => \sum_value_reg[20]_i_22_n_7\,
      I3 => \sum_value_reg[20]_i_22_n_6\,
      I4 => \sum_value_reg[20]_i_23_n_6\,
      O => \sum_value[20]_i_14_n_0\
    );
\sum_value[20]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[20]_i_11_n_0\,
      I1 => \sum_value_reg[20]_i_23_n_7\,
      I2 => \sum_value_reg[20]_i_22_n_7\,
      I3 => \temp_value_reg[1]_0\(16),
      O => \sum_value[20]_i_15_n_0\
    );
\sum_value[20]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(15),
      I1 => \temp_value_reg[3]_2\(15),
      I2 => \temp_value_reg[4]_3\(15),
      O => \sum_value[20]_i_16_n_0\
    );
\sum_value[20]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(16),
      I1 => \temp_value_reg[3]_2\(16),
      I2 => \temp_value_reg[4]_3\(16),
      O => \sum_value[20]_i_17_n_0\
    );
\sum_value[20]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[20]_i_16_n_0\,
      I1 => \temp_value_reg[3]_2\(16),
      I2 => \temp_value_reg[2]_1\(16),
      I3 => \temp_value_reg[4]_3\(16),
      O => \sum_value[20]_i_18_n_0\
    );
\sum_value[20]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(15),
      I1 => \temp_value_reg[6]_5\(15),
      I2 => \temp_value_reg[7]_6\(15),
      O => \sum_value[20]_i_19_n_0\
    );
\sum_value[20]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(16),
      I1 => \temp_value_reg[6]_5\(16),
      I2 => \temp_value_reg[7]_6\(16),
      O => \sum_value[20]_i_20_n_0\
    );
\sum_value[20]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[20]_i_19_n_0\,
      I1 => \temp_value_reg[6]_5\(16),
      I2 => \temp_value_reg[5]_4\(16),
      I3 => \temp_value_reg[7]_6\(16),
      O => \sum_value[20]_i_21_n_0\
    );
\sum_value[20]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(15),
      I1 => \temp_value_reg[12]_11\(15),
      I2 => \temp_value_reg[13]_12\(15),
      O => \sum_value[20]_i_26_n_0\
    );
\sum_value[20]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(16),
      I1 => \temp_value_reg[12]_11\(16),
      I2 => \temp_value_reg[13]_12\(16),
      O => \sum_value[20]_i_27_n_0\
    );
\sum_value[20]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[20]_i_26_n_0\,
      I1 => \temp_value_reg[12]_11\(16),
      I2 => \temp_value_reg[11]_10\(16),
      I3 => \temp_value_reg[13]_12\(16),
      O => \sum_value[20]_i_28_n_0\
    );
\sum_value[20]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(15),
      I1 => \temp_value_reg[15]_14\(15),
      I2 => \temp_value_reg[0]_15\(15),
      O => \sum_value[20]_i_29_n_0\
    );
\sum_value[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17FFE800"
    )
        port map (
      I0 => \sum_value_reg[20]_i_4_n_5\,
      I1 => \sum_value_reg[20]_i_5_n_1\,
      I2 => \sum_value_reg[20]_i_6_n_1\,
      I3 => \sum_value_reg[20]_i_4_n_4\,
      I4 => \sum_value_reg[20]_i_7_n_3\,
      O => \sum_value[20]_i_3_n_0\
    );
\sum_value[20]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(16),
      I1 => \temp_value_reg[15]_14\(16),
      I2 => \temp_value_reg[0]_15\(16),
      O => \sum_value[20]_i_30_n_0\
    );
\sum_value[20]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value[20]_i_29_n_0\,
      I1 => \temp_value_reg[15]_14\(16),
      I2 => \temp_value_reg[14]_13\(16),
      I3 => \temp_value_reg[0]_15\(16),
      O => \sum_value[20]_i_31_n_0\
    );
\sum_value[20]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(14),
      I1 => \temp_value_reg[12]_11\(14),
      I2 => \temp_value_reg[13]_12\(14),
      O => \sum_value[20]_i_32_n_0\
    );
\sum_value[20]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(13),
      I1 => \temp_value_reg[12]_11\(13),
      I2 => \temp_value_reg[13]_12\(13),
      O => \sum_value[20]_i_33_n_0\
    );
\sum_value[20]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(12),
      I1 => \temp_value_reg[12]_11\(12),
      I2 => \temp_value_reg[13]_12\(12),
      O => \sum_value[20]_i_34_n_0\
    );
\sum_value[20]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(11),
      I1 => \temp_value_reg[12]_11\(11),
      I2 => \temp_value_reg[13]_12\(11),
      O => \sum_value[20]_i_35_n_0\
    );
\sum_value[20]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(15),
      I1 => \temp_value_reg[12]_11\(15),
      I2 => \temp_value_reg[13]_12\(15),
      I3 => \sum_value[20]_i_32_n_0\,
      O => \sum_value[20]_i_36_n_0\
    );
\sum_value[20]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(14),
      I1 => \temp_value_reg[12]_11\(14),
      I2 => \temp_value_reg[13]_12\(14),
      I3 => \sum_value[20]_i_33_n_0\,
      O => \sum_value[20]_i_37_n_0\
    );
\sum_value[20]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(13),
      I1 => \temp_value_reg[12]_11\(13),
      I2 => \temp_value_reg[13]_12\(13),
      I3 => \sum_value[20]_i_34_n_0\,
      O => \sum_value[20]_i_38_n_0\
    );
\sum_value[20]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[11]_10\(12),
      I1 => \temp_value_reg[12]_11\(12),
      I2 => \temp_value_reg[13]_12\(12),
      I3 => \sum_value[20]_i_35_n_0\,
      O => \sum_value[20]_i_39_n_0\
    );
\sum_value[20]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(14),
      I1 => \temp_value_reg[15]_14\(14),
      I2 => \temp_value_reg[0]_15\(14),
      O => \sum_value[20]_i_40_n_0\
    );
\sum_value[20]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(13),
      I1 => \temp_value_reg[15]_14\(13),
      I2 => \temp_value_reg[0]_15\(13),
      O => \sum_value[20]_i_41_n_0\
    );
\sum_value[20]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(12),
      I1 => \temp_value_reg[15]_14\(12),
      I2 => \temp_value_reg[0]_15\(12),
      O => \sum_value[20]_i_42_n_0\
    );
\sum_value[20]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(11),
      I1 => \temp_value_reg[15]_14\(11),
      I2 => \temp_value_reg[0]_15\(11),
      O => \sum_value[20]_i_43_n_0\
    );
\sum_value[20]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(15),
      I1 => \temp_value_reg[15]_14\(15),
      I2 => \temp_value_reg[0]_15\(15),
      I3 => \sum_value[20]_i_40_n_0\,
      O => \sum_value[20]_i_44_n_0\
    );
\sum_value[20]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(14),
      I1 => \temp_value_reg[15]_14\(14),
      I2 => \temp_value_reg[0]_15\(14),
      I3 => \sum_value[20]_i_41_n_0\,
      O => \sum_value[20]_i_45_n_0\
    );
\sum_value[20]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(13),
      I1 => \temp_value_reg[15]_14\(13),
      I2 => \temp_value_reg[0]_15\(13),
      I3 => \sum_value[20]_i_42_n_0\,
      O => \sum_value[20]_i_46_n_0\
    );
\sum_value[20]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[14]_13\(12),
      I1 => \temp_value_reg[15]_14\(12),
      I2 => \temp_value_reg[0]_15\(12),
      I3 => \sum_value[20]_i_43_n_0\,
      O => \sum_value[20]_i_47_n_0\
    );
\sum_value[20]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_22_n_1\,
      I1 => \sum_value_reg[20]_i_23_n_1\,
      O => \sum_value[20]_i_8_n_0\
    );
\sum_value[20]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sum_value_reg[20]_i_22_n_6\,
      I1 => \sum_value_reg[20]_i_23_n_6\,
      O => \sum_value[20]_i_9_n_0\
    );
\sum_value[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[7]_i_6_n_0\,
      I1 => \sum_value[7]_i_21_n_0\,
      I2 => \sum_value_reg[11]_i_16_n_7\,
      I3 => \sum_value_reg[7]_i_24_n_4\,
      I4 => \sum_value_reg[7]_i_23_n_4\,
      I5 => \sum_value_reg[7]_i_22_n_4\,
      O => \sum_value[7]_i_10_n_0\
    );
\sum_value[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[7]_i_14_n_5\,
      I1 => \sum_value[7]_i_26_n_0\,
      I2 => \sum_value_reg[7]_i_22_n_6\,
      I3 => \sum_value_reg[7]_i_23_n_6\,
      I4 => \sum_value_reg[7]_i_24_n_6\,
      O => \sum_value[7]_i_11_n_0\
    );
\sum_value[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \sum_value_reg[7]_i_22_n_6\,
      I1 => \sum_value_reg[7]_i_23_n_6\,
      I2 => \sum_value_reg[7]_i_24_n_6\,
      I3 => \sum_value_reg[7]_i_14_n_5\,
      I4 => \sum_value[7]_i_26_n_0\,
      O => \sum_value[7]_i_12_n_0\
    );
\sum_value[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[7]_i_23_n_6\,
      I1 => \sum_value_reg[7]_i_24_n_6\,
      I2 => \sum_value_reg[7]_i_22_n_6\,
      I3 => \sum_value_reg[7]_i_14_n_6\,
      O => \sum_value[7]_i_13_n_0\
    );
\sum_value[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[7]_i_11_n_0\,
      I1 => \sum_value[7]_i_25_n_0\,
      I2 => \sum_value_reg[7]_i_14_n_4\,
      I3 => \sum_value_reg[7]_i_24_n_5\,
      I4 => \sum_value_reg[7]_i_23_n_5\,
      I5 => \sum_value_reg[7]_i_22_n_5\,
      O => \sum_value[7]_i_15_n_0\
    );
\sum_value[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \sum_value[7]_i_26_n_0\,
      I1 => \sum_value_reg[7]_i_14_n_5\,
      I2 => \sum_value_reg[7]_i_22_n_6\,
      I3 => \sum_value_reg[7]_i_24_n_6\,
      I4 => \sum_value_reg[7]_i_23_n_6\,
      I5 => \sum_value_reg[7]_i_14_n_6\,
      O => \sum_value[7]_i_16_n_0\
    );
\sum_value[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \sum_value[7]_i_13_n_0\,
      I1 => \sum_value_reg[7]_i_22_n_7\,
      I2 => \sum_value_reg[7]_i_23_n_7\,
      I3 => \sum_value_reg[7]_i_24_n_7\,
      O => \sum_value[7]_i_17_n_0\
    );
\sum_value[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[7]_i_23_n_7\,
      I1 => \sum_value_reg[7]_i_24_n_7\,
      I2 => \sum_value_reg[7]_i_22_n_7\,
      I3 => \sum_value_reg[7]_i_14_n_7\,
      O => \sum_value[7]_i_18_n_0\
    );
\sum_value[7]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[11]_i_13_n_5\,
      I1 => \sum_value_reg[11]_i_15_n_5\,
      I2 => \sum_value_reg[11]_i_14_n_5\,
      O => \sum_value[7]_i_19_n_0\
    );
\sum_value[7]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[11]_i_13_n_6\,
      I1 => \sum_value_reg[11]_i_15_n_6\,
      I2 => \sum_value_reg[11]_i_14_n_6\,
      O => \sum_value[7]_i_20_n_0\
    );
\sum_value[7]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[11]_i_13_n_7\,
      I1 => \sum_value_reg[11]_i_15_n_7\,
      I2 => \sum_value_reg[11]_i_14_n_7\,
      O => \sum_value[7]_i_21_n_0\
    );
\sum_value[7]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[7]_i_22_n_4\,
      I1 => \sum_value_reg[7]_i_24_n_4\,
      I2 => \sum_value_reg[7]_i_23_n_4\,
      O => \sum_value[7]_i_25_n_0\
    );
\sum_value[7]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[7]_i_22_n_5\,
      I1 => \sum_value_reg[7]_i_24_n_5\,
      I2 => \sum_value_reg[7]_i_23_n_5\,
      O => \sum_value[7]_i_26_n_0\
    );
\sum_value[7]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(2),
      I1 => \temp_value_reg[9]_8\(2),
      I2 => \temp_value_reg[10]_9\(2),
      O => \sum_value[7]_i_27_n_0\
    );
\sum_value[7]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(1),
      I1 => \temp_value_reg[9]_8\(1),
      I2 => \temp_value_reg[10]_9\(1),
      O => \sum_value[7]_i_28_n_0\
    );
\sum_value[7]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(0),
      I1 => \temp_value_reg[9]_8\(0),
      I2 => \temp_value_reg[10]_9\(0),
      O => \sum_value[7]_i_29_n_0\
    );
\sum_value[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[11]_i_16_n_5\,
      I1 => \sum_value[7]_i_19_n_0\,
      I2 => \sum_value_reg[11]_i_13_n_6\,
      I3 => \sum_value_reg[11]_i_14_n_6\,
      I4 => \sum_value_reg[11]_i_15_n_6\,
      O => \sum_value[7]_i_3_n_0\
    );
\sum_value[7]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(3),
      I1 => \temp_value_reg[9]_8\(3),
      I2 => \temp_value_reg[10]_9\(3),
      I3 => \sum_value[7]_i_27_n_0\,
      O => \sum_value[7]_i_30_n_0\
    );
\sum_value[7]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(2),
      I1 => \temp_value_reg[9]_8\(2),
      I2 => \temp_value_reg[10]_9\(2),
      I3 => \sum_value[7]_i_28_n_0\,
      O => \sum_value[7]_i_31_n_0\
    );
\sum_value[7]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(1),
      I1 => \temp_value_reg[9]_8\(1),
      I2 => \temp_value_reg[10]_9\(1),
      I3 => \sum_value[7]_i_29_n_0\,
      O => \sum_value[7]_i_32_n_0\
    );
\sum_value[7]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_value_reg[8]_7\(0),
      I1 => \temp_value_reg[9]_8\(0),
      I2 => \temp_value_reg[10]_9\(0),
      O => \sum_value[7]_i_33_n_0\
    );
\sum_value[7]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(2),
      I1 => \temp_value_reg[6]_5\(2),
      I2 => \temp_value_reg[7]_6\(2),
      O => \sum_value[7]_i_34_n_0\
    );
\sum_value[7]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(1),
      I1 => \temp_value_reg[6]_5\(1),
      I2 => \temp_value_reg[7]_6\(1),
      O => \sum_value[7]_i_35_n_0\
    );
\sum_value[7]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(0),
      I1 => \temp_value_reg[6]_5\(0),
      I2 => \temp_value_reg[7]_6\(0),
      O => \sum_value[7]_i_36_n_0\
    );
\sum_value[7]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(3),
      I1 => \temp_value_reg[6]_5\(3),
      I2 => \temp_value_reg[7]_6\(3),
      I3 => \sum_value[7]_i_34_n_0\,
      O => \sum_value[7]_i_37_n_0\
    );
\sum_value[7]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(2),
      I1 => \temp_value_reg[6]_5\(2),
      I2 => \temp_value_reg[7]_6\(2),
      I3 => \sum_value[7]_i_35_n_0\,
      O => \sum_value[7]_i_38_n_0\
    );
\sum_value[7]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(1),
      I1 => \temp_value_reg[6]_5\(1),
      I2 => \temp_value_reg[7]_6\(1),
      I3 => \sum_value[7]_i_36_n_0\,
      O => \sum_value[7]_i_39_n_0\
    );
\sum_value[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[11]_i_16_n_6\,
      I1 => \sum_value[7]_i_20_n_0\,
      I2 => \sum_value_reg[11]_i_13_n_7\,
      I3 => \sum_value_reg[11]_i_14_n_7\,
      I4 => \sum_value_reg[11]_i_15_n_7\,
      O => \sum_value[7]_i_4_n_0\
    );
\sum_value[7]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_value_reg[5]_4\(0),
      I1 => \temp_value_reg[6]_5\(0),
      I2 => \temp_value_reg[7]_6\(0),
      O => \sum_value[7]_i_40_n_0\
    );
\sum_value[7]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(2),
      I1 => \temp_value_reg[3]_2\(2),
      I2 => \temp_value_reg[4]_3\(2),
      O => \sum_value[7]_i_41_n_0\
    );
\sum_value[7]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(1),
      I1 => \temp_value_reg[3]_2\(1),
      I2 => \temp_value_reg[4]_3\(1),
      O => \sum_value[7]_i_42_n_0\
    );
\sum_value[7]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(0),
      I1 => \temp_value_reg[3]_2\(0),
      I2 => \temp_value_reg[4]_3\(0),
      O => \sum_value[7]_i_43_n_0\
    );
\sum_value[7]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(3),
      I1 => \temp_value_reg[3]_2\(3),
      I2 => \temp_value_reg[4]_3\(3),
      I3 => \sum_value[7]_i_41_n_0\,
      O => \sum_value[7]_i_44_n_0\
    );
\sum_value[7]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(2),
      I1 => \temp_value_reg[3]_2\(2),
      I2 => \temp_value_reg[4]_3\(2),
      I3 => \sum_value[7]_i_42_n_0\,
      O => \sum_value[7]_i_45_n_0\
    );
\sum_value[7]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(1),
      I1 => \temp_value_reg[3]_2\(1),
      I2 => \temp_value_reg[4]_3\(1),
      I3 => \sum_value[7]_i_43_n_0\,
      O => \sum_value[7]_i_46_n_0\
    );
\sum_value[7]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_value_reg[2]_1\(0),
      I1 => \temp_value_reg[3]_2\(0),
      I2 => \temp_value_reg[4]_3\(0),
      O => \sum_value[7]_i_47_n_0\
    );
\sum_value[7]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_5\,
      I1 => \sum_value_reg[11]_i_51_n_5\,
      I2 => \temp_value_reg[1]_0\(2),
      O => \sum_value[7]_i_48_n_0\
    );
\sum_value[7]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_6\,
      I1 => \sum_value_reg[11]_i_51_n_6\,
      I2 => \temp_value_reg[1]_0\(1),
      O => \sum_value[7]_i_49_n_0\
    );
\sum_value[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[11]_i_16_n_7\,
      I1 => \sum_value[7]_i_21_n_0\,
      I2 => \sum_value_reg[7]_i_22_n_4\,
      I3 => \sum_value_reg[7]_i_23_n_4\,
      I4 => \sum_value_reg[7]_i_24_n_4\,
      O => \sum_value[7]_i_5_n_0\
    );
\sum_value[7]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_7\,
      I1 => \sum_value_reg[11]_i_51_n_7\,
      I2 => \temp_value_reg[1]_0\(0),
      O => \sum_value[7]_i_50_n_0\
    );
\sum_value[7]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_4\,
      I1 => \sum_value_reg[11]_i_51_n_4\,
      I2 => \temp_value_reg[1]_0\(3),
      I3 => \sum_value[7]_i_48_n_0\,
      O => \sum_value[7]_i_51_n_0\
    );
\sum_value[7]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_5\,
      I1 => \sum_value_reg[11]_i_51_n_5\,
      I2 => \temp_value_reg[1]_0\(2),
      I3 => \sum_value[7]_i_49_n_0\,
      O => \sum_value[7]_i_52_n_0\
    );
\sum_value[7]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_6\,
      I1 => \sum_value_reg[11]_i_51_n_6\,
      I2 => \temp_value_reg[1]_0\(1),
      I3 => \sum_value[7]_i_50_n_0\,
      O => \sum_value[7]_i_53_n_0\
    );
\sum_value[7]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_value_reg[11]_i_50_n_7\,
      I1 => \sum_value_reg[11]_i_51_n_7\,
      I2 => \temp_value_reg[1]_0\(0),
      O => \sum_value[7]_i_54_n_0\
    );
\sum_value[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \sum_value_reg[7]_i_14_n_4\,
      I1 => \sum_value[7]_i_25_n_0\,
      I2 => \sum_value_reg[7]_i_22_n_5\,
      I3 => \sum_value_reg[7]_i_23_n_5\,
      I4 => \sum_value_reg[7]_i_24_n_5\,
      O => \sum_value[7]_i_6_n_0\
    );
\sum_value[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[7]_i_3_n_0\,
      I1 => \sum_value[11]_i_17_n_0\,
      I2 => \sum_value_reg[11]_i_16_n_4\,
      I3 => \sum_value_reg[11]_i_15_n_5\,
      I4 => \sum_value_reg[11]_i_14_n_5\,
      I5 => \sum_value_reg[11]_i_13_n_5\,
      O => \sum_value[7]_i_7_n_0\
    );
\sum_value[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[7]_i_4_n_0\,
      I1 => \sum_value[7]_i_19_n_0\,
      I2 => \sum_value_reg[11]_i_16_n_5\,
      I3 => \sum_value_reg[11]_i_15_n_6\,
      I4 => \sum_value_reg[11]_i_14_n_6\,
      I5 => \sum_value_reg[11]_i_13_n_6\,
      O => \sum_value[7]_i_8_n_0\
    );
\sum_value[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \sum_value[7]_i_5_n_0\,
      I1 => \sum_value[7]_i_20_n_0\,
      I2 => \sum_value_reg[11]_i_16_n_6\,
      I3 => \sum_value_reg[11]_i_15_n_7\,
      I4 => \sum_value_reg[11]_i_14_n_7\,
      I5 => \sum_value_reg[11]_i_13_n_7\,
      O => \sum_value[7]_i_9_n_0\
    );
\sum_value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(10),
      Q => p_0_in_0(6)
    );
\sum_value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(11),
      Q => p_0_in_0(7)
    );
\sum_value_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_1_n_0\,
      CO(3) => \sum_value_reg[11]_i_1_n_0\,
      CO(2) => \sum_value_reg[11]_i_1_n_1\,
      CO(1) => \sum_value_reg[11]_i_1_n_2\,
      CO(0) => \sum_value_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_2_n_0\,
      DI(2) => \sum_value[11]_i_3_n_0\,
      DI(1) => \sum_value[11]_i_4_n_0\,
      DI(0) => \sum_value[11]_i_5_n_0\,
      O(3 downto 0) => p_1_in(11 downto 8),
      S(3) => \sum_value[11]_i_6_n_0\,
      S(2) => \sum_value[11]_i_7_n_0\,
      S(1) => \sum_value[11]_i_8_n_0\,
      S(0) => \sum_value[11]_i_9_n_0\
    );
\sum_value_reg[11]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_22_n_0\,
      CO(3) => \sum_value_reg[11]_i_13_n_0\,
      CO(2) => \sum_value_reg[11]_i_13_n_1\,
      CO(1) => \sum_value_reg[11]_i_13_n_2\,
      CO(0) => \sum_value_reg[11]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_18_n_0\,
      DI(2) => \sum_value[11]_i_19_n_0\,
      DI(1) => \sum_value[11]_i_20_n_0\,
      DI(0) => \sum_value[11]_i_21_n_0\,
      O(3) => \sum_value_reg[11]_i_13_n_4\,
      O(2) => \sum_value_reg[11]_i_13_n_5\,
      O(1) => \sum_value_reg[11]_i_13_n_6\,
      O(0) => \sum_value_reg[11]_i_13_n_7\,
      S(3) => \sum_value[11]_i_22_n_0\,
      S(2) => \sum_value[11]_i_23_n_0\,
      S(1) => \sum_value[11]_i_24_n_0\,
      S(0) => \sum_value[11]_i_25_n_0\
    );
\sum_value_reg[11]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_23_n_0\,
      CO(3) => \sum_value_reg[11]_i_14_n_0\,
      CO(2) => \sum_value_reg[11]_i_14_n_1\,
      CO(1) => \sum_value_reg[11]_i_14_n_2\,
      CO(0) => \sum_value_reg[11]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_26_n_0\,
      DI(2) => \sum_value[11]_i_27_n_0\,
      DI(1) => \sum_value[11]_i_28_n_0\,
      DI(0) => \sum_value[11]_i_29_n_0\,
      O(3) => \sum_value_reg[11]_i_14_n_4\,
      O(2) => \sum_value_reg[11]_i_14_n_5\,
      O(1) => \sum_value_reg[11]_i_14_n_6\,
      O(0) => \sum_value_reg[11]_i_14_n_7\,
      S(3) => \sum_value[11]_i_30_n_0\,
      S(2) => \sum_value[11]_i_31_n_0\,
      S(1) => \sum_value[11]_i_32_n_0\,
      S(0) => \sum_value[11]_i_33_n_0\
    );
\sum_value_reg[11]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_24_n_0\,
      CO(3) => \sum_value_reg[11]_i_15_n_0\,
      CO(2) => \sum_value_reg[11]_i_15_n_1\,
      CO(1) => \sum_value_reg[11]_i_15_n_2\,
      CO(0) => \sum_value_reg[11]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_34_n_0\,
      DI(2) => \sum_value[11]_i_35_n_0\,
      DI(1) => \sum_value[11]_i_36_n_0\,
      DI(0) => \sum_value[11]_i_37_n_0\,
      O(3) => \sum_value_reg[11]_i_15_n_4\,
      O(2) => \sum_value_reg[11]_i_15_n_5\,
      O(1) => \sum_value_reg[11]_i_15_n_6\,
      O(0) => \sum_value_reg[11]_i_15_n_7\,
      S(3) => \sum_value[11]_i_38_n_0\,
      S(2) => \sum_value[11]_i_39_n_0\,
      S(1) => \sum_value[11]_i_40_n_0\,
      S(0) => \sum_value[11]_i_41_n_0\
    );
\sum_value_reg[11]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_14_n_0\,
      CO(3) => \sum_value_reg[11]_i_16_n_0\,
      CO(2) => \sum_value_reg[11]_i_16_n_1\,
      CO(1) => \sum_value_reg[11]_i_16_n_2\,
      CO(0) => \sum_value_reg[11]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_42_n_0\,
      DI(2) => \sum_value[11]_i_43_n_0\,
      DI(1) => \sum_value[11]_i_44_n_0\,
      DI(0) => \sum_value[11]_i_45_n_0\,
      O(3) => \sum_value_reg[11]_i_16_n_4\,
      O(2) => \sum_value_reg[11]_i_16_n_5\,
      O(1) => \sum_value_reg[11]_i_16_n_6\,
      O(0) => \sum_value_reg[11]_i_16_n_7\,
      S(3) => \sum_value[11]_i_46_n_0\,
      S(2) => \sum_value[11]_i_47_n_0\,
      S(1) => \sum_value[11]_i_48_n_0\,
      S(0) => \sum_value[11]_i_49_n_0\
    );
\sum_value_reg[11]_i_50\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[11]_i_50_n_0\,
      CO(2) => \sum_value_reg[11]_i_50_n_1\,
      CO(1) => \sum_value_reg[11]_i_50_n_2\,
      CO(0) => \sum_value_reg[11]_i_50_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_52_n_0\,
      DI(2) => \sum_value[11]_i_53_n_0\,
      DI(1) => \sum_value[11]_i_54_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[11]_i_50_n_4\,
      O(2) => \sum_value_reg[11]_i_50_n_5\,
      O(1) => \sum_value_reg[11]_i_50_n_6\,
      O(0) => \sum_value_reg[11]_i_50_n_7\,
      S(3) => \sum_value[11]_i_55_n_0\,
      S(2) => \sum_value[11]_i_56_n_0\,
      S(1) => \sum_value[11]_i_57_n_0\,
      S(0) => \sum_value[11]_i_58_n_0\
    );
\sum_value_reg[11]_i_51\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[11]_i_51_n_0\,
      CO(2) => \sum_value_reg[11]_i_51_n_1\,
      CO(1) => \sum_value_reg[11]_i_51_n_2\,
      CO(0) => \sum_value_reg[11]_i_51_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[11]_i_59_n_0\,
      DI(2) => \sum_value[11]_i_60_n_0\,
      DI(1) => \sum_value[11]_i_61_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[11]_i_51_n_4\,
      O(2) => \sum_value_reg[11]_i_51_n_5\,
      O(1) => \sum_value_reg[11]_i_51_n_6\,
      O(0) => \sum_value_reg[11]_i_51_n_7\,
      S(3) => \sum_value[11]_i_62_n_0\,
      S(2) => \sum_value[11]_i_63_n_0\,
      S(1) => \sum_value[11]_i_64_n_0\,
      S(0) => \sum_value[11]_i_65_n_0\
    );
\sum_value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(12),
      Q => p_0_in_0(8)
    );
\sum_value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(13),
      Q => p_0_in_0(9)
    );
\sum_value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(14),
      Q => p_0_in_0(10)
    );
\sum_value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(15),
      Q => p_0_in_0(11)
    );
\sum_value_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_1_n_0\,
      CO(3) => \sum_value_reg[15]_i_1_n_0\,
      CO(2) => \sum_value_reg[15]_i_1_n_1\,
      CO(1) => \sum_value_reg[15]_i_1_n_2\,
      CO(0) => \sum_value_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_2_n_0\,
      DI(2) => \sum_value[15]_i_3_n_0\,
      DI(1) => \sum_value[15]_i_4_n_0\,
      DI(0) => \sum_value[15]_i_5_n_0\,
      O(3 downto 0) => p_1_in(15 downto 12),
      S(3) => \sum_value[15]_i_6_n_0\,
      S(2) => \sum_value[15]_i_7_n_0\,
      S(1) => \sum_value[15]_i_8_n_0\,
      S(0) => \sum_value[15]_i_9_n_0\
    );
\sum_value_reg[15]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_13_n_0\,
      CO(3) => \sum_value_reg[15]_i_13_n_0\,
      CO(2) => \sum_value_reg[15]_i_13_n_1\,
      CO(1) => \sum_value_reg[15]_i_13_n_2\,
      CO(0) => \sum_value_reg[15]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_18_n_0\,
      DI(2) => \sum_value[15]_i_19_n_0\,
      DI(1) => \sum_value[15]_i_20_n_0\,
      DI(0) => \sum_value[15]_i_21_n_0\,
      O(3) => \sum_value_reg[15]_i_13_n_4\,
      O(2) => \sum_value_reg[15]_i_13_n_5\,
      O(1) => \sum_value_reg[15]_i_13_n_6\,
      O(0) => \sum_value_reg[15]_i_13_n_7\,
      S(3) => \sum_value[15]_i_22_n_0\,
      S(2) => \sum_value[15]_i_23_n_0\,
      S(1) => \sum_value[15]_i_24_n_0\,
      S(0) => \sum_value[15]_i_25_n_0\
    );
\sum_value_reg[15]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_14_n_0\,
      CO(3) => \sum_value_reg[15]_i_14_n_0\,
      CO(2) => \sum_value_reg[15]_i_14_n_1\,
      CO(1) => \sum_value_reg[15]_i_14_n_2\,
      CO(0) => \sum_value_reg[15]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_26_n_0\,
      DI(2) => \sum_value[15]_i_27_n_0\,
      DI(1) => \sum_value[15]_i_28_n_0\,
      DI(0) => \sum_value[15]_i_29_n_0\,
      O(3) => \sum_value_reg[15]_i_14_n_4\,
      O(2) => \sum_value_reg[15]_i_14_n_5\,
      O(1) => \sum_value_reg[15]_i_14_n_6\,
      O(0) => \sum_value_reg[15]_i_14_n_7\,
      S(3) => \sum_value[15]_i_30_n_0\,
      S(2) => \sum_value[15]_i_31_n_0\,
      S(1) => \sum_value[15]_i_32_n_0\,
      S(0) => \sum_value[15]_i_33_n_0\
    );
\sum_value_reg[15]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_15_n_0\,
      CO(3) => \sum_value_reg[15]_i_15_n_0\,
      CO(2) => \sum_value_reg[15]_i_15_n_1\,
      CO(1) => \sum_value_reg[15]_i_15_n_2\,
      CO(0) => \sum_value_reg[15]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_34_n_0\,
      DI(2) => \sum_value[15]_i_35_n_0\,
      DI(1) => \sum_value[15]_i_36_n_0\,
      DI(0) => \sum_value[15]_i_37_n_0\,
      O(3) => \sum_value_reg[15]_i_15_n_4\,
      O(2) => \sum_value_reg[15]_i_15_n_5\,
      O(1) => \sum_value_reg[15]_i_15_n_6\,
      O(0) => \sum_value_reg[15]_i_15_n_7\,
      S(3) => \sum_value[15]_i_38_n_0\,
      S(2) => \sum_value[15]_i_39_n_0\,
      S(1) => \sum_value[15]_i_40_n_0\,
      S(0) => \sum_value[15]_i_41_n_0\
    );
\sum_value_reg[15]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_16_n_0\,
      CO(3) => \sum_value_reg[15]_i_16_n_0\,
      CO(2) => \sum_value_reg[15]_i_16_n_1\,
      CO(1) => \sum_value_reg[15]_i_16_n_2\,
      CO(0) => \sum_value_reg[15]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_42_n_0\,
      DI(2) => \sum_value[15]_i_43_n_0\,
      DI(1) => \sum_value[15]_i_44_n_0\,
      DI(0) => \sum_value[15]_i_45_n_0\,
      O(3) => \sum_value_reg[15]_i_16_n_4\,
      O(2) => \sum_value_reg[15]_i_16_n_5\,
      O(1) => \sum_value_reg[15]_i_16_n_6\,
      O(0) => \sum_value_reg[15]_i_16_n_7\,
      S(3) => \sum_value[15]_i_46_n_0\,
      S(2) => \sum_value[15]_i_47_n_0\,
      S(1) => \sum_value[15]_i_48_n_0\,
      S(0) => \sum_value[15]_i_49_n_0\
    );
\sum_value_reg[15]_i_50\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_50_n_0\,
      CO(3) => \sum_value_reg[15]_i_50_n_0\,
      CO(2) => \sum_value_reg[15]_i_50_n_1\,
      CO(1) => \sum_value_reg[15]_i_50_n_2\,
      CO(0) => \sum_value_reg[15]_i_50_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_52_n_0\,
      DI(2) => \sum_value[15]_i_53_n_0\,
      DI(1) => \sum_value[15]_i_54_n_0\,
      DI(0) => \sum_value[15]_i_55_n_0\,
      O(3) => \sum_value_reg[15]_i_50_n_4\,
      O(2) => \sum_value_reg[15]_i_50_n_5\,
      O(1) => \sum_value_reg[15]_i_50_n_6\,
      O(0) => \sum_value_reg[15]_i_50_n_7\,
      S(3) => \sum_value[15]_i_56_n_0\,
      S(2) => \sum_value[15]_i_57_n_0\,
      S(1) => \sum_value[15]_i_58_n_0\,
      S(0) => \sum_value[15]_i_59_n_0\
    );
\sum_value_reg[15]_i_51\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[11]_i_51_n_0\,
      CO(3) => \sum_value_reg[15]_i_51_n_0\,
      CO(2) => \sum_value_reg[15]_i_51_n_1\,
      CO(1) => \sum_value_reg[15]_i_51_n_2\,
      CO(0) => \sum_value_reg[15]_i_51_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[15]_i_60_n_0\,
      DI(2) => \sum_value[15]_i_61_n_0\,
      DI(1) => \sum_value[15]_i_62_n_0\,
      DI(0) => \sum_value[15]_i_63_n_0\,
      O(3) => \sum_value_reg[15]_i_51_n_4\,
      O(2) => \sum_value_reg[15]_i_51_n_5\,
      O(1) => \sum_value_reg[15]_i_51_n_6\,
      O(0) => \sum_value_reg[15]_i_51_n_7\,
      S(3) => \sum_value[15]_i_64_n_0\,
      S(2) => \sum_value[15]_i_65_n_0\,
      S(1) => \sum_value[15]_i_66_n_0\,
      S(0) => \sum_value[15]_i_67_n_0\
    );
\sum_value_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(16),
      Q => p_0_in_0(12)
    );
\sum_value_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(17),
      Q => p_0_in_0(13)
    );
\sum_value_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(18),
      Q => p_0_in_0(14)
    );
\sum_value_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(19),
      Q => p_0_in_0(15)
    );
\sum_value_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_1_n_0\,
      CO(3) => \sum_value_reg[19]_i_1_n_0\,
      CO(2) => \sum_value_reg[19]_i_1_n_1\,
      CO(1) => \sum_value_reg[19]_i_1_n_2\,
      CO(0) => \sum_value_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_2_n_0\,
      DI(2) => \sum_value[19]_i_3_n_0\,
      DI(1) => \sum_value[19]_i_4_n_0\,
      DI(0) => \sum_value[19]_i_5_n_0\,
      O(3 downto 0) => p_1_in(19 downto 16),
      S(3) => \sum_value[19]_i_6_n_0\,
      S(2) => \sum_value[19]_i_7_n_0\,
      S(1) => \sum_value[19]_i_8_n_0\,
      S(0) => \sum_value[19]_i_9_n_0\
    );
\sum_value_reg[19]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_17_n_0\,
      CO(3) => \NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED\(3),
      CO(2) => \sum_value_reg[19]_i_10_n_1\,
      CO(1) => \NLW_sum_value_reg[19]_i_10_CO_UNCONNECTED\(1),
      CO(0) => \sum_value_reg[19]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_value[19]_i_20_n_0\,
      O(3 downto 2) => \NLW_sum_value_reg[19]_i_10_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_value_reg[19]_i_10_n_6\,
      O(0) => \sum_value_reg[19]_i_10_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \sum_value[19]_i_21_n_0\,
      S(0) => \sum_value[19]_i_22_n_0\
    );
\sum_value_reg[19]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_13_n_0\,
      CO(3) => \sum_value_reg[19]_i_14_n_0\,
      CO(2) => \sum_value_reg[19]_i_14_n_1\,
      CO(1) => \sum_value_reg[19]_i_14_n_2\,
      CO(0) => \sum_value_reg[19]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_23_n_0\,
      DI(2) => \sum_value[19]_i_24_n_0\,
      DI(1) => \sum_value[19]_i_25_n_0\,
      DI(0) => \sum_value[19]_i_26_n_0\,
      O(3) => \sum_value_reg[19]_i_14_n_4\,
      O(2) => \sum_value_reg[19]_i_14_n_5\,
      O(1) => \sum_value_reg[19]_i_14_n_6\,
      O(0) => \sum_value_reg[19]_i_14_n_7\,
      S(3) => \sum_value[19]_i_27_n_0\,
      S(2) => \sum_value[19]_i_28_n_0\,
      S(1) => \sum_value[19]_i_29_n_0\,
      S(0) => \sum_value[19]_i_30_n_0\
    );
\sum_value_reg[19]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_14_n_0\,
      CO(3) => \sum_value_reg[19]_i_15_n_0\,
      CO(2) => \sum_value_reg[19]_i_15_n_1\,
      CO(1) => \sum_value_reg[19]_i_15_n_2\,
      CO(0) => \sum_value_reg[19]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_31_n_0\,
      DI(2) => \sum_value[19]_i_32_n_0\,
      DI(1) => \sum_value[19]_i_33_n_0\,
      DI(0) => \sum_value[19]_i_34_n_0\,
      O(3) => \sum_value_reg[19]_i_15_n_4\,
      O(2) => \sum_value_reg[19]_i_15_n_5\,
      O(1) => \sum_value_reg[19]_i_15_n_6\,
      O(0) => \sum_value_reg[19]_i_15_n_7\,
      S(3) => \sum_value[19]_i_35_n_0\,
      S(2) => \sum_value[19]_i_36_n_0\,
      S(1) => \sum_value[19]_i_37_n_0\,
      S(0) => \sum_value[19]_i_38_n_0\
    );
\sum_value_reg[19]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_15_n_0\,
      CO(3) => \sum_value_reg[19]_i_16_n_0\,
      CO(2) => \sum_value_reg[19]_i_16_n_1\,
      CO(1) => \sum_value_reg[19]_i_16_n_2\,
      CO(0) => \sum_value_reg[19]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_39_n_0\,
      DI(2) => \sum_value[19]_i_40_n_0\,
      DI(1) => \sum_value[19]_i_41_n_0\,
      DI(0) => \sum_value[19]_i_42_n_0\,
      O(3) => \sum_value_reg[19]_i_16_n_4\,
      O(2) => \sum_value_reg[19]_i_16_n_5\,
      O(1) => \sum_value_reg[19]_i_16_n_6\,
      O(0) => \sum_value_reg[19]_i_16_n_7\,
      S(3) => \sum_value[19]_i_43_n_0\,
      S(2) => \sum_value[19]_i_44_n_0\,
      S(1) => \sum_value[19]_i_45_n_0\,
      S(0) => \sum_value[19]_i_46_n_0\
    );
\sum_value_reg[19]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_16_n_0\,
      CO(3) => \sum_value_reg[19]_i_17_n_0\,
      CO(2) => \sum_value_reg[19]_i_17_n_1\,
      CO(1) => \sum_value_reg[19]_i_17_n_2\,
      CO(0) => \sum_value_reg[19]_i_17_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_47_n_0\,
      DI(2) => \sum_value[19]_i_48_n_0\,
      DI(1) => \sum_value[19]_i_49_n_0\,
      DI(0) => \sum_value[19]_i_50_n_0\,
      O(3) => \sum_value_reg[19]_i_17_n_4\,
      O(2) => \sum_value_reg[19]_i_17_n_5\,
      O(1) => \sum_value_reg[19]_i_17_n_6\,
      O(0) => \sum_value_reg[19]_i_17_n_7\,
      S(3) => \sum_value[19]_i_51_n_0\,
      S(2) => \sum_value[19]_i_52_n_0\,
      S(1) => \sum_value[19]_i_53_n_0\,
      S(0) => \sum_value[19]_i_54_n_0\
    );
\sum_value_reg[19]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_50_n_0\,
      CO(3) => \sum_value_reg[19]_i_55_n_0\,
      CO(2) => \sum_value_reg[19]_i_55_n_1\,
      CO(1) => \sum_value_reg[19]_i_55_n_2\,
      CO(0) => \sum_value_reg[19]_i_55_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_57_n_0\,
      DI(2) => \sum_value[19]_i_58_n_0\,
      DI(1) => \sum_value[19]_i_59_n_0\,
      DI(0) => \sum_value[19]_i_60_n_0\,
      O(3) => \sum_value_reg[19]_i_55_n_4\,
      O(2) => \sum_value_reg[19]_i_55_n_5\,
      O(1) => \sum_value_reg[19]_i_55_n_6\,
      O(0) => \sum_value_reg[19]_i_55_n_7\,
      S(3) => \sum_value[19]_i_61_n_0\,
      S(2) => \sum_value[19]_i_62_n_0\,
      S(1) => \sum_value[19]_i_63_n_0\,
      S(0) => \sum_value[19]_i_64_n_0\
    );
\sum_value_reg[19]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[15]_i_51_n_0\,
      CO(3) => \sum_value_reg[19]_i_56_n_0\,
      CO(2) => \sum_value_reg[19]_i_56_n_1\,
      CO(1) => \sum_value_reg[19]_i_56_n_2\,
      CO(0) => \sum_value_reg[19]_i_56_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[19]_i_65_n_0\,
      DI(2) => \sum_value[19]_i_66_n_0\,
      DI(1) => \sum_value[19]_i_67_n_0\,
      DI(0) => \sum_value[19]_i_68_n_0\,
      O(3) => \sum_value_reg[19]_i_56_n_4\,
      O(2) => \sum_value_reg[19]_i_56_n_5\,
      O(1) => \sum_value_reg[19]_i_56_n_6\,
      O(0) => \sum_value_reg[19]_i_56_n_7\,
      S(3) => \sum_value[19]_i_69_n_0\,
      S(2) => \sum_value[19]_i_70_n_0\,
      S(1) => \sum_value[19]_i_71_n_0\,
      S(0) => \sum_value[19]_i_72_n_0\
    );
\sum_value_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(20),
      Q => p_0_in_0(16)
    );
\sum_value_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_1_n_0\,
      CO(3 downto 0) => \NLW_sum_value_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sum_value_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_1_in(20),
      S(3 downto 1) => B"000",
      S(0) => \sum_value[20]_i_3_n_0\
    );
\sum_value_reg[20]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[20]_i_24_n_0\,
      CO(3) => \NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED\(3),
      CO(2) => \sum_value_reg[20]_i_22_n_1\,
      CO(1) => \NLW_sum_value_reg[20]_i_22_CO_UNCONNECTED\(1),
      CO(0) => \sum_value_reg[20]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_value[20]_i_26_n_0\,
      O(3 downto 2) => \NLW_sum_value_reg[20]_i_22_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_value_reg[20]_i_22_n_6\,
      O(0) => \sum_value_reg[20]_i_22_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \sum_value[20]_i_27_n_0\,
      S(0) => \sum_value[20]_i_28_n_0\
    );
\sum_value_reg[20]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[20]_i_25_n_0\,
      CO(3) => \NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED\(3),
      CO(2) => \sum_value_reg[20]_i_23_n_1\,
      CO(1) => \NLW_sum_value_reg[20]_i_23_CO_UNCONNECTED\(1),
      CO(0) => \sum_value_reg[20]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_value[20]_i_29_n_0\,
      O(3 downto 2) => \NLW_sum_value_reg[20]_i_23_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_value_reg[20]_i_23_n_6\,
      O(0) => \sum_value_reg[20]_i_23_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \sum_value[20]_i_30_n_0\,
      S(0) => \sum_value[20]_i_31_n_0\
    );
\sum_value_reg[20]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_55_n_0\,
      CO(3) => \sum_value_reg[20]_i_24_n_0\,
      CO(2) => \sum_value_reg[20]_i_24_n_1\,
      CO(1) => \sum_value_reg[20]_i_24_n_2\,
      CO(0) => \sum_value_reg[20]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[20]_i_32_n_0\,
      DI(2) => \sum_value[20]_i_33_n_0\,
      DI(1) => \sum_value[20]_i_34_n_0\,
      DI(0) => \sum_value[20]_i_35_n_0\,
      O(3) => \sum_value_reg[20]_i_24_n_4\,
      O(2) => \sum_value_reg[20]_i_24_n_5\,
      O(1) => \sum_value_reg[20]_i_24_n_6\,
      O(0) => \sum_value_reg[20]_i_24_n_7\,
      S(3) => \sum_value[20]_i_36_n_0\,
      S(2) => \sum_value[20]_i_37_n_0\,
      S(1) => \sum_value[20]_i_38_n_0\,
      S(0) => \sum_value[20]_i_39_n_0\
    );
\sum_value_reg[20]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_56_n_0\,
      CO(3) => \sum_value_reg[20]_i_25_n_0\,
      CO(2) => \sum_value_reg[20]_i_25_n_1\,
      CO(1) => \sum_value_reg[20]_i_25_n_2\,
      CO(0) => \sum_value_reg[20]_i_25_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[20]_i_40_n_0\,
      DI(2) => \sum_value[20]_i_41_n_0\,
      DI(1) => \sum_value[20]_i_42_n_0\,
      DI(0) => \sum_value[20]_i_43_n_0\,
      O(3) => \sum_value_reg[20]_i_25_n_4\,
      O(2) => \sum_value_reg[20]_i_25_n_5\,
      O(1) => \sum_value_reg[20]_i_25_n_6\,
      O(0) => \sum_value_reg[20]_i_25_n_7\,
      S(3) => \sum_value[20]_i_44_n_0\,
      S(2) => \sum_value[20]_i_45_n_0\,
      S(1) => \sum_value[20]_i_46_n_0\,
      S(0) => \sum_value[20]_i_47_n_0\
    );
\sum_value_reg[20]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_16_n_0\,
      CO(3) => \sum_value_reg[20]_i_4_n_0\,
      CO(2) => \sum_value_reg[20]_i_4_n_1\,
      CO(1) => \sum_value_reg[20]_i_4_n_2\,
      CO(0) => \sum_value_reg[20]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[20]_i_8_n_0\,
      DI(2) => \sum_value[20]_i_9_n_0\,
      DI(1) => \sum_value[20]_i_10_n_0\,
      DI(0) => \sum_value[20]_i_11_n_0\,
      O(3) => \sum_value_reg[20]_i_4_n_4\,
      O(2) => \sum_value_reg[20]_i_4_n_5\,
      O(1) => \sum_value_reg[20]_i_4_n_6\,
      O(0) => \sum_value_reg[20]_i_4_n_7\,
      S(3) => \sum_value[20]_i_12_n_0\,
      S(2) => \sum_value[20]_i_13_n_0\,
      S(1) => \sum_value[20]_i_14_n_0\,
      S(0) => \sum_value[20]_i_15_n_0\
    );
\sum_value_reg[20]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_15_n_0\,
      CO(3) => \NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \sum_value_reg[20]_i_5_n_1\,
      CO(1) => \NLW_sum_value_reg[20]_i_5_CO_UNCONNECTED\(1),
      CO(0) => \sum_value_reg[20]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_value[20]_i_16_n_0\,
      O(3 downto 2) => \NLW_sum_value_reg[20]_i_5_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_value_reg[20]_i_5_n_6\,
      O(0) => \sum_value_reg[20]_i_5_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \sum_value[20]_i_17_n_0\,
      S(0) => \sum_value[20]_i_18_n_0\
    );
\sum_value_reg[20]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[19]_i_14_n_0\,
      CO(3) => \NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \sum_value_reg[20]_i_6_n_1\,
      CO(1) => \NLW_sum_value_reg[20]_i_6_CO_UNCONNECTED\(1),
      CO(0) => \sum_value_reg[20]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_value[20]_i_19_n_0\,
      O(3 downto 2) => \NLW_sum_value_reg[20]_i_6_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_value_reg[20]_i_6_n_6\,
      O(0) => \sum_value_reg[20]_i_6_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \sum_value[20]_i_20_n_0\,
      S(0) => \sum_value[20]_i_21_n_0\
    );
\sum_value_reg[20]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[20]_i_4_n_0\,
      CO(3 downto 1) => \NLW_sum_value_reg[20]_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sum_value_reg[20]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sum_value_reg[20]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\sum_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => p_0_in_0(0)
    );
\sum_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => p_0_in_0(1)
    );
\sum_value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => p_0_in_0(2)
    );
\sum_value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => p_0_in_0(3)
    );
\sum_value_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_value_reg[7]_i_2_n_0\,
      CO(3) => \sum_value_reg[7]_i_1_n_0\,
      CO(2) => \sum_value_reg[7]_i_1_n_1\,
      CO(1) => \sum_value_reg[7]_i_1_n_2\,
      CO(0) => \sum_value_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_3_n_0\,
      DI(2) => \sum_value[7]_i_4_n_0\,
      DI(1) => \sum_value[7]_i_5_n_0\,
      DI(0) => \sum_value[7]_i_6_n_0\,
      O(3 downto 0) => p_1_in(7 downto 4),
      S(3) => \sum_value[7]_i_7_n_0\,
      S(2) => \sum_value[7]_i_8_n_0\,
      S(1) => \sum_value[7]_i_9_n_0\,
      S(0) => \sum_value[7]_i_10_n_0\
    );
\sum_value_reg[7]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[7]_i_14_n_0\,
      CO(2) => \sum_value_reg[7]_i_14_n_1\,
      CO(1) => \sum_value_reg[7]_i_14_n_2\,
      CO(0) => \sum_value_reg[7]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_27_n_0\,
      DI(2) => \sum_value[7]_i_28_n_0\,
      DI(1) => \sum_value[7]_i_29_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[7]_i_14_n_4\,
      O(2) => \sum_value_reg[7]_i_14_n_5\,
      O(1) => \sum_value_reg[7]_i_14_n_6\,
      O(0) => \sum_value_reg[7]_i_14_n_7\,
      S(3) => \sum_value[7]_i_30_n_0\,
      S(2) => \sum_value[7]_i_31_n_0\,
      S(1) => \sum_value[7]_i_32_n_0\,
      S(0) => \sum_value[7]_i_33_n_0\
    );
\sum_value_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[7]_i_2_n_0\,
      CO(2) => \sum_value_reg[7]_i_2_n_1\,
      CO(1) => \sum_value_reg[7]_i_2_n_2\,
      CO(0) => \sum_value_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_11_n_0\,
      DI(2) => \sum_value[7]_i_12_n_0\,
      DI(1) => \sum_value[7]_i_13_n_0\,
      DI(0) => \sum_value_reg[7]_i_14_n_7\,
      O(3 downto 0) => \NLW_sum_value_reg[7]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sum_value[7]_i_15_n_0\,
      S(2) => \sum_value[7]_i_16_n_0\,
      S(1) => \sum_value[7]_i_17_n_0\,
      S(0) => \sum_value[7]_i_18_n_0\
    );
\sum_value_reg[7]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[7]_i_22_n_0\,
      CO(2) => \sum_value_reg[7]_i_22_n_1\,
      CO(1) => \sum_value_reg[7]_i_22_n_2\,
      CO(0) => \sum_value_reg[7]_i_22_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_34_n_0\,
      DI(2) => \sum_value[7]_i_35_n_0\,
      DI(1) => \sum_value[7]_i_36_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[7]_i_22_n_4\,
      O(2) => \sum_value_reg[7]_i_22_n_5\,
      O(1) => \sum_value_reg[7]_i_22_n_6\,
      O(0) => \sum_value_reg[7]_i_22_n_7\,
      S(3) => \sum_value[7]_i_37_n_0\,
      S(2) => \sum_value[7]_i_38_n_0\,
      S(1) => \sum_value[7]_i_39_n_0\,
      S(0) => \sum_value[7]_i_40_n_0\
    );
\sum_value_reg[7]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[7]_i_23_n_0\,
      CO(2) => \sum_value_reg[7]_i_23_n_1\,
      CO(1) => \sum_value_reg[7]_i_23_n_2\,
      CO(0) => \sum_value_reg[7]_i_23_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_41_n_0\,
      DI(2) => \sum_value[7]_i_42_n_0\,
      DI(1) => \sum_value[7]_i_43_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[7]_i_23_n_4\,
      O(2) => \sum_value_reg[7]_i_23_n_5\,
      O(1) => \sum_value_reg[7]_i_23_n_6\,
      O(0) => \sum_value_reg[7]_i_23_n_7\,
      S(3) => \sum_value[7]_i_44_n_0\,
      S(2) => \sum_value[7]_i_45_n_0\,
      S(1) => \sum_value[7]_i_46_n_0\,
      S(0) => \sum_value[7]_i_47_n_0\
    );
\sum_value_reg[7]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_value_reg[7]_i_24_n_0\,
      CO(2) => \sum_value_reg[7]_i_24_n_1\,
      CO(1) => \sum_value_reg[7]_i_24_n_2\,
      CO(0) => \sum_value_reg[7]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \sum_value[7]_i_48_n_0\,
      DI(2) => \sum_value[7]_i_49_n_0\,
      DI(1) => \sum_value[7]_i_50_n_0\,
      DI(0) => '0',
      O(3) => \sum_value_reg[7]_i_24_n_4\,
      O(2) => \sum_value_reg[7]_i_24_n_5\,
      O(1) => \sum_value_reg[7]_i_24_n_6\,
      O(0) => \sum_value_reg[7]_i_24_n_7\,
      S(3) => \sum_value[7]_i_51_n_0\,
      S(2) => \sum_value[7]_i_52_n_0\,
      S(1) => \sum_value[7]_i_53_n_0\,
      S(0) => \sum_value[7]_i_54_n_0\
    );
\sum_value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(8),
      Q => p_0_in_0(4)
    );
\sum_value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_usec,
      CE => s00_axi_aresetn,
      CLR => \^sr\(0),
      D => p_1_in(9),
      Q => p_0_in_0(5)
    );
\temp_value_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(0),
      Q => \temp_value_reg[0]_15\(0),
      R => '0'
    );
\temp_value_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(10),
      Q => \temp_value_reg[0]_15\(10),
      R => '0'
    );
\temp_value_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(11),
      Q => \temp_value_reg[0]_15\(11),
      R => '0'
    );
\temp_value_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(12),
      Q => \temp_value_reg[0]_15\(12),
      R => '0'
    );
\temp_value_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(13),
      Q => \temp_value_reg[0]_15\(13),
      R => '0'
    );
\temp_value_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(14),
      Q => \temp_value_reg[0]_15\(14),
      R => '0'
    );
\temp_value_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(15),
      Q => \temp_value_reg[0]_15\(15),
      R => '0'
    );
\temp_value_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(16),
      Q => \temp_value_reg[0]_15\(16),
      R => '0'
    );
\temp_value_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(1),
      Q => \temp_value_reg[0]_15\(1),
      R => '0'
    );
\temp_value_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(2),
      Q => \temp_value_reg[0]_15\(2),
      R => '0'
    );
\temp_value_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(3),
      Q => \temp_value_reg[0]_15\(3),
      R => '0'
    );
\temp_value_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(4),
      Q => \temp_value_reg[0]_15\(4),
      R => '0'
    );
\temp_value_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(5),
      Q => \temp_value_reg[0]_15\(5),
      R => '0'
    );
\temp_value_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(6),
      Q => \temp_value_reg[0]_15\(6),
      R => '0'
    );
\temp_value_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(7),
      Q => \temp_value_reg[0]_15\(7),
      R => '0'
    );
\temp_value_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(8),
      Q => \temp_value_reg[0]_15\(8),
      R => '0'
    );
\temp_value_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_9,
      D => count_usec_reg(9),
      Q => \temp_value_reg[0]_15\(9),
      R => '0'
    );
\temp_value_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(0),
      Q => \temp_value_reg[10]_9\(0),
      R => '0'
    );
\temp_value_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(10),
      Q => \temp_value_reg[10]_9\(10),
      R => '0'
    );
\temp_value_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(11),
      Q => \temp_value_reg[10]_9\(11),
      R => '0'
    );
\temp_value_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(12),
      Q => \temp_value_reg[10]_9\(12),
      R => '0'
    );
\temp_value_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(13),
      Q => \temp_value_reg[10]_9\(13),
      R => '0'
    );
\temp_value_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(14),
      Q => \temp_value_reg[10]_9\(14),
      R => '0'
    );
\temp_value_reg[10][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(15),
      Q => \temp_value_reg[10]_9\(15),
      R => '0'
    );
\temp_value_reg[10][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(16),
      Q => \temp_value_reg[10]_9\(16),
      R => '0'
    );
\temp_value_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(1),
      Q => \temp_value_reg[10]_9\(1),
      R => '0'
    );
\temp_value_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(2),
      Q => \temp_value_reg[10]_9\(2),
      R => '0'
    );
\temp_value_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(3),
      Q => \temp_value_reg[10]_9\(3),
      R => '0'
    );
\temp_value_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(4),
      Q => \temp_value_reg[10]_9\(4),
      R => '0'
    );
\temp_value_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(5),
      Q => \temp_value_reg[10]_9\(5),
      R => '0'
    );
\temp_value_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(6),
      Q => \temp_value_reg[10]_9\(6),
      R => '0'
    );
\temp_value_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(7),
      Q => \temp_value_reg[10]_9\(7),
      R => '0'
    );
\temp_value_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(8),
      Q => \temp_value_reg[10]_9\(8),
      R => '0'
    );
\temp_value_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_14,
      D => count_usec_reg(9),
      Q => \temp_value_reg[10]_9\(9),
      R => '0'
    );
\temp_value_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(0),
      Q => \temp_value_reg[11]_10\(0),
      R => '0'
    );
\temp_value_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(10),
      Q => \temp_value_reg[11]_10\(10),
      R => '0'
    );
\temp_value_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(11),
      Q => \temp_value_reg[11]_10\(11),
      R => '0'
    );
\temp_value_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(12),
      Q => \temp_value_reg[11]_10\(12),
      R => '0'
    );
\temp_value_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(13),
      Q => \temp_value_reg[11]_10\(13),
      R => '0'
    );
\temp_value_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(14),
      Q => \temp_value_reg[11]_10\(14),
      R => '0'
    );
\temp_value_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(15),
      Q => \temp_value_reg[11]_10\(15),
      R => '0'
    );
\temp_value_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(16),
      Q => \temp_value_reg[11]_10\(16),
      R => '0'
    );
\temp_value_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(1),
      Q => \temp_value_reg[11]_10\(1),
      R => '0'
    );
\temp_value_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(2),
      Q => \temp_value_reg[11]_10\(2),
      R => '0'
    );
\temp_value_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(3),
      Q => \temp_value_reg[11]_10\(3),
      R => '0'
    );
\temp_value_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(4),
      Q => \temp_value_reg[11]_10\(4),
      R => '0'
    );
\temp_value_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(5),
      Q => \temp_value_reg[11]_10\(5),
      R => '0'
    );
\temp_value_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(6),
      Q => \temp_value_reg[11]_10\(6),
      R => '0'
    );
\temp_value_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(7),
      Q => \temp_value_reg[11]_10\(7),
      R => '0'
    );
\temp_value_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(8),
      Q => \temp_value_reg[11]_10\(8),
      R => '0'
    );
\temp_value_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_6,
      D => count_usec_reg(9),
      Q => \temp_value_reg[11]_10\(9),
      R => '0'
    );
\temp_value_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(0),
      Q => \temp_value_reg[12]_11\(0),
      R => '0'
    );
\temp_value_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(10),
      Q => \temp_value_reg[12]_11\(10),
      R => '0'
    );
\temp_value_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(11),
      Q => \temp_value_reg[12]_11\(11),
      R => '0'
    );
\temp_value_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(12),
      Q => \temp_value_reg[12]_11\(12),
      R => '0'
    );
\temp_value_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(13),
      Q => \temp_value_reg[12]_11\(13),
      R => '0'
    );
\temp_value_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(14),
      Q => \temp_value_reg[12]_11\(14),
      R => '0'
    );
\temp_value_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(15),
      Q => \temp_value_reg[12]_11\(15),
      R => '0'
    );
\temp_value_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(16),
      Q => \temp_value_reg[12]_11\(16),
      R => '0'
    );
\temp_value_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(1),
      Q => \temp_value_reg[12]_11\(1),
      R => '0'
    );
\temp_value_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(2),
      Q => \temp_value_reg[12]_11\(2),
      R => '0'
    );
\temp_value_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(3),
      Q => \temp_value_reg[12]_11\(3),
      R => '0'
    );
\temp_value_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(4),
      Q => \temp_value_reg[12]_11\(4),
      R => '0'
    );
\temp_value_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(5),
      Q => \temp_value_reg[12]_11\(5),
      R => '0'
    );
\temp_value_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(6),
      Q => \temp_value_reg[12]_11\(6),
      R => '0'
    );
\temp_value_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(7),
      Q => \temp_value_reg[12]_11\(7),
      R => '0'
    );
\temp_value_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(8),
      Q => \temp_value_reg[12]_11\(8),
      R => '0'
    );
\temp_value_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_10,
      D => count_usec_reg(9),
      Q => \temp_value_reg[12]_11\(9),
      R => '0'
    );
\temp_value_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(0),
      Q => \temp_value_reg[13]_12\(0),
      R => '0'
    );
\temp_value_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(10),
      Q => \temp_value_reg[13]_12\(10),
      R => '0'
    );
\temp_value_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(11),
      Q => \temp_value_reg[13]_12\(11),
      R => '0'
    );
\temp_value_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(12),
      Q => \temp_value_reg[13]_12\(12),
      R => '0'
    );
\temp_value_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(13),
      Q => \temp_value_reg[13]_12\(13),
      R => '0'
    );
\temp_value_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(14),
      Q => \temp_value_reg[13]_12\(14),
      R => '0'
    );
\temp_value_reg[13][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(15),
      Q => \temp_value_reg[13]_12\(15),
      R => '0'
    );
\temp_value_reg[13][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(16),
      Q => \temp_value_reg[13]_12\(16),
      R => '0'
    );
\temp_value_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(1),
      Q => \temp_value_reg[13]_12\(1),
      R => '0'
    );
\temp_value_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(2),
      Q => \temp_value_reg[13]_12\(2),
      R => '0'
    );
\temp_value_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(3),
      Q => \temp_value_reg[13]_12\(3),
      R => '0'
    );
\temp_value_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(4),
      Q => \temp_value_reg[13]_12\(4),
      R => '0'
    );
\temp_value_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(5),
      Q => \temp_value_reg[13]_12\(5),
      R => '0'
    );
\temp_value_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(6),
      Q => \temp_value_reg[13]_12\(6),
      R => '0'
    );
\temp_value_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(7),
      Q => \temp_value_reg[13]_12\(7),
      R => '0'
    );
\temp_value_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(8),
      Q => \temp_value_reg[13]_12\(8),
      R => '0'
    );
\temp_value_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_17,
      D => count_usec_reg(9),
      Q => \temp_value_reg[13]_12\(9),
      R => '0'
    );
\temp_value_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(0),
      Q => \temp_value_reg[14]_13\(0),
      R => '0'
    );
\temp_value_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(10),
      Q => \temp_value_reg[14]_13\(10),
      R => '0'
    );
\temp_value_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(11),
      Q => \temp_value_reg[14]_13\(11),
      R => '0'
    );
\temp_value_reg[14][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(12),
      Q => \temp_value_reg[14]_13\(12),
      R => '0'
    );
\temp_value_reg[14][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(13),
      Q => \temp_value_reg[14]_13\(13),
      R => '0'
    );
\temp_value_reg[14][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(14),
      Q => \temp_value_reg[14]_13\(14),
      R => '0'
    );
\temp_value_reg[14][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(15),
      Q => \temp_value_reg[14]_13\(15),
      R => '0'
    );
\temp_value_reg[14][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(16),
      Q => \temp_value_reg[14]_13\(16),
      R => '0'
    );
\temp_value_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(1),
      Q => \temp_value_reg[14]_13\(1),
      R => '0'
    );
\temp_value_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(2),
      Q => \temp_value_reg[14]_13\(2),
      R => '0'
    );
\temp_value_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(3),
      Q => \temp_value_reg[14]_13\(3),
      R => '0'
    );
\temp_value_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(4),
      Q => \temp_value_reg[14]_13\(4),
      R => '0'
    );
\temp_value_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(5),
      Q => \temp_value_reg[14]_13\(5),
      R => '0'
    );
\temp_value_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(6),
      Q => \temp_value_reg[14]_13\(6),
      R => '0'
    );
\temp_value_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(7),
      Q => \temp_value_reg[14]_13\(7),
      R => '0'
    );
\temp_value_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(8),
      Q => \temp_value_reg[14]_13\(8),
      R => '0'
    );
\temp_value_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_13,
      D => count_usec_reg(9),
      Q => \temp_value_reg[14]_13\(9),
      R => '0'
    );
\temp_value_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(0),
      Q => \temp_value_reg[15]_14\(0),
      R => '0'
    );
\temp_value_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(10),
      Q => \temp_value_reg[15]_14\(10),
      R => '0'
    );
\temp_value_reg[15][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(11),
      Q => \temp_value_reg[15]_14\(11),
      R => '0'
    );
\temp_value_reg[15][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(12),
      Q => \temp_value_reg[15]_14\(12),
      R => '0'
    );
\temp_value_reg[15][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(13),
      Q => \temp_value_reg[15]_14\(13),
      R => '0'
    );
\temp_value_reg[15][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(14),
      Q => \temp_value_reg[15]_14\(14),
      R => '0'
    );
\temp_value_reg[15][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(15),
      Q => \temp_value_reg[15]_14\(15),
      R => '0'
    );
\temp_value_reg[15][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(16),
      Q => \temp_value_reg[15]_14\(16),
      R => '0'
    );
\temp_value_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(1),
      Q => \temp_value_reg[15]_14\(1),
      R => '0'
    );
\temp_value_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(2),
      Q => \temp_value_reg[15]_14\(2),
      R => '0'
    );
\temp_value_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(3),
      Q => \temp_value_reg[15]_14\(3),
      R => '0'
    );
\temp_value_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(4),
      Q => \temp_value_reg[15]_14\(4),
      R => '0'
    );
\temp_value_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(5),
      Q => \temp_value_reg[15]_14\(5),
      R => '0'
    );
\temp_value_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(6),
      Q => \temp_value_reg[15]_14\(6),
      R => '0'
    );
\temp_value_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(7),
      Q => \temp_value_reg[15]_14\(7),
      R => '0'
    );
\temp_value_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(8),
      Q => \temp_value_reg[15]_14\(8),
      R => '0'
    );
\temp_value_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => temp_value,
      D => count_usec_reg(9),
      Q => \temp_value_reg[15]_14\(9),
      R => '0'
    );
\temp_value_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(0),
      Q => \temp_value_reg[1]_0\(0),
      R => '0'
    );
\temp_value_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(10),
      Q => \temp_value_reg[1]_0\(10),
      R => '0'
    );
\temp_value_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(11),
      Q => \temp_value_reg[1]_0\(11),
      R => '0'
    );
\temp_value_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(12),
      Q => \temp_value_reg[1]_0\(12),
      R => '0'
    );
\temp_value_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(13),
      Q => \temp_value_reg[1]_0\(13),
      R => '0'
    );
\temp_value_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(14),
      Q => \temp_value_reg[1]_0\(14),
      R => '0'
    );
\temp_value_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(15),
      Q => \temp_value_reg[1]_0\(15),
      R => '0'
    );
\temp_value_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(16),
      Q => \temp_value_reg[1]_0\(16),
      R => '0'
    );
\temp_value_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(1),
      Q => \temp_value_reg[1]_0\(1),
      R => '0'
    );
\temp_value_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(2),
      Q => \temp_value_reg[1]_0\(2),
      R => '0'
    );
\temp_value_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(3),
      Q => \temp_value_reg[1]_0\(3),
      R => '0'
    );
\temp_value_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(4),
      Q => \temp_value_reg[1]_0\(4),
      R => '0'
    );
\temp_value_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(5),
      Q => \temp_value_reg[1]_0\(5),
      R => '0'
    );
\temp_value_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(6),
      Q => \temp_value_reg[1]_0\(6),
      R => '0'
    );
\temp_value_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(7),
      Q => \temp_value_reg[1]_0\(7),
      R => '0'
    );
\temp_value_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(8),
      Q => \temp_value_reg[1]_0\(8),
      R => '0'
    );
\temp_value_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_20,
      D => count_usec_reg(9),
      Q => \temp_value_reg[1]_0\(9),
      R => '0'
    );
\temp_value_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(0),
      Q => \temp_value_reg[2]_1\(0),
      R => '0'
    );
\temp_value_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(10),
      Q => \temp_value_reg[2]_1\(10),
      R => '0'
    );
\temp_value_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(11),
      Q => \temp_value_reg[2]_1\(11),
      R => '0'
    );
\temp_value_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(12),
      Q => \temp_value_reg[2]_1\(12),
      R => '0'
    );
\temp_value_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(13),
      Q => \temp_value_reg[2]_1\(13),
      R => '0'
    );
\temp_value_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(14),
      Q => \temp_value_reg[2]_1\(14),
      R => '0'
    );
\temp_value_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(15),
      Q => \temp_value_reg[2]_1\(15),
      R => '0'
    );
\temp_value_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(16),
      Q => \temp_value_reg[2]_1\(16),
      R => '0'
    );
\temp_value_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(1),
      Q => \temp_value_reg[2]_1\(1),
      R => '0'
    );
\temp_value_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(2),
      Q => \temp_value_reg[2]_1\(2),
      R => '0'
    );
\temp_value_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(3),
      Q => \temp_value_reg[2]_1\(3),
      R => '0'
    );
\temp_value_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(4),
      Q => \temp_value_reg[2]_1\(4),
      R => '0'
    );
\temp_value_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(5),
      Q => \temp_value_reg[2]_1\(5),
      R => '0'
    );
\temp_value_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(6),
      Q => \temp_value_reg[2]_1\(6),
      R => '0'
    );
\temp_value_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(7),
      Q => \temp_value_reg[2]_1\(7),
      R => '0'
    );
\temp_value_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(8),
      Q => \temp_value_reg[2]_1\(8),
      R => '0'
    );
\temp_value_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_16,
      D => count_usec_reg(9),
      Q => \temp_value_reg[2]_1\(9),
      R => '0'
    );
\temp_value_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(0),
      Q => \temp_value_reg[3]_2\(0),
      R => '0'
    );
\temp_value_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(10),
      Q => \temp_value_reg[3]_2\(10),
      R => '0'
    );
\temp_value_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(11),
      Q => \temp_value_reg[3]_2\(11),
      R => '0'
    );
\temp_value_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(12),
      Q => \temp_value_reg[3]_2\(12),
      R => '0'
    );
\temp_value_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(13),
      Q => \temp_value_reg[3]_2\(13),
      R => '0'
    );
\temp_value_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(14),
      Q => \temp_value_reg[3]_2\(14),
      R => '0'
    );
\temp_value_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(15),
      Q => \temp_value_reg[3]_2\(15),
      R => '0'
    );
\temp_value_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(16),
      Q => \temp_value_reg[3]_2\(16),
      R => '0'
    );
\temp_value_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(1),
      Q => \temp_value_reg[3]_2\(1),
      R => '0'
    );
\temp_value_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(2),
      Q => \temp_value_reg[3]_2\(2),
      R => '0'
    );
\temp_value_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(3),
      Q => \temp_value_reg[3]_2\(3),
      R => '0'
    );
\temp_value_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(4),
      Q => \temp_value_reg[3]_2\(4),
      R => '0'
    );
\temp_value_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(5),
      Q => \temp_value_reg[3]_2\(5),
      R => '0'
    );
\temp_value_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(6),
      Q => \temp_value_reg[3]_2\(6),
      R => '0'
    );
\temp_value_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(7),
      Q => \temp_value_reg[3]_2\(7),
      R => '0'
    );
\temp_value_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(8),
      Q => \temp_value_reg[3]_2\(8),
      R => '0'
    );
\temp_value_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_8,
      D => count_usec_reg(9),
      Q => \temp_value_reg[3]_2\(9),
      R => '0'
    );
\temp_value_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(0),
      Q => \temp_value_reg[4]_3\(0),
      R => '0'
    );
\temp_value_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(10),
      Q => \temp_value_reg[4]_3\(10),
      R => '0'
    );
\temp_value_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(11),
      Q => \temp_value_reg[4]_3\(11),
      R => '0'
    );
\temp_value_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(12),
      Q => \temp_value_reg[4]_3\(12),
      R => '0'
    );
\temp_value_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(13),
      Q => \temp_value_reg[4]_3\(13),
      R => '0'
    );
\temp_value_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(14),
      Q => \temp_value_reg[4]_3\(14),
      R => '0'
    );
\temp_value_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(15),
      Q => \temp_value_reg[4]_3\(15),
      R => '0'
    );
\temp_value_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(16),
      Q => \temp_value_reg[4]_3\(16),
      R => '0'
    );
\temp_value_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(1),
      Q => \temp_value_reg[4]_3\(1),
      R => '0'
    );
\temp_value_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(2),
      Q => \temp_value_reg[4]_3\(2),
      R => '0'
    );
\temp_value_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(3),
      Q => \temp_value_reg[4]_3\(3),
      R => '0'
    );
\temp_value_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(4),
      Q => \temp_value_reg[4]_3\(4),
      R => '0'
    );
\temp_value_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(5),
      Q => \temp_value_reg[4]_3\(5),
      R => '0'
    );
\temp_value_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(6),
      Q => \temp_value_reg[4]_3\(6),
      R => '0'
    );
\temp_value_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(7),
      Q => \temp_value_reg[4]_3\(7),
      R => '0'
    );
\temp_value_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(8),
      Q => \temp_value_reg[4]_3\(8),
      R => '0'
    );
\temp_value_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_12,
      D => count_usec_reg(9),
      Q => \temp_value_reg[4]_3\(9),
      R => '0'
    );
\temp_value_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(0),
      Q => \temp_value_reg[5]_4\(0),
      R => '0'
    );
\temp_value_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(10),
      Q => \temp_value_reg[5]_4\(10),
      R => '0'
    );
\temp_value_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(11),
      Q => \temp_value_reg[5]_4\(11),
      R => '0'
    );
\temp_value_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(12),
      Q => \temp_value_reg[5]_4\(12),
      R => '0'
    );
\temp_value_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(13),
      Q => \temp_value_reg[5]_4\(13),
      R => '0'
    );
\temp_value_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(14),
      Q => \temp_value_reg[5]_4\(14),
      R => '0'
    );
\temp_value_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(15),
      Q => \temp_value_reg[5]_4\(15),
      R => '0'
    );
\temp_value_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(16),
      Q => \temp_value_reg[5]_4\(16),
      R => '0'
    );
\temp_value_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(1),
      Q => \temp_value_reg[5]_4\(1),
      R => '0'
    );
\temp_value_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(2),
      Q => \temp_value_reg[5]_4\(2),
      R => '0'
    );
\temp_value_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(3),
      Q => \temp_value_reg[5]_4\(3),
      R => '0'
    );
\temp_value_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(4),
      Q => \temp_value_reg[5]_4\(4),
      R => '0'
    );
\temp_value_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(5),
      Q => \temp_value_reg[5]_4\(5),
      R => '0'
    );
\temp_value_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(6),
      Q => \temp_value_reg[5]_4\(6),
      R => '0'
    );
\temp_value_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(7),
      Q => \temp_value_reg[5]_4\(7),
      R => '0'
    );
\temp_value_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(8),
      Q => \temp_value_reg[5]_4\(8),
      R => '0'
    );
\temp_value_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_19,
      D => count_usec_reg(9),
      Q => \temp_value_reg[5]_4\(9),
      R => '0'
    );
\temp_value_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(0),
      Q => \temp_value_reg[6]_5\(0),
      R => '0'
    );
\temp_value_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(10),
      Q => \temp_value_reg[6]_5\(10),
      R => '0'
    );
\temp_value_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(11),
      Q => \temp_value_reg[6]_5\(11),
      R => '0'
    );
\temp_value_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(12),
      Q => \temp_value_reg[6]_5\(12),
      R => '0'
    );
\temp_value_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(13),
      Q => \temp_value_reg[6]_5\(13),
      R => '0'
    );
\temp_value_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(14),
      Q => \temp_value_reg[6]_5\(14),
      R => '0'
    );
\temp_value_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(15),
      Q => \temp_value_reg[6]_5\(15),
      R => '0'
    );
\temp_value_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(16),
      Q => \temp_value_reg[6]_5\(16),
      R => '0'
    );
\temp_value_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(1),
      Q => \temp_value_reg[6]_5\(1),
      R => '0'
    );
\temp_value_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(2),
      Q => \temp_value_reg[6]_5\(2),
      R => '0'
    );
\temp_value_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(3),
      Q => \temp_value_reg[6]_5\(3),
      R => '0'
    );
\temp_value_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(4),
      Q => \temp_value_reg[6]_5\(4),
      R => '0'
    );
\temp_value_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(5),
      Q => \temp_value_reg[6]_5\(5),
      R => '0'
    );
\temp_value_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(6),
      Q => \temp_value_reg[6]_5\(6),
      R => '0'
    );
\temp_value_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(7),
      Q => \temp_value_reg[6]_5\(7),
      R => '0'
    );
\temp_value_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(8),
      Q => \temp_value_reg[6]_5\(8),
      R => '0'
    );
\temp_value_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_15,
      D => count_usec_reg(9),
      Q => \temp_value_reg[6]_5\(9),
      R => '0'
    );
\temp_value_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(0),
      Q => \temp_value_reg[7]_6\(0),
      R => '0'
    );
\temp_value_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(10),
      Q => \temp_value_reg[7]_6\(10),
      R => '0'
    );
\temp_value_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(11),
      Q => \temp_value_reg[7]_6\(11),
      R => '0'
    );
\temp_value_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(12),
      Q => \temp_value_reg[7]_6\(12),
      R => '0'
    );
\temp_value_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(13),
      Q => \temp_value_reg[7]_6\(13),
      R => '0'
    );
\temp_value_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(14),
      Q => \temp_value_reg[7]_6\(14),
      R => '0'
    );
\temp_value_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(15),
      Q => \temp_value_reg[7]_6\(15),
      R => '0'
    );
\temp_value_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(16),
      Q => \temp_value_reg[7]_6\(16),
      R => '0'
    );
\temp_value_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(1),
      Q => \temp_value_reg[7]_6\(1),
      R => '0'
    );
\temp_value_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(2),
      Q => \temp_value_reg[7]_6\(2),
      R => '0'
    );
\temp_value_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(3),
      Q => \temp_value_reg[7]_6\(3),
      R => '0'
    );
\temp_value_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(4),
      Q => \temp_value_reg[7]_6\(4),
      R => '0'
    );
\temp_value_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(5),
      Q => \temp_value_reg[7]_6\(5),
      R => '0'
    );
\temp_value_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(6),
      Q => \temp_value_reg[7]_6\(6),
      R => '0'
    );
\temp_value_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(7),
      Q => \temp_value_reg[7]_6\(7),
      R => '0'
    );
\temp_value_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(8),
      Q => \temp_value_reg[7]_6\(8),
      R => '0'
    );
\temp_value_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_7,
      D => count_usec_reg(9),
      Q => \temp_value_reg[7]_6\(9),
      R => '0'
    );
\temp_value_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(0),
      Q => \temp_value_reg[8]_7\(0),
      R => '0'
    );
\temp_value_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(10),
      Q => \temp_value_reg[8]_7\(10),
      R => '0'
    );
\temp_value_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(11),
      Q => \temp_value_reg[8]_7\(11),
      R => '0'
    );
\temp_value_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(12),
      Q => \temp_value_reg[8]_7\(12),
      R => '0'
    );
\temp_value_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(13),
      Q => \temp_value_reg[8]_7\(13),
      R => '0'
    );
\temp_value_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(14),
      Q => \temp_value_reg[8]_7\(14),
      R => '0'
    );
\temp_value_reg[8][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(15),
      Q => \temp_value_reg[8]_7\(15),
      R => '0'
    );
\temp_value_reg[8][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(16),
      Q => \temp_value_reg[8]_7\(16),
      R => '0'
    );
\temp_value_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(1),
      Q => \temp_value_reg[8]_7\(1),
      R => '0'
    );
\temp_value_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(2),
      Q => \temp_value_reg[8]_7\(2),
      R => '0'
    );
\temp_value_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(3),
      Q => \temp_value_reg[8]_7\(3),
      R => '0'
    );
\temp_value_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(4),
      Q => \temp_value_reg[8]_7\(4),
      R => '0'
    );
\temp_value_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(5),
      Q => \temp_value_reg[8]_7\(5),
      R => '0'
    );
\temp_value_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(6),
      Q => \temp_value_reg[8]_7\(6),
      R => '0'
    );
\temp_value_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(7),
      Q => \temp_value_reg[8]_7\(7),
      R => '0'
    );
\temp_value_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(8),
      Q => \temp_value_reg[8]_7\(8),
      R => '0'
    );
\temp_value_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_11,
      D => count_usec_reg(9),
      Q => \temp_value_reg[8]_7\(9),
      R => '0'
    );
\temp_value_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(0),
      Q => \temp_value_reg[9]_8\(0),
      R => '0'
    );
\temp_value_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(10),
      Q => \temp_value_reg[9]_8\(10),
      R => '0'
    );
\temp_value_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(11),
      Q => \temp_value_reg[9]_8\(11),
      R => '0'
    );
\temp_value_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(12),
      Q => \temp_value_reg[9]_8\(12),
      R => '0'
    );
\temp_value_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(13),
      Q => \temp_value_reg[9]_8\(13),
      R => '0'
    );
\temp_value_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(14),
      Q => \temp_value_reg[9]_8\(14),
      R => '0'
    );
\temp_value_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(15),
      Q => \temp_value_reg[9]_8\(15),
      R => '0'
    );
\temp_value_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(16),
      Q => \temp_value_reg[9]_8\(16),
      R => '0'
    );
\temp_value_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(1),
      Q => \temp_value_reg[9]_8\(1),
      R => '0'
    );
\temp_value_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(2),
      Q => \temp_value_reg[9]_8\(2),
      R => '0'
    );
\temp_value_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(3),
      Q => \temp_value_reg[9]_8\(3),
      R => '0'
    );
\temp_value_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(4),
      Q => \temp_value_reg[9]_8\(4),
      R => '0'
    );
\temp_value_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(5),
      Q => \temp_value_reg[9]_8\(5),
      R => '0'
    );
\temp_value_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(6),
      Q => \temp_value_reg[9]_8\(6),
      R => '0'
    );
\temp_value_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(7),
      Q => \temp_value_reg[9]_8\(7),
      R => '0'
    );
\temp_value_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(8),
      Q => \temp_value_reg[9]_8\(8),
      R => '0'
    );
\temp_value_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => edg_echo_n_18,
      D => count_usec_reg(9),
      Q => \temp_value_reg[9]_8\(9),
      R => '0'
    );
trig_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => trig_i_4_n_0,
      I1 => trig_i_5_n_0,
      I2 => trig_i_6_n_0,
      I3 => count_usec_reg(16),
      I4 => count_usec_reg(9),
      I5 => count_usec_reg(4),
      O => \^data1\
    );
trig_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => count_usec_reg(2),
      I2 => count_usec_reg(15),
      I3 => count_usec_reg(10),
      O => trig_i_4_n_0
    );
trig_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_usec_reg(8),
      I1 => count_usec_reg(7),
      I2 => count_usec_reg(6),
      I3 => count_usec_reg(5),
      O => trig_i_5_n_0
    );
trig_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => count_usec_reg(13),
      I2 => count_usec_reg(12),
      I3 => count_usec_reg(11),
      O => trig_i_6_n_0
    );
trig_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => trig_reg_0,
      Q => trig
    );
usec_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec
     port map (
      AR(0) => \^sr\(0),
      D(16 downto 0) => count_usec_reg(16 downto 0),
      O(3) => usec_clk_n_3,
      O(2) => usec_clk_n_4,
      O(1) => usec_clk_n_5,
      O(0) => usec_clk_n_6,
      clk_usec => clk_usec,
      count_usec_e_reg(3) => usec_clk_n_7,
      count_usec_e_reg(2) => usec_clk_n_8,
      count_usec_e_reg(1) => usec_clk_n_9,
      count_usec_e_reg(0) => usec_clk_n_10,
      count_usec_e_reg_0(3) => usec_clk_n_11,
      count_usec_e_reg_0(2) => usec_clk_n_12,
      count_usec_e_reg_0(1) => usec_clk_n_13,
      count_usec_e_reg_0(0) => usec_clk_n_14,
      count_usec_e_reg_1(3) => usec_clk_n_15,
      count_usec_e_reg_1(2) => usec_clk_n_16,
      count_usec_e_reg_1(1) => usec_clk_n_17,
      count_usec_e_reg_1(0) => usec_clk_n_18,
      count_usec_e_reg_2(0) => usec_clk_n_19,
      \count_usec_reg[16]\ => count_usec_e_reg_n_0,
      cp_in_cur_reg => usec_clk_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0_S00_AXI is
  port (
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    trig : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    echo : in STD_LOGIC;
    trig_reg : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0_S00_AXI is
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
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
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal distance_cm : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal usonic_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair13";
begin
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => usonic_n_0
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
      R => usonic_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => usonic_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => usonic_n_0
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
      R => usonic_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(0),
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
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(1),
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
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => usonic_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => usonic_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => usonic_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^aw_en_reg_0\,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => usonic_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => usonic_n_0
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => slv_reg1(0),
      I4 => sel0(0),
      I5 => distance_cm(0),
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
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => slv_reg1(10),
      I4 => sel0(0),
      I5 => distance_cm(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => slv_reg1(11),
      I4 => sel0(0),
      I5 => distance_cm(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => slv_reg1(1),
      I4 => sel0(0),
      I5 => distance_cm(1),
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
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => slv_reg1(2),
      I4 => sel0(0),
      I5 => distance_cm(2),
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
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg1(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => slv_reg1(3),
      I4 => sel0(0),
      I5 => distance_cm(3),
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
      I3 => slv_reg1(4),
      I4 => sel0(0),
      I5 => distance_cm(4),
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
      I3 => slv_reg1(5),
      I4 => sel0(0),
      I5 => distance_cm(5),
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
      I3 => slv_reg1(6),
      I4 => sel0(0),
      I5 => distance_cm(6),
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
      I3 => slv_reg1(7),
      I4 => sel0(0),
      I5 => distance_cm(7),
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
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => slv_reg1(8),
      I4 => sel0(0),
      I5 => distance_cm(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => slv_reg1(9),
      I4 => sel0(0),
      I5 => distance_cm(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => usonic_n_0
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
      R => usonic_n_0
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      O => reg_data_out(10),
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => usonic_n_0
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      O => reg_data_out(11),
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => usonic_n_0
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      O => reg_data_out(12),
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => usonic_n_0
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      O => reg_data_out(13),
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => usonic_n_0
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      O => reg_data_out(14),
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => usonic_n_0
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      O => reg_data_out(15),
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => usonic_n_0
    );
\axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      O => reg_data_out(16),
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => usonic_n_0
    );
\axi_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      O => reg_data_out(17),
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => usonic_n_0
    );
\axi_rdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      O => reg_data_out(18),
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => usonic_n_0
    );
\axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      O => reg_data_out(19),
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => usonic_n_0
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
      R => usonic_n_0
    );
\axi_rdata_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      O => reg_data_out(20),
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => usonic_n_0
    );
\axi_rdata_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      O => reg_data_out(21),
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => usonic_n_0
    );
\axi_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      O => reg_data_out(22),
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => usonic_n_0
    );
\axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      O => reg_data_out(23),
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => usonic_n_0
    );
\axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      O => reg_data_out(24),
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => usonic_n_0
    );
\axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      O => reg_data_out(25),
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => usonic_n_0
    );
\axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      O => reg_data_out(26),
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => usonic_n_0
    );
\axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      O => reg_data_out(27),
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => usonic_n_0
    );
\axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      O => reg_data_out(28),
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => usonic_n_0
    );
\axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      O => reg_data_out(29),
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => usonic_n_0
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
      R => usonic_n_0
    );
\axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      O => reg_data_out(30),
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => usonic_n_0
    );
\axi_rdata_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_3_n_0\,
      O => reg_data_out(31),
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => usonic_n_0
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
      R => usonic_n_0
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
      R => usonic_n_0
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
      R => usonic_n_0
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
      R => usonic_n_0
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
      R => usonic_n_0
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      O => reg_data_out(8),
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => usonic_n_0
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      O => reg_data_out(9),
      S => sel0(2)
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => \^s00_axi_rvalid\,
      R => usonic_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^aw_en_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => usonic_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(0),
      O => p_1_in(15)
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(0),
      O => p_1_in(23)
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(0),
      O => p_1_in(31)
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
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
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(0),
      O => p_1_in(7)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => usonic_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => usonic_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => usonic_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => usonic_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => usonic_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => usonic_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => usonic_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => usonic_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => usonic_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => usonic_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => usonic_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => usonic_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => usonic_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => usonic_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => usonic_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => usonic_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => usonic_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => usonic_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => usonic_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => usonic_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => usonic_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => usonic_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => usonic_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => usonic_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => usonic_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => usonic_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => usonic_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => usonic_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => usonic_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => usonic_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => usonic_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => usonic_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => usonic_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => usonic_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => usonic_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => usonic_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => usonic_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => usonic_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => usonic_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => usonic_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => usonic_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => usonic_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => usonic_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => usonic_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => usonic_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => usonic_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => usonic_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => usonic_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => usonic_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => usonic_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => usonic_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => usonic_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => usonic_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => usonic_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => usonic_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => usonic_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => usonic_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => usonic_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => usonic_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => usonic_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => usonic_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => usonic_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => usonic_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => usonic_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => usonic_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => usonic_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => usonic_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => usonic_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => usonic_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => usonic_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => usonic_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => usonic_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => usonic_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => usonic_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => usonic_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => usonic_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => usonic_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => usonic_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => usonic_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => usonic_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => usonic_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => usonic_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => usonic_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => usonic_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => usonic_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => usonic_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => usonic_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => usonic_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => usonic_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => usonic_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => usonic_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => usonic_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => usonic_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => usonic_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => usonic_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => usonic_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => usonic_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => usonic_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => usonic_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => usonic_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => usonic_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => usonic_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => usonic_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => usonic_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => usonic_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => usonic_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => usonic_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => usonic_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => usonic_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => usonic_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => usonic_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => usonic_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => usonic_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => usonic_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => usonic_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => usonic_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => usonic_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => usonic_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => usonic_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => usonic_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => usonic_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => usonic_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => usonic_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => usonic_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => usonic_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => usonic_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => usonic_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => usonic_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => usonic_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => usonic_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => usonic_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => usonic_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => usonic_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => usonic_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => usonic_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => usonic_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => usonic_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => usonic_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => usonic_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => usonic_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => usonic_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => usonic_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => usonic_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => usonic_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => usonic_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => usonic_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => usonic_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => usonic_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => usonic_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => usonic_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => usonic_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => usonic_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => usonic_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => usonic_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => usonic_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => usonic_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => usonic_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => usonic_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => usonic_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => usonic_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(2),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(2),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => usonic_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => usonic_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => usonic_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => usonic_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => usonic_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => usonic_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => usonic_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => usonic_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => usonic_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => usonic_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => usonic_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => usonic_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => usonic_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => usonic_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => usonic_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => usonic_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => usonic_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => usonic_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => usonic_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => usonic_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => usonic_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => usonic_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => usonic_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => usonic_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => usonic_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => usonic_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => usonic_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => usonic_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => usonic_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => usonic_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => usonic_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => usonic_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => usonic_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => usonic_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => usonic_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => usonic_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => usonic_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => usonic_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => usonic_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => usonic_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => usonic_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => usonic_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => usonic_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => usonic_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => usonic_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => usonic_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => usonic_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => usonic_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => usonic_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => usonic_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => usonic_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => usonic_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => usonic_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => usonic_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => usonic_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => usonic_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => usonic_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => usonic_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => usonic_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => usonic_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => usonic_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => usonic_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => usonic_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => usonic_n_0
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
usonic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UltraSonic_Profsr
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => usonic_n_0,
      data1 => data1,
      \distance_cm_reg[11]_0\(11 downto 0) => distance_cm(11 downto 0),
      echo => echo,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      trig => trig,
      trig_reg_0 => trig_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    trig : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    echo : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0 is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal myip_UltraSonic_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^trig\ : STD_LOGIC;
  signal trig_i_1_n_0 : STD_LOGIC;
  signal \usonic/data1\ : STD_LOGIC;
  signal \usonic/state\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  trig <= \^trig\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => myip_UltraSonic_v1_0_S00_AXI_inst_n_5,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
myip_UltraSonic_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0_S00_AXI
     port map (
      Q(3 downto 0) => \usonic/state\(3 downto 0),
      aw_en_reg_0 => myip_UltraSonic_v1_0_S00_AXI_inst_n_5,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => \^s_axi_wready\,
      data1 => \usonic/data1\,
      echo => echo,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      trig => \^trig\,
      trig_reg => trig_i_1_n_0
    );
trig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAA8AA"
    )
        port map (
      I0 => \^trig\,
      I1 => \usonic/state\(3),
      I2 => \usonic/state\(2),
      I3 => \usonic/state\(1),
      I4 => \usonic/state\(0),
      I5 => \usonic/data1\,
      O => trig_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    echo : in STD_LOGIC;
    trig : out STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mblaze_UltraSonic_myip_UltraSonic_0_0,myip_UltraSonic_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_UltraSonic_v1_0,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_UltraSonic_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      echo => echo,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
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
      s00_axi_wvalid => s00_axi_wvalid,
      trig => trig
    );
end STRUCTURE;
