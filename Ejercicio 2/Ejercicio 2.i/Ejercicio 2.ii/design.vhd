-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 2 Realice la descripción de un multiplexor de 2 entradas de un bit. Utilice:
-- ii) Sentencias concurrentes

entity mux2_1 is
	port (
        a : in std_logic;
        b : in std_logic;
        s : in std_logic;
        o : out std_logic
    );
end mux2_1;

architecture mux_archi of mux2_1 is
begin

	o <= b when s = '1' else a;

end mux_archi;