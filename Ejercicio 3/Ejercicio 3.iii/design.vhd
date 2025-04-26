-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 3. Realice la descripción de un demultiplexor de dos salidas de un bit. Utilice:
-- iii) Instanciación de componentes. Use componente or(a,b), and(a,b) y not(a)


entity dmux2_1 is
	port (
    	a, s : in std_logic;
        f, g : out std_logic
    );
end dmux2_1;

architecture archi_dmux of dmux2_1 is

component and_gate is
	port (
    	a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end component;

begin
    
	and_1 : and_gate 
    	port map (
        	a => a,
            b => not s,
            o => f
        );
        
    and_2 : and_gate
    	port map (
        	a => a,
            b => s,
            o => g
        );
        
    

end archi_dmux;