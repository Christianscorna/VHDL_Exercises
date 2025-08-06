-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
	port (
    	a, b : in std_logic;
        Cin : in std_logic;
        Cout : out std_logic;
        result : out std_logic
    );
end full_adder;

architecture archi_adder of full_adder is

begin

	result <= ( (a xor b) xor Cin );
    Cout <= ( (a and b) or ( (a xor b) and Cin ) );

end archi_adder;