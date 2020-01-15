
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ROM is
    Port ( MemSel : in STD_LOGIC_VECTOR (2 downto 0);
           I : out STD_LOGIC_VECTOR (11 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array(0 to 7) of STD_LOGIC_VECTOR(11 downto 0);
signal programROM : rom_type := (
    "000000000000",
    "000000000000",
    "000000000000",
    "000000000000",
    "000000000000",
    "000000000000",
    "000000000000",
    "000000000000"
);

begin

I <= programROM(to_integer(unsigned(MemSel)));

end Behavioral;
