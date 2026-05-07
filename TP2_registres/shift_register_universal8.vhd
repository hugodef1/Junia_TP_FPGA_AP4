library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_universal8 is
    port (
        SSR : in std_logic;
        SSL : in std_logic;
        PI : in std_logic_vector(7 downto 0);
        SEL : in std_logic_vector(2 downto 0);
        CLK : in std_logic;
        SETn : in std_logic;
        RSTn : in std_logic;
        SOR : out std_logic;
        SOL : out std_logic;
        Qo : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of shift_register_universal8 is
    signal Q : std_logic_vector(7 downto 0) := (others => '0');
begin
    process (CLK, SETn, RSTn)
    begin
        if RSTn = '0' then
            Q <= (others => '0'); -- Asynchronous reset
        elsif SETn = '0' then
            Q <= (others => '1'); -- Asynchronous preset
        elsif (CLK'event and CLK = '1') then
            case SEL is
                when "000" => Q <= Q; -- Hold
                when "011" => Q <= PI; -- Parallel load
                when "001" => Q <= SSL & Q(7 downto 1); -- Shift right
                when "010" => Q <= Q(6 downto 0) & SSR; -- Shift left
                when "101" => Q <= Q(0) & Q(7 downto 1); -- Rotate right
                when "110" => Q <= Q(6 downto 0) & Q(7); -- Rotate left
                when others => null;
            end case;
        end if;
    end process;
    SOR <= Q(0);
    SOL <= Q(7);
    Qo <= Q;
end behavioral;