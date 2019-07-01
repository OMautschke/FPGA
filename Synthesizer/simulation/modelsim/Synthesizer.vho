-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/01/2019 08:01:45"

-- 
-- Device: Altera 10CL025YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Synthesizer IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	mclk : OUT std_logic_vector(1 DOWNTO 0);
	sclk : OUT std_logic_vector(1 DOWNTO 0);
	ws : OUT std_logic_vector(1 DOWNTO 0);
	sd_rx : IN std_logic;
	sd_tx : OUT std_logic;
	led8 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	led7 : OUT std_logic
	);
END Synthesizer;

-- Design Ports Information
-- clock	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reset_n	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ws[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ws[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd_rx	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd_tx	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led8	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led1	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led2	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led3	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led4	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led5	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led6	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led7	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA


ARCHITECTURE structure OF Synthesizer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_mclk : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sclk : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ws : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sd_rx : std_logic;
SIGNAL ww_sd_tx : std_logic;
SIGNAL ww_led8 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \sd_rx~input_o\ : std_logic;
SIGNAL \mclk[0]~output_o\ : std_logic;
SIGNAL \mclk[1]~output_o\ : std_logic;
SIGNAL \sclk[0]~output_o\ : std_logic;
SIGNAL \sclk[1]~output_o\ : std_logic;
SIGNAL \ws[0]~output_o\ : std_logic;
SIGNAL \ws[1]~output_o\ : std_logic;
SIGNAL \sd_tx~output_o\ : std_logic;
SIGNAL \led8~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \led4~output_o\ : std_logic;
SIGNAL \led5~output_o\ : std_logic;
SIGNAL \led6~output_o\ : std_logic;
SIGNAL \led7~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
mclk <= ww_mclk;
sclk <= ww_sclk;
ws <= ww_ws;
ww_sd_rx <= sd_rx;
sd_tx <= ww_sd_tx;
led8 <= ww_led8;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
led7 <= ww_led7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N2
\mclk[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mclk[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\mclk[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mclk[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\sclk[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sclk[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\sclk[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sclk[1]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\ws[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ws[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\ws[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ws[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\sd_tx~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sd_tx~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\led8~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\led1~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\led2~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\led3~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\led4~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\led5~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\led6~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led6~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\led7~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led7~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\clock~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\reset_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\sd_rx~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sd_rx,
	o => \sd_rx~input_o\);

ww_mclk(0) <= \mclk[0]~output_o\;

ww_mclk(1) <= \mclk[1]~output_o\;

ww_sclk(0) <= \sclk[0]~output_o\;

ww_sclk(1) <= \sclk[1]~output_o\;

ww_ws(0) <= \ws[0]~output_o\;

ww_ws(1) <= \ws[1]~output_o\;

ww_sd_tx <= \sd_tx~output_o\;

ww_led8 <= \led8~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_led4 <= \led4~output_o\;

ww_led5 <= \led5~output_o\;

ww_led6 <= \led6~output_o\;

ww_led7 <= \led7~output_o\;
END structure;


