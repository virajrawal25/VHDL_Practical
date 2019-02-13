----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 23:05:55
-- Design Name: 
-- Module Name: Tb_adder_16b_bh - Behavioral
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

entity Tb_adder_16b_bh is
generic(N : integer:=15);
--  Port ( );
end Tb_adder_16b_bh;

architecture Behavioral of Tb_adder_16b_bh is
component adder_16b_bh is
    Port (  a : in STD_LOGIC_VECTOR (N downto 0);
            b : in STD_LOGIC_VECTOR (N downto 0);
            c : in STD_LOGIC;
            s : out STD_LOGIC_VECTOR (N downto 0);
            co : out STD_LOGIC);
end component adder_16b_bh;

 signal a1 : STD_LOGIC_VECTOR (N downto 0);
 signal b1 : STD_LOGIC_VECTOR (N downto 0);
 signal c1 : STD_LOGIC;
 signal s1 : STD_LOGIC_VECTOR (N downto 0);
 signal c01 : STD_LOGIC;
begin
X1:adder_16b_bh port map(a1,b1,c1,s1,c01);
process
begin
c1<='0';
a1<="0000000000000000";
b1<="0000000000000000";
wait for 10ns;

a1<="1111111111111111";
b1<="0000000000000000";
wait for 10ns;

a1<="1111111111111111";
b1<="1111111111111111";
wait for 10ns;

a1<="1111111111111111";
b1<="1010101010101010";
wait for 10ns;

c1<='1';
a1<="0000000000000000";
b1<="0000000000000000";
wait for 10ns;

a1<="1111111111111111";
b1<="0000000000000000";
wait for 10ns;

a1<="1111111111111111";
b1<="1111111111111111";
wait for 10ns;

a1<="1111111111111111";
b1<="1010101010101010";
wait for 10ns;
end process;

end Behavioral;

