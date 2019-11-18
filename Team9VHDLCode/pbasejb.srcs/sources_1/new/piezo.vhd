----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 10:23:11 AM
-- Design Name: 
-- Module Name: piezo - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity piezo is
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (1 downto 0);
           dout : out STD_LOGIC);
end piezo;

architecture Behavioral of piezo is
begin
      process(clk)
variable count : integer;
variable tmp : std_logic;
BEGIN  
if rising_edge(clk) then
 if (reset_n = '0') then
       count := 1;
       tmp := '1';
  else
    case (din) is 
       when "00" =>
        count :=1;
        tmp :='1'; 
       when "01" =>
         count:= count + 1;
         if (count = 50000) then
           tmp := NOT tmp;
           count := 1;
         end if;
       when "10" =>
         count :=1;
         tmp := '1';
       when "11"  =>
        count := count + 1;
        if (count = 25000) then
            tmp := NOT tmp;
            count := 1;
         end if;
        when  others =>
          tmp := '0';
          count := 1;
     end case;
  
   end if;
   end if;
dout <= tmp;
end  process;


end Behavioral;
