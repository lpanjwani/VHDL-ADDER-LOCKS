----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lavesh Panjwani
-- 
-- Create Date:    14:09:42 01/17/2020 
-- Design Name: 
-- Module Name:    Overflow - Behavioral 
-- Project Name: 	 Question 3 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY OverFlowLogic IS PORT (
	A : IN std_logic;
	B : IN std_logic;
	output: OUT std_logic;
	overflow : OUT std_logic
);
END OverFlowLogic;

ARCHITECTURE Behavioral OF OverFlowLogic IS
BEGIN
	PROCESS (A, B) BEGIN
		output <= B;
		overflow <= A XOR B;
	END PROCESS;
END Behavioral;