----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 15:25:02
-- Design Name: 
-- Module Name: Encoder_8x3 - Behavioral
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

entity Encoder_8x3 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (2 downto 0));
end Encoder_8x3;

architecture Behavioral of Encoder_8x3 is
component or_gate
 Port ( a : in STD_LOGIC;
          b : in STD_LOGIC;
          y : out STD_LOGIC);
end component or_gate;
signal x: std_logic_vector(0 to 5);
begin


u1:or_gate port map(i(4),i(5),x(0));
u2:or_gate port map(i(6),i(7),x(1));
u3:or_gate port map(x(0),x(1),y(2));
u5:or_gate port map(i(2),i(3),x(2));
u6:or_gate port map(i(6),i(7),x(3));
u7:or_gate port map(x(2),x(3),y(1));
u8:or_gate port map(i(1),i(3),x(4));
u9:or_gate port map(i(5),i(7),x(5));
u10:or_gate port map(x(4),x(5),y(0));

end Behavioral;
