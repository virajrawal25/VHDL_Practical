----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 19:13:14
-- Design Name: 
-- Module Name: Mux_8x1 - Behavioral
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

entity Mux_8x1 is
    Port ( i : in STD_LOGIC_VECTOR (0 to 7);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end Mux_8x1;

architecture Behavioral of Mux_8x1 is
component or_gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end component or_gate;

component and_4input is
   Port ( a1 : in STD_LOGIC;
          a2 : in STD_LOGIC;
          a3 : in STD_LOGIC;
          a4 : in STD_LOGIC;
          y : out STD_LOGIC);
end component and_4input;
component not_gate is
    Port ( a : in STD_LOGIC;
          y : out STD_LOGIC);
end component not_gate;




signal sb:std_logic_vector(0 to 2);

signal x:std_logic_vector(0 to 13);
begin
u0:not_gate port map(s(0),sb(0));
u1:not_gate port map(s(1),sb(1));
u2:not_gate port map(s(2),sb(2));

u3:and_4input port map(sb(0),sb(1),sb(2),i(0),x(0));
u4:and_4input port map(s(0),sb(1),sb(2),i(1),x(1));
u5:and_4input port map(sb(0),s(1),sb(2),i(2),x(2));
u6:and_4input port map(s(0),s(1),sb(2),i(3),x(3));
u7:and_4input port map(sb(0),sb(1),s(2),i(4),x(4));
u8:and_4input port map(s(0),sb(1),s(2),i(5),x(5));
u9:and_4input port map(sb(0),s(1),s(2),i(6),x(6));
u10:and_4input port map(s(0),s(1),s(2),i(7),x(7));

u11:or_gate port map(x(0),x(1),x(8));
u12:or_gate port map(x(2),x(3),x(9));
u13:or_gate port map(x(4),x(5),x(10));
u14:or_gate port map(x(6),x(7),x(11));
u15:or_gate port map(x(8),x(9),x(12));
u16:or_gate port map(x(10),x(11),x(13));
u17:or_gate port map(x(12),x(13),y);



end Behavioral;
