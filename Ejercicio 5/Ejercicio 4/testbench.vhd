-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4_1_tb is
end Mux4_1_tb;

architecture beh of Mux4_1_tb is

component Mux4_1 is
	port (
    	a, b, c, d : in std_logic_vector(3 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic_vector(3 downto 0)
    );
end component;

signal a : std_logic_vector(3 downto 0);
signal b : std_logic_vector(3 downto 0);
signal c : std_logic_vector(3 downto 0);
signal d : std_logic_vector(3 downto 0);
signal s : std_logic_vector(1 downto 0);
signal o : std_logic_vector(3 downto 0);

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
        
    stim_proc: process
    begin
        -- Inicialización
        a <= "0000";
        b <= "1111"; 
        c <= "1111"; 
        d <= "0000";
        
        -- Probar todas las combinaciones de 's'
        s <= "00"; wait for 10 ns; -- Debe salir 'a'
        s <= "01"; wait for 10 ns; -- Debe salir 'b'
        s <= "10"; wait for 10 ns; -- Debe salir 'c'
        s <= "11"; wait for 10 ns; -- Debe salir 'd'

        wait;
    end process;

end beh;