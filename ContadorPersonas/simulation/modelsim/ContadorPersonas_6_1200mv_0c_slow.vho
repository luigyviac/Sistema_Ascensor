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

-- DATE "06/06/2025 17:39:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorPersonas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn_sumar : IN std_logic;
	btn_restar : IN std_logic;
	display_7seg_unidades : OUT std_logic_vector(6 DOWNTO 0);
	display_7seg_decenas : OUT std_logic_vector(6 DOWNTO 0);
	led_limite : OUT std_logic
	);
END ContadorPersonas;

-- Design Ports Information
-- display_7seg_unidades[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_unidades[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg_decenas[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_limite	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_restar	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_sumar	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorPersonas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_btn_sumar : std_logic;
SIGNAL ww_btn_restar : std_logic;
SIGNAL ww_display_7seg_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_7seg_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_limite : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_7seg_unidades[0]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[1]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[2]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[3]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[4]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[5]~output_o\ : std_logic;
SIGNAL \display_7seg_unidades[6]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[0]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[1]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[2]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[3]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[4]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[5]~output_o\ : std_logic;
SIGNAL \display_7seg_decenas[6]~output_o\ : std_logic;
SIGNAL \led_limite~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_restar~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \btn_restar_sync[1]~feeder_combout\ : std_logic;
SIGNAL \btn_restar_sync[2]~feeder_combout\ : std_logic;
SIGNAL \contador[3]~7_combout\ : std_logic;
SIGNAL \btn_sumar~input_o\ : std_logic;
SIGNAL \btn_sumar_sync[1]~feeder_combout\ : std_logic;
SIGNAL \contador[2]~4_combout\ : std_logic;
SIGNAL \contador[2]~5_combout\ : std_logic;
SIGNAL \contador[3]~2_combout\ : std_logic;
SIGNAL \contador[3]~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \contador[1]~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \contador[3]~0_combout\ : std_logic;
SIGNAL \contador~8_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL btn_sumar_sync : std_logic_vector(2 DOWNTO 0);
SIGNAL btn_restar_sync : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn_sumar <= btn_sumar;
ww_btn_restar <= btn_restar;
display_7seg_unidades <= ww_display_7seg_unidades;
display_7seg_decenas <= ww_display_7seg_decenas;
led_limite <= ww_led_limite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X32_Y29_N30
\display_7seg_unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display_7seg_unidades[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display_7seg_unidades[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_7seg_unidades[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display_7seg_unidades[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display_7seg_unidades[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display_7seg_unidades[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_unidades[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display_7seg_decenas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_7seg_decenas[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display_7seg_decenas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_decenas[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display_7seg_decenas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg_decenas[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display_7seg_decenas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_7seg_decenas[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display_7seg_decenas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_7seg_decenas[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display_7seg_decenas[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_7seg_decenas[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display_7seg_decenas[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_7seg_decenas[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led_limite~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \led_limite~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\btn_restar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_restar,
	o => \btn_restar~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X28_Y28_N25
\btn_restar_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_restar~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_restar_sync(0));

-- Location: LCCOMB_X29_Y28_N8
\btn_restar_sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_restar_sync[1]~feeder_combout\ = btn_restar_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => btn_restar_sync(0),
	combout => \btn_restar_sync[1]~feeder_combout\);

-- Location: FF_X29_Y28_N9
\btn_restar_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_restar_sync[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_restar_sync(1));

-- Location: LCCOMB_X29_Y28_N4
\btn_restar_sync[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_restar_sync[2]~feeder_combout\ = btn_restar_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => btn_restar_sync(1),
	combout => \btn_restar_sync[2]~feeder_combout\);

-- Location: FF_X29_Y28_N5
\btn_restar_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_restar_sync[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_restar_sync(2));

-- Location: LCCOMB_X29_Y28_N30
\contador[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~7_combout\ = (btn_restar_sync(1) & !btn_restar_sync(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => btn_restar_sync(1),
	datac => btn_restar_sync(2),
	combout => \contador[3]~7_combout\);

-- Location: IOIBUF_X0_Y23_N1
\btn_sumar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_sumar,
	o => \btn_sumar~input_o\);

-- Location: FF_X28_Y28_N15
\btn_sumar_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_sumar~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_sumar_sync(0));

-- Location: LCCOMB_X29_Y28_N24
\btn_sumar_sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sumar_sync[1]~feeder_combout\ = btn_sumar_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => btn_sumar_sync(0),
	combout => \btn_sumar_sync[1]~feeder_combout\);

-- Location: FF_X29_Y28_N25
\btn_sumar_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sumar_sync[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_sumar_sync(1));

-- Location: FF_X29_Y28_N27
\btn_sumar_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => btn_sumar_sync(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_sumar_sync(2));

-- Location: LCCOMB_X29_Y28_N20
\contador[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~4_combout\ = (contador(1) & ((!\contador[3]~0_combout\) # (!contador(0)))) # (!contador(1) & ((contador(0)) # (\contador[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datac => contador(0),
	datad => \contador[3]~0_combout\,
	combout => \contador[2]~4_combout\);

-- Location: LCCOMB_X29_Y28_N10
\contador[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~5_combout\ = contador(2) $ (((!\contador[2]~4_combout\ & ((!\contador[3]~0_combout\) # (!\contador~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~1_combout\,
	datab => \contador[3]~0_combout\,
	datac => contador(2),
	datad => \contador[2]~4_combout\,
	combout => \contador[2]~5_combout\);

-- Location: FF_X29_Y28_N11
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X29_Y28_N2
\contador[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~2_combout\ = (contador(0) & (contador(1) & (contador(2) & \contador[3]~0_combout\))) # (!contador(0) & (!contador(1) & (!contador(2) & !\contador[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => \contador[3]~0_combout\,
	combout => \contador[3]~2_combout\);

-- Location: LCCOMB_X29_Y28_N14
\contador[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~3_combout\ = contador(3) $ (((\contador[3]~2_combout\ & ((!\contador[3]~0_combout\) # (!\contador~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~1_combout\,
	datab => \contador[3]~0_combout\,
	datac => contador(3),
	datad => \contador[3]~2_combout\,
	combout => \contador[3]~3_combout\);

-- Location: FF_X29_Y28_N15
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X29_Y28_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (contador(3) & ((contador(2)) # ((contador(0) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(3),
	datac => contador(1),
	datad => contador(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y28_N26
\contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = ((btn_sumar_sync(2)) # (\LessThan1~0_combout\)) # (!btn_sumar_sync(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_sumar_sync(1),
	datac => btn_sumar_sync(2),
	datad => \LessThan1~0_combout\,
	combout => \contador~1_combout\);

-- Location: LCCOMB_X29_Y28_N22
\contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~6_combout\ = contador(1) $ (((contador(0) & (\contador[3]~0_combout\ & !\contador~1_combout\)) # (!contador(0) & (!\contador[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \contador[3]~0_combout\,
	datac => contador(1),
	datad => \contador~1_combout\,
	combout => \contador[1]~6_combout\);

-- Location: FF_X29_Y28_N23
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X29_Y28_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!contador(1) & (!contador(2) & (!contador(3) & !contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y28_N28
\contador[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~0_combout\ = (btn_restar_sync(2)) # ((\LessThan0~0_combout\) # (!btn_restar_sync(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => btn_restar_sync(2),
	datac => btn_restar_sync(1),
	datad => \LessThan0~0_combout\,
	combout => \contador[3]~0_combout\);

-- Location: LCCOMB_X29_Y28_N6
\contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~8_combout\ = (contador(0) & (!\contador[3]~7_combout\ & ((\contador~1_combout\)))) # (!contador(0) & (((!\contador~1_combout\) # (!\contador[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[3]~7_combout\,
	datab => \contador[3]~0_combout\,
	datac => contador(0),
	datad => \contador~1_combout\,
	combout => \contador~8_combout\);

-- Location: FF_X29_Y28_N7
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X30_Y28_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (contador(0) & (!contador(2) & (contador(1) $ (!contador(3))))) # (!contador(0) & (contador(2) & (contador(1) $ (!contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (contador(2) & ((contador(0) & (contador(1) $ (!contador(3)))) # (!contador(0) & (contador(1) & !contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!contador(0) & ((contador(3) & (contador(2) & !contador(1))) # (!contador(3) & (!contador(2) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(3),
	datac => contador(2),
	datad => contador(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (contador(0) & ((contador(1) & (contador(3) $ (contador(2)))) # (!contador(1) & (!contador(3) & !contador(2))))) # (!contador(0) & (contador(2) & (contador(1) $ (!contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (contador(0)) # ((contador(2) & (contador(1) $ (!contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (contador(1) & ((contador(0) & ((!contador(2)) # (!contador(3)))) # (!contador(0) & (!contador(3) & !contador(2))))) # (!contador(1) & ((contador(3) & ((contador(2)))) # (!contador(3) & (contador(0) & !contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y28_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (contador(2) & (((contador(3)) # (!contador(1))) # (!contador(0)))) # (!contador(2) & ((contador(1) $ (contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X29_Y28_N18
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (contador(0) & (contador(3) & (!contador(2) & contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(3),
	datac => contador(2),
	datad => contador(1),
	combout => \Equal0~0_combout\);

ww_display_7seg_unidades(0) <= \display_7seg_unidades[0]~output_o\;

ww_display_7seg_unidades(1) <= \display_7seg_unidades[1]~output_o\;

ww_display_7seg_unidades(2) <= \display_7seg_unidades[2]~output_o\;

ww_display_7seg_unidades(3) <= \display_7seg_unidades[3]~output_o\;

ww_display_7seg_unidades(4) <= \display_7seg_unidades[4]~output_o\;

ww_display_7seg_unidades(5) <= \display_7seg_unidades[5]~output_o\;

ww_display_7seg_unidades(6) <= \display_7seg_unidades[6]~output_o\;

ww_display_7seg_decenas(0) <= \display_7seg_decenas[0]~output_o\;

ww_display_7seg_decenas(1) <= \display_7seg_decenas[1]~output_o\;

ww_display_7seg_decenas(2) <= \display_7seg_decenas[2]~output_o\;

ww_display_7seg_decenas(3) <= \display_7seg_decenas[3]~output_o\;

ww_display_7seg_decenas(4) <= \display_7seg_decenas[4]~output_o\;

ww_display_7seg_decenas(5) <= \display_7seg_decenas[5]~output_o\;

ww_display_7seg_decenas(6) <= \display_7seg_decenas[6]~output_o\;

ww_led_limite <= \led_limite~output_o\;
END structure;


