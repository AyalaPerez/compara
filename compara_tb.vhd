library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity compara_tb is
end compara_tb;

architecture entradas_compara of compara_tb is
	component compara
		port(	a : in std_logic_vector(3 downto 0);
				b : in std_logic_vector(3 downto 0);
				ab0, ab1, ab2, ab3, ab, ba, s3, s1, s2, s0_igual : inout std_logic);
		end component;
		signal a	: std_logic_vector(3 downto 0);
		signal b	: std_logic_vector(3 downto 0);
		signal s3	: std_logic;
		signal s1	: std_logic;
		signal s2	: std_logic;
		signal s0_igual	: std_logic;
		signal ab0	: std_logic;
		signal ab1	: std_logic;
		signal ab2	: std_logic;
		signal ab3	: std_logic;
		signal ab	: std_logic;
		signal ba	: std_logic;
		
	begin
		u0: compara port map (a, b, ab0, ab1, ab2, ab3, ab, ba, s3, s1, s2, s0_igual);
		a <= "0011" after 0 ns, "0111" after 5 ns, "0111" after 10 ns;
		b <= "0010" after 0 ns, "0100" after 5 ns, "0010" after 10 ns;
end entradas_compara;
