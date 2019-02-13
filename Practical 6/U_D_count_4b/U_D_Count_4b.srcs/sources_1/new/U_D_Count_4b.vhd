----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 16:17:55
-- Design Name: 
-- Module Name: U_D_Count_4b - Behavioral
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

entity U_D_Count_4b is
    Port ( M : in STD_LOGIC;
           Mb : inout STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           cout : out STD_LOGIC_VECTOR (0 to 3));
           
end U_D_Count_4b;

architecture Behavioral of U_D_Count_4b is
component JK_FF is 
Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end component JK_FF;   

component and_gate is 
Port ( a : in STD_LOGIC;
         b : in STD_LOGIC;
         y : out STD_LOGIC);
end component and_gate;

component or_gate is 
Port ( a : in STD_LOGIC;
         b : in STD_LOGIC;
         y : out STD_LOGIC);
end component or_gate;     

signal cout1:std_logic_vector(0 to 3);
signal q1:std_logic_vector(0 to 3):="0000";
signal d:std_logic_vector(0 to 2);
signal u:std_logic_vector(0 to 2);
signal c1:std_logic_vector(0 to 2);
--signal Mb:std_logic;

begin
Mb <= not M;
z1:for i in 0 to 3 generate

f1: if (i=0)generate
  x1:JK_FF port map(clk,rst,'1','1',cout1(i),q1(i));
  
  end generate f1;
  
f2: if (i>0) generate
  x2:and_gate port map(cout1(i-1),Mb,d(i-1));
  x3:and_gate port map(q1(i-1),M,u(i-1));
  x4:or_gate port map(d(i-1),u(i-1),c1(i-1));
  x1:JK_FF port map(c1(i-1),rst,'1','1',cout1(i),q1(i));
  end generate f2;
  
  
  end generate z1;
  

 cout<=cout1;
end Behavioral;
