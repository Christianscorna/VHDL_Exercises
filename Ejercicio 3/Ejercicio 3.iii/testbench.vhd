library IEEE;
use IEEE.std_logic_1164.all;

entity tb_dmux2_1 is
end tb_dmux2_1;

architecture beh of tb_dmux2_1 is

    component dmux2_1
        port (
            a : in std_logic;
            s : in std_logic;
            f : out std_logic;
            g : out std_logic
        );
    end component;

    -- señales de prueba
    signal a, s : std_logic;
    signal f, g : std_logic;

begin

    uut: dmux2_1
        port map (
            a => a,
            s => s,
            f => f,
            g => g
        );

    stim_proc: process
    begin
        a <= '0';
        s <= '0';
        wait for 10 ns;
        
        a <= '0';
        s <= '1';
        wait for 10 ns;
        
        a <= '1';
        s <= '0';
        wait for 10 ns;
        
        a <= '1';
        s <= '1';
        wait for 10 ns;
        
        wait;
    end process;
end beh;