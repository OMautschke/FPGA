library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;


entity sawtooth is
port (clk : in std_logic; 
      wave_out : out std_logic_vector(15 downto 0);
      reset :in std_logic
     );
end sawtooth;

architecture Behavioral of sawtooth is

signal count : integer := 0;

begin

process(clk,reset)
begin
if(reset = '1') then
    count <= 0;
elsif(rising_edge(clk)) then
    if(count = 65535) then
        count <= 0;
    else
        count <= count + 1;
    end if;
end if;
end process;

wave_out <= conv_std_logic_vector(count,16);

end Behavioral;