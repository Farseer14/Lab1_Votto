--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Joe Votto
--
-- Create Date:   15:33:56 01/24/2013
-- Design Name:   
-- Module Name:   C:/Users/C14Joseph.Votto/Documents/Documents/Junior Year/ECE 281/Lab1/Lab1_Testbench_Votto.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   Successful implumentation of a Lab1 Testbench
-- 
-- VHDL Test Bench Created by ISE for module: Lab1_Votto
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab1_Testbench_Votto IS
END Lab1_Testbench_Votto;
 
ARCHITECTURE behavior OF Lab1_Testbench_Votto IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab1_Votto
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab1_Votto PORT MAP (
          A => A,
          B => B,
          C => C,
          X => X,
          Y => Y,
          Z => Z
        );



   -- Stimulus process
   stim_proc: process
   begin		
		A <= '0';
		B <= '0';
		C <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '0';
		B <= '0';
		C <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '0';
		B <= '1';
		C <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;

		A <= '0';
		B <= '1';
		C <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

	   A <= '1';
		B <= '0';
		C <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <= '1';
		B <= '0';
		C <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '1';
		B <= '1';
		C <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '1';
		B <= '1';
		C <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
