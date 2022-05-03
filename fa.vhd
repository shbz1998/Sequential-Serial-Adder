----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2021 01:12:47 AM
-- Design Name: 
-- Module Name: fa - Behavioral
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

entity fa is
 port( 
  x1, y1, cin : in std_logic;  
  s, cout : out std_logic
  ); 
end fa;

architecture Behavioral of fa is

begin  

  s<= x1 xor y1 xor cin;
  cout <= (x1 and y1) or (cin and x1) or (cin and y1);

end Behavioral;
