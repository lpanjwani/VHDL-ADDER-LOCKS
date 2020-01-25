----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Lavesh Panjwani
-- 
-- Create Date:    14:14:36 01/15/2020 
-- Design Name: 
-- Module Name:    FourBitAddSubtract - Behavioral 
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

ENTITY FourBitAddSubtract IS PORT (
	X : IN std_logic_vector (3 DOWNTO 0);
	Y : IN std_logic_vector (3 DOWNTO 0);
	Cin : IN std_logic;

	Sum : OUT std_logic_vector (3 DOWNTO 0);
	Cout : OUT std_logic;
	Overflow: OUT std_logic
);
END FourBitAddSubtract;

ARCHITECTURE structural OF FourBitAddSubtract IS
	COMPONENT FullAdder IS
		PORT (
			x, y, cin : IN std_logic;
			sum, cout : OUT std_logic
		);
	END COMPONENT;
	COMPONENT OverFlowLogic IS
		PORT (
			A, B : IN std_logic;
			output, overflow : OUT std_logic
		);
	END COMPONENT;
	SIGNAL FullCarryOut : std_logic_vector (3 DOWNTO 0);
BEGIN

	FA0 : FullAdder PORT MAP(x => X(0), y => Y(0) XOR Cin, cin => Cin, sum => Sum(0), cout => FullCarryOut(0));
	FA1 : FullAdder PORT MAP(x => X(1), y => Y(1) XOR Cin, cin => FullCarryOut(0), sum => Sum(1), cout => FullCarryOut(1));
	FA2 : FullAdder PORT MAP(x => X(2), y => Y(2) XOR Cin, cin => FullCarryOut(1), sum => Sum(2), cout => FullCarryOut(2));
	FA3 : FullAdder PORT MAP(x => X(3), y => Y(3) XOR Cin, cin => FullCarryOut(2), sum => Sum(3), cout => FullCarryOut(3));
	OF1 : OverFlowLogic PORT MAP(A => FullCarryOut(2), B => FullCarryOut(3), output => Cout, overflow => Overflow);

END structural;