library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity or16 is
	port (
		a, b : in std_logic_vector(15 downto 0);
		res : out std_logic_vector(15 downto 0);
		z : out std_logic
	);
end or16;

architecture Behavioral of or16 is
begin
	res <= a or b;
	z <= '0';
end Behavioral;
