----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2018 22:50:39
-- Design Name: 
-- Module Name: Tb_basic_gates - Behavioral
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

entity Tb_basic_gates is
--  Port ( );
end Tb_basic_gates;

architecture Behavioral of Tb_basic_gates is


component basic_gates is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC;
           y5 : out STD_LOGIC;
           y6 : out STD_LOGIC;
           y7 : out STD_LOGIC);
 
end component basic_gates;  
      
signal a,b,y1,y2,y3,y4,y5,y6,y7:std_logic;
begin
x1:basic_gates port map(a,b,y1,y2,y3,y4,y5,y6,y7);
     process
     begin
     a<='0';
     b<='0';
     wait for 10ns;
     
     a<='1';
     b<='0';
     wait for 10ns;
     
     a<='0';
     b<='1';
     wait for 10ns;
               
     a<='1';
     b<='1';
     wait;
          
    end process;


end Behavioral;
