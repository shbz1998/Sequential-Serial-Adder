----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2021 06:42:02 PM
-- Design Name: 
-- Module Name: dff - Behavioral
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

entity dff is
    Port ( d : in STD_LOGIC;
           q : out STD_LOGIC;
           clk: in STD_LOGIC;
           rst: in STD_LOGIC);
end dff;

architecture Behavioral of dff is

begin

process(clk)
begin
if(rising_edge(clk)) then
    if(rst='1') then
        q<='0';
    else
        q<= d;
    end if;
 end if;
end process;
end Behavioral;
