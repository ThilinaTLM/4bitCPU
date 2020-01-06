
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_wEN is
    Port ( D : in STD_LOGIC;
           EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_FF_wEN;

architecture Behavioral of D_FF_wEN is

component D_FF
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

Signal preQ : STD_LOGIC;
Signal inD : STD_LOGIC;

begin

inD <= (D and EN) or ((not EN) and preQ);

D_FF_0: D_FF
    Port map (
        D => inD,
        Res => Res,
        Clk => Clk,
        Q => preQ,
        Qbar => Qbar );

Q <= preQ;

end Behavioral;
