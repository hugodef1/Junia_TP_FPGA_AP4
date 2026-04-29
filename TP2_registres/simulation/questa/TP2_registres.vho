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

-- DATE "04/29/2026 11:46:26"

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

ENTITY 	flipflop_JKrs IS
    PORT (
	J : IN std_logic;
	K : IN std_logic;
	SETn : IN std_logic;
	RSTn : IN std_logic;
	CLK : IN std_logic;
	Q : BUFFER std_logic;
	Qn : BUFFER std_logic
	);
END flipflop_JKrs;

-- Design Ports Information
-- Q	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qn	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SETn	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTn	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipflop_JKrs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_SETn : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qn : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SETn~input_o\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \Q_int~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \Q_int~3_combout\ : std_logic;
SIGNAL \Q_int~0_combout\ : std_logic;
SIGNAL \Q_int~_emulated_q\ : std_logic;
SIGNAL \Q_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_Q_int~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Q_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_SETn~input_o\ : std_logic;
SIGNAL \ALT_INV_RSTn~input_o\ : std_logic;
SIGNAL \ALT_INV_K~input_o\ : std_logic;
SIGNAL \ALT_INV_Q_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_J~input_o\ : std_logic;
SIGNAL \ALT_INV_Q_int~1_combout\ : std_logic;

BEGIN

ww_J <= J;
ww_K <= K;
ww_SETn <= SETn;
ww_RSTn <= RSTn;
ww_CLK <= CLK;
Q <= ww_Q;
Qn <= ww_Qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Q_int~_emulated_q\ <= NOT \Q_int~_emulated_q\;
\ALT_INV_Q_int~2_combout\ <= NOT \Q_int~2_combout\;
\ALT_INV_SETn~input_o\ <= NOT \SETn~input_o\;
\ALT_INV_RSTn~input_o\ <= NOT \RSTn~input_o\;
\ALT_INV_K~input_o\ <= NOT \K~input_o\;
\ALT_INV_Q_int~0_combout\ <= NOT \Q_int~0_combout\;
\ALT_INV_J~input_o\ <= NOT \J~input_o\;
\ALT_INV_Q_int~1_combout\ <= NOT \Q_int~1_combout\;

-- Location: IOOBUF_X68_Y24_N56
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q_int~2_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOOBUF_X68_Y24_N39
\Qn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Q_int~2_combout\,
	devoe => ww_devoe,
	o => ww_Qn);

-- Location: IOIBUF_X68_Y26_N4
\SETn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SETn,
	o => \SETn~input_o\);

-- Location: IOIBUF_X68_Y26_N55
\RSTn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: LABCELL_X67_Y24_N42
\Q_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_int~1_combout\ = ( \RSTn~input_o\ & ( \Q_int~1_combout\ ) ) # ( \RSTn~input_o\ & ( !\Q_int~1_combout\ & ( !\SETn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SETn~input_o\,
	datae => \ALT_INV_RSTn~input_o\,
	dataf => \ALT_INV_Q_int~1_combout\,
	combout => \Q_int~1_combout\);

-- Location: IOIBUF_X68_Y24_N21
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X68_Y24_N4
\J~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: IOIBUF_X68_Y26_N38
\K~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LABCELL_X67_Y24_N6
\Q_int~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_int~3_combout\ = ( \Q_int~2_combout\ & ( !\K~input_o\ $ (\Q_int~1_combout\) ) ) # ( !\Q_int~2_combout\ & ( !\J~input_o\ $ (!\Q_int~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_J~input_o\,
	datab => \ALT_INV_K~input_o\,
	datad => \ALT_INV_Q_int~1_combout\,
	dataf => \ALT_INV_Q_int~2_combout\,
	combout => \Q_int~3_combout\);

-- Location: LABCELL_X67_Y24_N9
\Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_int~0_combout\ = ( \SETn~input_o\ & ( !\RSTn~input_o\ ) ) # ( !\SETn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_RSTn~input_o\,
	dataf => \ALT_INV_SETn~input_o\,
	combout => \Q_int~0_combout\);

-- Location: FF_X67_Y24_N8
\Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q_int~3_combout\,
	clrn => \ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q_int~_emulated_q\);

-- Location: LABCELL_X67_Y24_N15
\Q_int~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_int~2_combout\ = ( \RSTn~input_o\ & ( \Q_int~_emulated_q\ & ( (!\Q_int~1_combout\) # (!\SETn~input_o\) ) ) ) # ( \RSTn~input_o\ & ( !\Q_int~_emulated_q\ & ( (!\SETn~input_o\) # (\Q_int~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Q_int~1_combout\,
	datad => \ALT_INV_SETn~input_o\,
	datae => \ALT_INV_RSTn~input_o\,
	dataf => \ALT_INV_Q_int~_emulated_q\,
	combout => \Q_int~2_combout\);

-- Location: MLABCELL_X50_Y21_N0
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


