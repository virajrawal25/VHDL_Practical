----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 18:44:15
-- Design Name: 
-- Module Name: Tb_Demux1x8 - Behavioral
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

entity Tb_Demux1x8 is
--  Port ( );
end Tb_Demux1x8;

architecture Behavioral of Tb_Demux1x8 is
component Demux1x8 is
    Port ( i : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (0 to 7);
           s : in STD_LOGIC_VECTOR (2 downto 0));
end component Demux1x8;
signal i : STD_LOGIC;
signal y : STD_LOGIC_VECTOR (0 to 7);
signal s : STD_LOGIC_VECTOR (2 downto 0);
begin
x1:Demux1x8 port map(i,y,s);
process
begin
i<='0';
s<="000";
wait for 10 ns;
s<="001";
wait for 10 ns;
s<="010";
wait for 10 ns;
s<="011";
wait for 10 ns;
s<="100";
wait for 10 ns;
s<="101";
wait for 10 ns;
s<="110";
wait for 10 ns;
s<="111";
wait for 50 ns;

i<='1';
s<="000";
wait for 10 ns;
s<="001";
wait for 10 ns;
s<="010";
wait for 10 ns;
s<="011";
wait for 10 ns;
s<="100";
wait for 10 ns;
s<="101";
wait for 10 ns;
s<="110";
wait for 10 ns;
s<="111";
wait;
end process;
end Behavioral;
