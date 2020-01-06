library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is

signal clk_status : STD_LOGIC := '0';
signal count: integer := 1;

begin

process (Clk_in)
    begin
        if (rising_edge (Clk_in)) then
        count <= count + 1;
            if (count = 10) then
                clk_status <= not clk_status;
                count <= 1;
            end if;
        end if;
        Clk_out <= clk_status;
end process;

end Behavioral;
