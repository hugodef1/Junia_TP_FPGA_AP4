library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity chenillard is
    Port ( CLK  : in  STD_LOGIC;
           RST  : in  STD_LOGIC;
           CHEN : out STD_LOGIC_VECTOR (9 downto 0));
end chenillard;

architecture Behavioral of chenillard is
    type state_type is (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9);
    signal state : state_type;
begin
    process(CLK, RST)
    begin
        if RST = '0' then
            state <= T0;
        elsif rising_edge(CLK) then
            case state is
                when T0  => state <= T1;
                when T1  => state <= T2;
                when T2  => state <= T3;
                when T3  => state <= T4;
                when T4  => state <= T5;
                when T5  => state <= T6;
                when T6  => state <= T7;
                when T7  => state <= T8;
                when T8  => state <= T9;
                when T9  => state <= T0;
                when others => state <= T0;
            end case;
        end if;
    end process;

    process(state)
    begin
        case state is
            when T0  => CHEN <= "0000001111";
            when T1  => CHEN <= "0000011110";
            when T2  => CHEN <= "0000111100";
            when T3  => CHEN <= "0001111000";
            when T4  => CHEN <= "0011110000";
            when T5  => CHEN <= "0111100000";
            when T6  => CHEN <= "1111000000";
            when T7  => CHEN <= "1110000001";
            when T8  => CHEN <= "1100000011";
            when T9  => CHEN <= "1000000111";
            when others => CHEN <= "0000001111";
        end case;
    end process;

end Behavioral;