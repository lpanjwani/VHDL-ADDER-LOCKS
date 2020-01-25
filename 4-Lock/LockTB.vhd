--------------------------------------------------------------------------------
-- Company:
-- Engineer: Lavesh Panjwani
--
-- Create Date: 14:47:12 01/15/2020
-- Design Name:
-- Module Name: Lock/LockTB.vhd
-- Project Name: Lock
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: Lock
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

ENTITY LockTB IS
END LockTB;

ARCHITECTURE behavior OF LockTB IS

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT Lock
		PORT (
			A : IN std_logic;
			B : IN std_logic;
			C : IN std_logic;
			D : IN std_logic;
			E : IN std_logic;
			F : IN std_logic;
			G : IN std_logic;
			H : IN std_logic;
			I : IN std_logic;
			J : IN std_logic;
			Q : INOUT std_logic;
			R : INOUT std_logic;
			S : INOUT std_logic;
			T : INOUT std_logic;
			U : INOUT std_logic;
			V : INOUT std_logic;
			W : INOUT std_logic;
			X : INOUT std_logic;
			Y : INOUT std_logic;
			Z : INOUT std_logic
		);
	END COMPONENT;
	--Inputs
	SIGNAL A : std_logic := '0';
	SIGNAL B : std_logic := '0';
	SIGNAL C : std_logic := '0';
	SIGNAL D : std_logic := '0';
	SIGNAL E : std_logic := '0';
	SIGNAL F : std_logic := '0';
	SIGNAL G : std_logic := '0';
	SIGNAL H : std_logic := '0';
	SIGNAL I : std_logic := '0';
	SIGNAL J : std_logic := '0';

	--BiDirs
	SIGNAL Q : std_logic;
	SIGNAL R : std_logic;
	SIGNAL S : std_logic;
	SIGNAL T : std_logic;
	SIGNAL U : std_logic;
	SIGNAL V : std_logic;
	SIGNAL W : std_logic;
	SIGNAL X : std_logic;
	SIGNAL Y : std_logic;
	SIGNAL Z : std_logic;
	-- Output Testing
	SIGNAL output : std_logic := '0';

	CONSTANT waitPeriod : TIME := 100 ns;

BEGIN
	-- Instantiate the Unit Under Test (UUT)
	uut : Lock
	PORT MAP(
		A => A, 
		B => B, 
		C => C, 
		D => D, 
		E => E, 
		F => F, 
		G => G, 
		H => H, 
		I => I, 
		J => J, 
		Q => Q, 
		R => R, 
		S => S, 
		T => T, 
		U => U, 
		V => V, 
		W => W, 
		X => X, 
		Y => Y, 
		Z => Z
	);
	
	-- Stimulus process
	stim_proc : PROCESS
	BEGIN
		-- Test Suite inputs all inputs as LOW
		A <= '0';
		B <= '0';
		C <= '0';
		D <= '0';
		E <= '0';
		F <= '0';
		G <= '0';
		H <= '0';
		I <= '0';
		J <= '0';

		WAIT FOR waitPeriod / 10;

		IF (Q = '1' AND R = '1' AND S = '1' AND T = '1' AND U = '1' AND V = '1' AND W = '1' AND X = '1' AND Y = '1' AND Z = '1') THEN
			output <= '1';
		ELSE
			output <= '0';
		END IF;

		WAIT FOR waitPeriod / 10;

		ASSERT (output = '0') -- expected output
		-- error will be reported if output is HIGH
		REPORT "Testing Suit Failed WHEN ALL inputs are HIGH" SEVERITY error;

		WAIT FOR waitPeriod;

		-- Test Suite inputs all inputs as HIGH
		A <= '1';
		B <= '1';
		C <= '1';
		D <= '1';
		E <= '1';
		F <= '1';
		G <= '1';
		H <= '1';
		I <= '1';
		J <= '1';

		WAIT FOR waitPeriod / 10;

		IF (Q = '1' AND R = '1' AND S = '1' AND T = '1' AND U = '1' AND V = '1' AND W = '1' AND X = '1' AND Y = '1' AND Z = '1') THEN
			output <= '1';
		ELSE
			output <= '0';
		END IF;

		WAIT FOR waitPeriod / 10;
		ASSERT (output = '0') -- expected output
		-- error will be reported if output is HIGH
		REPORT "Testing Suit Failed WHEN ALL inputs are HIGH" SEVERITY error;

		WAIT FOR waitPeriod;
 
		-- Test Suite inputs all inputs with Random Lock Combination
		A <= '1';
		B <= '0';
		C <= '1';
		D <= '0';
		E <= '0';
		F <= '0';
		G <= '1';
		H <= '1';
		I <= '1';
		J <= '1';

		WAIT FOR waitPeriod / 10;

		IF (Q = '1' AND R = '1' AND S = '1' AND T = '1' AND U = '1' AND V = '1' AND W = '1' AND X = '1' AND Y = '1' AND Z = '1') THEN
			output <= '1';
		ELSE
			output <= '0';
		END IF;

		WAIT FOR waitPeriod / 10;

		ASSERT (output = '0') -- expected output
		-- error will be reported if output is HIGH with Random Lock Combination
		REPORT "Testing Suit Failed WHEN Random Inputs are supplied" SEVERITY error;
 
		WAIT FOR waitPeriod;

		-- Test Suite inputs all inputs as per Lock Combination
		A <= '0';
		B <= '1';
		C <= '0';
		D <= '1';
		E <= '1';
		F <= '1';
		G <= '0';
		H <= '1';
		I <= '1';
		J <= '0';

		WAIT FOR waitPeriod / 10;

		IF (Q = '1' AND R = '1' AND S = '1' AND T = '1' AND U = '1' AND V = '1' AND W = '1' AND X = '1' AND Y = '1' AND Z = '1') THEN
			output <= '1';
		ELSE
			output <= '0';
		END IF;

		WAIT FOR waitPeriod / 10;

		ASSERT (output = '1') -- expected output
		-- error will be reported if output are as per Lock Combination
		REPORT "Testing Suit Failed WHEN ALL inputs are as per Lock Combination" SEVERITY error;

		WAIT;
	END PROCESS;

END;