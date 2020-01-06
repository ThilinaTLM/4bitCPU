
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD_3bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC);
end ADD_3bit;

architecture Behavioral of ADD_3bit is
    component RCA_4bit
        Port(
            A : in  STD_LOGIC_VECTOR (3 downto 0);
            B : in  STD_LOGIC_VECTOR (3 downto 0);
            C_in : in  STD_LOGIC;
            S : out  STD_LOGIC_VECTOR (3 downto 0);
            C_out : out  STD_LOGIC
        );
    end component;
    
    Signal A_4bit : STD_LOGIC_VECTOR (3 downto 0);
    Signal B_4bit : STD_LOGIC_VECTOR (3 downto 0);
    Signal S_4bit : STD_LOGIC_VECTOR (3 downto 0);
begin
    A_4bit(2 downto 0) <= A;
    B_4bit(2 downto 0) <= B;
    
    RCA : RCA_4bit
        Port Map (
            A => A_4bit,
            B => B_4bit,
            C_in => C_in,
            S => S_4bit,
            C_out => C_out
        );
     
    S <= S_4bit(2 downto 0);
end Behavioral;
