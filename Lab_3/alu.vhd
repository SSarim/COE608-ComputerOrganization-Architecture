library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; -- Note: Consider using ieee.numeric_std instead for arithmetic operations
use ieee.std_logic_unsigned.all; -- Note: Consider using ieee.numeric_std instead for unsigned operations
use ieee.numeric_std.all;

entity alu is
    port(  
          a   :  in std_logic_vector(7 downto 0); --8 bit input
          b   :  in std_logic_vector(7 downto 0); --8 bit input
          op  :  in std_logic_vector(2 downto 0); --3 bit operation
          result : out  std_logic_vector(7 downto 0); --8 bit output
          zero : out std_logic; --1 bit output (zero flag)
          cout : out std_logic --1 bit output (carry out)
          );
end alu;

architecture Behaviour of alu is
    component adder8
    port(
        Cin    :  in std_logic; --carry in 
        X,Y    :  in std_logic_vector(7 downto 0); --x and y input values
        S    :  out  std_logic_vector(7 downto 0); -- sum
        Cout :  out  std_logic --carry out 
    );
    end component;
    --all are internal signal results
    signal result_s: std_logic_vector(7 downto 0):= (others => '0');
    signal result_add: std_logic_vector(7 downto 0):= (others => '0');
    signal result_sub: std_logic_vector(7 downto 0):= (others => '0');
    signal cout_s  : std_logic := '0';
    signal cout_add  : std_logic := '0';
    signal cout_sub  : std_logic := '0';
    signal zero_s    : std_logic:= '0';
    
begin 
      add0 : adder8 port map (op(2), a, b, result_add,cout_add);
      sub0 : adder8 port map (op(2), a, not b, result_sub,cout_sub);
      process (a, b, op)
      begin
        case (op) is
            when "000" =>
                result_s<= a and b;
                cout_s <= '0';
            when "001" =>
                result_s<= a or b;
                cout_s <= '0';
            when "010" =>
                result_s<= result_add;
                cout_s <= cout_add;
            when "011" =>
                result_s<= b;
                cout_s <= '0';
            when "110" =>
                result_s<= result_sub;
                cout_s <= cout_sub;
            when "100" =>
                result_s<= a(6 downto 0) & '0'; -- Adjusted for 8-bit
                cout_s <= a(7);
            when "101" =>
                result_s<= '0' & a(7 downto 1); -- Adjusted for 8-bit
                cout_s <= '0';
            when others =>
                result_s <= a;
                cout_s <= '0';
            end case;
            case(result_s) is 
                when (others => '0') => --zero flag logic
                    zero_s <= '1'; --checks result_s for all zeros then sets zero_s to zero
                when others =>
                    zero_s <= '0';
            end case;
        end process;
        result <= result_s;
        cout <= cout_s;
        zero <= zero_s;
end Behaviour;
