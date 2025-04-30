-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- Realice la descripción VHDL de un multiplexor de 4 entradas de un bit.

entity Mux4_1 is
	port (
    	a, b, c, d : in std_logic;
        s : in std_logic_vector(1 downto 0);
        o : out std_logic
    );
end Mux4_1;

architecture archi_mux of Mux4_1 is

    component mux2_1 is
        port (
            a, b, s : in std_logic;
            o : out std_logic
        );
    end component;

	signal r : std_logic_vector(1 downto 0);
    
begin
	m1 : mux2_1 port map (a => a, b => b, s =>s(0), o => r(0));
    m2 : mux2_1 port map (a => c, b => d, s =>s(0), o => r(1));
    m3 : mux2_1 port map (a => r(0), b => r(1), s => s(1), o => o);
end archi_mux;