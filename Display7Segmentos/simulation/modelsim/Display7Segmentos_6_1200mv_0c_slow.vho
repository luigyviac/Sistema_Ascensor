-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/06/2025 14:52:50"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Display7Segmentos IS
    PORT (
	led_piso1 : IN std_logic;
	led_piso2 : IN std_logic;
	led_piso3 : IN std_logic;
	led_piso4 : IN std_logic;
	led_piso5 : IN std_logic;
	display_7seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END Display7Segmentos;

-- Design Ports Information
-- display_7seg[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso2	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso3	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso5	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso4	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Display7Segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_piso1 : std_logic;
SIGNAL ww_led_piso2 : std_logic;
SIGNAL ww_led_piso3 : std_logic;
SIGNAL ww_led_piso4 : std_logic;
SIGNAL ww_led_piso5 : std_logic;
SIGNAL ww_display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \display_7seg[0]~output_o\ : std_logic;
SIGNAL \display_7seg[1]~output_o\ : std_logic;
SIGNAL \display_7seg[2]~output_o\ : std_logic;
SIGNAL \display_7seg[3]~output_o\ : std_logic;
SIGNAL \display_7seg[4]~output_o\ : std_logic;
SIGNAL \display_7seg[5]~output_o\ : std_logic;
SIGNAL \display_7seg[6]~output_o\ : std_logic;
SIGNAL \led_piso2~input_o\ : std_logic;
SIGNAL \led_piso1~input_o\ : std_logic;
SIGNAL \led_piso3~input_o\ : std_logic;
SIGNAL \led_piso4~input_o\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \led_piso5~input_o\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~8_combout\ : std_logic;

BEGIN

ww_led_piso1 <= led_piso1;
ww_led_piso2 <= led_piso2;
ww_led_piso3 <= led_piso3;
ww_led_piso4 <= led_piso4;
ww_led_piso5 <= led_piso5;
display_7seg <= ww_display_7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux4~9_combout\ <= NOT \Mux4~9_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\ALT_INV_Mux5~8_combout\ <= NOT \Mux5~8_combout\;

-- Location: IOOBUF_X14_Y0_N16
\display_7seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \display_7seg[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\display_7seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~8_combout\,
	devoe => ww_devoe,
	o => \display_7seg[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\display_7seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~9_combout\,
	devoe => ww_devoe,
	o => \display_7seg[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\display_7seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \display_7seg[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\display_7seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \display_7seg[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\display_7seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~5_combout\,
	devoe => ww_devoe,
	o => \display_7seg[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\display_7seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_piso1~input_o\,
	devoe => ww_devoe,
	o => \display_7seg[6]~output_o\);

-- Location: IOIBUF_X0_Y12_N15
\led_piso2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_piso2,
	o => \led_piso2~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\led_piso1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_piso1,
	o => \led_piso1~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\led_piso3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_piso3,
	o => \led_piso3~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\led_piso4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_piso4,
	o => \led_piso4~input_o\);

-- Location: LCCOMB_X1_Y14_N24
\Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\led_piso1~input_o\) # ((!\led_piso2~input_o\ & (!\led_piso3~input_o\ & \led_piso4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_piso2~input_o\,
	datab => \led_piso1~input_o\,
	datac => \led_piso3~input_o\,
	datad => \led_piso4~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X1_Y14_N2
\Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\led_piso2~input_o\) # ((\led_piso1~input_o\) # ((\led_piso3~input_o\) # (\led_piso4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_piso2~input_o\,
	datab => \led_piso1~input_o\,
	datac => \led_piso3~input_o\,
	datad => \led_piso4~input_o\,
	combout => \Mux5~8_combout\);

-- Location: IOIBUF_X0_Y12_N1
\led_piso5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_piso5,
	o => \led_piso5~input_o\);

-- Location: LCCOMB_X1_Y14_N6
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\led_piso5~input_o\) # (\led_piso4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_piso5~input_o\,
	datad => \led_piso4~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X1_Y14_N0
\Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\led_piso1~input_o\) # ((!\led_piso2~input_o\ & ((\led_piso3~input_o\) # (\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_piso2~input_o\,
	datab => \led_piso1~input_o\,
	datac => \led_piso3~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X1_Y14_N4
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\led_piso2~input_o\ & (!\led_piso3~input_o\ & !\led_piso1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_piso2~input_o\,
	datac => \led_piso3~input_o\,
	datad => \led_piso1~input_o\,
	combout => \Mux1~5_combout\);

ww_display_7seg(0) <= \display_7seg[0]~output_o\;

ww_display_7seg(1) <= \display_7seg[1]~output_o\;

ww_display_7seg(2) <= \display_7seg[2]~output_o\;

ww_display_7seg(3) <= \display_7seg[3]~output_o\;

ww_display_7seg(4) <= \display_7seg[4]~output_o\;

ww_display_7seg(5) <= \display_7seg[5]~output_o\;

ww_display_7seg(6) <= \display_7seg[6]~output_o\;
END structure;


