----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2023 12:46:28 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is

COMPONENT FA 
PORT (A,B,C: IN STD_LOGIC;
S,C_OUT :OUT STD_LOGIC);
END COMPONENT;

SIGNAL A_IN,B_IN,C_IN :STD_LOGIC;
SIGNAL S_OUT, C_OUT :STD_LOGIC;


begin

UUT : FA PORT MAP(
 A=>A_IN,
 B=>B_IN,
 C=>C_IN,
 S=>S_OUT,
 C_OUT=>C_OUT
 );
 
 process 
 begin 
 A_IN<= '0';
 B_IN<='0';
 C_IN<='0';
 
 WAIT FOR 100 ns;
 
 A_IN<= '0';
 B_IN<='0';
 C_IN<='1';
 
 WAIT FOR 100 ns;
 
 A_IN<= '0';
 B_IN<='1';
 C_IN<='0';
 
 WAIT FOR 100 ns;
 
 
 A_IN<= '0';
 B_IN<='1';
 C_IN<='1';
 
 WAIT FOR 100 ns;
 
 
 A_IN<= '1';
 B_IN<='0';
 C_IN<='0';
 
 WAIT FOR 100 ns;
 
 A_IN<= '1';
 B_IN<='0';
 C_IN<='1';
 
 WAIT FOR 100 ns;
 
 A_IN<= '1';
 B_IN<='1';
 C_IN<='0';
 
 WAIT FOR 100 ns;
 
 
  A_IN<= '1';
 B_IN<='1';
 C_IN<='1';
 
 WAIT FOR 100 ns;
 
 WAIT;
 
 
 end process;
 
 

end Behavioral;
