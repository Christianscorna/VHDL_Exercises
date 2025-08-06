-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- i) Procesos explícitos y sentencias secuenciales.

entity mux2_1 is
	port (
    	-- definimos las entradas
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        
        -- definimos un selector
        s : in std_logic;
        
        -- por ultimo una salida
        o : out std_logic_vector(3 downto 0)
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
