
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD_SUB_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_in : in STD_LOGIC;
           Sel : in STD_LOGIC; -- if 0 then A + B, if 1 then A - B
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end ADD_SUB_4bit;

architecture Behavioral of ADD_SUB_4bit is
    component RCA_4bit
        Port(
            A : in  STD_LOGIC_VECTOR (3 downto 0);
            B : in  STD_LOGIC_VECTOR (3 downto 0);
            C_in : in  STD_LOGIC;
            S : out  STD_LOGIC_VECTOR (3 downto 0);
            C_out : out  STD_LOGIC
        );
    end component;
    
    Signal newB : STD_LOGIC_VECTOR (3 downto 0);
begin
    newB(0) <= B(0) xor Sel;
    newB(1) <= B(1) xor Sel;
    newB(2) <= B(2) xor Sel;
    newB(3) <= B(3) xor Sel;
    
    RCA : RCA_4bit
        Port map (
            A => A,
            B => newB,
            C_in => Sel,
            S => S,
            C_out => C_out
        );
    
end Behavioral;
