----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 22:03:37
-- Design Name: 
-- Module Name: Tb_halfadder - Behavioral
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

entity Tb_halfadder is
--  Port ( );
end Tb_halfadder;

architecture Behavioral of Tb_halfadder is
component halfadder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end component halfadder;
signal a,b,s,c: std_logic;
begin
u1:halfadder port map(a,b,s,c);
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
