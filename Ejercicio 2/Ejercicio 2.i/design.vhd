-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- 2. Realice la descripción de un multiplexor de 2 entradas de un bit. Utilice:
-- i) Procesos explícitos y sentencias secuenciales.

entity mux2_1 is
	port (
    	-- definimos las entradas
        a : in std_logic;
        b : in std_logic;
        
        -- definimos un selector
        s : in std_logic;
        
        -- por ultimo una salida
        o : out std_logic
    );
end mux2_1;

architecture mux_archi of mux2_1 is
begin

	mux2_1 : process(a, b, s)
    begin
    	
        if (s = '1') then 
        	o <= b;
        else 
        	o <= a;
        end if;
    
    end process;

end mux_archi;
