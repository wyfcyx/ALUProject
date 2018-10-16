library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
	port (
		a, b : in std_logic_vector(15 downto 0);
		op : in std_logic_vector(3 downto 0);
		res : out std_logic_vector(15 downto 0);
		z, c, s, o : out std_logic
	);
end alu;

architecture Behavioral of alu is
	component add16
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
		);
	end component;

	component sub16
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
		);
	end component;

	component and16
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z : out std_logic
		);
	end component;

	component or16
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z : out std_logic
		);
	end component;

	component xor16
		port (
			a, b : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z : out std_logic
		);
	end component;

	component not16
		port (
			a : in std_logic_vector(15 downto 0);
			res : out std_logic_vector(15 downto 0);
			z, s : out std_logic
		);
	end component;

--	component sll16
--		port (
--			a : in std_logic_vector(15 downto 0);
--			d : in std_logic_vector(3 downto 0);
--			res : out std_logic_vector(15 downto 0);
--			z, c : out std_logic
--		);
--	end component;
--
--	component srl16_
--		port (
--			a : in std_logic_vector(15 downto 0);
--			d : in std_logic_vector(3 downto 0);
--			res : out std_logic_vector(15 downto 0);
--			z : out std_logic
--		);
--	end component;
--
--	component sra16
--		port (
--			a : in std_logic_vector(15 downto 0);
--			d : in std_logic_vector(3 downto 0);
--			res : out std_logic_vector(15 downto 0);
--			z : out std_logic
--		);
--	end component;
--
--	component rol16
--		port (
--			a : in std_logic_vector(15 downto 0);
--			d : in std_logic_vector(3 downto 0);
--			res : out std_logic_vector(15 downto 0);
--			z, c : out std_logic
--		);
--	end component;
	signal zRes, cRes, sRes, oRes : std_logic_vector(9 downto 0);
	signal add16Res, sub16Res : std_logic_vector(15 downto 0);
	signal and16Res, or16Res, xor16Res, not16Res : std_logic_vector(15 downto 0);
	signal sll16Res, srl16_Res, sra16Res, rol16Res : std_logic_vector(15 downto 0);
begin
	add16Realization : add16 port map (
		a => a,
		b => b,
		res => add16Res,
		z => zRes(0),
		c => cRes(0),
		s => sRes(0),
		o => oRes(0)
	);
	
	sub16Realization : sub16 port map (
		a => a,
		b => b,
		res => sub16Res,
		z => zRes(1),
		c => cRes(1),
		s => sRes(1),
		o => oRes(1)
	);
		
	and16Realization : and16 port map (
		a => a,
		b => b,
		res => and16Res,
		z => zRes(2)
	);
	
	or16Realization : or16 port map (
		a => a,
		b => b,
		res => or16Res,
		z => zRes(3)
	);
	
	xor16Realization : xor16 port map (
		a => a,
		b => b,
		res => xor16Res,
		z => zRes(4)
	);
	
	not16Realization : not16 port map (
		a => a,
		res => not16Res,
		z => zRes(5),
		s => sRes(5)
	);
	
--	sll16Realization : sll16 port map (
--		a => a,
--		d => b(3 downto 0),
--		res => sll16Res,
--		z => zRes(6),
--		c => cRes(6)
--	);
--	
--	srl16_Realization : srl16_ port map (
--		a => a,
--		d => b(3 downto 0),
--		res => srl16_Res,
--		z => zRes(7)
--	);
--	
--	sra16Realization : sra16 port map (
--		a => a,
--		d => b(3 downto 0),
--		res => sra16Res,
--		z => zRes(8)
--	);
--	
--	rol16Realization : rol16 port map (
--		a => a,
--		d => b(3 downto 0),
--		res => rol16Res,
--		z => zRes(9),
--		c => cRes(9)
--	);
	
	process (op)
	begin
		case op is
			when "0000" =>
				res <= add16Res;
				z <= zRes(0);
				c <= cRes(0);
				s <= sRes(0);
				o <= oRes(0);
			when "0001" =>
				res <= sub16Res;
				z <= zRes(1);
				c <= cRes(1);
				s <= sRes(1);
				o <= oRes(1);
			when "0010" =>
				res <= and16Res;
				z <= zRes(2);
				c <= '0';
				s <= '0';
				o <= '0';
			when "0011" =>
				res <= or16Res;
				z <= zRes(3);
				c <= '0';
				s <= '0';
				o <= '0';
			when "0100" =>
				res <= xor16Res;
				z <= zRes(4);
				c <= '0';
				s <= '0';
				o <= '0';
			when "0101" =>
				res <= not16Res;
				z <= zRes(5);
				c <= '0';
				s <= sRes(5);
				o <= '0';
--			when "0110" =>
--				res <= sll16Res;
--				z <= zRes(6);
--				c <= cRes(6);
--				s <= '0';
--				o <= '0';
--			when "0111" =>
--				res <= srl16_Res;
--				z <= zRes(7);
--				c <= '0';
--				s <= '0';
--				o <= '0';
--			when "1000" =>
--				res <= sra16Res;
--				z <= zRes(8);
--				c <= '0';
--				s <= '0';
--				o <= '0';
--			when "1001" =>
--				res <= rol16Res;
--				z <= zRes(9);
--				c <= cRes(9);
--				s <= '0';
--				o <= '0';
			when others =>
				res <= (others => '1');
				z <= '1';
				c <= '1';
				s <= '1';
				o <= '1';
		end case;
	end process;
end Behavioral;
