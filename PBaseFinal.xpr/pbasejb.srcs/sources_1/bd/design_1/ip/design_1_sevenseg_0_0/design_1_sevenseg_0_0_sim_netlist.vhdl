-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov 17 15:25:21 2019
-- Host        : w310-191 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/16bml1/Desktop/PBaseFinal.xpr/pbasejb.srcs/sources_1/bd/design_1/ip/design_1_sevenseg_0_0/design_1_sevenseg_0_0_sim_netlist.vhdl
-- Design      : design_1_sevenseg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sevenseg_0_0_sevenseg is
  port (
    segment_n : out STD_LOGIC_VECTOR ( 6 downto 0 );
    anode_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    bcdin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sevenseg_0_0_sevenseg : entity is "sevenseg";
end design_1_sevenseg_0_0_sevenseg;

architecture STRUCTURE of design_1_sevenseg_0_0_sevenseg is
  signal \bcd__30\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[18]_i_3_n_0\ : STD_LOGIC;
  signal \count[18]_i_4_n_0\ : STD_LOGIC;
  signal \count[18]_i_5_n_0\ : STD_LOGIC;
  signal \count[18]_i_6_n_0\ : STD_LOGIC;
  signal \count[18]_i_7_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal digit_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal scan_clk : STD_LOGIC;
  signal scan_clk_1 : STD_LOGIC;
  signal \NLW_count0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anode_n[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \anode_n[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \anode_n[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \anode_n[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[18]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \digit_sel[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \digit_sel[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \segment_n[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \segment_n[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \segment_n[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \segment_n[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \segment_n[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \segment_n[6]_INST_0\ : label is "soft_lutpair2";
begin
\anode_n[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_sel(0),
      I1 => digit_sel(1),
      O => anode_n(0)
    );
\anode_n[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      O => anode_n(1)
    );
\anode_n[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_sel(0),
      I1 => digit_sel(1),
      O => anode_n(2)
    );
\anode_n[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_sel(0),
      I1 => digit_sel(1),
      O => anode_n(3)
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3 downto 1) => \NLW_count0_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count0_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => count(18 downto 17)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(10),
      O => count_0(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(11),
      O => count_0(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(12),
      O => count_0(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(13),
      O => count_0(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(14),
      O => count_0(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(15),
      O => count_0(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(16),
      O => count_0(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(17),
      O => count_0(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
\count[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(18),
      O => count_0(18)
    );
\count[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(4),
      I3 => count(3),
      O => \count[18]_i_3_n_0\
    );
\count[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => count(13),
      I1 => count(14),
      I2 => count(16),
      I3 => count(15),
      O => \count[18]_i_4_n_0\
    );
\count[18]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count(18),
      I1 => count(17),
      I2 => count(0),
      O => \count[18]_i_5_n_0\
    );
\count[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(10),
      I1 => count(9),
      I2 => count(12),
      I3 => count(11),
      O => \count[18]_i_6_n_0\
    );
\count[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count(6),
      I1 => count(5),
      I2 => count(8),
      I3 => count(7),
      O => \count[18]_i_7_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(1),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(2),
      O => count_0(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(3),
      O => count_0(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(4),
      O => count_0(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(5),
      O => count_0(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(6),
      O => count_0(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(7),
      O => count_0(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(8),
      O => count_0(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      I5 => data0(9),
      O => count_0(9)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(0),
      Q => count(0),
      R => p_0_in
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(10),
      Q => count(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(11),
      Q => count(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(12),
      Q => count(12),
      R => p_0_in
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(13),
      Q => count(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(14),
      Q => count(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(15),
      Q => count(15),
      R => p_0_in
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(16),
      Q => count(16),
      R => p_0_in
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(17),
      Q => count(17),
      R => p_0_in
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(18),
      Q => count(18),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(1),
      Q => count(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(2),
      Q => count(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(3),
      Q => count(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(4),
      Q => count(4),
      R => p_0_in
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(5),
      Q => count(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(6),
      Q => count(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(7),
      Q => count(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(8),
      Q => count(8),
      R => p_0_in
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_0(9),
      Q => count(9),
      R => p_0_in
    );
\digit_sel[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scan_clk,
      I1 => digit_sel(0),
      O => \digit_sel[0]_i_1_n_0\
    );
\digit_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => digit_sel(0),
      I1 => scan_clk,
      I2 => digit_sel(1),
      O => \digit_sel[1]_i_1_n_0\
    );
\digit_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \digit_sel[0]_i_1_n_0\,
      Q => digit_sel(0),
      R => p_0_in
    );
\digit_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \digit_sel[1]_i_1_n_0\,
      Q => digit_sel(1),
      R => p_0_in
    );
scan_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \count[18]_i_3_n_0\,
      I1 => \count[18]_i_4_n_0\,
      I2 => \count[18]_i_5_n_0\,
      I3 => \count[18]_i_6_n_0\,
      I4 => \count[18]_i_7_n_0\,
      O => scan_clk_1
    );
scan_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => scan_clk_1,
      Q => scan_clk,
      R => p_0_in
    );
\segment_n[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC12"
    )
        port map (
      I0 => \bcd__30\(0),
      I1 => \bcd__30\(1),
      I2 => \bcd__30\(2),
      I3 => \bcd__30\(3),
      O => segment_n(0)
    );
\segment_n[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC48"
    )
        port map (
      I0 => \bcd__30\(0),
      I1 => \bcd__30\(2),
      I2 => \bcd__30\(1),
      I3 => \bcd__30\(3),
      O => segment_n(1)
    );
\segment_n[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC04"
    )
        port map (
      I0 => \bcd__30\(0),
      I1 => \bcd__30\(1),
      I2 => \bcd__30\(2),
      I3 => \bcd__30\(3),
      O => segment_n(2)
    );
\segment_n[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E9AC"
    )
        port map (
      I0 => \bcd__30\(3),
      I1 => \bcd__30\(2),
      I2 => \bcd__30\(1),
      I3 => \bcd__30\(0),
      O => segment_n(3)
    );
\segment_n[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAC"
    )
        port map (
      I0 => \bcd__30\(3),
      I1 => \bcd__30\(2),
      I2 => \bcd__30\(1),
      I3 => \bcd__30\(0),
      O => segment_n(4)
    );
\segment_n[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8AE"
    )
        port map (
      I0 => \bcd__30\(1),
      I1 => \bcd__30\(0),
      I2 => \bcd__30\(3),
      I3 => \bcd__30\(2),
      O => segment_n(5)
    );
\segment_n[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E9A9"
    )
        port map (
      I0 => \bcd__30\(3),
      I1 => \bcd__30\(2),
      I2 => \bcd__30\(1),
      I3 => \bcd__30\(0),
      O => segment_n(6)
    );
\segment_n[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => bcdin(11),
      I1 => bcdin(15),
      I2 => bcdin(3),
      I3 => digit_sel(1),
      I4 => digit_sel(0),
      I5 => bcdin(7),
      O => \bcd__30\(3)
    );
\segment_n[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => bcdin(10),
      I1 => bcdin(14),
      I2 => bcdin(2),
      I3 => digit_sel(1),
      I4 => digit_sel(0),
      I5 => bcdin(6),
      O => \bcd__30\(2)
    );
\segment_n[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => bcdin(9),
      I1 => bcdin(13),
      I2 => bcdin(1),
      I3 => digit_sel(1),
      I4 => digit_sel(0),
      I5 => bcdin(5),
      O => \bcd__30\(1)
    );
\segment_n[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => bcdin(8),
      I1 => bcdin(12),
      I2 => bcdin(0),
      I3 => digit_sel(1),
      I4 => digit_sel(0),
      I5 => bcdin(4),
      O => \bcd__30\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sevenseg_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    bcdin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    anode_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    segment_n : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sevenseg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sevenseg_0_0 : entity is "design_1_sevenseg_0_0,sevenseg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_sevenseg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_sevenseg_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_sevenseg_0_0 : entity is "sevenseg,Vivado 2018.2";
end design_1_sevenseg_0_0;

architecture STRUCTURE of design_1_sevenseg_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^segment_n\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW";
begin
  segment_n(7) <= \<const1>\;
  segment_n(6 downto 0) <= \^segment_n\(6 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_sevenseg_0_0_sevenseg
     port map (
      anode_n(3 downto 0) => anode_n(3 downto 0),
      bcdin(15 downto 0) => bcdin(15 downto 0),
      clk => clk,
      reset_n => reset_n,
      segment_n(6 downto 0) => \^segment_n\(6 downto 0)
    );
end STRUCTURE;
