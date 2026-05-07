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

-- DATE "05/06/2026 11:32:31"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \uut|Q[0]~27_combout\ : std_logic;
SIGNAL \uut|Q[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \uut|Q[1]~29_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \uut|Q[1]~28_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \uut|Mux7~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \uut|Mux6~0_combout\ : std_logic;
SIGNAL \uut|Q[1]~5_combout\ : std_logic;
SIGNAL \uut|Q[0]~0_combout\ : std_logic;
SIGNAL \uut|Q[1]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[1]~4_combout\ : std_logic;
SIGNAL \uut|Mux5~2_combout\ : std_logic;
SIGNAL \uut|Mux5~0_combout\ : std_logic;
SIGNAL \uut|Mux5~1_combout\ : std_logic;
SIGNAL \uut|Q[2]~7_combout\ : std_logic;
SIGNAL \uut|Q[2]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[2]~6_combout\ : std_logic;
SIGNAL \uut|Mux4~0_combout\ : std_logic;
SIGNAL \uut|Q[3]~9_combout\ : std_logic;
SIGNAL \uut|Q[3]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[3]~8_combout\ : std_logic;
SIGNAL \uut|Mux7~1_combout\ : std_logic;
SIGNAL \uut|Mux3~0_combout\ : std_logic;
SIGNAL \uut|Q[4]~11_combout\ : std_logic;
SIGNAL \uut|Q[4]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[4]~10_combout\ : std_logic;
SIGNAL \uut|Mux7~2_combout\ : std_logic;
SIGNAL \uut|Mux2~0_combout\ : std_logic;
SIGNAL \uut|Q[5]~13_combout\ : std_logic;
SIGNAL \uut|Q[5]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[5]~12_combout\ : std_logic;
SIGNAL \uut|Mux7~3_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \uut|Mux1~0_combout\ : std_logic;
SIGNAL \uut|Q[6]~15_combout\ : std_logic;
SIGNAL \uut|Q[6]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[6]~14_combout\ : std_logic;
SIGNAL \uut|Mux7~4_combout\ : std_logic;
SIGNAL \uut|Mux0~0_combout\ : std_logic;
SIGNAL \uut|Q[7]~17_combout\ : std_logic;
SIGNAL \uut|Q[7]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[7]~16_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \uut|Q[0]~30_combout\ : std_logic;
SIGNAL \uut|Q[0]~3_combout\ : std_logic;
SIGNAL \uut|Q[0]~_emulated_q\ : std_logic;
SIGNAL \uut|Q[0]~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[5]~12_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[6]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Q[3]~8_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[6]~14_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[2]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Q[7]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Q[7]~16_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~27_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[3]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[1]~29_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[4]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[1]~28_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[5]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Q[1]~4_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[4]~10_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[1]~_emulated_q\ : std_logic;
SIGNAL \uut|ALT_INV_Q[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \uut|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \uut|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Q[0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \uut|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uut|ALT_INV_Q[5]~12_combout\ <= NOT \uut|Q[5]~12_combout\;
\uut|ALT_INV_Q[6]~_emulated_q\ <= NOT \uut|Q[6]~_emulated_q\;
\uut|ALT_INV_Q[3]~8_combout\ <= NOT \uut|Q[3]~8_combout\;
\uut|ALT_INV_Q[6]~14_combout\ <= NOT \uut|Q[6]~14_combout\;
\uut|ALT_INV_Q[2]~_emulated_q\ <= NOT \uut|Q[2]~_emulated_q\;
\uut|ALT_INV_Q[7]~_emulated_q\ <= NOT \uut|Q[7]~_emulated_q\;
\uut|ALT_INV_Q[7]~16_combout\ <= NOT \uut|Q[7]~16_combout\;
\uut|ALT_INV_Q[0]~0_combout\ <= NOT \uut|Q[0]~0_combout\;
\uut|ALT_INV_Q[0]~27_combout\ <= NOT \uut|Q[0]~27_combout\;
\uut|ALT_INV_Mux5~0_combout\ <= NOT \uut|Mux5~0_combout\;
\uut|ALT_INV_Mux5~1_combout\ <= NOT \uut|Mux5~1_combout\;
\uut|ALT_INV_Mux4~0_combout\ <= NOT \uut|Mux4~0_combout\;
\uut|ALT_INV_Q[0]~2_combout\ <= NOT \uut|Q[0]~2_combout\;
\uut|ALT_INV_Q[3]~_emulated_q\ <= NOT \uut|Q[3]~_emulated_q\;
\uut|ALT_INV_Mux7~0_combout\ <= NOT \uut|Mux7~0_combout\;
\uut|ALT_INV_Mux6~0_combout\ <= NOT \uut|Mux6~0_combout\;
\uut|ALT_INV_Q[1]~29_combout\ <= NOT \uut|Q[1]~29_combout\;
\uut|ALT_INV_Q[4]~_emulated_q\ <= NOT \uut|Q[4]~_emulated_q\;
\uut|ALT_INV_Mux5~2_combout\ <= NOT \uut|Mux5~2_combout\;
\uut|ALT_INV_Q[1]~28_combout\ <= NOT \uut|Q[1]~28_combout\;
\uut|ALT_INV_Q[5]~_emulated_q\ <= NOT \uut|Q[5]~_emulated_q\;
\uut|ALT_INV_Mux7~1_combout\ <= NOT \uut|Mux7~1_combout\;
\uut|ALT_INV_Q[0]~_emulated_q\ <= NOT \uut|Q[0]~_emulated_q\;
\uut|ALT_INV_Q[1]~4_combout\ <= NOT \uut|Q[1]~4_combout\;
\uut|ALT_INV_Q[4]~10_combout\ <= NOT \uut|Q[4]~10_combout\;
\uut|ALT_INV_Q[1]~_emulated_q\ <= NOT \uut|Q[1]~_emulated_q\;
\uut|ALT_INV_Q[2]~6_combout\ <= NOT \uut|Q[2]~6_combout\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\uut|ALT_INV_Mux7~4_combout\ <= NOT \uut|Mux7~4_combout\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\uut|ALT_INV_Mux1~0_combout\ <= NOT \uut|Mux1~0_combout\;
\uut|ALT_INV_Mux3~0_combout\ <= NOT \uut|Mux3~0_combout\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\uut|ALT_INV_Q[0]~1_combout\ <= NOT \uut|Q[0]~1_combout\;
\uut|ALT_INV_Mux7~2_combout\ <= NOT \uut|Mux7~2_combout\;
\uut|ALT_INV_Mux2~0_combout\ <= NOT \uut|Mux2~0_combout\;
\uut|ALT_INV_Mux0~0_combout\ <= NOT \uut|Mux0~0_combout\;
\uut|ALT_INV_Q[0]~30_combout\ <= NOT \uut|Q[0]~30_combout\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\uut|ALT_INV_Mux7~3_combout\ <= NOT \uut|Mux7~3_combout\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|Q[0]~2_combout\,
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
	i => \uut|Q[1]~4_combout\,
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
	i => \uut|Q[2]~6_combout\,
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
	i => \uut|Q[3]~8_combout\,
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
	i => \uut|Q[4]~10_combout\,
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
	i => \uut|Q[5]~12_combout\,
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
	i => \uut|Q[6]~14_combout\,
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
	i => \uut|Q[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

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

-- Location: LABCELL_X17_Y1_N33
\uut|Q[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~27_combout\ = ( !\KEY[2]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datae => \ALT_INV_KEY[2]~input_o\,
	combout => \uut|Q[0]~27_combout\);

-- Location: LABCELL_X17_Y1_N42
\uut|Q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~1_combout\ = ( \KEY[3]~input_o\ & ( \uut|Q[0]~1_combout\ ) ) # ( \KEY[3]~input_o\ & ( !\uut|Q[0]~1_combout\ & ( \uut|Q[0]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Q[0]~27_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \uut|ALT_INV_Q[0]~1_combout\,
	combout => \uut|Q[0]~1_combout\);

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

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X17_Y1_N15
\uut|Q[1]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[1]~29_combout\ = ( \SW[0]~input_o\ & ( !\SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \uut|Q[1]~29_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X14_Y1_N21
\uut|Q[1]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[1]~28_combout\ = ( \SW[0]~input_o\ & ( (\SW[2]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \uut|Q[1]~28_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X15_Y1_N45
\uut|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux7~0_combout\ = ( \uut|Q[7]~16_combout\ & ( (\uut|Q[0]~2_combout\) # (\SW[1]~input_o\) ) ) # ( !\uut|Q[7]~16_combout\ & ( (!\SW[1]~input_o\ & \uut|Q[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \uut|ALT_INV_Q[0]~2_combout\,
	dataf => \uut|ALT_INV_Q[7]~16_combout\,
	combout => \uut|Mux7~0_combout\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X14_Y1_N42
\uut|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux6~0_combout\ = ( \uut|Q[0]~2_combout\ & ( \uut|Q[1]~4_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\uut|Q[2]~6_combout\)) ) ) ) # ( !\uut|Q[0]~2_combout\ & ( \uut|Q[1]~4_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & 
-- !\uut|Q[2]~6_combout\)) # (\SW[1]~input_o\ & (!\SW[0]~input_o\)) ) ) ) # ( \uut|Q[0]~2_combout\ & ( !\uut|Q[1]~4_combout\ & ( (!\SW[1]~input_o\ & (((!\SW[0]~input_o\) # (!\uut|Q[2]~6_combout\)))) # (\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\))) 
-- ) ) ) # ( !\uut|Q[0]~2_combout\ & ( !\uut|Q[1]~4_combout\ & ( (!\SW[0]~input_o\) # ((!\SW[1]~input_o\ & ((!\uut|Q[2]~6_combout\))) # (\SW[1]~input_o\ & (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111110001110011011100000100111100001100000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \uut|ALT_INV_Q[2]~6_combout\,
	datae => \uut|ALT_INV_Q[0]~2_combout\,
	dataf => \uut|ALT_INV_Q[1]~4_combout\,
	combout => \uut|Mux6~0_combout\);

-- Location: MLABCELL_X14_Y1_N30
\uut|Q[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[1]~5_combout\ = ( \uut|Mux6~0_combout\ & ( \uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux6~0_combout\ & ( !\uut|Q[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Mux6~0_combout\,
	combout => \uut|Q[1]~5_combout\);

-- Location: LABCELL_X17_Y1_N48
\uut|Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~0_combout\ = ( \KEY[3]~input_o\ & ( \uut|Q[0]~27_combout\ ) ) # ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Q[0]~27_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	combout => \uut|Q[0]~0_combout\);

-- Location: FF_X14_Y1_N32
\uut|Q[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[1]~5_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[1]~_emulated_q\);

-- Location: MLABCELL_X14_Y1_N9
\uut|Q[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[1]~4_combout\ = ( \uut|Q[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~27_combout\,
	datab => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \uut|ALT_INV_Q[1]~_emulated_q\,
	combout => \uut|Q[1]~4_combout\);

-- Location: MLABCELL_X14_Y1_N36
\uut|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux5~2_combout\ = ( \uut|Q[2]~6_combout\ & ( (!\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\uut|Q[1]~4_combout\))) ) ) # ( !\uut|Q[2]~6_combout\ & ( (\uut|Q[1]~4_combout\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_Q[1]~4_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \uut|ALT_INV_Q[2]~6_combout\,
	combout => \uut|Mux5~2_combout\);

-- Location: MLABCELL_X14_Y1_N57
\uut|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux5~0_combout\ = ( \uut|Q[2]~6_combout\ & ( (\SW[0]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\uut|Q[3]~8_combout\)))) ) ) # ( !\uut|Q[2]~6_combout\ & ( (\uut|Q[3]~8_combout\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[3]~8_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \uut|ALT_INV_Q[2]~6_combout\,
	combout => \uut|Mux5~0_combout\);

-- Location: MLABCELL_X14_Y1_N24
\uut|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux5~1_combout\ = ( \uut|Q[3]~8_combout\ & ( (\uut|Q[1]~29_combout\ & !\uut|Q[1]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Q[1]~29_combout\,
	datad => \uut|ALT_INV_Q[1]~28_combout\,
	dataf => \uut|ALT_INV_Q[3]~8_combout\,
	combout => \uut|Mux5~1_combout\);

-- Location: MLABCELL_X14_Y1_N27
\uut|Q[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[2]~7_combout\ = ( \uut|Mux5~1_combout\ & ( !\uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux5~1_combout\ & ( !\uut|Q[0]~1_combout\ $ (((!\uut|Mux5~2_combout\ & !\uut|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Mux5~2_combout\,
	datac => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \uut|ALT_INV_Mux5~0_combout\,
	dataf => \uut|ALT_INV_Mux5~1_combout\,
	combout => \uut|Q[2]~7_combout\);

-- Location: FF_X14_Y1_N28
\uut|Q[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[2]~7_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[2]~_emulated_q\);

-- Location: MLABCELL_X14_Y1_N12
\uut|Q[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[2]~6_combout\ = ( \uut|Q[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~27_combout\) # (\uut|Q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \uut|ALT_INV_Q[0]~27_combout\,
	dataf => \uut|ALT_INV_Q[2]~_emulated_q\,
	combout => \uut|Q[2]~6_combout\);

-- Location: MLABCELL_X14_Y1_N0
\uut|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux4~0_combout\ = ( !\SW[0]~input_o\ & ( ((!\SW[1]~input_o\ & (((\uut|Q[3]~8_combout\)))) # (\SW[1]~input_o\ & (\uut|Q[2]~6_combout\))) ) ) # ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & ((((\uut|Q[4]~10_combout\))))) # (\SW[1]~input_o\ & 
-- ((!\SW[2]~input_o\ & (\SW[3]~input_o\)) # (\SW[2]~input_o\ & (((\uut|Q[3]~8_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000100001101110011001111110011110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \uut|ALT_INV_Q[4]~10_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \uut|ALT_INV_Q[3]~8_combout\,
	datag => \uut|ALT_INV_Q[2]~6_combout\,
	combout => \uut|Mux4~0_combout\);

-- Location: MLABCELL_X14_Y1_N33
\uut|Q[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[3]~9_combout\ = !\uut|Q[0]~1_combout\ $ (!\uut|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \uut|ALT_INV_Mux4~0_combout\,
	combout => \uut|Q[3]~9_combout\);

-- Location: FF_X14_Y1_N35
\uut|Q[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[3]~9_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[3]~_emulated_q\);

-- Location: MLABCELL_X14_Y1_N18
\uut|Q[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[3]~8_combout\ = ( \uut|Q[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~27_combout\,
	datac => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \uut|ALT_INV_Q[3]~_emulated_q\,
	combout => \uut|Q[3]~8_combout\);

-- Location: MLABCELL_X14_Y1_N54
\uut|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux7~1_combout\ = ( \uut|Q[4]~10_combout\ & ( (!\SW[1]~input_o\) # (\uut|Q[3]~8_combout\) ) ) # ( !\uut|Q[4]~10_combout\ & ( (\SW[1]~input_o\ & \uut|Q[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \uut|ALT_INV_Q[3]~8_combout\,
	dataf => \uut|ALT_INV_Q[4]~10_combout\,
	combout => \uut|Mux7~1_combout\);

-- Location: MLABCELL_X14_Y1_N48
\uut|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux3~0_combout\ = ( \uut|Q[5]~12_combout\ & ( \uut|Mux7~2_combout\ & ( (!\uut|Q[1]~28_combout\ & (((\uut|Q[1]~29_combout\) # (\uut|Mux7~1_combout\)))) # (\uut|Q[1]~28_combout\ & (((!\uut|Q[1]~29_combout\)) # (\SW[4]~input_o\))) ) ) ) # ( 
-- !\uut|Q[5]~12_combout\ & ( \uut|Mux7~2_combout\ & ( (!\uut|Q[1]~28_combout\ & (((\uut|Mux7~1_combout\ & !\uut|Q[1]~29_combout\)))) # (\uut|Q[1]~28_combout\ & (((!\uut|Q[1]~29_combout\)) # (\SW[4]~input_o\))) ) ) ) # ( \uut|Q[5]~12_combout\ & ( 
-- !\uut|Mux7~2_combout\ & ( (!\uut|Q[1]~28_combout\ & (((\uut|Q[1]~29_combout\) # (\uut|Mux7~1_combout\)))) # (\uut|Q[1]~28_combout\ & (\SW[4]~input_o\ & ((\uut|Q[1]~29_combout\)))) ) ) ) # ( !\uut|Q[5]~12_combout\ & ( !\uut|Mux7~2_combout\ & ( 
-- (!\uut|Q[1]~28_combout\ & (((\uut|Mux7~1_combout\ & !\uut|Q[1]~29_combout\)))) # (\uut|Q[1]~28_combout\ & (\SW[4]~input_o\ & ((\uut|Q[1]~29_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[1]~28_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \uut|ALT_INV_Mux7~1_combout\,
	datad => \uut|ALT_INV_Q[1]~29_combout\,
	datae => \uut|ALT_INV_Q[5]~12_combout\,
	dataf => \uut|ALT_INV_Mux7~2_combout\,
	combout => \uut|Mux3~0_combout\);

-- Location: MLABCELL_X14_Y1_N6
\uut|Q[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[4]~11_combout\ = ( \uut|Mux3~0_combout\ & ( !\uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux3~0_combout\ & ( \uut|Q[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Mux3~0_combout\,
	combout => \uut|Q[4]~11_combout\);

-- Location: FF_X14_Y1_N8
\uut|Q[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[4]~11_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[4]~_emulated_q\);

-- Location: MLABCELL_X14_Y1_N39
\uut|Q[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[4]~10_combout\ = ( \uut|Q[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~27_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Q[4]~_emulated_q\,
	combout => \uut|Q[4]~10_combout\);

-- Location: MLABCELL_X14_Y1_N15
\uut|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux7~2_combout\ = ( \uut|Q[5]~12_combout\ & ( (!\SW[1]~input_o\) # (\uut|Q[4]~10_combout\) ) ) # ( !\uut|Q[5]~12_combout\ & ( (\uut|Q[4]~10_combout\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Q[4]~10_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \uut|ALT_INV_Q[5]~12_combout\,
	combout => \uut|Mux7~2_combout\);

-- Location: LABCELL_X15_Y1_N6
\uut|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux2~0_combout\ = ( \uut|Q[1]~28_combout\ & ( \uut|Mux7~2_combout\ & ( (!\uut|Q[1]~29_combout\ & ((\uut|Mux7~3_combout\))) # (\uut|Q[1]~29_combout\ & (\SW[5]~input_o\)) ) ) ) # ( !\uut|Q[1]~28_combout\ & ( \uut|Mux7~2_combout\ & ( 
-- (!\uut|Q[1]~29_combout\) # (\uut|Q[6]~14_combout\) ) ) ) # ( \uut|Q[1]~28_combout\ & ( !\uut|Mux7~2_combout\ & ( (!\uut|Q[1]~29_combout\ & ((\uut|Mux7~3_combout\))) # (\uut|Q[1]~29_combout\ & (\SW[5]~input_o\)) ) ) ) # ( !\uut|Q[1]~28_combout\ & ( 
-- !\uut|Mux7~2_combout\ & ( (\uut|Q[1]~29_combout\ & \uut|Q[6]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[1]~29_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \uut|ALT_INV_Mux7~3_combout\,
	datad => \uut|ALT_INV_Q[6]~14_combout\,
	datae => \uut|ALT_INV_Q[1]~28_combout\,
	dataf => \uut|ALT_INV_Mux7~2_combout\,
	combout => \uut|Mux2~0_combout\);

-- Location: LABCELL_X15_Y1_N24
\uut|Q[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[5]~13_combout\ = ( \uut|Mux2~0_combout\ & ( !\uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux2~0_combout\ & ( \uut|Q[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Mux2~0_combout\,
	combout => \uut|Q[5]~13_combout\);

-- Location: FF_X15_Y1_N26
\uut|Q[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[5]~13_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[5]~_emulated_q\);

-- Location: LABCELL_X15_Y1_N21
\uut|Q[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[5]~12_combout\ = ( \uut|Q[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~27_combout\) # (\uut|Q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	datac => \uut|ALT_INV_Q[0]~27_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \uut|ALT_INV_Q[5]~_emulated_q\,
	combout => \uut|Q[5]~12_combout\);

-- Location: LABCELL_X15_Y1_N33
\uut|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux7~3_combout\ = ( \uut|Q[5]~12_combout\ & ( (\uut|Q[6]~14_combout\) # (\SW[1]~input_o\) ) ) # ( !\uut|Q[5]~12_combout\ & ( (!\SW[1]~input_o\ & \uut|Q[6]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \uut|ALT_INV_Q[6]~14_combout\,
	dataf => \uut|ALT_INV_Q[5]~12_combout\,
	combout => \uut|Mux7~3_combout\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X15_Y1_N12
\uut|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux1~0_combout\ = ( \uut|Q[7]~16_combout\ & ( \uut|Mux7~4_combout\ & ( (!\uut|Q[1]~29_combout\ & (((\uut|Mux7~3_combout\)) # (\uut|Q[1]~28_combout\))) # (\uut|Q[1]~29_combout\ & ((!\uut|Q[1]~28_combout\) # ((\SW[6]~input_o\)))) ) ) ) # ( 
-- !\uut|Q[7]~16_combout\ & ( \uut|Mux7~4_combout\ & ( (!\uut|Q[1]~29_combout\ & (((\uut|Mux7~3_combout\)) # (\uut|Q[1]~28_combout\))) # (\uut|Q[1]~29_combout\ & (\uut|Q[1]~28_combout\ & ((\SW[6]~input_o\)))) ) ) ) # ( \uut|Q[7]~16_combout\ & ( 
-- !\uut|Mux7~4_combout\ & ( (!\uut|Q[1]~29_combout\ & (!\uut|Q[1]~28_combout\ & (\uut|Mux7~3_combout\))) # (\uut|Q[1]~29_combout\ & ((!\uut|Q[1]~28_combout\) # ((\SW[6]~input_o\)))) ) ) ) # ( !\uut|Q[7]~16_combout\ & ( !\uut|Mux7~4_combout\ & ( 
-- (!\uut|Q[1]~29_combout\ & (!\uut|Q[1]~28_combout\ & (\uut|Mux7~3_combout\))) # (\uut|Q[1]~29_combout\ & (\uut|Q[1]~28_combout\ & ((\SW[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[1]~29_combout\,
	datab => \uut|ALT_INV_Q[1]~28_combout\,
	datac => \uut|ALT_INV_Mux7~3_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \uut|ALT_INV_Q[7]~16_combout\,
	dataf => \uut|ALT_INV_Mux7~4_combout\,
	combout => \uut|Mux1~0_combout\);

-- Location: LABCELL_X15_Y1_N57
\uut|Q[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[6]~15_combout\ = ( \uut|Mux1~0_combout\ & ( !\uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux1~0_combout\ & ( \uut|Q[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Mux1~0_combout\,
	combout => \uut|Q[6]~15_combout\);

-- Location: FF_X15_Y1_N58
\uut|Q[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[6]~15_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[6]~_emulated_q\);

-- Location: LABCELL_X15_Y1_N30
\uut|Q[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[6]~14_combout\ = ( \uut|Q[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_Q[0]~27_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Q[6]~_emulated_q\,
	combout => \uut|Q[6]~14_combout\);

-- Location: LABCELL_X15_Y1_N42
\uut|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux7~4_combout\ = ( \uut|Q[7]~16_combout\ & ( (!\SW[1]~input_o\) # (\uut|Q[6]~14_combout\) ) ) # ( !\uut|Q[7]~16_combout\ & ( (\SW[1]~input_o\ & \uut|Q[6]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \uut|ALT_INV_Q[6]~14_combout\,
	dataf => \uut|ALT_INV_Q[7]~16_combout\,
	combout => \uut|Mux7~4_combout\);

-- Location: LABCELL_X15_Y1_N48
\uut|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Mux0~0_combout\ = ( \uut|Mux7~0_combout\ & ( \uut|Mux7~4_combout\ & ( (!\uut|Q[1]~29_combout\) # ((!\uut|Q[1]~28_combout\ & (\SW[8]~input_o\)) # (\uut|Q[1]~28_combout\ & ((\SW[7]~input_o\)))) ) ) ) # ( !\uut|Mux7~0_combout\ & ( \uut|Mux7~4_combout\ & 
-- ( (!\uut|Q[1]~29_combout\ & (!\uut|Q[1]~28_combout\)) # (\uut|Q[1]~29_combout\ & ((!\uut|Q[1]~28_combout\ & (\SW[8]~input_o\)) # (\uut|Q[1]~28_combout\ & ((\SW[7]~input_o\))))) ) ) ) # ( \uut|Mux7~0_combout\ & ( !\uut|Mux7~4_combout\ & ( 
-- (!\uut|Q[1]~29_combout\ & (\uut|Q[1]~28_combout\)) # (\uut|Q[1]~29_combout\ & ((!\uut|Q[1]~28_combout\ & (\SW[8]~input_o\)) # (\uut|Q[1]~28_combout\ & ((\SW[7]~input_o\))))) ) ) ) # ( !\uut|Mux7~0_combout\ & ( !\uut|Mux7~4_combout\ & ( 
-- (\uut|Q[1]~29_combout\ & ((!\uut|Q[1]~28_combout\ & (\SW[8]~input_o\)) # (\uut|Q[1]~28_combout\ & ((\SW[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[1]~29_combout\,
	datab => \uut|ALT_INV_Q[1]~28_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \uut|ALT_INV_Mux7~0_combout\,
	dataf => \uut|ALT_INV_Mux7~4_combout\,
	combout => \uut|Mux0~0_combout\);

-- Location: LABCELL_X15_Y1_N18
\uut|Q[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[7]~17_combout\ = ( \uut|Mux0~0_combout\ & ( !\uut|Q[0]~1_combout\ ) ) # ( !\uut|Mux0~0_combout\ & ( \uut|Q[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	dataf => \uut|ALT_INV_Mux0~0_combout\,
	combout => \uut|Q[7]~17_combout\);

-- Location: FF_X15_Y1_N20
\uut|Q[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[7]~17_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[7]~_emulated_q\);

-- Location: LABCELL_X15_Y1_N27
\uut|Q[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[7]~16_combout\ = ( \uut|Q[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\) # (\uut|Q[0]~27_combout\))) ) ) # ( !\uut|Q[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\uut|Q[0]~27_combout\) # (\uut|Q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	datac => \uut|ALT_INV_Q[0]~27_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \uut|ALT_INV_Q[7]~_emulated_q\,
	combout => \uut|Q[7]~16_combout\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X15_Y1_N0
\uut|Q[0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~30_combout\ = ( \uut|Q[0]~2_combout\ & ( \SW[0]~input_o\ & ( !\uut|Q[0]~1_combout\ ) ) ) # ( !\uut|Q[0]~2_combout\ & ( \SW[0]~input_o\ & ( !\uut|Q[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\))) ) ) ) # ( \uut|Q[0]~2_combout\ & ( 
-- !\SW[0]~input_o\ & ( !\uut|Q[0]~1_combout\ $ (((\SW[1]~input_o\ & (!\SW[9]~input_o\ & !\SW[2]~input_o\)))) ) ) ) # ( !\uut|Q[0]~2_combout\ & ( !\SW[0]~input_o\ & ( !\uut|Q[0]~1_combout\ $ (((!\SW[1]~input_o\) # ((!\SW[9]~input_o\ & !\SW[2]~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010101101001111000011110000101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \uut|ALT_INV_Q[0]~1_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \uut|ALT_INV_Q[0]~2_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \uut|Q[0]~30_combout\);

-- Location: LABCELL_X15_Y1_N36
\uut|Q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~3_combout\ = ( \uut|Q[0]~30_combout\ & ( \uut|Q[1]~4_combout\ & ( ((!\SW[2]~input_o\) # ((!\SW[1]~input_o\) # (\uut|Q[7]~16_combout\))) # (\SW[0]~input_o\) ) ) ) # ( !\uut|Q[0]~30_combout\ & ( \uut|Q[1]~4_combout\ & ( (!\SW[0]~input_o\ & 
-- (\SW[2]~input_o\ & (!\uut|Q[7]~16_combout\ & \SW[1]~input_o\))) ) ) ) # ( \uut|Q[0]~30_combout\ & ( !\uut|Q[1]~4_combout\ & ( (!\SW[0]~input_o\ & ((!\SW[2]~input_o\) # ((!\SW[1]~input_o\) # (\uut|Q[7]~16_combout\)))) # (\SW[0]~input_o\ & 
-- (((\SW[1]~input_o\)))) ) ) ) # ( !\uut|Q[0]~30_combout\ & ( !\uut|Q[1]~4_combout\ & ( (!\SW[0]~input_o\ & (\SW[2]~input_o\ & (!\uut|Q[7]~16_combout\ & \SW[1]~input_o\))) # (\SW[0]~input_o\ & (((!\SW[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100100000101010101101111100000000001000001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \uut|ALT_INV_Q[7]~16_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \uut|ALT_INV_Q[0]~30_combout\,
	dataf => \uut|ALT_INV_Q[1]~4_combout\,
	combout => \uut|Q[0]~3_combout\);

-- Location: FF_X15_Y1_N38
\uut|Q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \uut|Q[0]~3_combout\,
	clrn => \uut|ALT_INV_Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Q[0]~_emulated_q\);

-- Location: LABCELL_X15_Y1_N54
\uut|Q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Q[0]~2_combout\ = (\KEY[3]~input_o\ & ((!\uut|Q[0]~1_combout\ $ (!\uut|Q[0]~_emulated_q\)) # (\uut|Q[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001011000001110000101100000111000010110000011100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Q[0]~1_combout\,
	datab => \uut|ALT_INV_Q[0]~27_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \uut|ALT_INV_Q[0]~_emulated_q\,
	combout => \uut|Q[0]~2_combout\);

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

-- Location: LABCELL_X10_Y47_N0
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


