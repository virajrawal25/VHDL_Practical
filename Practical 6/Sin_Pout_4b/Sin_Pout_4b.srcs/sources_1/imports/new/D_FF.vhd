----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 15:36:12
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
component JK_FF is
Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end component JK_FF;
signal Db:STD_LOGIC;

begin
Db<= not D;
x1:JK_FF port map(clk,rst,D,Db,Q,Qb);


end Behavioral;
