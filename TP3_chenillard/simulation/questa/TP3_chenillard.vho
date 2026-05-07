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

-- DATE "05/06/2026 12:18:28"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Inst_clock_divider|counter[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~89_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|counter[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~90\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~86\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~82\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~78\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~74\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~70\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~66\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~62\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~58\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~54\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~50\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~46\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~42\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~38\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~34\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~30\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~26\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~22\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~18\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~14\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~10\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~6\ : std_logic;
SIGNAL \Inst_clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \Inst_chenillard|state.T8~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T9~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T0~0_combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T0~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T1~0_combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T1~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|state.T2~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|state.T3~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T4~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|state.T5~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|state.T6~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T7~q\ : std_logic;
SIGNAL \Inst_chenillard|state.T8~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|WideOr9~combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T1~q\ : std_logic;
SIGNAL \Inst_chenillard|WideOr8~combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T2~q\ : std_logic;
SIGNAL \Inst_chenillard|WideOr7~combout\ : std_logic;
SIGNAL \Inst_chenillard|WideOr6~combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T4~q\ : std_logic;
SIGNAL \Inst_chenillard|WideOr5~combout\ : std_logic;
SIGNAL \Inst_chenillard|WideOr4~combout\ : std_logic;
SIGNAL \Inst_chenillard|state.T5~q\ : std_logic;
SIGNAL \Inst_chenillard|WideOr3~combout\ : std_logic;
SIGNAL \Inst_chenillard|WideOr2~combout\ : std_logic;
SIGNAL \Inst_chenillard|WideOr1~combout\ : std_logic;
SIGNAL \Inst_chenillard|WideOr0~combout\ : std_logic;
SIGNAL \Inst_clock_divider|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \Inst_clock_divider|ALT_INV_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \Inst_chenillard|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T7~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T6~q\ : std_logic;
SIGNAL \Inst_clock_divider|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T5~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T9~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T4~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T1~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T5~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Inst_clock_divider|ALT_INV_counter\(10) <= NOT \Inst_clock_divider|counter\(10);
\Inst_clock_divider|ALT_INV_counter\(22) <= NOT \Inst_clock_divider|counter\(22);
\Inst_clock_divider|ALT_INV_counter\(14) <= NOT \Inst_clock_divider|counter\(14);
\Inst_chenillard|ALT_INV_state.T1~q\ <= NOT \Inst_chenillard|state.T1~q\;
\Inst_clock_divider|ALT_INV_counter\(21) <= NOT \Inst_clock_divider|counter\(21);
\Inst_clock_divider|ALT_INV_counter\(20) <= NOT \Inst_clock_divider|counter\(20);
\Inst_chenillard|ALT_INV_state.T2~q\ <= NOT \Inst_chenillard|state.T2~q\;
\Inst_chenillard|ALT_INV_state.T7~q\ <= NOT \Inst_chenillard|state.T7~q\;
\Inst_clock_divider|ALT_INV_counter\(16) <= NOT \Inst_clock_divider|counter\(16);
\Inst_chenillard|ALT_INV_state.T6~q\ <= NOT \Inst_chenillard|state.T6~q\;
\Inst_clock_divider|ALT_INV_counter\(17) <= NOT \Inst_clock_divider|counter\(17);
\Inst_clock_divider|ALT_INV_counter\(11) <= NOT \Inst_clock_divider|counter\(11);
\Inst_clock_divider|ALT_INV_counter\(9) <= NOT \Inst_clock_divider|counter\(9);
\Inst_clock_divider|ALT_INV_counter\(13) <= NOT \Inst_clock_divider|counter\(13);
\Inst_clock_divider|ALT_INV_counter\(12) <= NOT \Inst_clock_divider|counter\(12);
\Inst_clock_divider|ALT_INV_counter\(8) <= NOT \Inst_clock_divider|counter\(8);
\Inst_clock_divider|ALT_INV_Add0~89_sumout\ <= NOT \Inst_clock_divider|Add0~89_sumout\;
\Inst_chenillard|ALT_INV_state.T5~q\ <= NOT \Inst_chenillard|state.T5~q\;
\Inst_clock_divider|ALT_INV_counter\(6) <= NOT \Inst_clock_divider|counter\(6);
\Inst_clock_divider|ALT_INV_counter\(5) <= NOT \Inst_clock_divider|counter\(5);
\Inst_clock_divider|ALT_INV_counter\(3) <= NOT \Inst_clock_divider|counter\(3);
\Inst_clock_divider|ALT_INV_counter\(2) <= NOT \Inst_clock_divider|counter\(2);
\Inst_clock_divider|ALT_INV_counter\(7) <= NOT \Inst_clock_divider|counter\(7);
\Inst_chenillard|ALT_INV_state.T0~q\ <= NOT \Inst_chenillard|state.T0~q\;
\Inst_chenillard|ALT_INV_state.T9~q\ <= NOT \Inst_chenillard|state.T9~q\;
\Inst_clock_divider|ALT_INV_counter\(0) <= NOT \Inst_clock_divider|counter\(0);
\Inst_clock_divider|ALT_INV_counter\(23) <= NOT \Inst_clock_divider|counter\(23);
\Inst_clock_divider|ALT_INV_counter\(15) <= NOT \Inst_clock_divider|counter\(15);
\Inst_clock_divider|ALT_INV_counter\(4) <= NOT \Inst_clock_divider|counter\(4);
\Inst_clock_divider|ALT_INV_counter\(1) <= NOT \Inst_clock_divider|counter\(1);
\Inst_clock_divider|ALT_INV_counter\(18) <= NOT \Inst_clock_divider|counter\(18);
\Inst_chenillard|ALT_INV_state.T4~q\ <= NOT \Inst_chenillard|state.T4~q\;
\Inst_clock_divider|ALT_INV_counter\(19) <= NOT \Inst_clock_divider|counter\(19);
\Inst_chenillard|ALT_INV_state.T3~q\ <= NOT \Inst_chenillard|state.T3~q\;
\Inst_chenillard|ALT_INV_state.T1~DUPLICATE_q\ <= NOT \Inst_chenillard|state.T1~DUPLICATE_q\;
\Inst_chenillard|ALT_INV_state.T5~DUPLICATE_q\ <= NOT \Inst_chenillard|state.T5~DUPLICATE_q\;
\Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\ <= NOT \Inst_chenillard|state.T8~DUPLICATE_q\;

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr9~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_chenillard|WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: LABCELL_X54_Y34_N21
\Inst_clock_divider|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|counter[0]~0_combout\ = ( !\Inst_clock_divider|counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Inst_clock_divider|ALT_INV_counter\(0),
	combout => \Inst_clock_divider|counter[0]~0_combout\);

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

-- Location: FF_X54_Y34_N23
\Inst_clock_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|counter[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(0));

-- Location: LABCELL_X54_Y34_N30
\Inst_clock_divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~89_sumout\ = SUM(( \Inst_clock_divider|counter\(1) ) + ( \Inst_clock_divider|counter\(0) ) + ( !VCC ))
-- \Inst_clock_divider|Add0~90\ = CARRY(( \Inst_clock_divider|counter\(1) ) + ( \Inst_clock_divider|counter\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(0),
	datad => \Inst_clock_divider|ALT_INV_counter\(1),
	cin => GND,
	sumout => \Inst_clock_divider|Add0~89_sumout\,
	cout => \Inst_clock_divider|Add0~90\);

-- Location: LABCELL_X54_Y34_N0
\Inst_clock_divider|counter[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|counter[1]~feeder_combout\ = \Inst_clock_divider|Add0~89_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_clock_divider|ALT_INV_Add0~89_sumout\,
	combout => \Inst_clock_divider|counter[1]~feeder_combout\);

-- Location: FF_X54_Y34_N2
\Inst_clock_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|counter[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(1));

-- Location: LABCELL_X54_Y34_N33
\Inst_clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~85_sumout\ = SUM(( \Inst_clock_divider|counter\(2) ) + ( GND ) + ( \Inst_clock_divider|Add0~90\ ))
-- \Inst_clock_divider|Add0~86\ = CARRY(( \Inst_clock_divider|counter\(2) ) + ( GND ) + ( \Inst_clock_divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_clock_divider|ALT_INV_counter\(2),
	cin => \Inst_clock_divider|Add0~90\,
	sumout => \Inst_clock_divider|Add0~85_sumout\,
	cout => \Inst_clock_divider|Add0~86\);

-- Location: FF_X54_Y34_N35
\Inst_clock_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(2));

-- Location: LABCELL_X54_Y34_N36
\Inst_clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~81_sumout\ = SUM(( \Inst_clock_divider|counter\(3) ) + ( GND ) + ( \Inst_clock_divider|Add0~86\ ))
-- \Inst_clock_divider|Add0~82\ = CARRY(( \Inst_clock_divider|counter\(3) ) + ( GND ) + ( \Inst_clock_divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(3),
	cin => \Inst_clock_divider|Add0~86\,
	sumout => \Inst_clock_divider|Add0~81_sumout\,
	cout => \Inst_clock_divider|Add0~82\);

-- Location: FF_X54_Y34_N38
\Inst_clock_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(3));

-- Location: LABCELL_X54_Y34_N39
\Inst_clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~77_sumout\ = SUM(( \Inst_clock_divider|counter\(4) ) + ( GND ) + ( \Inst_clock_divider|Add0~82\ ))
-- \Inst_clock_divider|Add0~78\ = CARRY(( \Inst_clock_divider|counter\(4) ) + ( GND ) + ( \Inst_clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(4),
	cin => \Inst_clock_divider|Add0~82\,
	sumout => \Inst_clock_divider|Add0~77_sumout\,
	cout => \Inst_clock_divider|Add0~78\);

-- Location: FF_X54_Y34_N41
\Inst_clock_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(4));

-- Location: LABCELL_X54_Y34_N42
\Inst_clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~73_sumout\ = SUM(( \Inst_clock_divider|counter\(5) ) + ( GND ) + ( \Inst_clock_divider|Add0~78\ ))
-- \Inst_clock_divider|Add0~74\ = CARRY(( \Inst_clock_divider|counter\(5) ) + ( GND ) + ( \Inst_clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(5),
	cin => \Inst_clock_divider|Add0~78\,
	sumout => \Inst_clock_divider|Add0~73_sumout\,
	cout => \Inst_clock_divider|Add0~74\);

-- Location: FF_X54_Y34_N43
\Inst_clock_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(5));

-- Location: LABCELL_X54_Y34_N45
\Inst_clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~69_sumout\ = SUM(( \Inst_clock_divider|counter\(6) ) + ( GND ) + ( \Inst_clock_divider|Add0~74\ ))
-- \Inst_clock_divider|Add0~70\ = CARRY(( \Inst_clock_divider|counter\(6) ) + ( GND ) + ( \Inst_clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(6),
	cin => \Inst_clock_divider|Add0~74\,
	sumout => \Inst_clock_divider|Add0~69_sumout\,
	cout => \Inst_clock_divider|Add0~70\);

-- Location: FF_X54_Y34_N47
\Inst_clock_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(6));

-- Location: LABCELL_X54_Y34_N48
\Inst_clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~65_sumout\ = SUM(( \Inst_clock_divider|counter\(7) ) + ( GND ) + ( \Inst_clock_divider|Add0~70\ ))
-- \Inst_clock_divider|Add0~66\ = CARRY(( \Inst_clock_divider|counter\(7) ) + ( GND ) + ( \Inst_clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(7),
	cin => \Inst_clock_divider|Add0~70\,
	sumout => \Inst_clock_divider|Add0~65_sumout\,
	cout => \Inst_clock_divider|Add0~66\);

-- Location: FF_X54_Y34_N50
\Inst_clock_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(7));

-- Location: LABCELL_X54_Y34_N51
\Inst_clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~61_sumout\ = SUM(( \Inst_clock_divider|counter\(8) ) + ( GND ) + ( \Inst_clock_divider|Add0~66\ ))
-- \Inst_clock_divider|Add0~62\ = CARRY(( \Inst_clock_divider|counter\(8) ) + ( GND ) + ( \Inst_clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(8),
	cin => \Inst_clock_divider|Add0~66\,
	sumout => \Inst_clock_divider|Add0~61_sumout\,
	cout => \Inst_clock_divider|Add0~62\);

-- Location: FF_X54_Y34_N52
\Inst_clock_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(8));

-- Location: LABCELL_X54_Y34_N54
\Inst_clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~57_sumout\ = SUM(( \Inst_clock_divider|counter\(9) ) + ( GND ) + ( \Inst_clock_divider|Add0~62\ ))
-- \Inst_clock_divider|Add0~58\ = CARRY(( \Inst_clock_divider|counter\(9) ) + ( GND ) + ( \Inst_clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(9),
	cin => \Inst_clock_divider|Add0~62\,
	sumout => \Inst_clock_divider|Add0~57_sumout\,
	cout => \Inst_clock_divider|Add0~58\);

-- Location: FF_X54_Y34_N56
\Inst_clock_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(9));

-- Location: LABCELL_X54_Y34_N57
\Inst_clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~53_sumout\ = SUM(( \Inst_clock_divider|counter\(10) ) + ( GND ) + ( \Inst_clock_divider|Add0~58\ ))
-- \Inst_clock_divider|Add0~54\ = CARRY(( \Inst_clock_divider|counter\(10) ) + ( GND ) + ( \Inst_clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(10),
	cin => \Inst_clock_divider|Add0~58\,
	sumout => \Inst_clock_divider|Add0~53_sumout\,
	cout => \Inst_clock_divider|Add0~54\);

-- Location: FF_X54_Y34_N59
\Inst_clock_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(10));

-- Location: LABCELL_X54_Y33_N0
\Inst_clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~49_sumout\ = SUM(( \Inst_clock_divider|counter\(11) ) + ( GND ) + ( \Inst_clock_divider|Add0~54\ ))
-- \Inst_clock_divider|Add0~50\ = CARRY(( \Inst_clock_divider|counter\(11) ) + ( GND ) + ( \Inst_clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(11),
	cin => \Inst_clock_divider|Add0~54\,
	sumout => \Inst_clock_divider|Add0~49_sumout\,
	cout => \Inst_clock_divider|Add0~50\);

-- Location: FF_X54_Y33_N2
\Inst_clock_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(11));

-- Location: LABCELL_X54_Y33_N3
\Inst_clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~45_sumout\ = SUM(( \Inst_clock_divider|counter\(12) ) + ( GND ) + ( \Inst_clock_divider|Add0~50\ ))
-- \Inst_clock_divider|Add0~46\ = CARRY(( \Inst_clock_divider|counter\(12) ) + ( GND ) + ( \Inst_clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(12),
	cin => \Inst_clock_divider|Add0~50\,
	sumout => \Inst_clock_divider|Add0~45_sumout\,
	cout => \Inst_clock_divider|Add0~46\);

-- Location: FF_X54_Y33_N5
\Inst_clock_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(12));

-- Location: LABCELL_X54_Y33_N6
\Inst_clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~41_sumout\ = SUM(( \Inst_clock_divider|counter\(13) ) + ( GND ) + ( \Inst_clock_divider|Add0~46\ ))
-- \Inst_clock_divider|Add0~42\ = CARRY(( \Inst_clock_divider|counter\(13) ) + ( GND ) + ( \Inst_clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(13),
	cin => \Inst_clock_divider|Add0~46\,
	sumout => \Inst_clock_divider|Add0~41_sumout\,
	cout => \Inst_clock_divider|Add0~42\);

-- Location: FF_X54_Y33_N7
\Inst_clock_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(13));

-- Location: LABCELL_X54_Y33_N9
\Inst_clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~37_sumout\ = SUM(( \Inst_clock_divider|counter\(14) ) + ( GND ) + ( \Inst_clock_divider|Add0~42\ ))
-- \Inst_clock_divider|Add0~38\ = CARRY(( \Inst_clock_divider|counter\(14) ) + ( GND ) + ( \Inst_clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(14),
	cin => \Inst_clock_divider|Add0~42\,
	sumout => \Inst_clock_divider|Add0~37_sumout\,
	cout => \Inst_clock_divider|Add0~38\);

-- Location: FF_X54_Y33_N11
\Inst_clock_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(14));

-- Location: LABCELL_X54_Y33_N12
\Inst_clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~33_sumout\ = SUM(( \Inst_clock_divider|counter\(15) ) + ( GND ) + ( \Inst_clock_divider|Add0~38\ ))
-- \Inst_clock_divider|Add0~34\ = CARRY(( \Inst_clock_divider|counter\(15) ) + ( GND ) + ( \Inst_clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_clock_divider|ALT_INV_counter\(15),
	cin => \Inst_clock_divider|Add0~38\,
	sumout => \Inst_clock_divider|Add0~33_sumout\,
	cout => \Inst_clock_divider|Add0~34\);

-- Location: FF_X54_Y33_N14
\Inst_clock_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(15));

-- Location: LABCELL_X54_Y33_N15
\Inst_clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~29_sumout\ = SUM(( \Inst_clock_divider|counter\(16) ) + ( GND ) + ( \Inst_clock_divider|Add0~34\ ))
-- \Inst_clock_divider|Add0~30\ = CARRY(( \Inst_clock_divider|counter\(16) ) + ( GND ) + ( \Inst_clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(16),
	cin => \Inst_clock_divider|Add0~34\,
	sumout => \Inst_clock_divider|Add0~29_sumout\,
	cout => \Inst_clock_divider|Add0~30\);

-- Location: FF_X54_Y33_N17
\Inst_clock_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(16));

-- Location: LABCELL_X54_Y33_N18
\Inst_clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~25_sumout\ = SUM(( \Inst_clock_divider|counter\(17) ) + ( GND ) + ( \Inst_clock_divider|Add0~30\ ))
-- \Inst_clock_divider|Add0~26\ = CARRY(( \Inst_clock_divider|counter\(17) ) + ( GND ) + ( \Inst_clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(17),
	cin => \Inst_clock_divider|Add0~30\,
	sumout => \Inst_clock_divider|Add0~25_sumout\,
	cout => \Inst_clock_divider|Add0~26\);

-- Location: FF_X54_Y33_N20
\Inst_clock_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(17));

-- Location: LABCELL_X54_Y33_N21
\Inst_clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~21_sumout\ = SUM(( \Inst_clock_divider|counter\(18) ) + ( GND ) + ( \Inst_clock_divider|Add0~26\ ))
-- \Inst_clock_divider|Add0~22\ = CARRY(( \Inst_clock_divider|counter\(18) ) + ( GND ) + ( \Inst_clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(18),
	cin => \Inst_clock_divider|Add0~26\,
	sumout => \Inst_clock_divider|Add0~21_sumout\,
	cout => \Inst_clock_divider|Add0~22\);

-- Location: FF_X54_Y33_N23
\Inst_clock_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(18));

-- Location: LABCELL_X54_Y33_N24
\Inst_clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~17_sumout\ = SUM(( \Inst_clock_divider|counter\(19) ) + ( GND ) + ( \Inst_clock_divider|Add0~22\ ))
-- \Inst_clock_divider|Add0~18\ = CARRY(( \Inst_clock_divider|counter\(19) ) + ( GND ) + ( \Inst_clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(19),
	cin => \Inst_clock_divider|Add0~22\,
	sumout => \Inst_clock_divider|Add0~17_sumout\,
	cout => \Inst_clock_divider|Add0~18\);

-- Location: FF_X54_Y33_N26
\Inst_clock_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(19));

-- Location: LABCELL_X54_Y33_N27
\Inst_clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~13_sumout\ = SUM(( \Inst_clock_divider|counter\(20) ) + ( GND ) + ( \Inst_clock_divider|Add0~18\ ))
-- \Inst_clock_divider|Add0~14\ = CARRY(( \Inst_clock_divider|counter\(20) ) + ( GND ) + ( \Inst_clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(20),
	cin => \Inst_clock_divider|Add0~18\,
	sumout => \Inst_clock_divider|Add0~13_sumout\,
	cout => \Inst_clock_divider|Add0~14\);

-- Location: FF_X54_Y33_N28
\Inst_clock_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(20));

-- Location: LABCELL_X54_Y33_N30
\Inst_clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~9_sumout\ = SUM(( \Inst_clock_divider|counter\(21) ) + ( GND ) + ( \Inst_clock_divider|Add0~14\ ))
-- \Inst_clock_divider|Add0~10\ = CARRY(( \Inst_clock_divider|counter\(21) ) + ( GND ) + ( \Inst_clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_clock_divider|ALT_INV_counter\(21),
	cin => \Inst_clock_divider|Add0~14\,
	sumout => \Inst_clock_divider|Add0~9_sumout\,
	cout => \Inst_clock_divider|Add0~10\);

-- Location: FF_X54_Y33_N31
\Inst_clock_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(21));

-- Location: LABCELL_X54_Y33_N33
\Inst_clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~5_sumout\ = SUM(( \Inst_clock_divider|counter\(22) ) + ( GND ) + ( \Inst_clock_divider|Add0~10\ ))
-- \Inst_clock_divider|Add0~6\ = CARRY(( \Inst_clock_divider|counter\(22) ) + ( GND ) + ( \Inst_clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_clock_divider|ALT_INV_counter\(22),
	cin => \Inst_clock_divider|Add0~10\,
	sumout => \Inst_clock_divider|Add0~5_sumout\,
	cout => \Inst_clock_divider|Add0~6\);

-- Location: FF_X54_Y33_N35
\Inst_clock_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \Inst_clock_divider|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(22));

-- Location: LABCELL_X54_Y33_N36
\Inst_clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_clock_divider|Add0~1_sumout\ = SUM(( \Inst_clock_divider|counter\(23) ) + ( GND ) + ( \Inst_clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_clock_divider|ALT_INV_counter\(23),
	cin => \Inst_clock_divider|Add0~6\,
	sumout => \Inst_clock_divider|Add0~1_sumout\);

-- Location: FF_X54_Y33_N38
\Inst_clock_divider|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~input_o\,
	d => \Inst_clock_divider|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_clock_divider|counter\(23));

-- Location: FF_X53_Y33_N25
\Inst_chenillard|state.T8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T7~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T8~q\);

-- Location: FF_X53_Y33_N22
\Inst_chenillard|state.T9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T8~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T9~q\);

-- Location: LABCELL_X53_Y33_N18
\Inst_chenillard|state.T0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|state.T0~0_combout\ = ( !\Inst_chenillard|state.T9~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_chenillard|ALT_INV_state.T9~q\,
	combout => \Inst_chenillard|state.T0~0_combout\);

-- Location: FF_X53_Y33_N19
\Inst_chenillard|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	d => \Inst_chenillard|state.T0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T0~q\);

