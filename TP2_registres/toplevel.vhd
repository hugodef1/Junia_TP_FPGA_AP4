library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        SW   : in  std_logic_vector(9 downto 0);
        KEY  : in  std_logic_vector(3 downto 0);
        LEDG : out std_logic_vector(7 downto 0)
    );
end entity;

architecture structural of toplevel is

    signal SSR  : std_logic;
    signal SSL  : std_logic;
    signal SEL  : std_logic_vector(2 downto 0);
    signal PI   : std_logic_vector(7 downto 0);
    signal CLK  : std_logic;
    signal SETn : std_logic;
    signal RSTn : std_logic;

    signal SOR  : std_logic;
    signal SOL  : std_logic;

begin

    -- Connexions entrées FPGA → signaux internes
    SSR  <= SW(9);
    SSL  <= SW(8);
    SEL  <= SW(2 downto 0);
    PI   <= SW(7 downto 0);

    SETn <= KEY(2);
    RSTn <= KEY(3);
    CLK  <= not KEY(0); -- bouton actif bas

    -- Instanciation du registre
    uut : entity work.shift_register_universal8
        port map (
            SSR  => SSR,
            SSL  => SSL,
            PI   => PI,
            SEL  => SEL,
            CLK  => CLK,
            SETn => SETn,
            RSTn => RSTn,
            SOR  => SOR,
            SOL  => SOL,
            Qo   => LEDG
        );

end architecture;