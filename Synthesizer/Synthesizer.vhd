library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Synthesizer is
    generic(
        d_width     :  integer := 16);                    --data width
    port (
        clock       :  in  std_logic;                     --system clock 
        reset_n     :  in  std_logic;                     --active low asynchronous reset
        mclk        :  out std_logic_vector(1 downto 0);  --master clock
        sclk        :  out std_logic_vector(1 downto 0);  --serial clock (or bit clock)
        ws          :  out std_logic_vector(1 downto 0);  --word select (or left-right clock)
        sd_rx       :  in  std_logic;                     --serial data in
        sd_tx       :  out std_logic;                     --serial data out
        led8         :  out std_logic;
		  led1         :  out std_logic;
		  led2         :  out std_logic;
		  led3         :  out std_logic;
		  led4         :  out std_logic;
		  led5         :  out std_logic;
		  led6         :  out std_logic;
		  led7         :  out std_logic
    
	);
end entity;


architecture arch of Synthesizer is 
	 signal count: unsigned (31 downto 0);
    signal master_clk   :  std_logic;                             --internal master clock signal
    signal serial_clk   :  std_logic := '0';                      --internal serial clock signal
    signal word_select  :  std_logic := '0';                      --internal word select signal
    signal l_data_rx    :  std_logic_vector(d_width-1 downto 0);  --left channel data received from I2S Transceiver component
    signal r_data_rx    :  std_logic_vector(d_width-1 downto 0);  --right channel data received from I2S Transceiver component
    signal l_data_tx    :  std_logic_vector(d_width-1 downto 0);  --left channel data to transmit using I2S Transceiver component
    signal r_data_tx    :  std_logic_vector(d_width-1 downto 0);  --right channel data to transmit using I2S Transceiver component	
    signal buff         :  std_logic_vector(d_width-1 downto 0);  --buffer for serial data
	
	component i2s is
        generic(
            mclk_sclk_ratio :  integer := 4;    --number of mclk periods per sclk period
            sclk_ws_ratio   :  integer := 64;   --number of sclk periods per word select period
            d_width         :  integer := 16);   --data width
        port(
            reset_n     :  in   std_logic;                              --asynchronous active low reset
            mclk        :  in   std_logic;                              --master clock
            sclk        :  out  std_logic;                              --serial clock (or bit clock)
            ws          :  out  std_logic;                              --word select (or left-right clock)
            sd_tx       :  out  std_logic;                              --serial data transmit
            sd_rx       :  in   std_logic;                              --serial data receive
            l_data_tx   :  in   std_logic_vector(d_width-1 downto 0);   --left channel data to transmit
            r_data_tx   :  in   std_logic_vector(d_width-1 downto 0);   --right channel data to transmit
            l_data_rx   :  out  std_logic_vector(d_width-1 downto 0);   --left channel data received
            r_data_rx   :  out  std_logic_vector(d_width-1 downto 0));  --right channel data received
    end component;
    
    component sawtooth is
        port (
            clk         : in std_logic; 
            wave_out    : out std_logic_vector(15 downto 0);
            reset       : in std_logic);
        end component;





begin
    
    --instantiate I2S Transceiver component
    i2s_0: i2s
    generic map(mclk_sclk_ratio => 4, sclk_ws_ratio => 64, d_width => 16)
    port map(reset_n => reset_n, mclk => master_clk, sclk => serial_clk, ws => word_select, sd_tx => sd_tx, sd_rx => sd_rx,
             l_data_tx => buff, r_data_tx => buff, l_data_rx => l_data_rx, r_data_rx => r_data_rx);

    saw_0: sawtooth
    port map (reset => reset_n, wave_out => buff, clk =>  master_clk);
	
    led1
    mclk(0) <= master_clk;  --output master clock to ADC
    mclk(1) <= master_clk;  --output master clock to DAC
    sclk(0) <= serial_clk;  --output serial clock (from I2S Transceiver) to ADC
    sclk(1) <= serial_clk;  --output serial clock (from I2S Transceiver) to DAC
    ws(0) <= word_select;   --output word select (from I2S Transceiver) to ADC
    ws(1) <= word_select;   --output word select (from I2S Transceiver) to DAC

	--p: process
	--begin
	--wait until rising_edge(clock);
	--count <= count +1;
	--if count = 1200000 then
	--	led <= '1';
	--end if;
	--if count = 2500000 then
	--	led <= '0';
	--	count <= "00000000000000000000000000000000";
	--end if;
	
	--end process;
	

end arch;
