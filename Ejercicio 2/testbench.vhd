-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1_tb is 
end mux2_1_tb;

architecture beh of mux2_1_tb is

component mux2_1
	port (
        a : in std_logic;
        b : in std_logic;
        s : in std_logic;
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
    
    	a <= '1';
        b <= '0';
        s <= '1';
        wait for 10 ns;
        s <= '0';
        wait;
    
    end process;

end beh;