-- Location: LABCELL_X53_Y33_N9
\Inst_chenillard|state.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|state.T1~0_combout\ = ( !\Inst_chenillard|state.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_chenillard|ALT_INV_state.T0~q\,
	combout => \Inst_chenillard|state.T1~0_combout\);

-- Location: FF_X53_Y33_N10
\Inst_chenillard|state.T1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	d => \Inst_chenillard|state.T1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T1~DUPLICATE_q\);

-- Location: FF_X53_Y33_N37
\Inst_chenillard|state.T2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T1~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T2~DUPLICATE_q\);

-- Location: FF_X53_Y33_N5
\Inst_chenillard|state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T2~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T3~q\);

-- Location: FF_X53_Y33_N13
\Inst_chenillard|state.T4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T3~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T4~DUPLICATE_q\);

-- Location: FF_X53_Y33_N52
\Inst_chenillard|state.T5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T4~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T5~DUPLICATE_q\);

-- Location: FF_X53_Y33_N56
\Inst_chenillard|state.T6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T5~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T6~q\);

-- Location: FF_X53_Y33_N35
\Inst_chenillard|state.T7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T6~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T7~q\);

-- Location: FF_X53_Y33_N26
\Inst_chenillard|state.T8~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T7~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T8~DUPLICATE_q\);

