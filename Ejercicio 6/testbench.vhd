-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture beh of full_adder_tb is

component full_adder is
	port (
    	a, b : in std_logic;
        Cin : in std_logic;
        Cout : out std_logic;
        result : out std_logic
    );
end component;

signal a : std_logic;
signal b : std_logic;
signal Cin : std_logic;
signal Cout : std_logic;
signal result : std_logic;

begin

	uut : full_adder
    	port map (
        	a => a,
            b => b,
            Cin => Cin,
            Cout => Cout,
            result => result
        );
     
    process
    begin
    
    	Cin <= '0';
    	a <= '0';
        b <= '0';
    	wait for 10 ns;
        Cin <= '1';
    	a <= '0';
        b <= '0';
        wait for 10 ns;
        Cin <= '0';
    	a <= '0';
        b <= '1';
    	wait for 10 ns;
        Cin <= '1';
    	a <= '0';
        b <= '1';
        wait for 10 ns;
        Cin <= '0';
    	a <= '1';
        b <= '0';
    	wait for 10 ns;
        Cin <= '1';
    	a <= '1';
        b <= '0';
    	wait for 10 ns;
        Cin <= '1';
    	a <= '1';
        b <= '1';        
        wait;
    end process;

end beh;