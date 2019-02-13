----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 14:37:11
-- Design Name: 
-- Module Name: Tb_not_gate - Behavioral
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

entity Tb_not_gate is
--  Port ( );
end Tb_not_gate;

architecture Behavioral of Tb_not_gate is
component not_gate is
    Port ( a : in STD_LOGIC;
           y : out STD_LOGIC);
end component not_gate;
signal a,y:std_logic;
begin
x1:not_gate port map(a,y);
     
     process
     begin
     a<='0';
     wait for 10ns;
     
     a<='1';
     wait for 10ns;
end process;

end Behavioral;
