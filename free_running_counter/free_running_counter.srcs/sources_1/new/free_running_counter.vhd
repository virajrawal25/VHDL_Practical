----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2018 14:47:43
-- Design Name: 
-- Module Name: free_running_counter - Behavioral
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

entity free_running_counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           a : inout STD_LOGIC;
           b : inout STD_LOGIC);
end free_running_counter;

architecture Behavioral of free_running_counter is


type mystate is (x,y,z,w);
signal pr_state,nt_state: mystate;
signal ta : STD_LOGIC:='0';
signal tb : STD_LOGIC:='1';
           
begin

process(clk,rst)
 begin
    if(rst='0') then
    pr_state<=x;
 elsif(rising_edge(clk))then
       pr_state<=nt_state;
 end if;
 end process;
 
 process(ta,tb,a,b,pr_state)
 begin 
 case(pr_state) is
  when x => if(ta='0' and tb= '1')then
       nt_state<=y;
       a<='0';
       b<='1';
       else
       nt_state<=x;
       a<='0';
       b<='0';
       end if;

 when y => if(ta='1' and tb= '1')then
       nt_state<=z;
       a<='1';
       b<='0';
       else
       nt_state<=y;
       a<='0';
       b<='1';
       end if;
 when z => if(ta='1' and tb= '0')then
        nt_state<=x;
        a<='0';
        b<='0';
        else
        nt_state<=z;
        a<='1';
        b<='0';
        end if;
 when others =>
               nt_state<=x;
               a<='0';
               b<='0';
           end case;
           
       ta<=(not a) or b;
       tb<=a or b;
end process;
end Behavioral;
