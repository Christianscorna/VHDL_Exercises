-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity dmux2_1_tb is
end dmux2_1_tb;

architecture beh of dmux2_1_tb is

component dmux2_1 is
	port (
    	a : in std_logic_vector(3 downto 0);
        s : in std_logic;
        f : out std_logic_vector(3 downto 0);
        g : out std_logic_vector(3 downto 0)
    );
end component;

signal a : std_logic_vector(3 downto 0);
signal s : std_logic;
signal f : std_logic_vector(3 downto 0);
signal g : std_logic_vector(3 downto 0);

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
     
     a <= "1111";
     s <= '1';
     wait for 10 ns;
     a <= "0000";
     s <= '1';
     wait for 10 ns;
     a <= "1111";
     s <= '0';
     wait for 10 ns;
     a <= "0000";
     s <= '0';
     wait;
     
     end process;

end beh;

