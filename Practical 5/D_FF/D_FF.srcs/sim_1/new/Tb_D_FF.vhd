----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2018 15:40:21
-- Design Name: 
-- Module Name: Tb_D_FF - Behavioral
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

entity Tb_D_FF is
--  Port ( );
end Tb_D_FF;

architecture Behavioral of Tb_D_FF is
component D_FF is 
Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end component D_FF;        
signal clk,rst,D,Q,Qb:std_logic;
begin
x1:D_FF port map(clk,rst,D,Q,Qb);
    
    process
    begin
    
    clk<='1';
    wait for 5ns;
    clk<='0';
    wait for 5ns;
    end process;
    
     process
     begin
     rst<='0';
     wait for 10ns;
     rst<='1';
     wait for 50ns;
     end process;
     
     Process
     begin
     
     D<='0';
     wait for 10ns;
     
     D<='1';
     wait for 10ns;
          
    end process;

end Behavioral;
