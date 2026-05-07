library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_shift_register_universal16 is
end tb_shift_register_universal16;

architecture tb of tb_shift_register_universal16 is

    signal SSR  : std_logic := '0';
    signal SSL  : std_logic := '0';
    signal Pi   : std_logic_vector(15 downto 0) := (others => '0');
    signal SEL  : std_logic_vector(2 downto 0)  := "000";
    signal CLK  : std_logic := '0';
    signal SETn : std_logic := '1';
    signal RSTn : std_logic := '1';
    signal SOR  : std_logic;
    signal SOL  : std_logic;
    signal Qo   : std_logic_vector(15 downto 0);

    procedure tick(signal CLK : inout std_logic) is
    begin
        CLK <= '0'; wait for 5 ns;
        CLK <= '1'; wait for 5 ns;
        CLK <= '0'; wait for 5 ns;
    end procedure;

begin
    UUT : entity work.shift_register_universal
        generic map (N => 16)
        port map (SSR => SSR, SSL => SSL, Pi => Pi, SEL => SEL,
                  CLK => CLK, SETn => SETn, RSTn => RSTn,
                  SOR => SOR, SOL => SOL, Qo => Qo);

    stimuli : process
    begin
 
        RSTn <= '0'; wait for 10 ns;
        assert Qo = "0000000000000000" report "Error #1 : Reset async" severity error;
        RSTn <= '1'; wait for 5 ns;
 
        SETn <= '0'; wait for 10 ns;
        assert Qo = "1111111111111111" report "Error #2 : Set async" severity error;
        SETn <= '1'; wait for 5 ns;

        RSTn <= '0'; wait for 5 ns; RSTn <= '1'; wait for 5 ns;

        Pi <= "1010101010101010"; SEL <= "011";
        tick(CLK);
        assert Qo = "1010101010101010" report "Error #3 : Parallel load" severity error;

        SEL <= "000";
        tick(CLK);
        assert Qo = "1010101010101010" report "Error #4 : Hold" severity error;
 
        SEL <= "001"; SSR <= '0';
        tick(CLK);
        assert Qo = "0101010101010101" report "Error #5 : Shift right" severity error;

        SEL <= "010"; SSL <= '1';
        tick(CLK);
        assert Qo = "1010101010101011" report "Error #6 : Shift left" severity error;

        Pi <= "1000000000000001"; SEL <= "011";
        tick(CLK);
        assert Qo = "1000000000000001" report "Error #7 : Load for rotation" severity error;

        SEL <= "101";
        tick(CLK);
        assert Qo = "1100000000000000" report "Error #8 : Rotate right" severity error;

        SEL <= "110";
        tick(CLK);
        assert Qo = "1000000000000001" report "Error #9 : Rotate left" severity error;

        Pi <= "1111000000001111"; SEL <= "111";
        tick(CLK);
        assert Qo = "1111000000001111" report "Error #10 : Parallel load SEL=111" severity error;

        wait;
    end process;

end tb;