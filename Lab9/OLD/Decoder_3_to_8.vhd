
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to_8;

architecture Behavioral of Decoder_3_to_8 is

component Decoder_2_to_4
    Port ( I : in STD_LOGIC_VECTOR ( 1 downto 0 );
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR ( 3 downto 0 ));
end component;

SIGNAL Y0, Y1 : std_logic_vector (3 downto 0);
SIGNAL I2_N : std_logic;

begin
    I2_N <= NOT I(2);
    
    Decoder_2_to_4_0 : Decoder_2_to_4
        port map (
        I(1 downto 0) => I(1 downto 0),
        EN => I(2),
        Y(3 downto 0) => Y0(3 downto 0));
        
    Decoder_2_to_4_1 : Decoder_2_to_4
        port map (
        I(1 downto 0) => I(1 downto 0),
        EN => I2_N,
        Y(3 downto 0) => Y1(3 downto 0));

Y(0) <= EN AND Y1(0);
Y(1) <= EN AND Y1(1);
Y(2) <= EN AND Y1(2);
Y(3) <= EN AND Y1(3);

Y(4) <= EN AND Y0(0);
Y(5) <= EN AND Y0(1);
Y(6) <= EN AND Y0(2);
Y(7) <= EN AND Y0(3);

end Behavioral;
