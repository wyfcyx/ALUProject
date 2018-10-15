library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity xor16 is
	port (
		a, b : in std_logic_vector(15 downto 0);
		res : out std_logic_vector(15 downto 0);
		z : out std_logic
	);
end xor16;

architecture Behavioral of xor16 is
begin
	res <= a xor b;
	z <= '0';
end Behavioral;
