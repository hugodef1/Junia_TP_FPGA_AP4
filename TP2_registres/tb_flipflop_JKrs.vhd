library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Testbench pour la bascule JK avec reset asynchrone, décrire les entrées à appliquer à la bascule pour tester son bon fonctionnement
 
entity tb_flipflop_JKrs is
end entity;
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
        wait for 10ns;

        -- Test du reset asynchrone
        RSTn <= '0'; -- Reset actif
        wait for 10ns;
        RSTn <= '1'; -- Reset inactif
        wait for 10ns;

        -- Test du preset asynchrone
        SETn <= '0'; -- Preset actif
        wait for 10ns;
        SETn <= '1'; -- Preset inactif
        wait for 10ns;

        -- Test de la bascule JK normale
        J <= '1';
        K <= '0';
        wait for 10ns; -- Set
        J <= '0';
        K <= '1';
        wait for 10ns; -- Reset
        J <= '1';
        K <= '1';
        wait for 10ns; -- Toggle

        wait; -- Fin du test
    end process;
    -- Génération de l'horloge
    clock_gen : process
    begin
        while true loop
            CLK <= '0';
            wait for 5ns;
            CLK <= '1';
            wait for 5ns;
        end loop;
    end process;
end behavioral;
