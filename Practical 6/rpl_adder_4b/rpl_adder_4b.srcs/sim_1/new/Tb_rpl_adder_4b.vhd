----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 22:18:42
-- Design Name: 
-- Module Name: Tb_rpl_adder_4b - Behavioral
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

entity Tb_rpl_adder_4b is
--  Port ( );
end Tb_rpl_adder_4b;

architecture Behavioral of Tb_rpl_adder_4b is
component rpl_adder_4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           co : out STD_LOGIC);
end component rpl_adder_4b;

 signal a1 : STD_LOGIC_VECTOR (3 downto 0);
 signal b1 : STD_LOGIC_VECTOR (3 downto 0);
 signal c1 : STD_LOGIC;
 signal s1 : STD_LOGIC_VECTOR (3 downto 0);
 signal c01 : STD_LOGIC;
begin
X1:rpl_adder_4b port map(a1,b1,c1,s1,c01);
process
begin
c1<='0';
a1<="0000";
b1<="0000";
wait for 10ns;

a1<="1111";
b1<="0000";
wait for 10ns;

a1<="1111";
b1<="1111";
wait for 10ns;

a1<="1111";
b1<="1010";
wait for 10ns;

c1<='1';
a1<="0000";
b1<="0000";
wait for 10ns;

a1<="1111";
b1<="0000";
wait for 10ns;

a1<="1111";
b1<="1111";
wait for 10ns;

a1<="1111";
b1<="1010";
wait for 10ns;


end process;

end Behavioral;
