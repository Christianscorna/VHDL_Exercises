-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 3. Realice la descripción de un demultiplexor de dos salidas de un bit. Utilice:
-- ii) Sentencias concurrentes

entity dmux2_1 is
	port (
    	a, s : in std_logic;
        f, g : out std_logic
    );
end dmux2_1;

architecture archi_dmux of dmux2_1 is

begin

	f <= a and not s;
    g <= a and s;
    
end archi_dmux;