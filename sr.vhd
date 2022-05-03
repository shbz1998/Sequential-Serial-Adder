----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2021 06:53:07 PM
-- Design Name: 
-- Module Name: sr - Behavioral
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

entity sr is
port (sr_in: in STD_LOGIC;
      sr_out: out STD_LOGIC;
      clk: in STD_LOGIC;
      rst: in STD_LOGIC
      );
end sr;

architecture Behavioral of sr is

signal tmp_sig: std_logic_vector(15 downto 0);

begin

process (clk)
begin
   if (rising_edge(clk)) then
      if rst ='1' then
         tmp_sig <= (others => '0');
      else
         for i in 0 to 14 loop 
            tmp_sig(i+1) <= tmp_sig(i);
         end loop;
         tmp_sig(0) <= sr_in;
      end if;
   end if;
end process;
sr_out <= tmp_sig(15);

end Behavioral;
