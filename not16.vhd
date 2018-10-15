library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity not16 is
	port (
		a : in std_logic_vector(15 downto 0);
		res : out std_logic_vector(15 downto 0);
		z,s : out std_logic
	);
end not16;

architecture Behavioral of not16 is
begin
	res <= not a;
	z <= '0';
	s <= '0';
end Behavioral;