-- Location: LABCELL_X53_Y33_N39
\Inst_chenillard|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr9~combout\ = ( \Inst_chenillard|state.T7~q\ ) # ( !\Inst_chenillard|state.T7~q\ & ( ((!\Inst_chenillard|state.T0~q\) # (\Inst_chenillard|state.T9~q\)) # (\Inst_chenillard|state.T8~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\,
	datac => \Inst_chenillard|ALT_INV_state.T9~q\,
	datad => \Inst_chenillard|ALT_INV_state.T0~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T7~q\,
	combout => \Inst_chenillard|WideOr9~combout\);

-- Location: FF_X53_Y33_N11
\Inst_chenillard|state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	d => \Inst_chenillard|state.T1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T1~q\);

-- Location: LABCELL_X53_Y33_N6
\Inst_chenillard|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr8~combout\ = ( \Inst_chenillard|state.T8~DUPLICATE_q\ ) # ( !\Inst_chenillard|state.T8~DUPLICATE_q\ & ( (!\Inst_chenillard|state.T0~q\) # ((\Inst_chenillard|state.T9~q\) # (\Inst_chenillard|state.T1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T0~q\,
	datab => \Inst_chenillard|ALT_INV_state.T1~q\,
	datac => \Inst_chenillard|ALT_INV_state.T9~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\,
	combout => \Inst_chenillard|WideOr8~combout\);

