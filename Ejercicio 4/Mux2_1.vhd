-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1 is
	port (
        a, b, s : in std_logic;
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