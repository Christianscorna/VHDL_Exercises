library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_8b is
    port (
        A_vec : in std_logic_vector(7 downto 0);
        B_vec : in std_logic_vector(7 downto 0);
        Cin : in std_logic;
        Cout : out std_logic;
        Result_vec : out std_logic_vector(7 downto 0)
    );
end full_adder_8b;

architecture archi_full_adder of full_adder_8b is

    component full_adder is
        port (
            a, b     : in std_logic;
            Cin      : in std_logic;
            Cout     : out std_logic;
            result   : out std_logic
        );
    end component;

    signal carry : std_logic_vector(8 downto 0);

begin

    carry(0) <= Cin;

    generador : for i in 0 to 7 generate
    
        fa : full_adder
            port map (
                a => A_vec(i),
                b => B_vec(i),
                Cin  => carry(i),
                Cout => carry(i + 1),
                result => Result_vec(i)
            );
    end generate;

    Cout <= carry(8);

end archi_full_adder;
