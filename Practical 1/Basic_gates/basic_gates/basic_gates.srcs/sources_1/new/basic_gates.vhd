----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2018 22:44:04
-- Design Name: 
-- Module Name: basic_gates - Behavioral
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

entity basic_gates is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC;
           y5 : out STD_LOGIC;
           y6 : out STD_LOGIC;
           y7 : out STD_LOGIC);
end basic_gates;

architecture Behavioral of basic_gates is

begin
y1<= a and b;
y2<= a or b;
y3<= a xor b;
y4<= not a;
y5<= not ( a and b);
y6<= not ( a or b);
y7<= not ( a xor b);
 

end Behavioral;
