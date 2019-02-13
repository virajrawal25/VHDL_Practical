----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.09.2018 00:23:25
-- Design Name: 
-- Module Name: U_D_bh_8B - Behavioral
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
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity U_D_bh_8B is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           M : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end U_D_bh_8B;

architecture Behavioral of U_D_bh_8B is

begin
process(clk,rst,M)
   variable t:integer:=0;
   variable t1:STD_LOGIC_VECTOR(7 downto 0);
   begin
   if(rising_edge(clk)) then
      
      if(M='1') then
      t:=t + 1;
      elsif(m='0') then
      t:=t - 1;
      end if;
    
    end if;
   
    t1:= conv_std_logic_vector(t, 8);
    
q<=t1;
end process;
end Behavioral;
