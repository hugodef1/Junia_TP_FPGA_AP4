library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift_register_universal is
    generic (
        N : integer := 8  -- Taille du registre = 8 bits
    );
    port (
        SSR  : in  std_logic;
        SSL  : in  std_logic;
        Pi   : in  std_logic_vector(N-1 downto 0);
        SEL  : in  std_logic_vector(2 downto 0);
        CLK  : in  std_logic;
        SETn : in  std_logic;
        RSTn : in  std_logic;
        SOR  : out std_logic;
        SOL  : out std_logic;
        Qo   : out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture behavioral of shift_register_universal is
    signal Q_int : std_logic_vector(N-1 downto 0) := (others => '0');
begin

    process(CLK, SETn, RSTn)
    begin
        if (RSTn = '0') then
            Q_int <= (others => '0');
        elsif (SETn = '0') then
            Q_int <= (others => '1');
        elsif (CLK'event and CLK = '1') then
            case SEL is
                when "000" | "100" =>
                    Q_int <= Q_int;
                when "001" =>
                    Q_int <= SSR & Q_int(N-1 downto 1);
                when "010" =>
                    Q_int <= Q_int(N-2 downto 0) & SSL;
                when "011" | "111" =>
                    Q_int <= Pi;
                when "101" =>
                    Q_int <= Q_int(0) & Q_int(N-1 downto 1);
                when "110" =>
                    Q_int <= Q_int(N-2 downto 0) & Q_int(N-1);
                when others =>
                    Q_int <= Q_int;
            end case;
        end if;
    end process;

    Qo  <= Q_int;
    SOR <= Q_int(0);
    SOL <= Q_int(N-1);

end behavioral;