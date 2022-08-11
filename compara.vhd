LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compara is
port(	a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		ab0, ab1, ab2, ab3, ab, ba, s3, s1, s2, s0_igual : inout std_logic);
end compara;

architecture circ of compara is
begin
	s3 <= not(a(3) xor b(3));
	s2 <= (not(a(2) xor b(2))) and s3;
	s1 <= (not(a(1) xor b(1))) and s2;
	s0_igual <= (not(a(0) xor b(0))) and s1;
	
	ab3 <= (not(b(3))) and a(3);
	ab2 <= s3 and (not(b(2))) and a(2);
	ab1 <= s2 and (not(b(1))) and a(1);
	ab0 <= s1 and (not(b(0))) and a(0);
	
	ab <= (ab0 or ab1 or ab2 or ab3);
	ba <= (not(ab)) and (not(s0_igual));
end circ;
