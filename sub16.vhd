library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sub16 is
	port (
		a, b : in std_logic_vector(15 downto 0);
		res : out std_logic_vector(15 downto 0);
		z, c, s, o : out std_logic
	);
end sub16;

architecture Behavioral of sub16 is
	component add16 is
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
		);
	end component;
	signal minusB : std_logic_vector(15 downto 0);
begin
	minusB <= (not b) + 1;
	add16Realization : add16 port map (
		a => a,
		b => minusB,
		res => res,
		z => z,
		c => c,
		s => s,
		o => o
	);
end Behavioral;
