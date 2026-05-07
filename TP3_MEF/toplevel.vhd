library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        CLOCK_50_B6A : in std_logic;
        KEY          : in std_logic_vector(3 downto 0);
        LEDG         : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Structural of toplevel is
    signal Y    : std_logic;
begin
    
    Bistable : entity work.bistable
        port map (
            CLK  => CLOCK_50_B6A,
            RST  => not KEY(0),
            X    => not KEY(1),
            Y    => Y
        );
		  
		  LEDG <= (others => Y);

end architecture;
