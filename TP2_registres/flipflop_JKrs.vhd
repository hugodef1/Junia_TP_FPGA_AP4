library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Table de vérité d'une bascule JK avec reset asynchrone :
-- J | K | SETn | RSTn | Q(t) | Q(t+1)
-- 0 | 0 |  1   |  1   |   0  |   0
-- 0 | 0 |  1   |  1   |   1  |   1
-- 0 | 0 |  1   |  0   |   X  |   0
-- 0 | 0 |  0   |  1   |   X  |   1
-- 0 | 1 |  1   |  1   |   0  |   0
-- 0 | 1 |  1   |  1   |   1  |   0
-- 0 | 1 |  1   |  0   |   X  |   0
-- 0 | 1 |  0   |  1   |   X  |   1
-- 1 | 0 |  1   |  1   |   0  |   1
-- 1 | 0 |  1   |  1   |   1  |   1
-- 1 | 0 |  1   |  0   |   X  |   1
-- 1 | 0 |  0   |  1   |   X  |   0
-- 1 | 1 |  1   |  1   |   0  |   1
-- 1 | 1 |  1   |  1   |   1  |   0
-- 1 | 1 |  1   |  0   |   X  |   1
-- 1 | 1 |  0   |  1   |   X  |   0

entity flipflop_JKrs is
    port (
        J : in std_logic;
        K : in std_logic;
        SETn : in std_logic; -- Preset, active low asynchrome
        RSTn : in std_logic; -- Reset, active low asynchrome
        CLK : in std_logic;
        Q : out std_logic;
        Qn : out std_logic
    );
end entity;

architecture behavioral of flipflop_JKrs is
    signal Q_int : std_logic := '0';
begin
    process (CLK, SETn, RSTn)
    begin
        if RSTn = '0' then
            Q_int <= '0'; -- Asynchronous reset
        elsif SETn = '0' then
            Q_int <= '1'; -- Asynchronous preset
        elsif (CLK'event and CLK = '1') then
            if (J = '0' and K = '0') then
                Q_int <= Q_int; -- No change
            elsif (J = '0' and K = '1') then
                Q_int <= '0'; -- Reset
            elsif (J = '1' and K = '0') then
                Q_int <= '1'; -- Set
            else
                Q_int <= not Q_int; -- Toggle
            end if;
        end if;
    end process;
    Q <= Q_int;
    Qn <= not Q_int;
end behavioral;

