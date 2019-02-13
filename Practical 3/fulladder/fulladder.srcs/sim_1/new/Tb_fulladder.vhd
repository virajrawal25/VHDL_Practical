----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 22:31:50
-- Design Name: 
-- Module Name: Tb_fulladder - Behavioral
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

entity Tb_fulladder is
--  Port ( );
end Tb_fulladder;

architecture Behavioral of Tb_fulladder is
component fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component fulladder;

signal a,b,c,s,cout:std_logic;

begin
u1:fulladder port map(a,b,c,s,cout);
  process
   begin
   a<='0';
   b<='0';
   c<='0';
   wait for 10ns;
   
   a<='0';
   b<='0';
   c<='0';
   wait for 10ns;
      
   a<='0';
   b<='1';
   c<='0';
   wait for 10ns;
             
   a<='1';
   b<='1';
   c<='0';
   wait for 10ns;
  
      a<='0';
      b<='0';
      c<='1';
      wait for 10ns;
      
      a<='0';
      b<='0';
      c<='1';
      wait for 10ns;
         
      a<='0';
      b<='1';
      c<='1';
      wait for 10ns;
                
      a<='1';
      b<='1';
      c<='1';
      wait;      
  end process;


end Behavioral;
