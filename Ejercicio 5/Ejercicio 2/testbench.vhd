-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1_tb is 
end mux2_1_tb;

architecture beh of mux2_1_tb is

component mux2_1
	port (
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        s : in std_logic;
        o : out std_logic_vector(3 downto 0)
    );
end component;

signal a : std_logic_vector(3 downto 0);
signal b : std_logic_vector(3 downto 0);
signal s : std_logic;
signal o : std_logic_vector(3 downto 0);

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
    
    	a <= "1111";
        b <= "0000";
        s <= '1';
        wait for 10 ns;
        s <= '0';
        wait;
    
    end process;

end beh;