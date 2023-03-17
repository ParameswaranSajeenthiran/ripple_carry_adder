----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2023 02:27:51 PM
-- Design Name: 
-- Module Name: TB_RCA - Behavioral
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

entity TB_RCA is
--  Port ( );
end TB_RCA;

architecture Behavioral of TB_RCA is

COMPONENT RCA_4 
PORT (A0,A1,A2,A3,B0,B1,B2,B3,C_IN: IN STD_LOGIC;
S0,S1,S2,S3,C_OUT :OUT STD_LOGIC);
END COMPONENT;



SIGNAL A0,A1,A2,A3,B0,B1,B2,B3 :STD_LOGIC;
SIGNAL S0,S1,S2,S3,C_OUT :STD_LOGIC;

begin

UUT : RCA_4 PORT MAP(
           A0 =>A0,
           A1=>A1,
           A2 =>A2,
           A3 =>A3,
           B0 =>B0,
           B1=>B1,
           B2=>B2,
           B3=>B3,
           C_IN =>'0',
           S0 =>S0,
           S1 =>S1,
           S2 =>S2,
           S3 =>S3,
           C_OUT =>C_OUT);
           
 process 
 begin 
---------------------------- Index No =210553J ------------------------------
 -- 1001 +0111  s_out =0000  c_out =1
 A0<='1';
 A1<='0';
 A2<='0';
 A3<='1';
 
 B0<='1';
 B1<='1';
 B2<='1';
 B3<='0';

wait for 100ns;


-- 0110 +0011  s_out=1001  c_out =0

 A0<='0';
 A1<='1';
 A2<='1';
 A3<='0';
 
 B0<='1';
 B1<='1';
 B2<='0';
 B3<='0';
 
 wait for 100 ns;
 ---------------------------------------------------------------------------------
 
 -- 0101 +1011 s_out =0000  c_out =1
  A0<='1';
 A1<='0';
 A2<='1';
 A3<='0';
 
 B0<='1';
 B1<='1';
 B2<='0';
 B3<='1';
 
 wait for 100 ns;
 
 
-- -- 0111+1111 s_out=0110 c_out =1 
 
  A0<='1';
 A1<='1';
 A2<='1';
 A3<='0';
 
 B0<='1';
 B1<='1';
 B2<='1';
 B3<='1';
 
 wait for 100 ns;
-- ----------------------------------------------------------------------------------
-- --1111 +1111 s_out=1110 c_out=1
 
  A0<='1';
 A1<='1';
 A2<='1';
 A3<='1';
 
 B0<='1';
 B1<='1';
 B2<='1';
 B3<='1';
 
 wait for 100 ns;
 
-- wait for 100 ns;


 
-- wait;
 end process;
 
end Behavioral;
