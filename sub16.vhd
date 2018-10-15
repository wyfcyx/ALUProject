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
begin
	res <= a - b;
	z <= '0';
	c <= '0';
	s <= '0';
	o <= '0';
end Behavioral;
