
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity srl16m is
    port ( 
        a : in std_logic_vector(15 downto 0);
        d : in std_logic_vector(3 downto 0);
        res : out std_logic_vector(15 downto 0);
        z : out std_logic
    );
end srl16m;

architecture bhv of srl16m is
begin
process(a,d)
begin
    case d is
    
        when "0000" =>
            res <= "" & a(15 downto 0);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0001" =>
            res <= "0" & a(15 downto 1);
        
            z <= not (a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0010" =>
            res <= "00" & a(15 downto 2);
        
            z <= not (a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0011" =>
            res <= "000" & a(15 downto 3);
        
            z <= not (a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0100" =>
            res <= "0000" & a(15 downto 4);
        
            z <= not (a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0101" =>
            res <= "00000" & a(15 downto 5);
        
            z <= not (a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0110" =>
            res <= "000000" & a(15 downto 6);
        
            z <= not (a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "0111" =>
            res <= "0000000" & a(15 downto 7);
        
            z <= not (a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "1000" =>
            res <= "00000000" & a(15 downto 8);
        
            z <= not (a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "1001" =>
            res <= "000000000" & a(15 downto 9);
        
            z <= not (a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "1010" =>
            res <= "0000000000" & a(15 downto 10);
        
            z <= not (a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "1011" =>
            res <= "00000000000" & a(15 downto 11);
        
            z <= not (a(11) or a(12) or a(13) or a(14) or a(15));
        
        when "1100" =>
            res <= "000000000000" & a(15 downto 12);
        
            z <= not (a(12) or a(13) or a(14) or a(15));
        
        when "1101" =>
            res <= "0000000000000" & a(15 downto 13);
        
            z <= not (a(13) or a(14) or a(15));
        
        when "1110" =>
            res <= "00000000000000" & a(15 downto 14);
        
            z <= not (a(14) or a(15));
        
        when "1111" =>
            res <= "000000000000000" & a(15 downto 15);
        
            z <= not (a(15));
        
        when others =>
    end case;
end process;
end bhv;
    