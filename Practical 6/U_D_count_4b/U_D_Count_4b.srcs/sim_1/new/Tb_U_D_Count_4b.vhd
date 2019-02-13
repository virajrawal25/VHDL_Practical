----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 17:00:23
-- Design Name: 
-- Module Name: Tb_U_D_Count_4b - Behavioral
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

entity Tb_U_D_Count_4b is
--  Port ( );
end Tb_U_D_Count_4b;

architecture Behavioral of Tb_U_D_Count_4b is
 component U_D_Count_4b is
    Port ( M : in STD_LOGIC;
           Mb : inout STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           cout : out STD_LOGIC_VECTOR (0 to 3));
end component U_D_Count_4b;
signal m1,mb1,clk1,rst1:std_logic;
signal cout1:std_logic_vector(0 to 3);


begin
X1:U_D_Count_4b port map(m1,mb1,clk1,rst1,cout1);
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
