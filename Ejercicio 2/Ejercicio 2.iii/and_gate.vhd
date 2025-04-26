library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
	port (
    	a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end and_gate;

architecture archi_and_gate of and_gate is

begin

	o <= a and b;

end archi_and_gate;