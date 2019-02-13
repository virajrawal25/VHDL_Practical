----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.09.2018 00:50:46
-- Design Name: 
-- Module Name: Tb_U_D_bh_8b - Behavioral
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

entity Tb_U_D_bh_8b is
--  Port ( );
end Tb_U_D_bh_8b;

architecture Behavioral of Tb_U_D_bh_8b is
component U_D_bh_8b is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           M : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component U_D_bh_8b;
signal m1,clk1,rst1:std_logic;
signal cout1:std_logic_vector(7 downto 0);


begin
X1:U_D_bh_8b port map(clk1,rst1,m1,cout1);
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

m1<='1';--upcount
wait for 500ns;
m1<='0';--downcount
wait;
end process;

end Behavioral;
