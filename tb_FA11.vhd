----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2019 08:41:54 PM
-- Design Name: 
-- Module Name: tb_FA11 - behavioral
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

ENTITY  tb_FA11  IS
END  tb_FA11;

ARCHITECTURE  behavioral  OF  tb_FA11  IS
    COMPONENT  TWO_BIT_FA IS -- component  declaration
    PORT(
        A1,A2,B1,B2, Cin : IN  STD_LOGIC ;
        Sum1, Sum2, Cout : OUT  STD_LOGIC);
    END  COMPONENT;
    
    SIGNAL A1, A2,B1,B2, Cin: STD_LOGIC  :=  '0'; -- signal  declarations
    SIGNAL Sum1, Sum2 , Cout: STD_LOGIC; 

BEGIN
    uut : TWO_BIT_FA -- component  instantiation
    PORT  MAP(
        A1 => A1, -- signal  mappings
        A2 => A2,
        B1 => B1,
        B2 => B2,
        Cin => Cin ,
        Sum1 => Sum1,
        Sum2 => Sum2,
        Cout => Cout);
        
        A1 <=  '0',  '1' AFTER 10ns, '1' AFTER 20ns;
        A2 <=  '1', '0' AFTER 10ns, '1' AFTER 20ns;
        B1 <=  '1',  '0' AFTER 10ns, '0' AFTER 20ns;
        B2 <=  '0',  '0' AFTER 10ns, '1' AFTER 20ns;
        Cin  <=  '1', '1' AFTER 10ns, '0' AFTER 20ns;
END  behavioral;