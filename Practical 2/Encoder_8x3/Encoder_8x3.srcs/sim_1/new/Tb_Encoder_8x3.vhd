----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 15:47:17
-- Design Name: 
-- Module Name: Tb_Encoder_8x3 - Behavioral
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

entity Tb_Encoder_8x3 is
--  Port ( );
end Tb_Encoder_8x3;

architecture Behavioral of Tb_Encoder_8x3 is
component Encoder_8x3 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (2 downto 0));
end component Encoder_8x3;
signal i : STD_LOGIC_VECTOR (7 downto 0);
signal y : STD_LOGIC_VECTOR (2 downto 0);
begin
x:Encoder_8x3 port map(i,y);
process
begin 
 
 i<="00000001";
 wait for 10ns;
 i<="00000010";
 wait for 10ns;
 i<="00000100";
 wait for 10ns;
 i<="00001000";
 wait for 10ns;
 i<="00010000";
 wait for 10ns;
 i<="00100000";
 wait for 10ns;
 i<="01000000";
 wait for 10ns;
 i<="10000000";
 wait;
 end process;
         
end Behavioral;
