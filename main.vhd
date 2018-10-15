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
	component add
		port (
			a, b : in std_logic_vector(15 downto 0);
			c : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
		);
	end component;
	
	component sub
		port (
			a, b : in std_logic_vector(15 downto 0);
			c : out std_logic_vector(15 downto 0);
			z, c, s, o : out std_logic
		);
	end component;
		
begin


end Behavioral;

