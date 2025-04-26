-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity or_unit is
	port (
    	a: in std_logic_vector(31 downto 0);
        o: out std_logic
    );
end or_unit;
    
architecture or_archi of or_unit is
begin

	pr_or: process(a) 
    variable aux : std_logic;
    begin
    	aux := '0';
        for i in 31 downto 0 loop
    		aux := aux or a(i);
    	end loop;
        o <= aux;
    end process;

end or_archi;