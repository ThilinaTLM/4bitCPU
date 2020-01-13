
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegBank is
    Port ( RegSel : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q0 : out STD_LOGIC_VECTOR (3 downto 0);
           Q1 : out STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (3 downto 0);
           Q3 : out STD_LOGIC_VECTOR (3 downto 0);
           Q4 : out STD_LOGIC_VECTOR (3 downto 0);
           Q5 : out STD_LOGIC_VECTOR (3 downto 0);
           Q6 : out STD_LOGIC_VECTOR (3 downto 0);
           Q7 : out STD_LOGIC_VECTOR (3 downto 0));
end RegBank;

architecture Behavioral of RegBank is

component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Reg
    Port ( EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

Signal RegEN : STD_LOGIC_VECTOR (7 downto 0);

begin

Decoder : Decoder_3_to_8
    Port map (
        I => RegSel,
        EN => '1',
        Y => RegEN);

R0 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q0);

R1 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q1);
R2 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q2);

R3 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q3);

R4 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q4);

R5 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q5);
R6 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q6);

R7 : Reg
    Port map (
        EN => RegEN(0),
        Res => '0',
        Clk => Clk,
        D => D,
        Q => Q7);
        
end Behavioral;
