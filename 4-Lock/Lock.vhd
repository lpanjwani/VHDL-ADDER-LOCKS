----------------------------------------------------------------------------------
-- Company:
-- Engineer: Lavesh Panjwani
--
-- Create Date: 13:13:08 01/14/2020
-- Design Name:
-- Module Name: Lock - Behavioral
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

ENTITY Lock IS
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
END Lock;

ARCHITECTURE Behavioral OF Lock IS
BEGIN
	PROCESS (A, B, C, D, E, F, G, H, I, J, Q, R, S, T, U, V, W, X, Y, Z) BEGIN
	IF (A = '0' AND B = '1' AND C = '0' AND D = '1' AND E = '1' AND F = '1' AND G = '0' AND H = '1' AND I = '1' AND J = '0') THEN
		Q <= '1';
		R <= '1';
		S <= '1';
		T <= '1';
		U <= '1';
		V <= '1';
		W <= '1';
		X <= '1';
		Y <= '1';
		Z <= '1';
	ELSE
		Q <= '0';
		R <= '0';
		S <= '0';
		T <= '0';
		U <= '0';
		V <= '0';
		W <= '0';
		X <= '0';
		Y <= '0';
		Z <= '0';
	END IF; 
END PROCESS;
END Behavioral;