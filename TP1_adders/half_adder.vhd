library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Pour calculer les S il faut utiliser XOR et pour calculer C il faut utiliser ET

entity half_adder is
    port (
        A : in std_logic;
        B : in std_logic;
        S : out std_logic;
        C : out std_logic
    );
end half_adder;

architecture Behavioral of half_adder is
begin
    S <= A xor B;
    C <= A and B;
end Behavioral;