-- Location: FF_X53_Y33_N38
\Inst_chenillard|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T1~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T2~q\);

-- Location: LABCELL_X53_Y33_N27
\Inst_chenillard|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr7~combout\ = ( \Inst_chenillard|state.T2~q\ & ( \Inst_chenillard|state.T9~q\ ) ) # ( !\Inst_chenillard|state.T2~q\ & ( \Inst_chenillard|state.T9~q\ ) ) # ( \Inst_chenillard|state.T2~q\ & ( !\Inst_chenillard|state.T9~q\ ) ) # ( 
-- !\Inst_chenillard|state.T2~q\ & ( !\Inst_chenillard|state.T9~q\ & ( (!\Inst_chenillard|state.T0~q\) # (\Inst_chenillard|state.T1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T0~q\,
	datac => \Inst_chenillard|ALT_INV_state.T1~q\,
	datae => \Inst_chenillard|ALT_INV_state.T2~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T9~q\,
	combout => \Inst_chenillard|WideOr7~combout\);

-- Location: LABCELL_X53_Y33_N48
\Inst_chenillard|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr6~combout\ = (!\Inst_chenillard|state.T0~q\) # (((\Inst_chenillard|state.T3~q\) # (\Inst_chenillard|state.T2~q\)) # (\Inst_chenillard|state.T1~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T0~q\,
	datab => \Inst_chenillard|ALT_INV_state.T1~q\,
	datac => \Inst_chenillard|ALT_INV_state.T2~q\,
	datad => \Inst_chenillard|ALT_INV_state.T3~q\,
	combout => \Inst_chenillard|WideOr6~combout\);

