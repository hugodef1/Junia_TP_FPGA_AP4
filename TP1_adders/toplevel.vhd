library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        HEX3 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        SW : in std_logic_vector(9 downto 0)
    );
end entity;

architecture behavioral of toplevel is
    signal A, B : std_logic_vector(3 downto 0);
    signal Cin : std_logic;
    signal S : std_logic_vector(3 downto 0);
    signal Cout : std_logic;
begin

    A <= SW(3 downto 0);
    B <= SW(7 downto 4);
    Cin <= SW(9);

    full_adder_4b_inst : entity work.full_adder_4b
        port map (
            A => A,
            B => B,
            Cin => Cin,
            S => S,
            Cout => Cout
        );

    transcoder_A : entity work.transcoder_7seg
        port map (
            BIN => A,
            SEG => HEX3
        );
    transcoder_B : entity work.transcoder_7seg
        port map (
            BIN => B,
            SEG => HEX2
        );
    transcoder_ABC : entity work.transcoder_7seg
        port map (
            BIN => S,
            SEG => HEX0
        );
end behavioral;