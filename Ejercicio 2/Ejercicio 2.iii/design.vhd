-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 2. Realice la descripción de un multiplexor de 2 entradas de un bit. Utilice:
-- 2.iii) Instanciación de componentes. Use componente or(a,b) y and(a,b)

entity mux2_1 is
	port (
    	a, b, s : in std_logic;
        o : out std_logic
    );
end mux2_1;

architecture mux_archi of mux2_1 is

	component or_gate is
	port (
    	a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
	end component;
    
    component and_gate is
	port (
    	a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
	end component;

	signal r : std_logic_vector(1 downto 0);
    
begin
	and_1 : and_gate 
    	port map (
        	a => a, 
            b => not s, 
            o => r(0)
        );
    and_2 : and_gate
    	port map (
        	a => b, 
        	b => s, 
        	o => r(1)
    	);
    or_1 : or_gate
    	port map (
        	a => r(0), 
            b => r(1), 
            o => o
        );
end mux_archi;