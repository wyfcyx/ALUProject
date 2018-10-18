library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sll16 is
    port ( 
        a : in std_logic_vector(15 downto 0);
        d : in std_logic_vector(3 downto 0);
        res : out std_logic_vector(15 downto 0);
        z, c : out std_logic
    );
end sll16;

architecture bhv of sll16 is
begin
    process (d)
	 begin
		 case d is
		 
			  when "0000" =>
					res <= a;
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
					c <= '0';
			  
			  when "0001" =>
					res <= a(14 downto 0) & "0";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14));
					c <= (a(15));
			  
			  when "0010" =>
					res <= a(13 downto 0) & "00";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13));
					c <= (a(14) or a(15));
			  
			  when "0011" =>
					res <= a(12 downto 0) & "000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12));
					c <= (a(13) or a(14) or a(15));
			  
			  when "0100" =>
					res <= a(11 downto 0) & "0000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11));
					c <= (a(12) or a(13) or a(14) or a(15));
			  
			  when "0101" =>
					res <= a(10 downto 0) & "00000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10));
					c <= (a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "0110" =>
					res <= a(9 downto 0) & "000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9));
					c <= (a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "0111" =>
					res <= a(8 downto 0) & "0000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8));
					c <= (a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1000" =>
					res <= a(7 downto 0) & "00000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7));
					c <= (a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1001" =>
					res <= a(6 downto 0) & "000000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6));
					c <= (a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1010" =>
					res <= a(5 downto 0) & "0000000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5));
					c <= (a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1011" =>
					res <= a(4 downto 0) & "00000000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3) or a(4));
					c <= (a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1100" =>
					res <= a(3 downto 0) & "000000000000";
			  
					z <= not (a(0) or a(1) or a(2) or a(3));
					c <= (a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1101" =>
					res <= a(2 downto 0) & "0000000000000";
			  
					z <= not (a(0) or a(1) or a(2));
					c <= (a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1110" =>
					res <= a(1 downto 0) & "00000000000000";
			  
					z <= not (a(0) or a(1));
					c <= (a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when "1111" =>
					res <= a(0 downto 0) & "000000000000000";
			  
					z <= not (a(0));
					c <= (a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
			  
			  when others =>
		 end case;
	 end process;
end bhv;
    