library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Synthesizer is
port (
	clk: in std_logic; 
	led: out std_logic
	);
end entity;


architecture arch of Synthesizer is 
signal count: unsigned (31 downto 0);
begin
	p: process
	begin
	wait until rising_edge(clk);
	count <= count +1;
	if count = 1200000 then
		led <= '1';
	end if;
	if count = 2500000 then
		led <= '0';
		count <= "00000000000000000000000000000000";
	end if;
	
	end process;
	

end arch;
