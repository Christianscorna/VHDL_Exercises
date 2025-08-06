library IEEE;
use IEEE.std_logic_1164.all;

entity fa_tb is
end fa_tb;

architecture beh of fa_tb is

component full_adder_8b is
	port (
    	A_vec : in std_logic_vector(7 downto 0);
        B_vec : in std_logic_vector(7 downto 0);
        Cin : in std_logic;
        Cout : out std_logic;
        Result_vec : out std_logic_Vector(7 downto 0)
    );
end component;

signal a : std_logic_vector(7 downto 0);
signal b : std_logic_vector(7 downto 0);
signal Cin : std_logic;
signal Cout : std_logic;
signal result : std_logic_Vector(7 downto 0);

begin

	uut : full_adder_8b
    	port map (
        	A_vec => a,
            B_vec => b,
            Cin => Cin,
            Cout => Cout,
            Result_vec => result
        );
        
    process
    begin

        a <= "11111111";
        b <= "11111111";
        Cin <= '1';
        wait for 10 ns;
        
        wait;
    
    end process;
end beh;