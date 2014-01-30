### Joe Votto's Lab 1 READ ME

Code has been tested for 3 and 8 bits by Dr. Neebel.

The code follows:

VHD File

'''
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

'''


UCF File

'''
#NET "A" LOC = "K18";
#NET "B" LOC = "H18";
#NET "C" LOC = "G18";

#NET "X" LOC = "K15";
#NET "Y" LOC = "J15";
#NET "Z" LOC = "J14";

NET Eight_BitIN<0> LOC = "G18";
NET Eight_BitIN<1> LOC = "H18";
NET Eight_BitIN<2> LOC = "K18";
NET Eight_BitIN<3> LOC = "K17";
NET Eight_BitIN<4> LOC = "L14";
NET Eight_BitIN<5> LOC = "L13";
NET Eight_BitIN<6> LOC = "N17";
NET Eight_BitIN<7> LOC = "R17";

NET Eight_BitOUT<0> LOC = "J14";
NET Eight_BitOUT<1> LOC = "J15";
NET Eight_BitOUT<2> LOC = "K15";
NET Eight_BitOUT<3> LOC = "K14";
NET Eight_BitOUT<4> LOC = "E17";
NET Eight_BitOUT<5> LOC = "P15";
NET Eight_BitOUT<6> LOC = "F4";
NET Eight_BitOUT<7> LOC = "R4";
'''

Testbench
![Waveform outlines the twos compliment of each portion of the cuircuit as predicted by the truth table. Green space represents a 1 where a green line is representitive of a 0.](C:\Users\C14Joseph.Votto\Documents\Documents\SeniorYear\ECE281\Lab1\TesbenchOutput.jpeg);

Pre-Work
![Excel Diagrams](C:\Users\C14Joseph.Votto\Documents\Documents\SeniorYear\ECE281\Lab1\TruthTable_SOP_Karnaugh.jpeg);

Circuit Structure
![Circuit Structure](C:\Users\C14Joseph.Votto\Documents\Documents\SeniorYear\ECE281\Lab1\2s_Compliment_Circuit.jpeg);

Both the first and final schematic (circuit diagram appear to be the same.


In and of itself Debugging was relatively simple. The hard part was understanding what the fragments of code did and not necessarily how to reorder them afterwards. Granted I spent a solid 30 minutes on discerning the syntax for the Eight_BitOUT segment but otherwise not an overly complex code to write.

As mentioned at the top of the READ ME both the 3-bit and 8-bit circuits were show to have been successful.