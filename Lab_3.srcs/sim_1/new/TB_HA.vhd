----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 06:29:48 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
COMPONENT HA
    PORT (A,B :IN std_logic;
    S,C  :OUT std_logic);
END COMPONENT;
SIGNAL A_IN,B_IN :std_logic;
SIGNAL S_OUT,C_OUT :std_logic;


begin

UUT : HA PORT MAP (
A=>A_IN,
B=>B_IN,
S=>S_OUT,
C=>C_OUT
);

process 
begin 
A_IN<= '0';
B_IN<='0';

WAIT FOR 100 ns;

A_IN<='0';
B_IN<='1';

WAIT FOR 100 ns;

A_IN<= '1';
B_IN<='0';

WAIT FOR 100 ns;

A_IN<= '1';
B_IN<='1';

WAIT FOR 100 ns;

A_IN<= '0';
B_IN<='0';



wait;


end process;

end Behavioral;
