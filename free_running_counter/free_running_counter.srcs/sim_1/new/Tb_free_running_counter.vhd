----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2018 15:13:33
-- Design Name: 
-- Module Name: Tb_free_running_counter - Behavioral
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

entity Tb_free_running_counter is
--  Port ( );
end Tb_free_running_counter;

architecture Behavioral of Tb_free_running_counter is
component free_running_counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           a : inout STD_LOGIC;
           b : inout STD_LOGIC);
end component free_running_counter;
signal clk,rst,a,b: std_logic;
begin
x1: free_running_counter port map(clk,rst,a,b);
    process
        begin

clk<='1';
wait for 10ns;
clk<='0';
wait for 10ns;
end process;

 process
 begin
 rst<='0';
 wait for 10ns;
 rst<='1';
 wait;
 end process;

end Behavioral;
