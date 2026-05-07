library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- Requis par l'énoncé pour incrémenter directement
-- Note: IEEE.NUMERIC_STD.ALL est le standard moderne, mais on suit la consigne du TP.

entity clock_divider is
    Port ( CLKin  : in  STD_LOGIC;
           RST    : in  STD_LOGIC;
           N      : in  STD_LOGIC_VECTOR (4 downto 0);
           CLKout : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter : STD_LOGIC_VECTOR (23 downto 0);
begin
    -- Compteur synchrone 24 bits
    process(CLKin, RST)
    begin
        if RST = '0' then -- Reset actif bas selon le schéma du TP
            counter <= (others => '0');
        elsif rising_edge(CLKin) then
            counter <= counter + 1;
        end if;
    end process;

    -- Multiplexage du bit N pour la sortie.
    -- La fonction conv_integer (liée à std_logic_unsigned) convertit le vecteur en index
    CLKout <= counter(conv_integer(N)); 

end Behavioral;