----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 22:53:12
-- Design Name: 
-- Module Name: adder_16b_bh - Behavioral
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

entity adder_16b_bh is
generic(N : integer:=15);
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           c : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (15 downto 0);
           co : out STD_LOGIC);
end adder_16b_bh;

architecture Behavioral of adder_16b_bh is

begin
process(a,b,c)
variable i:integer:=0;
variable c1:std_logic_vector( N+1 downto 0);
begin
c1(0):= c;
l1:for i in 0 to N loop
   
   s(i)<=a(i) xor b(i) xor c1(i);
   c1(i+1):= (a(i) and b(i)) or (b(i) and c1(i)) or (a(i) and c1(i));
   end loop l1;
   co<=c1(N+1);
   end process;
end Behavioral;
