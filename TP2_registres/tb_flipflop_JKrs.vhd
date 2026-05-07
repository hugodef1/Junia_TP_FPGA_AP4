library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flipflop_JKrs is

end tb_flipflop_JKrs;
architecture behavioral of tb_flipflop_JKrs is
    signal J, K, SETn, RSTn, CLK : std_logic;
    signal Q, Qn : std_logic;
begin
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

    flipflop : process
    begin
        J <= '0';
        K <= '0';
        SETn <= '1';
        RSTn <= '1';
        CLK <= '0';
        wait for 10 ns;


        RSTn <= '0';
        wait for 10 ns;
        assert (Q = '0') report "Reset asynchrone failed" severity error;
        RSTn <= '1';
        wait for 10 ns;
        assert (Q = '0') report "Reset asynchrone failed" severity error;


        SETn <= '0';
        assert (Q = '1') report "Preset asynchrone failed" severity error;
        wait for 10 ns;
        SETn <= '1';
        wait for 10 ns;
        assert (Q = '1') report "Preset asynchrone failed" severity error;

        J <= '0';
        K <= '0';
        SETn <= '1';
        RSTn <= '1';
        CLK <= '1';
        wait for 10 ns;

        RSTn <= '0';
        wait for 10 ns;
        assert (Q = '1') report "Reset asynchrone failed" severity error;
        RSTn <= '1';
        wait for 10 ns;
        assert (Q = '1') report "Reset asynchrone failed" severity error;

        SETn <= '0';
        assert (Q = '0') report "Preset asynchrone failed" severity error;
        wait for 10 ns;
        SETn <= '1';
        wait for 10 ns;
        assert (Q = '0') report "Preset asynchrone failed" severity error;

        CLK <= '1';
        J <= '1';
        K <= '0';
        wait for 10 ns; -- Set
        assert (Q = '1') report "Set failed" severity error;
        CLK <= '0';
        J <= '0';
        K <= '1';
        wait for 10 ns;
        assert (Q = '0') report "Reset failed" severity error;
        CLK <= '1';
        J <= '1';
        K <= '1';
        wait for 10 ns;
        assert (Q = '1') report "Toggle failed" severity error;

        wait; -- Fin du test
    end process;
end behavioral;
