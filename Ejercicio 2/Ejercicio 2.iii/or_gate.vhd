library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
	port (
    	a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end or_gate;

architecture archi_or_gate of or_gate is

begin

	o <= a or b;

end archi_or_gate;