----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 19:16:37
-- Design Name: 
-- Module Name: Sin_Pout_4b - Behavioral
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

entity Sin_Pout_4b is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           I : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (0 to 3));
end Sin_Pout_4b;

architecture Behavioral of Sin_Pout_4b is
component D_FF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end component D_FF;
signal u1:std_logic_vector(0 to 3);
signal u2:std_logic_vector(0 to 3);
begin

z1: for k in 0 to 3 generate
    f1:if(k=0) generate 
 
    x1:D_FF port map(clk,rst,I,u1(k),u2(k));
   end generate f1;

    f2:if(k>0) generate 
 
   x2:D_FF port map(clk,rst,u1(k-1),u1(k),u2(k));
end generate f2;

end generate z1;
Q<=u1;

end Behavioral;
