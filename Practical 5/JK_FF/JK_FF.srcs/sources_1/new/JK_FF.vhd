----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2018 14:59:38
-- Design Name: 
-- Module Name: JK_FF - Behavioral
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

entity JK_FF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is
signal q1:std_logic:='0';
signal q2:std_logic:='1';

begin
    
   process(rst,clk,J,K)
      begin
      if (rst='0') then
         Q<='0';
         Qb<='1';
     elsif(rising_edge(clk)) then
          if(J = '1' and  K = '0')then
          
          q1<='1';
          q2<='0';
          
          elsif(J = '0' and K = '1') then
          
          q1<='0';
          q2<='1';

           elsif(J = '0' and K = '0') then
          
          q1<= q1;
          q2<=q2;
          
           elsif(J ='1' and K ='1') then
                   
           q1<= q2;
           q2<= q1;
          end if;
          Q<=q1;
          Qb<=q2;
     end if;
    end process;
       

end Behavioral;
