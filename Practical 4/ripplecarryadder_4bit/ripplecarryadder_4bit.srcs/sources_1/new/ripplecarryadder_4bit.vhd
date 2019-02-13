----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2018 22:42:00
-- Design Name: 
-- Module Name: ripplecarryadder_4bit - Behavioral
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

entity ripplecarryadder_4bit is
    Port ( a : in STD_LOGIC_VECTOR (0 to 3);
           b : in STD_LOGIC_VECTOR (0 to 3);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (0 to 3);
           cout : out STD_LOGIC);
end ripplecarryadder_4bit;

architecture Behavioral of ripplecarryadder_4bit is

begin

process(a,b,cin)

variable i:INTEGER:=0;
variable c:std_logic_vector(0 to 4):="00000";

   begin
   c(0):=cin;
   
   lop: for i in 0 to 3 loop
   
      s(i)<=a(i) xor b(i) xor c(i);
      c(i+1):=(a(i) and b(i)) or (b(i) and c(i)) or (c(i) and a(i));
   
   end loop lop;
  cout <= c(4);
end process;
   
end Behavioral;
