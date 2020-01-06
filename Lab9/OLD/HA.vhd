library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end HA;

architecture Behavioral of HA is

begin
	C <= A and B;
	S <= A xor B;
end Behavioral;
