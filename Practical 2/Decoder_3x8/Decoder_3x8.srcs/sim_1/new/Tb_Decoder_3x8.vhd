----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 14:52:07
-- Design Name: 
-- Module Name: Tb_Decoder_3x8 - Behavioral
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

entity Tb_Decoder_3x8 is
--  Port ( );
end Tb_Decoder_3x8;

architecture Behavioral of Tb_Decoder_3x8 is
component Decoder_3x8 is
    Port ( i : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end component Decoder_3x8;
signal i:std_logic_vector(2 downto 0);
signal y:std_logic_vector(7 downto 0);

begin
x1:Decoder_3x8 port map(i,y);
     process
     begin
     i <="000";
     wait for 10ns;
     
     i <="001";
     wait for 10ns;
    
    i <="010";
    wait for 10ns;
    
    i <="011";
    wait for 10ns;
    
         i <="100";
         wait for 10ns;
         
         i <="101";
         wait for 10ns;
        
        i <="110";
        wait for 10ns;
        
        i <="111";
        wait;
end process;
end Behavioral;
