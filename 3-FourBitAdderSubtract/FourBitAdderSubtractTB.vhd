--------------------------------------------------------------------------------
-- Company:
-- Engineer: Lavesh Panjwani
--
-- Create Date: 07:37:27 01/16/2020
-- Design Name:
-- Module Name: Question3/FourBitAdderSubtractTB.vhd
-- Project Name: Question3
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: FourBitAddSubtract
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test. Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FourBitAdderSubtractTB IS
END FourBitAdderSubtractTB;

ARCHITECTURE behavior OF FourBitAdderSubtractTB IS

	-- Component Declaration for the Unit Under Test (UUT)

	COMPONENT FourBitAddSubtract
		PORT (
			X : IN std_logic_vector(3 DOWNTO 0);
			Y : IN std_logic_vector(3 DOWNTO 0);
			Cin : IN std_logic;
			Sum : OUT std_logic_vector(3 DOWNTO 0);
			Cout : OUT std_logic;
			Overflow: OUT std_logic
		);
	END COMPONENT;
	--Inputs
	SIGNAL X : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Y : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Cin : std_logic := '0';

	--Outputs
	SIGNAL Sum : std_logic_vector(3 DOWNTO 0);
	SIGNAL Cout : std_logic := '0';
	SIGNAL Overflow : std_logic := '0';
	-- No clocks detected in port list. Replace below with
	-- appropriate port name

	CONSTANT waitPeriod : TIME := 100 ns;

BEGIN
	-- Instantiate the Unit Under Test (UUT)
	uut : FourBitAddSubtract
	PORT MAP(
		X => X,
		Y => Y,
		Cin => Cin,
		Sum => Sum,
		Cout => Cout,
		Overflow => Overflow
	);

	-- Stimulus process
	X_proc : PROCESS
	BEGIN
		-- Addition process
		-- Run every possible possible combination
		FOR A IN 0 TO 15 LOOP
			X <= std_logic_vector(to_UNSIGNED(A, 4));

			FOR B IN 0 TO 15 LOOP
				Y <= std_logic_vector(to_UNSIGNED(B, 4));
				WAIT FOR 2 ns;

				-- ASSERT (to_integer(UNSIGNED(Sum)) = (A + B))
				-- REPORT "Incorrect SUM"
				--	SEVERITY ERROR;
			END LOOP;

			WAIT FOR 5 ns;
		END LOOP;

		-- Set Operation to Subtraction process via Cin
		Cin <= '1';
		WAIT FOR 2ns;

		-- Subtraction process
		-- Run every possible possible combination
		FOR C IN 0 TO 15 LOOP
			X <= std_logic_vector(to_UNSIGNED(C, 4));

			FOR D IN 0 TO 15 LOOP
				Y <= std_logic_vector(to_UNSIGNED(D, 4));
				WAIT FOR 2 ns;

				-- ASSERT (to_integer(UNSIGNED(Sum)) = (A + B))
				-- REPORT "Incorrect SUM"
				--	SEVERITY ERROR;
			END LOOP;

			WAIT FOR 5 ns;
		END LOOP;

		WAIT;
	END PROCESS;

END behavior;