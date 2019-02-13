----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 20:09:50
-- Design Name: 
-- Module Name: Tb_Mux_8x1 - Behavioral
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

entity Tb_Mux_8x1 is
--  Port ( );
end Tb_Mux_8x1;

architecture Behavioral of Tb_Mux_8x1 is
component Mux_8x1 is
    Port ( i : in STD_LOGIC_VECTOR (0 to 7);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end component Mux_8x1;
signal i1:STD_LOGIC_VECTOR (0 to 7);
signal y: std_logic;
signal s1: std_logic_vector(2 downto 0);
begin
u1:Mux_8x1 port map(i1,s1,y);
process
begin
i1<="10000000";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="01000000";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00100000";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00010000";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00001000";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00000100";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00000010";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait for 50ns;

i1<="00000001";
s1<="000";
wait for 10ns;
s1<="001";
wait for 10ns;
s1<="010";
wait for 10ns;
s1<="011";
wait for 10ns;
s1<="100";
wait for 10ns;
s1<="101";
wait for 10ns;
s1<="110";
wait for 10ns;
s1<="111";
wait;

end process;


end Behavioral;
