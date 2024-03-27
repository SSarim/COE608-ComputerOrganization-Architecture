library ieee;
use ieee.std_logic_1164.all;

entity adder8 is
    Port ( 
           Cin    : in  std_logic; -- Carry in
           X      : in  std_logic_vector(7 downto 0); -- 8-bit input X
           Y      : in  std_logic_vector(7 downto 0); -- 8-bit input Y
           S      : out std_logic_vector(7 downto 0); -- 8-bit sum output
           Cout   : out std_logic -- Carry out
         );
end adder8;
architecture Behaviour of adder8 is
	component adder4
	port(
		Cin    :  in std_logic;
		X,Y    :  in std_logic_vector(3 downto 0);
		S    :  out  std_logic_vector(3 downto 0);
		Cout :  out  std_logic
	   );
end component;
	
	signal C : std_logic_vector(1 to 3);
begin
    stage0: adder4 port map(Cin,  X(3 downto 0), Y(3 downto 0), S(3 downto 0), C(1)); -- Least significant bits (0-3) of X and Y.
    stage1: adder4 port map(C(1), X(7 downto 4), Y(7 downto 4), S(7 downto 4), Cout); -- Most significant bits (4-7).
end Behaviour;
