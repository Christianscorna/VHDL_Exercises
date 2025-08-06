-- 7) Diseñe un circuito que realice la comparación entre dos operandos a y b de dos bits. el circuito posee dos salidas g y e de un bit. La salida g es 1 si a>b de lo contrario es 0 y e es 1 solo en el caso que a = b.

-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity comparador is
	port (
    	a : in std_logic_vector(1 downto 0);
        b : in std_logic_vector(1 downto 0);
        g : out std_logic;
        e : out std_logic
    );
end comparador;

architecture archi_comparador of comparador is

begin

	g <= '1' when a > b else '0';
    e <= '1' when a = b else '0';

end archi_comparador;