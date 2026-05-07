library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bistable is
	port(
        -- ENTREES
		clk : in std_logic;
		rst : in std_logic;
		X : in std_logic;
		-- SORTIES
		Y : out std_logic
	);
end entity;

architecture behavioral of bistable is
	type state_type is (init, B, C, D);    -- Enumérer tous les états de la FSM ici
	signal future_state  : state_type; -- Etat futur, calculé à partir des entrées et de l'état présent
	signal current_state : state_type := init; -- Etat présent, reçoit future_state à chaque coup d'horloge

	begin

	-- Description du registre d'états
	-- Fonction SEQUENTIELLE
	process(clk, rst)
	begin
		if rst = '1' then
			current_state <= init;
		elsif (clk'event and clk ='1') then
			current_state <= future_state;
		end if;
	end process;

	-- Description du calcul de l'état futur
	-- Fonction COMBINATOIRE
	process(X, current_state)
	begin
		case current_state is
			when init =>                                   -- when 1er état ...
				if    X = '1' then future_state <= B; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = '0' then future_state <= init; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= init; --   etc.
				end if;
			when B =>                                   -- when 2ème état ...
				if    X = '1' then future_state <= B; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = '0' then future_state <= C; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= B; --   etc.
				end if;
            when C =>                                   -- when 3ème état ...
				if    X = '1' then future_state <= D; --   if entrée = valeur
				elsif X = '0' then future_state <= C; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= C; --   etc.
				end if;
			when D =>                                   -- when 4ème état ...
				if    X = '1' then future_state <= D; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = '0' then future_state <= init; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= D; --   etc.
				end if;
			when others =>
				future_state <= current_state;
		end case;
	end process;

	-- Description du calcul des sorties
	-- Fonction COMBINATOIRE
	process(current_state)
	begin
		case current_state is
			when init =>     -- when 1er état
            Y <= '0'; --   assignation Sortie1 <= valeur1
			when B =>     -- when 2ème état
            Y <= '1'; --   assignation Sortie1 <= valeur1
			when C =>     -- when 3ème état
				Y <= '1'; --   assignation Sortie1 <= valeur1
			when D =>     -- when 4ème état
				Y <= '0'; --   assignation Sortie1 <= valeur1
			when others =>
            Y <= 'X'; -- Cas de défaut (ex. sortie <= 'X')
		end case;
	end process;
end behavioral;
