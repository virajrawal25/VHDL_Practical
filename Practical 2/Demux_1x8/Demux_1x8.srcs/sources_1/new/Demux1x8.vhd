----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 18:26:31
-- Design Name: 
-- Module Name: Demux1x8 - Behavioral
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

entity Demux1x8 is
    Port ( i : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (0 to 7);
           s : in STD_LOGIC_VECTOR (2 downto 0));
end Demux1x8;

architecture Behavioral of Demux1x8 is

begin
process(i,s)
begin
case(s) is
when "000" => y(0)<=i;
              y(1 to 7)<="0000000";
when "001" => y(1)<=i;
              y(0)<='0';
              y(2 to 7)<="000000";
when "010" => y(2)<=i;
              y(0 to 1)<="00";
              y(3 to 7)<="00000";
when "011" => y(3)<=i;
              y(0 to 2)<="000";
              y(4 to 7)<="0000";
when "100" => y(4)<=i;
              y(0 to 3)<="0000";
              y(5 to 7)<="000";              
when "101" => y(5)<=i;
              y(0 to 4)<="00000";
              y(6 to 7)<="00";
when "110" => y(6)<=i;
              y(0 to 5)<="000000";
              y(7)<='0';
when "111" => y(7)<=i;
              y(0 to 6)<="0000000";
when others => y<="00000000";              
              end case;
         end process;
end Behavioral;
