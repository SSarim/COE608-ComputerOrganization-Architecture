library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_mem is
port(
	clk, wen, en	:	in std_logic; --clock, Wirte enable signal input, enable signal input
	addr				:	in unsigned(7 downto 0); --address 8-bit
	data_in			:	in std_logic_vector(31 downto 0);
	data_out			:	out std_logic_vector(31 downto 0)
);
end data_mem;

architecture Behavior of data_mem is
    type RAM is array (0 to 255) of std_logic_vector(31 downto 0); --256 32-bit data memory space 
    signal DATAMEM   : RAM; -- actual data memory space
begin
    process(clk, en, wen)
    begin
         if(clk'event and clk='0') then --Checks if there is a rising edge on the clock
        if(en = '0') then --enable en if a rising edge
            data_out <= (others => '0'); --else sets data_out as all 0's
        else
            if(wen = '0') then --If wen = 0: read mode 
                data_out <= DATAMEM(to_integer(addr));
            end if;
            if(wen = '1') then --if wen = 1: write mode
                DATAMEM(to_integer(addr)) <= data_in;
                data_out <= (others => '0');
            end if;
        end if;
        end if;
    end process;
end Behavior;


--for waevform:
--When en, wen == 0, no opeation regardless of the input. 
--wen=1 , data 'AAAA' is written to address '08. Next wen = 1'BBBB' to address '18'.
--When en=1, at addr 08, displays hex 0000AAAA, at 18, display hex 0000BBBB