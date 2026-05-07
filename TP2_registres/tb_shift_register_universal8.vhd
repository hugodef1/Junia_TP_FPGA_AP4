library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_universal8 is
end entity;

architecture behavioral of tb_shift_register_universal8 is
    signal SSR : std_logic;
    signal SSL : std_logic;
    signal PI : std_logic_vector(7 downto 0);
    signal SEL : std_logic_vector(2 downto 0);
    signal CLK : std_logic;
    signal SETn : std_logic;
    signal RSTn : std_logic;
    signal SOR : std_logic;
    signal SOL : std_logic;
    signal Qo : std_logic_vector(7 downto 0);
begin
    -- Instanciation du registre à décalage universel 8 bits
    uut : entity work.shift_register_universal8
        port map (
            SSR => SSR,
            SSL => SSL,
            PI => PI,
            SEL => SEL,
            CLK => CLK,
            SETn => SETn,
            RSTn => RSTn,
            SOR => SOR,
            SOL => SOL,
            Qo => Qo
        );
    -- Processus de test
    shift_register : process
    begin
        -- Initialisation
        SSR <= '0';
        SSL <= '0';
        PI <= (others => '0');
        SEL <= "000"; -- Hold
        CLK <= '0';
        SETn <= '1';
        RSTn <= '1';
        wait for 10 ns;

        -- Test du reset asynchrone
        RSTn <= '0'; -- Reset actif
        wait for 10 ns;
        assert (Qo = (Qo'range => '0')) report "Reset asynchrone failed" severity error;
        RSTn <= '1'; -- Reset inactif
        wait for 10 ns;
        assert (Qo = (Qo'range => '0')) report "Reset asynchrone failed" severity error;

        -- Test du preset asynchrone
        SETn <= '0'; -- Preset actif
        wait for 10 ns;
        assert (Qo = (Qo'range => '1')) report "Preset asynchrone failed" severity error;
        SETn <= '1'; -- Preset inactif
        wait for 10 ns;
        assert (Qo = (Qo'range => '1')) report "Preset asynchrone failed" severity error;

        -- Test du chargement parallèle
        PI <= "10101010";
        SEL <= "011"; -- Parallel load
        CLK <= '1';
        wait for 10 ns;
        assert (Qo = "10101010") report "Parallel load failed" severity error;

        -- Test du décalage à droite
        SEL <= "100"; -- Right shift
        CLK <= '0';
        wait for 10 ns;
        assert (Qo = "01010101") report "Right shift failed" severity error;
        -- Test du décalage à gauche
        SEL <= "010"; -- Left shift
        CLK <= '1';
        wait for 10 ns;
        assert (Qo = "10101010") report "Left shift failed" severity error;
        -- Test de la rotation à droite
        SEL <= "101"; -- Rotate right
        CLK <= '0';
        wait for 10 ns;
        assert (Qo = "01010101") report "Rotate right failed" severity error;
        -- Test de la rotation à gauche
        SEL <= "110"; -- Rotate left
        CLK <= '1';
        wait for 10 ns;
        assert (Qo = "10101010") report "Rotate left failed" severity error;
        wait;
    end process;
end behavioral;