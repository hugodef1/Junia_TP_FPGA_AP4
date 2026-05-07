library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bistable is

end tb_bistable;

architecture behavioral of tb_bistable is
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal X : std_logic := '0';
    signal Y : std_logic;
begin
    -- Instanciation du bistable
    uut : entity work.bistable
        port map (
            clk => clk,
            rst => rst,
            X => X,
            Y => Y
        );

    -- Processus de test
    test_process : process
    begin
        -- Test du reset
        rst <= '1'; -- Activer le reset
        wait for 10ns;
        assert (Y = '0') report "Reset failed" severity error;

        rst <= '0'; -- Désactiver le reset
        wait for 10ns;
        assert (Y = '0') report "Reset failed" severity error;

        -- Test de la séquence d'entrée
        X <= '1';
        wait for 10ns;
        assert (Y = '1') report "Test failed at X=1" severity error;
        X <= '0';
        wait for 10ns;
        assert (Y = '0') report "Test failed at X=0" severity error;
        X <= '1';
        wait for 10ns;
        assert (Y = '1') report "Test failed at X=1" severity error;
        X <= '0';
        wait for 10ns;
        assert (Y = '0') report "Test failed at X=0" severity error;

        -- Fin du test
        wait;
    end process;

    -- Processus d'horloge
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

end behavioral;