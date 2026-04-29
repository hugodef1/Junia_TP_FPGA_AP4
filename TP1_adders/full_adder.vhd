library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Pour calculer la sortie S il faut utiliser l'operateur AND avec la sortie S du premier demi_additionneur et l'entré Cin.
-- La sortie Cout le resultat de l'opération OU entre les deux sorties C des deux demi-additionneurs.

entity full_adder is
    port (
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        S : out std_logic;
        Cout : out std_logic
    );
end full_adder;

architecture Behavioral of full_adder is
    signal S_half1, C_half1, S_half2, C_half2 : std_logic;
begin
    half_adder1: entity work.half_adder
        port map (
            A => A,
            B => B,
            S => S_half1,
            C => C_half1
        );

    half_adder2: entity work.half_adder
        port map (
            A => S_half1,
            B => Cin,
            S => S_half2,
            C => C_half2
        );

    S <= S_half2;
    Cout <= C_half1 or C_half2;
end Behavioral;