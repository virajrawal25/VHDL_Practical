----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 19:38:23
-- Design Name: 
-- Module Name: Tb_and_4input - Behavioral
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

entity Tb_and_4input is
--  Port ( );
end Tb_and_4input;

architecture Behavioral of Tb_and_4input is

component and_4input is
 
   Port ( a1,a2,a3,a4 : in STD_LOGIC;
           y: out STD_LOGIC);
end component and_4input;        

signal a:std_logic_vector( 3 downto 0);
signal y:std_logic;

begin
x1:and_4input port map(a(0),a(1),a(2),a(3),y);
     process
     begin
     a<="0000";
     wait for 10ns;
     a<="0001";
     wait for 10ns;
     a<="0010";
     wait for 10ns;
     a<="0100";
     wait for 10ns;
     a<="1000";
     wait for 10ns;
     a<="1111";
     wait;
               
    end process;



end Behavioral;
