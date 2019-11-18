-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Oct 28 12:35:42 2019
-- Host        : DESKTOP-UM0OUKV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/340/pbasearchive/pbasepiezo2/pbasejbarch.xpr/pbasejb/pbasejb.srcs/sources_1/bd/design_1/ip/design_1_piezo_0_0/design_1_piezo_0_0_sim_netlist.vhdl
-- Design      : design_1_piezo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_piezo_0_0_piezo is
  port (
    dout : out STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_piezo_0_0_piezo : entity is "piezo";
end design_1_piezo_0_0_piezo;

architecture STRUCTURE of design_1_piezo_0_0_piezo is
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count1__10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1__10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1__10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1__10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1__10_carry__0_n_0\ : STD_LOGIC;
  signal \count1__10_carry__0_n_1\ : STD_LOGIC;
  signal \count1__10_carry__0_n_2\ : STD_LOGIC;
  signal \count1__10_carry__0_n_3\ : STD_LOGIC;
  signal \count1__10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1__10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1__10_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1__10_carry__1_n_1\ : STD_LOGIC;
  signal \count1__10_carry__1_n_2\ : STD_LOGIC;
  signal \count1__10_carry__1_n_3\ : STD_LOGIC;
  signal \count1__10_carry_i_1_n_0\ : STD_LOGIC;
  signal \count1__10_carry_i_2_n_0\ : STD_LOGIC;
  signal \count1__10_carry_i_3_n_0\ : STD_LOGIC;
  signal \count1__10_carry_i_4_n_0\ : STD_LOGIC;
  signal \count1__10_carry_n_0\ : STD_LOGIC;
  signal \count1__10_carry_n_1\ : STD_LOGIC;
  signal \count1__10_carry_n_2\ : STD_LOGIC;
  signal \count1__10_carry_n_3\ : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count2_carry__0_n_0\ : STD_LOGIC;
  signal \count2_carry__0_n_1\ : STD_LOGIC;
  signal \count2_carry__0_n_2\ : STD_LOGIC;
  signal \count2_carry__0_n_3\ : STD_LOGIC;
  signal \count2_carry__1_n_0\ : STD_LOGIC;
  signal \count2_carry__1_n_1\ : STD_LOGIC;
  signal \count2_carry__1_n_2\ : STD_LOGIC;
  signal \count2_carry__1_n_3\ : STD_LOGIC;
  signal \count2_carry__2_n_0\ : STD_LOGIC;
  signal \count2_carry__2_n_1\ : STD_LOGIC;
  signal \count2_carry__2_n_2\ : STD_LOGIC;
  signal \count2_carry__2_n_3\ : STD_LOGIC;
  signal \count2_carry__3_n_0\ : STD_LOGIC;
  signal \count2_carry__3_n_1\ : STD_LOGIC;
  signal \count2_carry__3_n_2\ : STD_LOGIC;
  signal \count2_carry__3_n_3\ : STD_LOGIC;
  signal \count2_carry__4_n_0\ : STD_LOGIC;
  signal \count2_carry__4_n_1\ : STD_LOGIC;
  signal \count2_carry__4_n_2\ : STD_LOGIC;
  signal \count2_carry__4_n_3\ : STD_LOGIC;
  signal \count2_carry__5_n_0\ : STD_LOGIC;
  signal \count2_carry__5_n_1\ : STD_LOGIC;
  signal \count2_carry__5_n_2\ : STD_LOGIC;
  signal \count2_carry__5_n_3\ : STD_LOGIC;
  signal \count2_carry__6_n_2\ : STD_LOGIC;
  signal \count2_carry__6_n_3\ : STD_LOGIC;
  signal count2_carry_n_0 : STD_LOGIC;
  signal count2_carry_n_1 : STD_LOGIC;
  signal count2_carry_n_2 : STD_LOGIC;
  signal count2_carry_n_3 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_i_1_n_0 : STD_LOGIC;
  signal tmp_i_2_n_0 : STD_LOGIC;
  signal \NLW_count1__10_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1__10_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1__10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1__10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  dout <= \^dout\;
\count1__10_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count1__10_carry_n_0\,
      CO(2) => \count1__10_carry_n_1\,
      CO(1) => \count1__10_carry_n_2\,
      CO(0) => \count1__10_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1__10_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1__10_carry_i_1_n_0\,
      S(2) => \count1__10_carry_i_2_n_0\,
      S(1) => \count1__10_carry_i_3_n_0\,
      S(0) => \count1__10_carry_i_4_n_0\
    );
