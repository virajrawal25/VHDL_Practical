----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2018 00:20:49
-- Design Name: 
-- Module Name: Tb_and_gate - Behavioral
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

entity Tb_and_gate is
--  Port ( );
end Tb_and_gate;

architecture Behavioral of Tb_and_gate is
component and_gate is	
   port( a, b : in std_logic;
            y : out std_logic);
   end component;

   signal  A, B, F : std_logic;
begin
   --map the testbench signals to the ports of the xorGate
   mapping: and_gate port map(A, B, F);
process
 
 begin
      A <= '0';
      B <= '0';
      wait for 15 ns;

      A <= '1';
      B <= '0';
      wait for 15 ns;
           
      A <= '0';
      B <= '1';
      wait for 15 ns;
     
      A <= '1';
      B <= '1';
      wait for 15 ns;
      end process;
end Behavioral;
