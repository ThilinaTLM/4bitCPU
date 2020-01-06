
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg is
    Port ( EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg;

architecture Behavioral of Reg is

component D_FF_wEN
    Port ( D : in STD_LOGIC;
           EN : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;

begin

D_FF_0 : D_FF_wEN
    Port map (
        EN => EN,
        Res => Res,
        Clk => Clk,
        D => D(0),
        Q => Q(0));

D_FF_1 : D_FF_wEN
    Port map (
        EN => EN,
        Res => Res,
        Clk => Clk,
        D => D(1),
        Q => Q(1));

D_FF_2 : D_FF_wEN
    Port map (
        EN => EN,
        Res => Res,
        Clk => Clk,
        D => D(2),
        Q => Q(2));

D_FF_3 : D_FF_wEN
    Port map (
        EN => EN,
        Res => Res,
        Clk => Clk,
        D => D(3),
        Q => Q(3));

end Behavioral;
