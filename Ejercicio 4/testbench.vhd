-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4_1_tb is
end Mux4_1_tb;

architecture beh of Mux4_1_tb is

component Mux4_1 is
	port (
    	a, b, c, d : in std_logic;
        s : in std_logic_vector(1 downto 0);
        o : out std_logic
    );
end component;

signal a : std_logic;
signal b : std_logic;
signal c : std_logic;
signal d : std_logic;
signal s : std_logic_vector(1 downto 0);
signal o : std_logic;

begin

	uut : Mux4_1
    	port map (
        	a => a,
            b => b,
            c => c,
            d => d,
            s => s,
            o => o
        );
        
    process
    begin

        a <= '0'; 
        b <= '1';
        c <= '1'; 
        d <= '0';
        
        -- Probamos todas las combinaciones de 's'
        s <= "00"; wait for 10 ns; -- Debe salir '0'
        s <= "01"; wait for 10 ns; -- Debe salir '1'
        s <= "10"; wait for 10 ns; -- Debe salir '1'
        s <= "11"; wait for 10 ns; -- Debe salir '0'

        wait;

    end process;

end beh;
