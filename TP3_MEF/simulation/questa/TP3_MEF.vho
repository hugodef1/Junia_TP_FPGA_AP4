-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "05/07/2026 16:34:13"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Bistable|Selector0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Bistable|current_state.init~q\ : std_logic;
SIGNAL \Bistable|Selector2~0_combout\ : std_logic;
SIGNAL \Bistable|current_state.C~q\ : std_logic;
SIGNAL \Bistable|Selector1~0_combout\ : std_logic;
SIGNAL \Bistable|current_state.B~q\ : std_logic;
SIGNAL \Bistable|Selector3~0_combout\ : std_logic;
SIGNAL \Bistable|current_state.D~q\ : std_logic;
SIGNAL \Bistable|Y~0_combout\ : std_logic;
SIGNAL \Bistable|ALT_INV_current_state.init~q\ : std_logic;
SIGNAL \Bistable|ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \Bistable|ALT_INV_current_state.B~q\ : std_logic;
SIGNAL \Bistable|ALT_INV_current_state.C~q\ : std_logic;
SIGNAL \Bistable|ALT_INV_current_state.D~q\ : std_logic;

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Bistable|ALT_INV_current_state.init~q\ <= NOT \Bistable|current_state.init~q\;
\Bistable|ALT_INV_Y~0_combout\ <= NOT \Bistable|Y~0_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\Bistable|ALT_INV_current_state.B~q\ <= NOT \Bistable|current_state.B~q\;
\Bistable|ALT_INV_current_state.C~q\ <= NOT \Bistable|current_state.C~q\;
\Bistable|ALT_INV_current_state.D~q\ <= NOT \Bistable|current_state.D~q\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Bistable|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X21_Y60_N24
\Bistable|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bistable|Selector0~0_combout\ = (!\KEY[1]~input_o\) # ((\Bistable|current_state.C~q\) # (\Bistable|current_state.B~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \Bistable|ALT_INV_current_state.B~q\,
	datad => \Bistable|ALT_INV_current_state.C~q\,
	combout => \Bistable|Selector0~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X21_Y60_N26
\Bistable|current_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Bistable|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bistable|current_state.init~q\);

-- Location: LABCELL_X21_Y60_N54
\Bistable|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bistable|Selector2~0_combout\ = ( !\Bistable|current_state.D~q\ & ( \Bistable|current_state.init~q\ & ( \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datae => \Bistable|ALT_INV_current_state.D~q\,
	dataf => \Bistable|ALT_INV_current_state.init~q\,
	combout => \Bistable|Selector2~0_combout\);

-- Location: FF_X21_Y60_N56
\Bistable|current_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Bistable|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bistable|current_state.C~q\);

-- Location: LABCELL_X21_Y60_N21
\Bistable|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bistable|Selector1~0_combout\ = ( !\Bistable|current_state.D~q\ & ( (!\KEY[1]~input_o\ & !\Bistable|current_state.C~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \Bistable|ALT_INV_current_state.C~q\,
	dataf => \Bistable|ALT_INV_current_state.D~q\,
	combout => \Bistable|Selector1~0_combout\);

-- Location: FF_X21_Y60_N23
\Bistable|current_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Bistable|Selector1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bistable|current_state.B~q\);

-- Location: LABCELL_X21_Y60_N27
\Bistable|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bistable|Selector3~0_combout\ = ( \Bistable|current_state.init~q\ & ( (!\KEY[1]~input_o\ & !\Bistable|current_state.B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \Bistable|ALT_INV_current_state.B~q\,
	dataf => \Bistable|ALT_INV_current_state.init~q\,
	combout => \Bistable|Selector3~0_combout\);

-- Location: FF_X21_Y60_N29
\Bistable|current_state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Bistable|Selector3~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bistable|current_state.D~q\);

-- Location: LABCELL_X21_Y60_N18
\Bistable|Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bistable|Y~0_combout\ = ( \Bistable|current_state.init~q\ & ( \Bistable|current_state.D~q\ ) ) # ( !\Bistable|current_state.init~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bistable|ALT_INV_current_state.D~q\,
	dataf => \Bistable|ALT_INV_current_state.init~q\,
	combout => \Bistable|Y~0_combout\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X37_Y29_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


