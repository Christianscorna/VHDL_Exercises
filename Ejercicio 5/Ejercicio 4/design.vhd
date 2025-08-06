library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4_1 is
	port (
    	a, b, c, d : in std_logic_vector(3 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic_vector(3 downto 0)
    );
end Mux4_1;

architecture archi_mux of Mux4_1 is

    component mux2_1 is
        port (
            a, b : in std_logic_vector(3 downto 0);
            s : in std_logic;
            o : out std_logic_vector(3 downto 0)
        );
    end component;

	signal r1, r2 : std_logic_vector(3 downto 0);
    
begin
	m1 : mux2_1 port map (a => a, b => b, s => s(0), o => r1);
    m2 : mux2_1 port map (a => c, b => d, s => s(0), o => r2);
    m3 : mux2_1 port map (a => r1, b => r2, s => s(1), o => o);

end archi_mux;