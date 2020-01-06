library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity RCA_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C_in : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C_out : out  STD_LOGIC);
end RCA_4bit;
architecture Behavioral of RCA_4bit is
	component FA
		Port (
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		C_in : in STD_LOGIC;
		S : out STD_LOGIC;
		C_out : out STD_LOGIC);
	end component;
	
SIGNAL FA0_C, FA1_C, FA2_C : STD_LOGIC;
begin
	FA_0 : FA
		PORT MAP (
			A => A(0),
			B => B(0),
			C_in => C_in,
			S => S(0),
			C_out => FA0_C);
	
	FA_1 : FA
		PORT MAP (
			A => A(1),
			B => B(1),
			C_in => FA0_C,
			S => S(1),
			C_out => FA1_C);
			
	FA_2 : FA
		PORT MAP (
			A => A(2),
			B => B(2),
			C_in => FA1_C,
			S => S(2),
			C_out => FA2_C);
			
	FA_3 : FA
		PORT MAP (
			A => A(3),
			B => B(3),
			C_in => FA2_C,
			S => S(3),
			C_out => C_out);
			
end Behavioral;
