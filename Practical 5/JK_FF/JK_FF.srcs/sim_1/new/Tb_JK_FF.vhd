----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2018 15:23:53
-- Design Name: 
-- Module Name: Tb_JK_FF - Behavioral
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

entity Tb_JK_FF is
--  Port ( );
end Tb_JK_FF;

architecture Behavioral of Tb_JK_FF is

component JK_FF is 
Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end component JK_FF;        
signal clk,rst,J,K,Q,Qb:std_logic;
begin
x1:JK_FF port map(clk,rst,J,K,Q,Qb);
    
    process
    begin
    
    clk<='1';
    wait for 4ns;
    clk<='0';
    wait for 4ns;
    end process;
    
     process
     begin
     rst<='0';
     wait for 10ns;
     rst<='1';
     J<='0';
     K<='0';
     wait for 10ns;
     
     J<='1';
     K<='0';
     wait for 10ns;
     
     J<='0';
     K<='1';
     wait for 10ns;
               
     J<='1';
     K<='1';
     wait for 10ns;
          
    end process;

end Behavioral;
