library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Chaque retenu Cout du full_adder complet est connecté a l'entrée Cin du full_adder suivant.
-- Pour cette troisième partie nous avons les entrées A et B et sortie S sur 4 bits donc 4 full_adder.

entity full_adder_4b is
    port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        S : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );
end full_adder_4b;

architecture Behavioral of full_adder_4b is
    signal Cin_internal, S_internal, Cout_internal : std_logic_vector(3 downto 0);
begin
    -- Premier full_adder
    full_adder0: entity work.full_adder
        port map (
            A => A(0),
            B => B(0),
            Cin => Cin,
            S => S_internal(0),
            Cout => Cout_internal(0)
        );
    -- Deuxième full_adder
    full_adder1: entity work.full_adder
        port map (
            A => A(1),
            B => B(1),
            Cin => Cout_internal(0),
            S => S_internal(1),
            Cout => Cout_internal(1)
        );
    -- Troisième full_adder
    full_adder2: entity work.full_adder
        port map (
            A => A(2),
            B => B(2),
            Cin => Cout_internal(1),
            S => S_internal(2),
            Cout => Cout_internal(2)
        );
    -- Quatrième full_adder
    full_adder3: entity work.full_adder
        port map (
            A => A(3),
            B => B(3),
            Cin => Cout_internal(2),
            S => S_internal(3),
            Cout => Cout_internal(3)
        );
    S <= S_internal;
    Cout <= Cout_internal(3);
end Behavioral;