-- Location: FF_X53_Y33_N14
\Inst_chenillard|state.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T3~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T4~q\);

-- Location: LABCELL_X53_Y33_N30
\Inst_chenillard|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr5~combout\ = ( \Inst_chenillard|state.T2~q\ ) # ( !\Inst_chenillard|state.T2~q\ & ( ((\Inst_chenillard|state.T3~q\) # (\Inst_chenillard|state.T1~DUPLICATE_q\)) # (\Inst_chenillard|state.T4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111100111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_chenillard|ALT_INV_state.T4~q\,
	datac => \Inst_chenillard|ALT_INV_state.T1~DUPLICATE_q\,
	datad => \Inst_chenillard|ALT_INV_state.T3~q\,
	datae => \Inst_chenillard|ALT_INV_state.T2~q\,
	combout => \Inst_chenillard|WideOr5~combout\);

-- Location: LABCELL_X53_Y33_N45
\Inst_chenillard|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr4~combout\ = ( \Inst_chenillard|state.T4~q\ ) # ( !\Inst_chenillard|state.T4~q\ & ( ((\Inst_chenillard|state.T3~q\) # (\Inst_chenillard|state.T5~DUPLICATE_q\)) # (\Inst_chenillard|state.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T2~q\,
	datab => \Inst_chenillard|ALT_INV_state.T5~DUPLICATE_q\,
	datac => \Inst_chenillard|ALT_INV_state.T3~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T4~q\,
	combout => \Inst_chenillard|WideOr4~combout\);

