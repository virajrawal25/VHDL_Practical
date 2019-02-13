----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 22:01:20
-- Design Name: 
-- Module Name: rpl_adder_4b - Behavioral
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

entity rpl_adder_4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           co : out STD_LOGIC);
end rpl_adder_4b;

architecture Behavioral of rpl_adder_4b is
component fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component fulladder;
signal c1:std_logic_vector(0 to 2);
begin
z1: for i in 0 to 3 generate

f1:if(i=0) generate
  x1:fulladder port map(a(i),b(i),c,s(i),c1(0));
  end generate f1;
  
f2:if(i=3) generate
      x2:fulladder port map(a(i),b(i),c1(i-1),s(i),co);
      end generate f2;  
  
f3:if(0<i and i<3) generate
    x3:fulladder port map(a(i),b(i),c1(i-1),s(i),c1(i));
    end generate f3;
  
end generate z1;
end Behavioral;
