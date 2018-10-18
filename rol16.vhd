
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rol16 is
    port ( 
        a : in std_logic_vector(15 downto 0);
        d : in std_logic_vector(3 downto 0);
        res : out std_logic_vector(15 downto 0);
        z,c : out std_logic
    );
end rol16;

architecture bhv of rol16 is
begin
process(a,d)
begin
    case d is
    
        when "0000" =>
            res <= a;
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0001" =>
            res <= a(14 downto 0) & a(15 downto 15);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0010" =>
            res <= a(13 downto 0) & a(15 downto 14);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0011" =>
            res <= a(12 downto 0) & a(15 downto 13);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0100" =>
            res <= a(11 downto 0) & a(15 downto 12);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0101" =>
            res <= a(10 downto 0) & a(15 downto 11);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0110" =>
            res <= a(9 downto 0) & a(15 downto 10);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "0111" =>
            res <= a(8 downto 0) & a(15 downto 9);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1000" =>
            res <= a(7 downto 0) & a(15 downto 8);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1001" =>
            res <= a(6 downto 0) & a(15 downto 7);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1010" =>
            res <= a(5 downto 0) & a(15 downto 6);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1011" =>
            res <= a(4 downto 0) & a(15 downto 5);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1100" =>
            res <= a(3 downto 0) & a(15 downto 4);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1101" =>
            res <= a(2 downto 0) & a(15 downto 3);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1110" =>
            res <= a(1 downto 0) & a(15 downto 2);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when "1111" =>
            res <= a(0 downto 0) & a(15 downto 1);
        
            z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) or a(9) or a(10) or a(11) or a(12) or a(13) or a(14) or a(15));
            c <= '0';
        
        when others =>
    end case;
end process;
end bhv;
    