-- Location: FF_X53_Y33_N53
\Inst_chenillard|state.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_clock_divider|counter\(23),
	asdata => \Inst_chenillard|state.T4~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_chenillard|state.T5~q\);

-- Location: LABCELL_X53_Y33_N0
\Inst_chenillard|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr3~combout\ = ( \Inst_chenillard|state.T3~q\ & ( \Inst_chenillard|state.T5~q\ ) ) # ( !\Inst_chenillard|state.T3~q\ & ( \Inst_chenillard|state.T5~q\ ) ) # ( \Inst_chenillard|state.T3~q\ & ( !\Inst_chenillard|state.T5~q\ ) ) # ( 
-- !\Inst_chenillard|state.T3~q\ & ( !\Inst_chenillard|state.T5~q\ & ( (\Inst_chenillard|state.T6~q\) # (\Inst_chenillard|state.T4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_chenillard|ALT_INV_state.T4~q\,
	datac => \Inst_chenillard|ALT_INV_state.T6~q\,
	datae => \Inst_chenillard|ALT_INV_state.T3~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T5~q\,
	combout => \Inst_chenillard|WideOr3~combout\);

-- Location: LABCELL_X53_Y33_N57
\Inst_chenillard|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr2~combout\ = ( \Inst_chenillard|state.T6~q\ & ( \Inst_chenillard|state.T5~DUPLICATE_q\ ) ) # ( !\Inst_chenillard|state.T6~q\ & ( \Inst_chenillard|state.T5~DUPLICATE_q\ ) ) # ( \Inst_chenillard|state.T6~q\ & ( 
-- !\Inst_chenillard|state.T5~DUPLICATE_q\ ) ) # ( !\Inst_chenillard|state.T6~q\ & ( !\Inst_chenillard|state.T5~DUPLICATE_q\ & ( (\Inst_chenillard|state.T4~q\) # (\Inst_chenillard|state.T7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T7~q\,
	datac => \Inst_chenillard|ALT_INV_state.T4~q\,
	datae => \Inst_chenillard|ALT_INV_state.T6~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T5~DUPLICATE_q\,
	combout => \Inst_chenillard|WideOr2~combout\);

