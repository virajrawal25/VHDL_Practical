----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 19:33:11
-- Design Name: 
-- Module Name: Tb_Sin_Pout_4b - Behavioral
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

entity Tb_Sin_Pout_4b is
--  Port ( );
end Tb_Sin_Pout_4b;

architecture Behavioral of Tb_Sin_Pout_4b is
 component Sin_Pout_4b is
 Port ( clk : in STD_LOGIC;
          rst : in STD_LOGIC;
          I : in STD_LOGIC;
          Q : inout STD_LOGIC_VECTOR (0 to 3));
end component  Sin_Pout_4b;
signal k,clk1,rst1:std_logic;
signal Q1:std_logic_vector(0 to 3):="0000";


begin

X1:Sin_Pout_4b port map(clk1,rst1,k,Q1);
process
begin
rst1<='0';
wait for 5ns;
rst1<='1';
wait;
end process;

process
begin
clk1<='0';
wait for 5ns;
clk1<='1';
wait for 5ns;

end process;

process
begin

k<='1';
wait for 10ns;
k<='0';
wait for 10ns;
k<='1';
wait for 10ns;
k<='0';
wait;
end process;

end Behavioral;
