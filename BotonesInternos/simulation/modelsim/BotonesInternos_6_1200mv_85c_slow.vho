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

-- DATE "06/09/2025 13:28:12"

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

ENTITY 	BotonesInternos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn_interno_1 : IN std_logic;
	btn_interno_2 : IN std_logic;
	btn_interno_3 : IN std_logic;
	btn_interno_4 : IN std_logic;
	btn_interno_5 : IN std_logic;
	door_open : IN std_logic;
	current_floor : IN std_logic_vector(2 DOWNTO 0);
	solicitud_piso1 : OUT std_logic;
	solicitud_piso2 : OUT std_logic;
	solicitud_piso3 : OUT std_logic;
	solicitud_piso4 : OUT std_logic;
	solicitud_piso5 : OUT std_logic;
	led_solicitud_1 : OUT std_logic;
	led_solicitud_2 : OUT std_logic;
	led_solicitud_3 : OUT std_logic;
	led_solicitud_4 : OUT std_logic;
	led_solicitud_5 : OUT std_logic
	);
END BotonesInternos;

-- Design Ports Information
-- solicitud_piso1	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitud_piso2	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitud_piso3	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitud_piso4	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitud_piso5	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_solicitud_1	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_solicitud_2	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_solicitud_3	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_solicitud_4	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_solicitud_5	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- door_open	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_floor[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_floor[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_floor[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_interno_1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_interno_2	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_interno_3	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_interno_4	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_interno_5	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BotonesInternos IS
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
SIGNAL ww_btn_interno_1 : std_logic;
SIGNAL ww_btn_interno_2 : std_logic;
SIGNAL ww_btn_interno_3 : std_logic;
SIGNAL ww_btn_interno_4 : std_logic;
SIGNAL ww_btn_interno_5 : std_logic;
SIGNAL ww_door_open : std_logic;
SIGNAL ww_current_floor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_solicitud_piso1 : std_logic;
SIGNAL ww_solicitud_piso2 : std_logic;
SIGNAL ww_solicitud_piso3 : std_logic;
SIGNAL ww_solicitud_piso4 : std_logic;
SIGNAL ww_solicitud_piso5 : std_logic;
SIGNAL ww_led_solicitud_1 : std_logic;
SIGNAL ww_led_solicitud_2 : std_logic;
SIGNAL ww_led_solicitud_3 : std_logic;
SIGNAL ww_led_solicitud_4 : std_logic;
SIGNAL ww_led_solicitud_5 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \solicitud_piso1~output_o\ : std_logic;
SIGNAL \solicitud_piso2~output_o\ : std_logic;
SIGNAL \solicitud_piso3~output_o\ : std_logic;
SIGNAL \solicitud_piso4~output_o\ : std_logic;
SIGNAL \solicitud_piso5~output_o\ : std_logic;
SIGNAL \led_solicitud_1~output_o\ : std_logic;
SIGNAL \led_solicitud_2~output_o\ : std_logic;
SIGNAL \led_solicitud_3~output_o\ : std_logic;
SIGNAL \led_solicitud_4~output_o\ : std_logic;
SIGNAL \led_solicitud_5~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \door_open~input_o\ : std_logic;
SIGNAL \current_floor[1]~input_o\ : std_logic;
SIGNAL \current_floor[2]~input_o\ : std_logic;
SIGNAL \solicitudes_activas~0_combout\ : std_logic;
SIGNAL \btn_interno_1~input_o\ : std_logic;
SIGNAL \btn_sync[1][0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_sync[1][0]~q\ : std_logic;
SIGNAL \btn_sync[1][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[1][1]~q\ : std_logic;
SIGNAL \btn_sync[1][2]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[1][2]~q\ : std_logic;
SIGNAL \btn_pressed~0_combout\ : std_logic;
SIGNAL \solicitudes_activas~1_combout\ : std_logic;
SIGNAL \current_floor[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \btn_interno_2~input_o\ : std_logic;
SIGNAL \btn_sync[2][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[2][0]~q\ : std_logic;
SIGNAL \btn_sync[2][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[2][1]~q\ : std_logic;
SIGNAL \btn_sync[2][2]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[2][2]~q\ : std_logic;
SIGNAL \btn_pressed~1_combout\ : std_logic;
SIGNAL \solicitudes_activas~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \btn_interno_3~input_o\ : std_logic;
SIGNAL \btn_sync[3][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[3][0]~q\ : std_logic;
SIGNAL \btn_sync[3][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[3][1]~q\ : std_logic;
SIGNAL \btn_sync[3][2]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[3][2]~q\ : std_logic;
SIGNAL \btn_pressed~2_combout\ : std_logic;
SIGNAL \solicitudes_activas~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \btn_interno_4~input_o\ : std_logic;
SIGNAL \btn_sync[4][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[4][0]~q\ : std_logic;
SIGNAL \btn_sync[4][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[4][1]~q\ : std_logic;
SIGNAL \btn_sync[4][2]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[4][2]~q\ : std_logic;
SIGNAL \btn_pressed~3_combout\ : std_logic;
SIGNAL \solicitudes_activas~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \btn_interno_5~input_o\ : std_logic;
SIGNAL \btn_sync[5][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[5][0]~q\ : std_logic;
SIGNAL \btn_sync[5][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[5][1]~q\ : std_logic;
SIGNAL \btn_sync[5][2]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[5][2]~q\ : std_logic;
SIGNAL \btn_pressed~4_combout\ : std_logic;
SIGNAL \solicitudes_activas~5_combout\ : std_logic;
SIGNAL solicitudes_activas : std_logic_vector(5 DOWNTO 1);
SIGNAL btn_pressed : std_logic_vector(5 DOWNTO 1);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn_interno_1 <= btn_interno_1;
ww_btn_interno_2 <= btn_interno_2;
ww_btn_interno_3 <= btn_interno_3;
ww_btn_interno_4 <= btn_interno_4;
ww_btn_interno_5 <= btn_interno_5;
ww_door_open <= door_open;
ww_current_floor <= current_floor;
solicitud_piso1 <= ww_solicitud_piso1;
solicitud_piso2 <= ww_solicitud_piso2;
solicitud_piso3 <= ww_solicitud_piso3;
solicitud_piso4 <= ww_solicitud_piso4;
solicitud_piso5 <= ww_solicitud_piso5;
led_solicitud_1 <= ww_led_solicitud_1;
led_solicitud_2 <= ww_led_solicitud_2;
led_solicitud_3 <= ww_led_solicitud_3;
led_solicitud_4 <= ww_led_solicitud_4;
led_solicitud_5 <= ww_led_solicitud_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N9
\solicitud_piso1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(1),
	devoe => ww_devoe,
	o => \solicitud_piso1~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\solicitud_piso2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(2),
	devoe => ww_devoe,
	o => \solicitud_piso2~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\solicitud_piso3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(3),
	devoe => ww_devoe,
	o => \solicitud_piso3~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\solicitud_piso4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(4),
	devoe => ww_devoe,
	o => \solicitud_piso4~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\solicitud_piso5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(5),
	devoe => ww_devoe,
	o => \solicitud_piso5~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\led_solicitud_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(1),
	devoe => ww_devoe,
	o => \led_solicitud_1~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\led_solicitud_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(2),
	devoe => ww_devoe,
	o => \led_solicitud_2~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\led_solicitud_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(3),
	devoe => ww_devoe,
	o => \led_solicitud_3~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\led_solicitud_4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(4),
	devoe => ww_devoe,
	o => \led_solicitud_4~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\led_solicitud_5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes_activas(5),
	devoe => ww_devoe,
	o => \led_solicitud_5~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y5_N22
\door_open~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_door_open,
	o => \door_open~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\current_floor[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_floor(1),
	o => \current_floor[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\current_floor[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_floor(2),
	o => \current_floor[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\solicitudes_activas~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~0_combout\ = \current_floor[1]~input_o\ $ (\current_floor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~input_o\,
	datad => \current_floor[2]~input_o\,
	combout => \solicitudes_activas~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\btn_interno_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_interno_1,
	o => \btn_interno_1~input_o\);

-- Location: LCCOMB_X1_Y5_N16
\btn_sync[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[1][0]~feeder_combout\ = \btn_interno_1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_interno_1~input_o\,
	combout => \btn_sync[1][0]~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y5_N17
\btn_sync[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[1][0]~q\);

-- Location: LCCOMB_X1_Y5_N12
\btn_sync[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[1][1]~feeder_combout\ = \btn_sync[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[1][0]~q\,
	combout => \btn_sync[1][1]~feeder_combout\);

-- Location: FF_X1_Y5_N13
\btn_sync[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[1][1]~q\);

-- Location: LCCOMB_X1_Y5_N22
\btn_sync[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[1][2]~feeder_combout\ = \btn_sync[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[1][1]~q\,
	combout => \btn_sync[1][2]~feeder_combout\);

-- Location: FF_X1_Y5_N23
\btn_sync[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[1][2]~q\);

-- Location: LCCOMB_X1_Y5_N10
\btn_pressed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_pressed~0_combout\ = (!\btn_sync[1][2]~q\ & \btn_sync[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[1][2]~q\,
	datad => \btn_sync[1][1]~q\,
	combout => \btn_pressed~0_combout\);

-- Location: FF_X1_Y5_N11
\btn_pressed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_pressed~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_pressed(1));

-- Location: LCCOMB_X1_Y5_N4
\solicitudes_activas~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~1_combout\ = (\solicitudes_activas~0_combout\ & (((solicitudes_activas(1)) # (btn_pressed(1))))) # (!\solicitudes_activas~0_combout\ & (!\door_open~input_o\ & (solicitudes_activas(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_open~input_o\,
	datab => \solicitudes_activas~0_combout\,
	datac => solicitudes_activas(1),
	datad => btn_pressed(1),
	combout => \solicitudes_activas~1_combout\);

-- Location: FF_X1_Y5_N5
\solicitudes_activas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes_activas~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes_activas(1));

-- Location: IOIBUF_X0_Y4_N1
\current_floor[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_floor(0),
	o => \current_floor[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\current_floor[1]~input_o\ & (!\current_floor[0]~input_o\ & !\current_floor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~input_o\,
	datac => \current_floor[0]~input_o\,
	datad => \current_floor[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y5_N8
\btn_interno_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_interno_2,
	o => \btn_interno_2~input_o\);

-- Location: LCCOMB_X1_Y5_N2
\btn_sync[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[2][0]~feeder_combout\ = \btn_interno_2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_interno_2~input_o\,
	combout => \btn_sync[2][0]~feeder_combout\);

-- Location: FF_X1_Y5_N3
\btn_sync[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[2][0]~q\);

-- Location: LCCOMB_X1_Y5_N24
\btn_sync[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[2][1]~feeder_combout\ = \btn_sync[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[2][0]~q\,
	combout => \btn_sync[2][1]~feeder_combout\);

-- Location: FF_X1_Y5_N25
\btn_sync[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[2][1]~q\);

-- Location: LCCOMB_X1_Y5_N26
\btn_sync[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[2][2]~feeder_combout\ = \btn_sync[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[2][1]~q\,
	combout => \btn_sync[2][2]~feeder_combout\);

-- Location: FF_X1_Y5_N27
\btn_sync[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[2][2]~q\);

-- Location: LCCOMB_X1_Y5_N20
\btn_pressed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_pressed~1_combout\ = (!\btn_sync[2][2]~q\ & \btn_sync[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[2][2]~q\,
	datad => \btn_sync[2][1]~q\,
	combout => \btn_pressed~1_combout\);

-- Location: FF_X1_Y5_N21
\btn_pressed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_pressed~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_pressed(2));

-- Location: LCCOMB_X1_Y5_N14
\solicitudes_activas~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~2_combout\ = (\Equal1~0_combout\ & (!\door_open~input_o\ & (solicitudes_activas(2)))) # (!\Equal1~0_combout\ & (((solicitudes_activas(2)) # (btn_pressed(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_open~input_o\,
	datab => \Equal1~0_combout\,
	datac => solicitudes_activas(2),
	datad => btn_pressed(2),
	combout => \solicitudes_activas~2_combout\);

-- Location: FF_X1_Y5_N15
\solicitudes_activas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes_activas~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes_activas(2));

-- Location: LCCOMB_X1_Y4_N14
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\current_floor[1]~input_o\ & (\current_floor[0]~input_o\ & !\current_floor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~input_o\,
	datac => \current_floor[0]~input_o\,
	datad => \current_floor[2]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X1_Y0_N29
\btn_interno_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_interno_3,
	o => \btn_interno_3~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\btn_sync[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[3][0]~feeder_combout\ = \btn_interno_3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_interno_3~input_o\,
	combout => \btn_sync[3][0]~feeder_combout\);

-- Location: FF_X1_Y4_N7
\btn_sync[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[3][0]~q\);

-- Location: LCCOMB_X1_Y4_N10
\btn_sync[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[3][1]~feeder_combout\ = \btn_sync[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[3][0]~q\,
	combout => \btn_sync[3][1]~feeder_combout\);

-- Location: FF_X1_Y4_N11
\btn_sync[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[3][1]~q\);

-- Location: LCCOMB_X1_Y4_N4
\btn_sync[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[3][2]~feeder_combout\ = \btn_sync[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[3][1]~q\,
	combout => \btn_sync[3][2]~feeder_combout\);

-- Location: FF_X1_Y4_N5
\btn_sync[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[3][2]~q\);

-- Location: LCCOMB_X1_Y4_N16
\btn_pressed~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_pressed~2_combout\ = (!\btn_sync[3][2]~q\ & \btn_sync[3][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[3][2]~q\,
	datad => \btn_sync[3][1]~q\,
	combout => \btn_pressed~2_combout\);

-- Location: FF_X1_Y4_N17
\btn_pressed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_pressed~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_pressed(3));

-- Location: LCCOMB_X1_Y4_N12
\solicitudes_activas~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~3_combout\ = (\Equal1~1_combout\ & (!\door_open~input_o\ & (solicitudes_activas(3)))) # (!\Equal1~1_combout\ & (((solicitudes_activas(3)) # (btn_pressed(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_open~input_o\,
	datab => \Equal1~1_combout\,
	datac => solicitudes_activas(3),
	datad => btn_pressed(3),
	combout => \solicitudes_activas~3_combout\);

-- Location: FF_X1_Y4_N13
\solicitudes_activas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes_activas~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes_activas(3));

-- Location: LCCOMB_X1_Y4_N2
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\current_floor[1]~input_o\ & (!\current_floor[0]~input_o\ & \current_floor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~input_o\,
	datac => \current_floor[0]~input_o\,
	datad => \current_floor[2]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X0_Y4_N22
\btn_interno_4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_interno_4,
	o => \btn_interno_4~input_o\);

-- Location: LCCOMB_X1_Y4_N28
\btn_sync[4][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[4][0]~feeder_combout\ = \btn_interno_4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_interno_4~input_o\,
	combout => \btn_sync[4][0]~feeder_combout\);

-- Location: FF_X1_Y4_N29
\btn_sync[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[4][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[4][0]~q\);

-- Location: LCCOMB_X1_Y4_N18
\btn_sync[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[4][1]~feeder_combout\ = \btn_sync[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[4][0]~q\,
	combout => \btn_sync[4][1]~feeder_combout\);

-- Location: FF_X1_Y4_N19
\btn_sync[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[4][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[4][1]~q\);

-- Location: LCCOMB_X1_Y4_N8
\btn_sync[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[4][2]~feeder_combout\ = \btn_sync[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[4][1]~q\,
	combout => \btn_sync[4][2]~feeder_combout\);

-- Location: FF_X1_Y4_N9
\btn_sync[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[4][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[4][2]~q\);

-- Location: LCCOMB_X1_Y4_N24
\btn_pressed~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_pressed~3_combout\ = (!\btn_sync[4][2]~q\ & \btn_sync[4][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[4][2]~q\,
	datad => \btn_sync[4][1]~q\,
	combout => \btn_pressed~3_combout\);

-- Location: FF_X1_Y4_N25
\btn_pressed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_pressed~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_pressed(4));

-- Location: LCCOMB_X1_Y4_N30
\solicitudes_activas~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~4_combout\ = (\Equal1~2_combout\ & (!\door_open~input_o\ & (solicitudes_activas(4)))) # (!\Equal1~2_combout\ & (((solicitudes_activas(4)) # (btn_pressed(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_open~input_o\,
	datab => \Equal1~2_combout\,
	datac => solicitudes_activas(4),
	datad => btn_pressed(4),
	combout => \solicitudes_activas~4_combout\);

-- Location: FF_X1_Y4_N31
\solicitudes_activas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes_activas~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes_activas(4));

-- Location: LCCOMB_X1_Y4_N20
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\current_floor[1]~input_o\ & (\current_floor[0]~input_o\ & \current_floor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~input_o\,
	datac => \current_floor[0]~input_o\,
	datad => \current_floor[2]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X0_Y5_N1
\btn_interno_5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_interno_5,
	o => \btn_interno_5~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\btn_sync[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[5][0]~feeder_combout\ = \btn_interno_5~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_interno_5~input_o\,
	combout => \btn_sync[5][0]~feeder_combout\);

-- Location: FF_X1_Y5_N29
\btn_sync[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[5][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[5][0]~q\);

-- Location: LCCOMB_X1_Y5_N0
\btn_sync[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[5][1]~feeder_combout\ = \btn_sync[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[5][0]~q\,
	combout => \btn_sync[5][1]~feeder_combout\);

-- Location: FF_X1_Y5_N1
\btn_sync[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[5][1]~q\);

-- Location: LCCOMB_X1_Y5_N30
\btn_sync[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[5][2]~feeder_combout\ = \btn_sync[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[5][1]~q\,
	combout => \btn_sync[5][2]~feeder_combout\);

-- Location: FF_X1_Y5_N31
\btn_sync[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[5][2]~q\);

-- Location: LCCOMB_X1_Y5_N6
\btn_pressed~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_pressed~4_combout\ = (!\btn_sync[5][2]~q\ & \btn_sync[5][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[5][2]~q\,
	datad => \btn_sync[5][1]~q\,
	combout => \btn_pressed~4_combout\);

-- Location: FF_X1_Y5_N7
\btn_pressed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_pressed~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_pressed(5));

-- Location: LCCOMB_X1_Y5_N8
\solicitudes_activas~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_activas~5_combout\ = (\Equal1~3_combout\ & (!\door_open~input_o\ & (solicitudes_activas(5)))) # (!\Equal1~3_combout\ & (((solicitudes_activas(5)) # (btn_pressed(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_open~input_o\,
	datab => \Equal1~3_combout\,
	datac => solicitudes_activas(5),
	datad => btn_pressed(5),
	combout => \solicitudes_activas~5_combout\);

-- Location: FF_X1_Y5_N9
\solicitudes_activas[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes_activas~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes_activas(5));

ww_solicitud_piso1 <= \solicitud_piso1~output_o\;

ww_solicitud_piso2 <= \solicitud_piso2~output_o\;

ww_solicitud_piso3 <= \solicitud_piso3~output_o\;

ww_solicitud_piso4 <= \solicitud_piso4~output_o\;

ww_solicitud_piso5 <= \solicitud_piso5~output_o\;

ww_led_solicitud_1 <= \led_solicitud_1~output_o\;

ww_led_solicitud_2 <= \led_solicitud_2~output_o\;

ww_led_solicitud_3 <= \led_solicitud_3~output_o\;

ww_led_solicitud_4 <= \led_solicitud_4~output_o\;

ww_led_solicitud_5 <= \led_solicitud_5~output_o\;
END structure;