-- Location: LABCELL_X53_Y33_N42
\Inst_chenillard|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr1~combout\ = ( \Inst_chenillard|state.T8~DUPLICATE_q\ ) # ( !\Inst_chenillard|state.T8~DUPLICATE_q\ & ( ((\Inst_chenillard|state.T7~q\) # (\Inst_chenillard|state.T6~q\)) # (\Inst_chenillard|state.T5~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_chenillard|ALT_INV_state.T5~DUPLICATE_q\,
	datac => \Inst_chenillard|ALT_INV_state.T6~q\,
	datad => \Inst_chenillard|ALT_INV_state.T7~q\,
	dataf => \Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\,
	combout => \Inst_chenillard|WideOr1~combout\);

-- Location: LABCELL_X53_Y33_N15
\Inst_chenillard|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_chenillard|WideOr0~combout\ = ( \Inst_chenillard|state.T6~q\ ) # ( !\Inst_chenillard|state.T6~q\ & ( ((\Inst_chenillard|state.T7~q\) # (\Inst_chenillard|state.T9~q\)) # (\Inst_chenillard|state.T8~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_chenillard|ALT_INV_state.T8~DUPLICATE_q\,
	datac => \Inst_chenillard|ALT_INV_state.T9~q\,
	datad => \Inst_chenillard|ALT_INV_state.T7~q\,
	datae => \Inst_chenillard|ALT_INV_state.T6~q\,
	combout => \Inst_chenillard|WideOr0~combout\);

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

-- Location: LABCELL_X21_Y26_N0
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


