-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov 17 15:25:21 2019
-- Host        : w310-191 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/16bml1/Desktop/PBaseFinal.xpr/pbasejb.srcs/sources_1/bd/design_1/ip/design_1_sevenseg_0_0/design_1_sevenseg_0_0_stub.vhdl
-- Design      : design_1_sevenseg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_sevenseg_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    bcdin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    anode_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    segment_n : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_sevenseg_0_0;

architecture stub of design_1_sevenseg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,bcdin[15:0],anode_n[3:0],segment_n[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sevenseg,Vivado 2018.2";
begin
end;
