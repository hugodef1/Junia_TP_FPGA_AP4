library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is
    signal A, B : std_logic_vector(3 downto 0);
    signal Cin : std_logic;
    signal S : std_logic_vector(3 downto 0);
    signal Cout : std_logic;
begin
    uut: entity work.full_adder_4b
        port map (
            A => A,
            B => B,
            Cin => Cin,
            S => S,
            Cout => Cout
        );


    Count_A : process
        begin
        A <= "0000"; B <= "0000"; Cin <= '0';
        wait for 10ns;
        assert (S = "0000" and Cout = '0') report "Test 1 failed" severity error;

        A <= "0001"; B <= "0001"; Cin <= '0';
        wait for 10ns;
        assert (S = "0010" and Cout = '0') report "Test 2 failed" severity error;

        A <= "1111"; B <= "1111"; Cin <= '1';
        wait for 10ns;
        assert (S = "1111" and Cout = '1') report "Test 3 failed" severity error;

        A <= "1010"; B <= "0101"; Cin <= '0';
        wait for 10ns;
        assert (S = "1111" and Cout = '0') report "Test 4 failed" severity error;

        A <= "0110"; B <= "0011"; Cin <= '1';
        wait for 10ns;
        assert (S = "1010" and Cout = '0') report "Test 5 failed" severity error;

        wait;

    end process;
end tb;