\count1__10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1__10_carry_n_0\,
      CO(3) => \count1__10_carry__0_n_0\,
      CO(2) => \count1__10_carry__0_n_1\,
      CO(1) => \count1__10_carry__0_n_2\,
      CO(0) => \count1__10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1__10_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1__10_carry__0_i_1_n_0\,
      S(2) => \count1__10_carry__0_i_2_n_0\,
      S(1) => \count1__10_carry__0_i_3_n_0\,
      S(0) => \count1__10_carry__0_i_4_n_0\
    );
\count1__10_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(23),
      I1 => p_0_in(22),
      I2 => p_0_in(21),
      O => \count1__10_carry__0_i_1_n_0\
    );
\count1__10_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(20),
      I1 => p_0_in(19),
      I2 => p_0_in(18),
      O => \count1__10_carry__0_i_2_n_0\
    );
\count1__10_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(15),
      I1 => p_0_in(17),
      I2 => p_0_in(16),
      O => \count1__10_carry__0_i_3_n_0\
    );
\count1__10_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(14),
      I2 => p_0_in(12),
      O => \count1__10_carry__0_i_4_n_0\
    );
\count1__10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1__10_carry__0_n_0\,
      CO(3) => \NLW_count1__10_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1__10_carry__1_n_1\,
      CO(1) => \count1__10_carry__1_n_2\,
      CO(0) => \count1__10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1__10_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1__10_carry__1_i_1_n_0\,
      S(1) => \count1__10_carry__1_i_2_n_0\,
      S(0) => \count1__10_carry__1_i_3_n_0\
    );
\count1__10_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(30),
      I1 => p_0_in(31),
      O => \count1__10_carry__1_i_1_n_0\
    );
\count1__10_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(29),
      I1 => p_0_in(28),
      I2 => p_0_in(27),
      O => \count1__10_carry__1_i_2_n_0\
    );
\count1__10_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(26),
      I1 => p_0_in(25),
      I2 => p_0_in(24),
      O => \count1__10_carry__1_i_3_n_0\
    );
\count1__10_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(9),
      I1 => p_0_in(11),
      I2 => p_0_in(10),
      O => \count1__10_carry_i_1_n_0\
    );
\count1__10_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      I2 => p_0_in(8),
      O => \count1__10_carry_i_2_n_0\
    );
\count1__10_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      O => \count1__10_carry_i_3_n_0\
    );
