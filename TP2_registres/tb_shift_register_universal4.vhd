library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_shift_register_universal4 is
end tb_shift_register_universal4;

architecture tb of tb_shift_register_universal4 is

    signal SSR  : std_logic := '0';
    signal SSL  : std_logic := '0';
    signal Pi   : std_logic_vector(3 downto 0) := (others => '0');
    signal SEL  : std_logic_vector(2 downto 0) := "000";
    signal CLK  : std_logic := '0';
    signal SETn : std_logic := '1';
    signal RSTn : std_logic := '1';
    signal SOR  : std_logic;
    signal SOL  : std_logic;
    signal Qo   : std_logic_vector(3 downto 0);

    procedure tick(signal CLK : inout std_logic) is
    begin
        CLK <= '0'; wait for 5 ns;
        CLK <= '1'; wait for 5 ns;
        CLK <= '0'; wait for 5 ns;
    end procedure;

begin
    UUT : entity work.shift_register_universal
        generic map (N => 4)
        port map (SSR => SSR, SSL => SSL, Pi => Pi, SEL => SEL,
                  CLK => CLK, SETn => SETn, RSTn => RSTn,
                  SOR => SOR, SOL => SOL, Qo => Qo);

    stimuli : process
    begin

        RSTn <= '0'; wait for 10 ns;
        assert Qo = "0000" report "Error #1 : Reset async" severity error;
        RSTn <= '1'; wait for 5 ns;

        SETn <= '0'; wait for 10 ns;
        assert Qo = "1111" report "Error #2 : Set async" severity error;
        SETn <= '1'; wait for 5 ns;

        RSTn <= '0'; wait for 5 ns; RSTn <= '1'; wait for 5 ns;

        Pi <= "1010"; SEL <= "011";
        tick(CLK);
        assert Qo = "1010" report "Error #3 : Parallel load" severity error;

        SEL <= "000";
        tick(CLK);
        assert Qo = "1010" report "Error #4 : Hold" severity error;

        SEL <= "001"; SSR <= '0';
        tick(CLK);
        assert Qo = "0101" report "Error #5 : Shift right" severity error;

        SEL <= "010"; SSL <= '1';
        tick(CLK);
        assert Qo = "1011" report "Error #6 : Shift left" severity error;

        SEL <= "101";
        tick(CLK);
        assert Qo = "1101" report "Error #7 : Rotate right" severity error;

        SEL <= "110";
        tick(CLK);
        assert Qo = "1011" report "Error #8 : Rotate left" severity error;

        wait;
    end process;

end tb;