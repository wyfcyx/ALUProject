library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity add16 is
	port (
		a, b : in std_logic_vector(15 downto 0);
		res : out std_logic_vector(15 downto 0);
		z, c, s, o : out std_logic
	);
end add16;

architecture Behavioral of add16 is
	signal aExt, bExt, resExt : std_logic_vector(16 downto 0);
begin
	aExt <= '0' & a;
	bExt <= '0' & b;
	resExt <= aExt + bExt;
	res <= resExt(15 downto 0);
	z <= not(resExt(15) or resExt(14) or resExt(13) or resExt(12) or resExt(11) or resExt(10) or resExt(9) or resExt(8) or resExt(7) or resExt(6) or resExt(5) or resExt(4) or resExt(3) or resExt(2) or resExt(1) or resExt(0));
	c <= resExt(16);
	s <= resExt(15);
	o <= (a(15) and b(15) and (not resExt(15))) or ((not a(15)) and (not b(15)) and resExt(15));
end Behavioral;
