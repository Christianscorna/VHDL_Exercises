-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 3. Realice la descripción de un demultiplexor de dos salidas de un bit. Utilice:
-- i) Procesos explícitos y sentencias secuenciales.

entity dmux2_1 is
	port (
    	a, s : in std_logic;
        f, g : out std_logic
    );
end dmux2_1;

architecture archi_dmux of dmux2_1 is
begin

	process(a, s)
    begin
    
    	if (s = '0') then
        	f <= a and not s;
        else
        	g <= a and s;
        end if;
    
    end process;

end archi_dmux;
