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
	resExt <= res(15 downto 0);
	z <= not(resExt(15) or resExt(14) or resExt(13) or resExt(12) or resExt(11) or resExt(10) or resExt(9) or resExt(8) or resExt(7) or resExt(6) or resExt(5) or resExt(4) or resExt(3) or resExt(2) or resExt(1) or resExt(0));
end Behavioral;
