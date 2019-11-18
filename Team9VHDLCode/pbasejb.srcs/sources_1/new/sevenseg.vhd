----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2019 02:22:25 PM
-- Design Name: 
-- Module Name: sevenseg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg is
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           bcdin : in unsigned (15 downto 0);
           anode_n : out STD_LOGIC_VECTOR (3 downto 0);
           segment_n : out STD_LOGIC_VECTOR (7 downto 0));
end sevenseg;

architecture Behavioral of sevenseg is
 constant clk_freq      : natural := 100000000;
 constant scan_clk_freq : natural := 200;
 constant clk_divisor   : natural := clk_freq / scan_clk_freq;

 signal scan_clk  : std_logic;
 signal digit_sel : unsigned(1 downto 0);
 signal bcd       : unsigned(3 downto 0);
 signal segment   : std_logic_vector(7 downto 0);
 
begin
  -- Divide master clock to get scan clock
scan_clk_gen : process (clk) is
  variable count : natural range 0 to clk_divisor - 1;
begin
  if rising_edge(clk) then
    if reset_n = '0' then
      count := 0;
      scan_clk <= '0';
    elsif count = clk_divisor - 1 then
      count := 0;
      scan_clk <= '1';
    else
      count := count + 1;
      scan_clk <= '0';
    end if;
  end if;
end process scan_clk_gen;

-- increment digit counter once per scan clock cycle
digit_counter : process (clk) is
begin
  if rising_edge(clk) then
    if reset_n = '0' then
      digit_sel <= "00";
    elsif scan_clk = '1' then
      digit_sel <= digit_sel + 1;
    end if;
  end if;
end process digit_counter;

-- multiplexer to select a BCD digit
with digit_sel select
  bcd <= bcdin(3 downto 0) when "00",
         bcdin(7 downto 4) when "01",
         bcdin(11 downto 8) when "10",
         bcdin(15 downto 12) when others;

-- activate selected digit's anode
with digit_sel select
  anode_n <= "1110" when "00",
             "1101" when "01",
             "1011" when "10",
             "0111" when others;

-- 7-segment decoder for selected digit
with bcd select
  segment(6 downto 0) <= "0111111" when "0000",   -- 0
                         "0000110" when "0001",   -- 1
                         "1011011" when "0010",   -- 2
                         "1001111" when "0011",   -- 3
                         "1100110" when "0100",   -- 4
                         "1101101" when "0101",   -- 5
                         "1111101" when "0110",   -- 6
                         "0000111" when "0111",   -- 7
                         "1111111" when "1000",   -- 8
                         "1101111" when "1001",   -- 9
                         "0111001" when "1100",   -- C
                         "1110001" when "1111",   -- F
                         "0000000" when others;   -- Nothing


-- segment outputs are negative logic
segment_n <= not segment;

end Behavioral;
