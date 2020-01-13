
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end PC;

architecture Behavioral of PC is

component D_FF
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

begin

D_FF_0 : D_FF
    Port map (
        Res => Res,
        Clk => Clk,
        D => D(0),
        Q => Q(0));

D_FF_1 : D_FF
    Port map (
        Res => Res,
        Clk => Clk,
        D => D(1),
        Q => Q(1));

D_FF_2 : D_FF
    Port map (
        Res => Res,
        Clk => Clk,
        D => D(2),
        Q => Q(2));

end Behavioral;
