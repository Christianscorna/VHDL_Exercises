-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1_tb is 
end mux2_1_tb;

architecture beh of mux2_1_tb is

component mux2_1
	port (
        a, b, s : in std_logic;
        o : out std_logic
    );
end component;

signal a : std_logic;
signal b : std_logic;
signal s : std_logic;
signal o : std_logic;

begin
	
    uut : mux2_1 
    	port map (
        	a => a,
            b => b,
            s => s,
            o => o
        );
    
    tb : process
    begin
    
    	a <= '0';
        b <= '1';
        s <= '1';
        wait for 10 ns;
        s <= '0';
        wait;
    
    end process;

end beh;