\count1__10_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => count(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      O => \count1__10_carry_i_4_n_0\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_1_n_0,
      S(2) => count1_carry_i_2_n_0,
      S(1) => count1_carry_i_3_n_0,
      S(0) => count1_carry_i_4_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_1_n_0\,
      S(2) => \count1_carry__0_i_2_n_0\,
      S(1) => \count1_carry__0_i_3_n_0\,
      S(0) => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(23),
      I1 => p_0_in(22),
      I2 => p_0_in(21),
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(20),
      I1 => p_0_in(19),
      I2 => p_0_in(18),
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(17),
      I1 => p_0_in(16),
      I2 => p_0_in(15),
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in(14),
      I1 => p_0_in(13),
      I2 => p_0_in(12),
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1_carry__1_i_1_n_0\,
      S(1) => \count1_carry__1_i_2_n_0\,
      S(0) => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(30),
      I1 => p_0_in(31),
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(29),
      I1 => p_0_in(28),
      I2 => p_0_in(27),
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(26),
      I1 => p_0_in(25),
      I2 => p_0_in(24),
      O => \count1_carry__1_i_3_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(10),
      I2 => p_0_in(9),
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => count(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      O => count1_carry_i_4_n_0
    );
count2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count2_carry_n_0,
      CO(2) => count2_carry_n_1,
      CO(1) => count2_carry_n_2,
      CO(0) => count2_carry_n_3,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count2_carry_n_0,
      CO(3) => \count2_carry__0_n_0\,
      CO(2) => \count2_carry__0_n_1\,
      CO(1) => \count2_carry__0_n_2\,
      CO(0) => \count2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__0_n_0\,
      CO(3) => \count2_carry__1_n_0\,
      CO(2) => \count2_carry__1_n_1\,
      CO(1) => \count2_carry__1_n_2\,
      CO(0) => \count2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__1_n_0\,
      CO(3) => \count2_carry__2_n_0\,
      CO(2) => \count2_carry__2_n_1\,
      CO(1) => \count2_carry__2_n_2\,
      CO(0) => \count2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__2_n_0\,
      CO(3) => \count2_carry__3_n_0\,
      CO(2) => \count2_carry__3_n_1\,
      CO(1) => \count2_carry__3_n_2\,
      CO(0) => \count2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__3_n_0\,
      CO(3) => \count2_carry__4_n_0\,
      CO(2) => \count2_carry__4_n_1\,
      CO(1) => \count2_carry__4_n_2\,
      CO(0) => \count2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__4_n_0\,
      CO(3) => \count2_carry__5_n_0\,
      CO(2) => \count2_carry__5_n_1\,
      CO(1) => \count2_carry__5_n_2\,
      CO(0) => \count2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count2_carry__6_n_2\,
      CO(0) => \count2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD5DFFFF"
    )
        port map (
      I0 => count(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => din(1),
      I3 => \count1_carry__1_n_1\,
      I4 => din(0),
      O => p_1_in(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(10),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(11),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(12),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(13),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(14),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(15),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(16),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(17),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(18),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(18)
    );
\count[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(19),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(19)
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(1),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(1)
    );
\count[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(20),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(20)
    );
\count[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(21),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(21)
    );
\count[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(22),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(22)
    );
\count[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(23),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(23)
    );
\count[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(24),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(24)
    );
\count[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(25),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(25)
    );
\count[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(26),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(26)
    );
\count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(27),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(27)
    );
\count[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(28),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(28)
    );
\count[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(29),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(29)
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(2),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(2)
    );
\count[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(30),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(30)
    );
\count[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(31),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(31)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(3),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(4),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(5),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(6),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(7),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(8),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020A020"
    )
        port map (
      I0 => din(0),
      I1 => \count1__10_carry__1_n_1\,
      I2 => p_0_in(9),
      I3 => din(1),
      I4 => \count1_carry__1_n_1\,
      O => p_1_in(9)
    );
\count_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => count(0),
      S => tmp_i_1_n_0
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => count(10),
      R => tmp_i_1_n_0
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => count(11),
      R => tmp_i_1_n_0
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => count(12),
      R => tmp_i_1_n_0
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => count(13),
      R => tmp_i_1_n_0
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => count(14),
      R => tmp_i_1_n_0
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => count(15),
      R => tmp_i_1_n_0
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(16),
      Q => count(16),
      R => tmp_i_1_n_0
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(17),
      Q => count(17),
      R => tmp_i_1_n_0
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(18),
      Q => count(18),
      R => tmp_i_1_n_0
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(19),
      Q => count(19),
      R => tmp_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => count(1),
      R => tmp_i_1_n_0
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(20),
      Q => count(20),
      R => tmp_i_1_n_0
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(21),
      Q => count(21),
      R => tmp_i_1_n_0
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(22),
      Q => count(22),
      R => tmp_i_1_n_0
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(23),
      Q => count(23),
      R => tmp_i_1_n_0
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(24),
      Q => count(24),
      R => tmp_i_1_n_0
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(25),
      Q => count(25),
      R => tmp_i_1_n_0
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(26),
      Q => count(26),
      R => tmp_i_1_n_0
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(27),
      Q => count(27),
      R => tmp_i_1_n_0
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(28),
      Q => count(28),
      R => tmp_i_1_n_0
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(29),
      Q => count(29),
      R => tmp_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => count(2),
      R => tmp_i_1_n_0
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(30),
      Q => count(30),
      R => tmp_i_1_n_0
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(31),
      Q => count(31),
      R => tmp_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => count(3),
      R => tmp_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => count(4),
      R => tmp_i_1_n_0
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => count(5),
      R => tmp_i_1_n_0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => count(6),
      R => tmp_i_1_n_0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => count(7),
      R => tmp_i_1_n_0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => count(8),
      R => tmp_i_1_n_0
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => count(9),
      R => tmp_i_1_n_0
    );
tmp_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => tmp_i_1_n_0
    );
tmp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DFFE2FF"
    )
        port map (
      I0 => \count1__10_carry__1_n_1\,
      I1 => din(1),
      I2 => \count1_carry__1_n_1\,
      I3 => din(0),
      I4 => \^dout\,
      O => tmp_i_2_n_0
    );
tmp_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => tmp_i_2_n_0,
      Q => \^dout\,
      S => tmp_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_piezo_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_piezo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_piezo_0_0 : entity is "design_1_piezo_0_0,piezo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_piezo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_piezo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_piezo_0_0 : entity is "piezo,Vivado 2018.2";
end design_1_piezo_0_0;

architecture STRUCTURE of design_1_piezo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW";
begin
inst: entity work.design_1_piezo_0_0_piezo
     port map (
      clk => clk,
      din(1 downto 0) => din(1 downto 0),
      dout => dout,
      reset_n => reset_n
    );
end STRUCTURE;
