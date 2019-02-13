----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 14:45:55
-- Design Name: 
-- Module Name: Decoder_3x8 - Behavioral
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

entity Decoder_3x8 is
    Port ( i : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3x8;

architecture Behavioral of Decoder_3x8 is
begin
process(i)
 begin
 case(i) is

when "000" => y<="00000001";
when "001" => y<="00000010";
when "010" => y<="00000100";
when "011" => y<="00001000";
when "100" => y<="00010000";
when "101" => y<="00100000";
when "110" => y<="01000000";
when "111" => y<="10000000";
when others =>y<="10000000";
end case;
end process;
end Behavioral;
