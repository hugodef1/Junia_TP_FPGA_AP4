library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Testbench pour la bascule JK avec reset asynchrone, décrire les entrées à appliquer à la bascule pour tester son bon fonctionnement


entity tb_flipflop_JKrs is

end tb_flipflop_JKrs;
architecture behavioral of tb_flipflop_JKrs is
    signal J, K, SETn, RSTn, CLK : std_logic;
    signal Q, Qn : std_logic;
begin
    -- Instanciation de la bascule JK avec reset asynchrone
    uut : entity work.flipflop_JKrs
        port map (
            J => J,
            K => K,
            SETn => SETn,
            RSTn => RSTn,
            CLK => CLK,
            Q => Q,
            Qn => Qn
        );
    -- Processus de test
    flipflop : process
    begin
        -- Initialisation
        J <= '0';
        K <= '0';
        SETn <= '1';
        RSTn <= '1';
        CLK <= '0';
        wait for 10 ns;

        -- Test du reset asynchrone
        RSTn <= '0'; -- Reset actif
        wait for 10 ns;
        assert (Q = '0') report "Reset asynchrone failed" severity error;
        RSTn <= '1'; -- Reset inactif
        wait for 10 ns;
        assert (Q = '0') report "Reset asynchrone failed" severity error;

        -- Test du preset asynchrone
        SETn <= '0'; -- Preset actif
        assert (Q = '1') report "Preset asynchrone failed" severity error;
        wait for 10 ns;
        SETn <= '1'; -- Preset inactif
        wait for 10 ns;
        assert (Q = '1') report "Preset asynchrone failed" severity error;

        -- Initialisation
        J <= '0';
        K <= '0';
        SETn <= '1';
        RSTn <= '1';
        CLK <= '1';
        wait for 10 ns;

        -- Test du reset asynchrone
        RSTn <= '0'; -- Reset actif
        wait for 10 ns;
        assert (Q = '1') report "Reset asynchrone failed" severity error;
        RSTn <= '1'; -- Reset inactif
        wait for 10 ns;
        assert (Q = '1') report "Reset asynchrone failed" severity error;

        -- Test du preset asynchrone
        SETn <= '0'; -- Preset actif
        assert (Q = '0') report "Preset asynchrone failed" severity error;
        wait for 10 ns;
        SETn <= '1'; -- Preset inactif
        wait for 10 ns;
        assert (Q = '0') report "Preset asynchrone failed" severity error;

        -- Test de la bascule JK normale
        CLK <= '1'; -- Front montant du clock
        J <= '1';
        K <= '0';
        wait for 10 ns; -- Set
        assert (Q = '1') report "Set failed" severity error;
        CLK <= '0'; -- Front descendant du clock
        J <= '0';
        K <= '1';
        wait for 10 ns; -- Reset
        assert (Q = '0') report "Reset failed" severity error;
        CLK <= '1'; -- Front montant du clock
        J <= '1';
        K <= '1';
        wait for 10 ns; -- Toggle
        assert (Q = '1') report "Toggle failed" severity error;

        wait; -- Fin du test
    end process;
end behavioral;
