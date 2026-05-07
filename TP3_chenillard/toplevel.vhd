library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
    port (
        CLOCK_50_B6A : in std_logic;
        KEY          : in std_logic_vector(3 downto 0);
        LEDR         : out std_logic_vector(9 downto 0)
    );
end entity;

architecture Structural of toplevel is
    signal clk_lente : std_logic;
    signal N_val : std_logic_vector(4 downto 0) := "10111"; 
begin

    Inst_clock_divider: entity work.clock_divider
        port map (
            CLKin  => CLOCK_50_B6A,
            RST    => KEY(0),
            N      => N_val,
            CLKout => clk_lente
        );

    Inst_chenillard: entity work.chenillard
        port map (
            CLK  => clk_lente,
            RST  => KEY(0),
            CHEN => LEDR
        );

end Structural;
