-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity dmux2_1_tb is
end dmux2_1_tb;

architecture beh of dmux2_1_tb is

component dmux2_1 is
	port (
    	a, s : in std_logic;
        f, g : out std_logic
    );
end component;

signal a : std_logic;
signal s : std_logic;
signal f : std_logic;
signal g : std_logic;

begin

	uut : dmux2_1
    	port map (
        	a => a,
            s => s,
            f => f,
            g => g
        );
        
     tb : process
     begin

     a <= '1';
     s <= '1';
     wait for 10 ns;
     a <= '0';
     s <= '1';
     wait for 10 ns;
     a <= '1';
     s <= '0';
     wait for 10 ns;
     a <= '0';
     s <= '0';
     wait;
     
     end process;

end beh;