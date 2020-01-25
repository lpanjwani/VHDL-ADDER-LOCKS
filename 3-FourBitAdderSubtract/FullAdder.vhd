----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lavesh Panjwani
-- 
-- Create Date:    14:13:09 01/15/2020 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FullAdder IS PORT (
	X : IN std_logic;
	Y : IN std_logic;
	Cin : IN std_logic;

	Sum : OUT std_logic;
	Cout : OUT std_logic

);
END FullAdder;

ARCHITECTURE Behavioral OF FullAdder IS
BEGIN
	PROCESS (X, Y, Cin) BEGIN

		Sum <= (X XOR Y) XOR Cin;
		Cout <= (X AND Y) OR ((X XOR Y) AND Cin);

	END PROCESS;
END Behavioral;