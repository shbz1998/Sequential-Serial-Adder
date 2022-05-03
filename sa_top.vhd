----------------------------------------------------------------------------------
-- Company: CALIFORNIA STATE UNIVERSITY, NORTHRIDGE
-- Engineer: SHAHBAZ HASSAN KHAN MALIK
-- 
-- Create Date: 11/10/2021 06:39:28 PM
-- Design Name: Serial Adde3r
-- Module Name: sa_top - Behavioral
-- Project Name: COMPUTER ASSIGNMENT #4 
-- Target Devices: 
-- Tool Versions: V_1.0_BETA
-- Description: The circuit consists of two serial data inputs: x and y, system clock, system reset, and a serial output data s, all single bits. 
-- 
-- Dependencies: Shift Register and D Flip Flop
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

entity sa_top is
port(x: in STD_LOGIC;
     y: in STD_LOGIC;
     clk: in STD_LOGIC;
     rst: in STD_LOGIC;
     s: out STD_LOGIC;
     v: out STD_LOGIC);
end sa_top;

architecture Behavioral of sa_top is

component dff is
    Port ( d : in STD_LOGIC;
           q : out STD_LOGIC;
           clk: in STD_LOGIC;
           rst: in STD_LOGIC);
end component;

component sr is
port (sr_in: in STD_LOGIC;
      sr_out: out STD_LOGIC;
      clk: in STD_LOGIC;
      rst: in STD_LOGIC);
end component;

component fa is
 port( 
  x1, y1, cin : in std_logic;  
  s, cout : out std_logic
  ); 
end component;

signal ff_out: std_logic;
signal fa_cout: std_logic;
signal y_int: std_logic;
signal x_int: std_logic;
signal s_int: std_logic;

begin

v <= fa_cout xor ff_out;

dff_inst: dff port map(d=>fa_cout, q=>ff_out, clk=>clk, rst=>rst);
y_inst: sr port map(sr_in=>y , sr_out=>y_int, clk=>clk, rst=>rst);
x_inst: sr port map(sr_in=>x , sr_out=>x_int, clk=>clk, rst=>rst);
fa_inst: fa port map(x1=>x_int, y1=>y_int, cin=>ff_out, cout=>fa_cout, s=>s_int);
s_inst: sr port map(sr_in=>s_int , sr_out=>s, clk=>clk, rst=>rst);
 
end Behavioral;
