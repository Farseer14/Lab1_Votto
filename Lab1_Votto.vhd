----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Joe Votto
-- 
-- Create Date:    15:14:26 01/24/2013 
-- Design Name: 
-- Module Name:    Lab1_Votto - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Votto is
    Port ( --A : in  STD_LOGIC;
           --B : in  STD_LOGIC;
           --C : in  STD_LOGIC;
           --X : out  STD_LOGIC;
           --Y : out  STD_LOGIC;
           --Z : out  STD_LOGIC);
			  
			  Eight_BitIN : in STD_LOGIC_VECTOR(7 downto 0);
			  Eight_BitOUT : out STD_LOGIC_VECTOR(7 downto 0));
			
end Lab1_Votto;

architecture Behavioral of Lab1_Votto is
--signal A_not, B_not, C_not, D, E, F, G, H: STD_LOGIC;
signal Switch : STD_LOGIC_VECTOR(7 downto 0);



begin 

--A_not <= not A;
--B_not <= not B;
--C_not <= not C;

--D <= B and C_not ; -- component of Y
--E <= B_not and C; -- Also component of Y

--F <= A_not and B;	-- component of X
--G <= A_not and C; -- still component of X
--H <= A and B_not and C_not; -- another component of X

--Z <= C;

--Y <= D or E;

--X <= F or G or H;

Switch <= not Eight_BitIN;

Eight_BitOUT <= STD_LOGIC_VECTOR(signed(Switch)+1); 

end Behavioral;

