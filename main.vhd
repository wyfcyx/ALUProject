----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:28 10/15/2018 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
	port ( 
		input16bits : in std_logic_vector(15 downto 0);
		clk : in std_logic;
		rst : in std_logic;
		output16bits : out std_logic_vector(15 downto 0)
	);
end main;

architecture Behavioral of main is
	component alu is
		port (
			a, b : in std_logic_vector(15 downto 0);
			op : in std_logic_vector(3 downto 0);
			res : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
	);
	end component;
	
	signal state : std_logic_vector(2 downto 0) := "000";
	signal a, b : std_logic_vector(15 downto 0) := (others => '0');
	signal z_tmp, c_tmp, s_tmp, o_tmp : std_logic := '0';
	signal res_tmp : std_logic_vector(15 downto 0);
	signal op_tmp : std_logic_vector(3 downto 0) := (others => '0');
begin

	aluRealization : alu port map (
		a => a,
		b => b,
		op => op_tmp,
		res => res_tmp,
		z => z_tmp,
		c => c_tmp,
		s => s_tmp,
		o => o_tmp
	);
	process (rst, clk)
	begin
		if (rst = '0') then
			state <= "000";
			output16bits <= (others => '0');
		elsif (clk'event and clk = '1') then
			case state is
				when "000" => 
					a <= input16bits;
					state <= "001";
				when "001" =>
					b <= input16bits;
					state <= "010";
				when "010" =>
					op_tmp <= input16bits(3 downto 0);
					output16bits <= res_tmp;
					state <= "011";
				when "011" =>
					output16bits <= z_tmp & c_tmp & s_tmp & o_tmp & "000000000000";
					state <= "000";
				
				when others =>
			end case;
		end if;
	end process;
end Behavioral;

