----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2019 08:39:56 PM
-- Design Name: 
-- Module Name: TWO_BIT_FA - Behavioral
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

entity TWO_BIT_FA is
PORT (
        A1,B1,A2,B2,Cin :IN   STD_LOGIC ;
        Sum1,Sum2,Cout :OUT STD_LOGIC  );
end TWO_BIT_FA;

architecture Behavioral of TWO_BIT_FA is
signal temp1: STD_LOGIC;
begin
Sum1  <= A1 XOR B1 XOR Cin ;
temp1 <= (A1 AND Cin) OR (A1 AND B1) OR (B1 AND Cin);
Sum2 <= A2 XOR B2 XOR temp1;
Cout  <= (A2 AND B2) OR (A2 AND  temp1) OR (B2 AND  temp1);
end Behavioral;