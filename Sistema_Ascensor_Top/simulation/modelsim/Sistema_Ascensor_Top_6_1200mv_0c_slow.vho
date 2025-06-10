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

-- DATE "06/09/2025 22:00:33"

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

ENTITY 	Sistema_Ascensor_Top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn_piso1 : IN std_logic;
	btn_piso2_up : IN std_logic;
	btn_piso2_dn : IN std_logic;
	btn_piso3_up : IN std_logic;
	btn_piso3_dn : IN std_logic;
	btn_piso4_up : IN std_logic;
	btn_piso4_dn : IN std_logic;
	btn_piso5 : IN std_logic;
	btn_sumar : IN std_logic;
	btn_restar : IN std_logic;
	motor_in1 : BUFFER std_logic;
	motor_in2 : BUFFER std_logic;
	motor_ena : BUFFER std_logic;
	servo1_pwm : BUFFER std_logic;
	servo2_pwm : BUFFER std_logic;
	led_piso1 : BUFFER std_logic;
	led_piso2 : BUFFER std_logic;
	led_piso3 : BUFFER std_logic;
	led_piso4 : BUFFER std_logic;
	led_piso5 : BUFFER std_logic;
	door_open : BUFFER std_logic;
	moving : BUFFER std_logic;
	display_7seg : BUFFER std_logic_vector(6 DOWNTO 0);
	display_7seg_unidades : BUFFER std_logic_vector(6 DOWNTO 0);
	display_7seg_decenas : BUFFER std_logic_vector(6 DOWNTO 0);
	led_limite : BUFFER std_logic
	);
END Sistema_Ascensor_Top;

-- Design Ports Information
-- motor_in1	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_in2	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_ena	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo1_pwm	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo2_pwm	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso3	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso4	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso5	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- door_open	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moving	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_7seg[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- led_limite	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_sumar	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_restar	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso1	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso2_up	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso2_dn	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso3_up	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso3_dn	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso4_up	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso4_dn	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso5	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sistema_Ascensor_Top IS
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
SIGNAL ww_btn_piso1 : std_logic;
SIGNAL ww_btn_piso2_up : std_logic;
SIGNAL ww_btn_piso2_dn : std_logic;
SIGNAL ww_btn_piso3_up : std_logic;
SIGNAL ww_btn_piso3_dn : std_logic;
SIGNAL ww_btn_piso4_up : std_logic;
SIGNAL ww_btn_piso4_dn : std_logic;
SIGNAL ww_btn_piso5 : std_logic;
SIGNAL ww_btn_sumar : std_logic;
SIGNAL ww_btn_restar : std_logic;
SIGNAL ww_motor_in1 : std_logic;
SIGNAL ww_motor_in2 : std_logic;
SIGNAL ww_motor_ena : std_logic;
SIGNAL ww_servo1_pwm : std_logic;
SIGNAL ww_servo2_pwm : std_logic;
SIGNAL ww_led_piso1 : std_logic;
SIGNAL ww_led_piso2 : std_logic;
SIGNAL ww_led_piso3 : std_logic;
SIGNAL ww_led_piso4 : std_logic;
SIGNAL ww_led_piso5 : std_logic;
SIGNAL ww_door_open : std_logic;
SIGNAL ww_moving : std_logic;
SIGNAL ww_display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_7seg_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_7seg_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_limite : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_in1~output_o\ : std_logic;
SIGNAL \motor_in2~output_o\ : std_logic;
SIGNAL \motor_ena~output_o\ : std_logic;
SIGNAL \servo1_pwm~output_o\ : std_logic;
SIGNAL \servo2_pwm~output_o\ : std_logic;
SIGNAL \led_piso1~output_o\ : std_logic;
SIGNAL \led_piso2~output_o\ : std_logic;
SIGNAL \led_piso3~output_o\ : std_logic;
SIGNAL \led_piso4~output_o\ : std_logic;
SIGNAL \led_piso5~output_o\ : std_logic;
SIGNAL \door_open~output_o\ : std_logic;
SIGNAL \moving~output_o\ : std_logic;
SIGNAL \display_7seg[0]~output_o\ : std_logic;
SIGNAL \display_7seg[1]~output_o\ : std_logic;
SIGNAL \display_7seg[2]~output_o\ : std_logic;
SIGNAL \display_7seg[3]~output_o\ : std_logic;
SIGNAL \display_7seg[4]~output_o\ : std_logic;
SIGNAL \display_7seg[5]~output_o\ : std_logic;
SIGNAL \display_7seg[6]~output_o\ : std_logic;
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[0]~27_combout\ : std_logic;
SIGNAL \Ascensor_inst|mem_addr[1]~feeder_combout\ : std_logic;
SIGNAL \btn_piso1~input_o\ : std_logic;
SIGNAL \btn_restar~input_o\ : std_logic;
SIGNAL \Contador_inst|btn_restar_sync[0]~feeder_combout\ : std_logic;
SIGNAL \Contador_inst|btn_restar_sync[1]~feeder_combout\ : std_logic;
SIGNAL \Contador_inst|contador[3]~3_combout\ : std_logic;
SIGNAL \Contador_inst|contador[2]~7_combout\ : std_logic;
SIGNAL \btn_sumar~input_o\ : std_logic;
SIGNAL \Contador_inst|btn_sumar_sync[1]~feeder_combout\ : std_logic;
SIGNAL \Contador_inst|contador[3]~5_combout\ : std_logic;
SIGNAL \Contador_inst|contador[3]~6_combout\ : std_logic;
SIGNAL \Contador_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \Contador_inst|contador[3]~0_combout\ : std_logic;
SIGNAL \Contador_inst|contador[2]~8_combout\ : std_logic;
SIGNAL \Contador_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \Contador_inst|contador[3]~1_combout\ : std_logic;
SIGNAL \Contador_inst|contador~4_combout\ : std_logic;
SIGNAL \Contador_inst|contador[1]~2_combout\ : std_logic;
SIGNAL \botones_habilitados~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[8][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[8][1]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[8][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~0_combout\ : std_logic;
SIGNAL \btn_piso5~input_o\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[1][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[1][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|WideOr2~combout\ : std_logic;
SIGNAL \Ascensor_inst|mem_data_in[0]~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|system_memory[0][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[0]~28_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[3]~78_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add7~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][0]~91_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][1]~77_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][1]~78\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][2]~79_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][2]~80\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][3]~81_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][3]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][3]~q\ : std_logic;
SIGNAL \Ascensor_inst|Add6~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~1\ : std_logic;
SIGNAL \Ascensor_inst|Add8~3\ : std_logic;
SIGNAL \Ascensor_inst|Add8~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~1\ : std_logic;
SIGNAL \Ascensor_inst|Add9~3\ : std_logic;
SIGNAL \Ascensor_inst|Add9~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add20~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][3]~82\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][4]~83_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][4]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][4]~84\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][5]~85_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][5]~q\ : std_logic;
SIGNAL \Ascensor_inst|Add7~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~5\ : std_logic;
SIGNAL \Ascensor_inst|Add8~7\ : std_logic;
SIGNAL \Ascensor_inst|Add8~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~5\ : std_logic;
SIGNAL \Ascensor_inst|Add9~7\ : std_logic;
SIGNAL \Ascensor_inst|Add9~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][5]~86\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][6]~87_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][6]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][6]~88\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][7]~89_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[1][7]~q\ : std_logic;
SIGNAL \Ascensor_inst|Add8~9\ : std_logic;
SIGNAL \Ascensor_inst|Add8~11\ : std_logic;
SIGNAL \Ascensor_inst|Add8~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add8~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~9\ : std_logic;
SIGNAL \Ascensor_inst|Add9~11\ : std_logic;
SIGNAL \Ascensor_inst|Add9~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add9~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~1_combout\ : std_logic;
SIGNAL \btn_piso4_dn~input_o\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[2][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[2][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~6_combout\ : std_logic;
SIGNAL \btn_piso4_up~input_o\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[3][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[3][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|elevator_control~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector15~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector15~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][0]~109_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][1]~95_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][1]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][1]~96\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][2]~97_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][2]~98\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][3]~99_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][3]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][3]~100\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][4]~101_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][4]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][4]~102\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][5]~103_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][5]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][5]~104\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][6]~105_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][6]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][6]~106\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][7]~107_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[5][7]~q\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add27~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add27~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add26~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~1\ : std_logic;
SIGNAL \Ascensor_inst|Add28~3\ : std_logic;
SIGNAL \Ascensor_inst|Add28~5\ : std_logic;
SIGNAL \Ascensor_inst|Add28~7\ : std_logic;
SIGNAL \Ascensor_inst|Add28~9\ : std_logic;
SIGNAL \Ascensor_inst|Add28~11\ : std_logic;
SIGNAL \Ascensor_inst|Add28~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add28~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~1\ : std_logic;
SIGNAL \Ascensor_inst|Add29~3\ : std_logic;
SIGNAL \Ascensor_inst|Add29~5\ : std_logic;
SIGNAL \Ascensor_inst|Add29~7\ : std_logic;
SIGNAL \Ascensor_inst|Add29~9\ : std_logic;
SIGNAL \Ascensor_inst|Add29~11\ : std_logic;
SIGNAL \Ascensor_inst|Add29~12_combout\ : std_logic;
SIGNAL \btn_piso2_up~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[7][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[7][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~1_combout\ : std_logic;
SIGNAL \btn_piso2_dn~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[6][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[6][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][0]~94_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][1]~35_combout\ : std_logic;
SIGNAL \Ascensor_inst|elevator_control~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][1]~36\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][2]~37_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][2]~38\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][3]~39_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][3]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][3]~40\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][4]~41_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][4]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][4]~42\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][5]~43_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][5]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][5]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][5]~44\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][6]~45_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][6]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][6]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][6]~46\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][7]~47_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[4][7]~q\ : std_logic;
SIGNAL \Ascensor_inst|Selector16~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add21~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add22~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~1\ : std_logic;
SIGNAL \Ascensor_inst|Add23~3\ : std_logic;
SIGNAL \Ascensor_inst|Add23~5\ : std_logic;
SIGNAL \Ascensor_inst|Add23~7\ : std_logic;
SIGNAL \Ascensor_inst|Add23~9\ : std_logic;
SIGNAL \Ascensor_inst|Add23~11\ : std_logic;
SIGNAL \Ascensor_inst|Add23~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add23~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~1\ : std_logic;
SIGNAL \Ascensor_inst|Add24~3\ : std_logic;
SIGNAL \Ascensor_inst|Add24~5\ : std_logic;
SIGNAL \Ascensor_inst|Add24~7\ : std_logic;
SIGNAL \Ascensor_inst|Add24~9\ : std_logic;
SIGNAL \Ascensor_inst|Add24~11\ : std_logic;
SIGNAL \Ascensor_inst|Add24~12_combout\ : std_logic;
SIGNAL \btn_piso3_dn~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[4][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[4][1]~feeder_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[4][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~4_combout\ : std_logic;
SIGNAL \btn_piso3_up~input_o\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[5][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_sync[5][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|elevator_control~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector18~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.MOVING_DOWN~q\ : std_logic;
SIGNAL \Ascensor_inst|Selector14~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector14~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector14~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector14~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][0]~93_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][1]~49_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][1]~50\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][2]~51_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][2]~52\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][3]~53_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][3]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][3]~54\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][4]~55_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][4]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][4]~56\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][5]~57_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][5]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][5]~58\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][6]~59_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][6]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][6]~60\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][7]~61_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[3][7]~q\ : std_logic;
SIGNAL \Ascensor_inst|Add17~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add16~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add17~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~1\ : std_logic;
SIGNAL \Ascensor_inst|Add18~3\ : std_logic;
SIGNAL \Ascensor_inst|Add18~5\ : std_logic;
SIGNAL \Ascensor_inst|Add18~7\ : std_logic;
SIGNAL \Ascensor_inst|Add18~9\ : std_logic;
SIGNAL \Ascensor_inst|Add18~11\ : std_logic;
SIGNAL \Ascensor_inst|Add18~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add18~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~1\ : std_logic;
SIGNAL \Ascensor_inst|Add19~3\ : std_logic;
SIGNAL \Ascensor_inst|Add19~5\ : std_logic;
SIGNAL \Ascensor_inst|Add19~7\ : std_logic;
SIGNAL \Ascensor_inst|Add19~9\ : std_logic;
SIGNAL \Ascensor_inst|Add19~11\ : std_logic;
SIGNAL \Ascensor_inst|Add19~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][0]~92_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][0]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][1]~63_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][1]~64\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][2]~65_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][2]~66\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][3]~67_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][3]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][3]~68\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][4]~69_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][4]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][4]~70\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][5]~71_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][5]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][5]~72\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][6]~73_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][6]~q\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][6]~74\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][7]~75_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_usage_counters[2][7]~q\ : std_logic;
SIGNAL \Display_inst|piso_actual~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add12~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add12~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add11~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~1\ : std_logic;
SIGNAL \Ascensor_inst|Add13~3\ : std_logic;
SIGNAL \Ascensor_inst|Add13~5\ : std_logic;
SIGNAL \Ascensor_inst|Add13~7\ : std_logic;
SIGNAL \Ascensor_inst|Add13~9\ : std_logic;
SIGNAL \Ascensor_inst|Add13~11\ : std_logic;
SIGNAL \Ascensor_inst|Add13~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add13~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~1\ : std_logic;
SIGNAL \Ascensor_inst|Add14~3\ : std_logic;
SIGNAL \Ascensor_inst|Add14~5\ : std_logic;
SIGNAL \Ascensor_inst|Add14~7\ : std_logic;
SIGNAL \Ascensor_inst|Add14~9\ : std_logic;
SIGNAL \Ascensor_inst|Add14~11\ : std_logic;
SIGNAL \Ascensor_inst|Add14~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add14~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~1_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~3_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~5_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~7_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~9_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~11_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~13_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan1~14_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~11_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~13_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add19~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~14_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~15_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~1_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~3_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~5_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~7_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~9_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~11_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~13_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan2~14_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~16_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~17_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~18_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~19_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~20_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~21_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add24~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~22_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~23_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~1_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~3_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~5_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~7_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~9_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~11_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~13_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan3~14_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~24_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~25_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~26_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~27_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~28_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~29_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add29~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~30_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~31_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~1_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~3_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~5_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~7_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~9_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~11_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~13_cout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan4~14_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~33_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|target_floor[0]~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal2~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_calls~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector15~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector15~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_calls~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add17~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_calls~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_calls~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector13~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector13~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector13~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector13~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|best_score~32_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|next_target~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan5~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[3]~79_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[3]~80_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[0]~29\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[1]~30_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[1]~31\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[2]~32_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[2]~33\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[3]~34_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[3]~35\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[4]~36_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[4]~37\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[5]~38_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[5]~39\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[6]~40_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[6]~41\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[7]~42_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[7]~43\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[8]~44_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[8]~45\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[9]~46_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[9]~47\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[10]~48_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[10]~49\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[11]~50_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[11]~51\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[12]~52_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[12]~53\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[13]~54_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[13]~55\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[14]~56_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[14]~57\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[15]~58_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[15]~59\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[16]~60_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[16]~61\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[17]~62_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[17]~63\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[18]~64_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[18]~65\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[19]~66_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[19]~67\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[20]~68_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[20]~69\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[21]~70_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[21]~71\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[22]~72_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[22]~73\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[23]~74_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[23]~75\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[24]~76_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[24]~77\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[25]~81_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[25]~82\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[26]~83_combout\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[26]~84\ : std_logic;
SIGNAL \Ascensor_inst|timer_counter[27]~85_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan7~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[0]~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|WideNor0~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[0]~11_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[0]~_emulated_q\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[0]~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector16~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector16~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector16~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector16~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|floor_calls~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector12~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector12~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector12~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector12~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector12~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal0~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|target_floor[0]~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|mem_write_en~q\ : std_logic;
SIGNAL \Ascensor_inst|system_memory[0][2]~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|system_memory[0][1]~q\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[1]~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[1]~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[1]~_emulated_q\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[1]~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal2~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal2~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector20~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector20~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.DOOR_OPENING~q\ : std_logic;
SIGNAL \Ascensor_inst|Add33~48_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~113_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector80~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~49\ : std_logic;
SIGNAL \Ascensor_inst|Add33~50_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~112_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~51\ : std_logic;
SIGNAL \Ascensor_inst|Add33~52_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~111_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~53\ : std_logic;
SIGNAL \Ascensor_inst|Add33~54_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~110_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~55\ : std_logic;
SIGNAL \Ascensor_inst|Add33~56_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~109_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~57\ : std_logic;
SIGNAL \Ascensor_inst|Add33~58_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~108_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~59\ : std_logic;
SIGNAL \Ascensor_inst|Add33~60_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~107_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~61\ : std_logic;
SIGNAL \Ascensor_inst|Add33~62_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~114_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~63\ : std_logic;
SIGNAL \Ascensor_inst|Add33~64_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~118_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~65\ : std_logic;
SIGNAL \Ascensor_inst|Add33~66_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~117_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~67\ : std_logic;
SIGNAL \Ascensor_inst|Add33~68_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~116_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~69\ : std_logic;
SIGNAL \Ascensor_inst|Add33~70_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~115_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~71\ : std_logic;
SIGNAL \Ascensor_inst|Add33~72_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~106_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~73\ : std_logic;
SIGNAL \Ascensor_inst|Add33~74_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~105_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~75\ : std_logic;
SIGNAL \Ascensor_inst|Add33~76_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~104_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~77\ : std_logic;
SIGNAL \Ascensor_inst|Add33~78_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~103_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~79\ : std_logic;
SIGNAL \Ascensor_inst|Add33~80_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~102_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~81\ : std_logic;
SIGNAL \Ascensor_inst|Add33~82_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~101_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~83\ : std_logic;
SIGNAL \Ascensor_inst|Add33~84_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~100_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[22]~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~85\ : std_logic;
SIGNAL \Ascensor_inst|Add33~86_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~119_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~87\ : std_logic;
SIGNAL \Ascensor_inst|Add33~88_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~123_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~89\ : std_logic;
SIGNAL \Ascensor_inst|Add33~90_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~122_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~91\ : std_logic;
SIGNAL \Ascensor_inst|Add33~92_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~121_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~93\ : std_logic;
SIGNAL \Ascensor_inst|Add33~94_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~120_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~95\ : std_logic;
SIGNAL \Ascensor_inst|Add33~96_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[24]~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add33~97\ : std_logic;
SIGNAL \Ascensor_inst|Add33~98_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_counter[25]~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan10~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector18~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.DOOR_OPEN_WAIT~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan11~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[0]~81_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[0]~82_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[0]~28\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[1]~29_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[1]~30\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[2]~31_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[2]~32\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[3]~33_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[3]~34\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[4]~35_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[4]~36\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[5]~37_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[5]~38\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[6]~39_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[6]~40\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[7]~41_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[7]~42\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[8]~43_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[8]~44\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[9]~45_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[9]~46\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[10]~47_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[10]~48\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[11]~49_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[11]~50\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[12]~51_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[12]~52\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[13]~53_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[13]~54\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[14]~55_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[14]~56\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[15]~57_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[15]~58\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[16]~59_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[16]~60\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[17]~61_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[17]~62\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[18]~63_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[18]~64\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[19]~65_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[19]~66\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[20]~67_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[20]~68\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[21]~69_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[21]~70\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[22]~71_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[22]~72\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[23]~73_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[23]~74\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[24]~75_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[24]~76\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[25]~77_combout\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[25]~78\ : std_logic;
SIGNAL \Ascensor_inst|wait_counter[26]~79_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector19~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector22~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.DOOR_CLOSING~q\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector21~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector17~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.IDLE~q\ : std_logic;
SIGNAL \Ascensor_inst|mem_data_in[2]~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|system_memory[0][2]~q\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[2]~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add32~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Add30~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[2]~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[2]~_emulated_q\ : std_logic;
SIGNAL \Ascensor_inst|current_floor[2]~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Mux0~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Mux0~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|Mux0~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector18~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector18~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|main_state.MOVING_UP~q\ : std_logic;
SIGNAL \Contador_inst|Equal0~0_combout\ : std_logic;
SIGNAL \motor_in1~0_combout\ : std_logic;
SIGNAL \motor_in2~0_combout\ : std_logic;
SIGNAL \motor_ena~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[0]~20_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[16]~53\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[17]~54_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[17]~55\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[18]~56_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[18]~57\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[19]~58_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan12~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[0]~21\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[1]~22_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[1]~23\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[2]~24_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[2]~25\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[3]~26_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[3]~27\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[4]~28_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[4]~29\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[5]~30_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[5]~31\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[6]~32_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[6]~33\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[7]~34_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[7]~35\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[8]~36_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[8]~37\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[9]~38_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[9]~39\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[10]~40_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[10]~41\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[11]~42_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[11]~43\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[12]~44_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[12]~45\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[13]~46_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[13]~47\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[14]~48_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[14]~49\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[15]~50_combout\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[15]~51\ : std_logic;
SIGNAL \Ascensor_inst|pwm_counter[16]~52_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector2~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector10~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector3~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~2_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector4~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector1~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|Selector10~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~3_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~4_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~5_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~7_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~8_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~9_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~10_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~11_combout\ : std_logic;
SIGNAL \Ascensor_inst|LessThan13~12_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_state~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|door_state~q\ : std_logic;
SIGNAL \Display_inst|Mux6~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|Equal3~5_combout\ : std_logic;
SIGNAL \Display_inst|Mux3~0_combout\ : std_logic;
SIGNAL \Display_inst|Mux2~0_combout\ : std_logic;
SIGNAL \Display_inst|Mux1~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux6~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux5~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux4~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux3~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux2~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux1~0_combout\ : std_logic;
SIGNAL \Contador_inst|Mux0~0_combout\ : std_logic;
SIGNAL \Contador_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|btn_edges\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \Ascensor_inst|door_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Ascensor_inst|wait_counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Ascensor_inst|target_floor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ascensor_inst|mem_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ascensor_inst|mem_data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ascensor_inst|pwm_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Ascensor_inst|servo_pwm_width\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Ascensor_inst|timer_counter\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \Ascensor_inst|floor_calls\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \Contador_inst|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador_inst|btn_sumar_sync\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Contador_inst|btn_restar_sync\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\ : std_logic;
SIGNAL \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\ : std_logic;
SIGNAL \Contador_inst|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \Contador_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Display_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Display_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \Display_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Ascensor_inst|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \Ascensor_inst|ALT_INV_WideNor0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn_piso1 <= btn_piso1;
ww_btn_piso2_up <= btn_piso2_up;
ww_btn_piso2_dn <= btn_piso2_dn;
ww_btn_piso3_up <= btn_piso3_up;
ww_btn_piso3_dn <= btn_piso3_dn;
ww_btn_piso4_up <= btn_piso4_up;
ww_btn_piso4_dn <= btn_piso4_dn;
ww_btn_piso5 <= btn_piso5;
ww_btn_sumar <= btn_sumar;
ww_btn_restar <= btn_restar;
motor_in1 <= ww_motor_in1;
motor_in2 <= ww_motor_in2;
motor_ena <= ww_motor_ena;
servo1_pwm <= ww_servo1_pwm;
servo2_pwm <= ww_servo2_pwm;
led_piso1 <= ww_led_piso1;
led_piso2 <= ww_led_piso2;
led_piso3 <= ww_led_piso3;
led_piso4 <= ww_led_piso4;
led_piso5 <= ww_led_piso5;
door_open <= ww_door_open;
moving <= ww_moving;
display_7seg <= ww_display_7seg;
display_7seg_unidades <= ww_display_7seg_unidades;
display_7seg_decenas <= ww_display_7seg_decenas;
led_limite <= ww_led_limite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\Ascensor_inst|ALT_INV_door_counter[22]~6_combout\ <= NOT \Ascensor_inst|door_counter[22]~6_combout\;
\Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\ <= NOT \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\;
\Contador_inst|ALT_INV_LessThan2~0_combout\ <= NOT \Contador_inst|LessThan2~0_combout\;
\Contador_inst|ALT_INV_Mux0~0_combout\ <= NOT \Contador_inst|Mux0~0_combout\;
\Display_inst|ALT_INV_Mux2~0_combout\ <= NOT \Display_inst|Mux2~0_combout\;
\Display_inst|ALT_INV_Mux3~0_combout\ <= NOT \Display_inst|Mux3~0_combout\;
\Ascensor_inst|ALT_INV_Equal3~5_combout\ <= NOT \Ascensor_inst|Equal3~5_combout\;
\Display_inst|ALT_INV_Mux6~0_combout\ <= NOT \Display_inst|Mux6~0_combout\;
\Ascensor_inst|ALT_INV_Equal3~1_combout\ <= NOT \Ascensor_inst|Equal3~1_combout\;
\Ascensor_inst|ALT_INV_WideNor0~0_combout\ <= NOT \Ascensor_inst|WideNor0~0_combout\;

-- Location: IOOBUF_X28_Y0_N23
\motor_in1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_in1~0_combout\,
	devoe => ww_devoe,
	o => \motor_in1~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\motor_in2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_in2~0_combout\,
	devoe => ww_devoe,
	o => \motor_in2~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\motor_ena~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_ena~2_combout\,
	devoe => ww_devoe,
	o => \motor_ena~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\servo1_pwm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|LessThan13~12_combout\,
	devoe => ww_devoe,
	o => \servo1_pwm~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\servo2_pwm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|LessThan13~12_combout\,
	devoe => ww_devoe,
	o => \servo2_pwm~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led_piso1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \led_piso1~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_piso2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \led_piso2~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_piso3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \led_piso3~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_piso4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|Equal3~3_combout\,
	devoe => ww_devoe,
	o => \led_piso4~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_piso5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|Equal3~4_combout\,
	devoe => ww_devoe,
	o => \led_piso5~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\door_open~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|door_state~q\,
	devoe => ww_devoe,
	o => \door_open~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\moving~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \moving~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display_7seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display_7seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|ALT_INV_Equal3~5_combout\,
	devoe => ww_devoe,
	o => \display_7seg[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display_7seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ascensor_inst|ALT_INV_Equal3~1_combout\,
	devoe => ww_devoe,
	o => \display_7seg[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display_7seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_inst|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display_7seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_inst|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display_7seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display_7seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_inst|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display_7seg[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display_7seg_unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_inst|Mux6~0_combout\,
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
	i => \Contador_inst|Mux5~0_combout\,
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
	i => \Contador_inst|Mux4~0_combout\,
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
	i => \Contador_inst|Mux3~0_combout\,
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
	i => \Contador_inst|Mux2~0_combout\,
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
	i => \Contador_inst|Mux1~0_combout\,
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
	i => \Contador_inst|ALT_INV_Mux0~0_combout\,
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
	i => \Contador_inst|ALT_INV_LessThan2~0_combout\,
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
	i => \Contador_inst|ALT_INV_LessThan2~0_combout\,
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

-- Location: IOOBUF_X0_Y27_N16
\led_limite~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_inst|Equal0~0_combout\,
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

-- Location: LCCOMB_X2_Y27_N6
\Ascensor_inst|wait_counter[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[0]~27_combout\ = \Ascensor_inst|wait_counter\(0) $ (VCC)
-- \Ascensor_inst|wait_counter[0]~28\ = CARRY(\Ascensor_inst|wait_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(0),
	datad => VCC,
	combout => \Ascensor_inst|wait_counter[0]~27_combout\,
	cout => \Ascensor_inst|wait_counter[0]~28\);

-- Location: FF_X6_Y24_N15
\Ascensor_inst|mem_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|current_floor[1]~6_combout\,
	sload => VCC,
	ena => \Ascensor_inst|mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|mem_data_in\(1));

-- Location: LCCOMB_X3_Y26_N30
\Ascensor_inst|mem_addr[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|mem_addr[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ascensor_inst|mem_addr[1]~feeder_combout\);

-- Location: FF_X3_Y26_N31
\Ascensor_inst|mem_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|mem_addr[1]~feeder_combout\,
	ena => \Ascensor_inst|mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|mem_addr\(1));

-- Location: IOIBUF_X0_Y26_N8
\btn_piso1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso1,
	o => \btn_piso1~input_o\);

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

-- Location: LCCOMB_X1_Y25_N18
\Contador_inst|btn_restar_sync[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|btn_restar_sync[0]~feeder_combout\ = \btn_restar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_restar~input_o\,
	combout => \Contador_inst|btn_restar_sync[0]~feeder_combout\);

-- Location: FF_X1_Y25_N19
\Contador_inst|btn_restar_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|btn_restar_sync[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|btn_restar_sync\(0));

-- Location: LCCOMB_X1_Y25_N12
\Contador_inst|btn_restar_sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|btn_restar_sync[1]~feeder_combout\ = \Contador_inst|btn_restar_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Contador_inst|btn_restar_sync\(0),
	combout => \Contador_inst|btn_restar_sync[1]~feeder_combout\);

-- Location: FF_X1_Y25_N13
\Contador_inst|btn_restar_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|btn_restar_sync[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|btn_restar_sync\(1));

-- Location: FF_X4_Y27_N25
\Contador_inst|btn_restar_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Contador_inst|btn_restar_sync\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|btn_restar_sync\(2));

-- Location: LCCOMB_X4_Y27_N26
\Contador_inst|contador[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[3]~3_combout\ = (\Contador_inst|btn_restar_sync\(1) & !\Contador_inst|btn_restar_sync\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador_inst|btn_restar_sync\(1),
	datad => \Contador_inst|btn_restar_sync\(2),
	combout => \Contador_inst|contador[3]~3_combout\);

-- Location: LCCOMB_X4_Y27_N12
\Contador_inst|contador[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[2]~7_combout\ = (\Contador_inst|contador\(0) & (\Contador_inst|contador\(1) & ((\Contador_inst|LessThan1~0_combout\) # (!\Contador_inst|contador[3]~3_combout\)))) # (!\Contador_inst|contador\(0) & 
-- (!\Contador_inst|LessThan1~0_combout\ & (\Contador_inst|contador[3]~3_combout\ & !\Contador_inst|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|LessThan1~0_combout\,
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador[3]~3_combout\,
	datad => \Contador_inst|contador\(1),
	combout => \Contador_inst|contador[2]~7_combout\);

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

-- Location: FF_X1_Y23_N19
\Contador_inst|btn_sumar_sync[0]\ : dffeas
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
	q => \Contador_inst|btn_sumar_sync\(0));

-- Location: LCCOMB_X4_Y27_N4
\Contador_inst|btn_sumar_sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|btn_sumar_sync[1]~feeder_combout\ = \Contador_inst|btn_sumar_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Contador_inst|btn_sumar_sync\(0),
	combout => \Contador_inst|btn_sumar_sync[1]~feeder_combout\);

-- Location: FF_X4_Y27_N5
\Contador_inst|btn_sumar_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|btn_sumar_sync[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|btn_sumar_sync\(1));

-- Location: FF_X4_Y27_N29
\Contador_inst|btn_sumar_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Contador_inst|btn_sumar_sync\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|btn_sumar_sync\(2));

-- Location: LCCOMB_X4_Y27_N30
\Contador_inst|contador[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[3]~5_combout\ = (\Contador_inst|contador\(2) & (\Contador_inst|contador\(0) & (\Contador_inst|contador[3]~1_combout\ & \Contador_inst|contador\(1)))) # (!\Contador_inst|contador\(2) & (!\Contador_inst|contador\(0) & 
-- (!\Contador_inst|contador[3]~1_combout\ & !\Contador_inst|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(2),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador[3]~1_combout\,
	datad => \Contador_inst|contador\(1),
	combout => \Contador_inst|contador[3]~5_combout\);

-- Location: LCCOMB_X4_Y27_N6
\Contador_inst|contador[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[3]~6_combout\ = \Contador_inst|contador\(3) $ (((\Contador_inst|contador[3]~5_combout\ & ((!\Contador_inst|contador[3]~0_combout\) # (!\Contador_inst|contador[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador[3]~5_combout\,
	datab => \Contador_inst|contador[3]~1_combout\,
	datac => \Contador_inst|contador\(3),
	datad => \Contador_inst|contador[3]~0_combout\,
	combout => \Contador_inst|contador[3]~6_combout\);

-- Location: FF_X4_Y27_N7
\Contador_inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|contador[3]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|contador\(3));

-- Location: LCCOMB_X4_Y27_N16
\Contador_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|LessThan0~0_combout\ = (\Contador_inst|contador\(3) & ((\Contador_inst|contador\(2)) # ((\Contador_inst|contador\(1) & \Contador_inst|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y27_N28
\Contador_inst|contador[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[3]~0_combout\ = ((\Contador_inst|btn_sumar_sync\(2)) # (\Contador_inst|LessThan0~0_combout\)) # (!\Contador_inst|btn_sumar_sync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_inst|btn_sumar_sync\(1),
	datac => \Contador_inst|btn_sumar_sync\(2),
	datad => \Contador_inst|LessThan0~0_combout\,
	combout => \Contador_inst|contador[3]~0_combout\);

-- Location: LCCOMB_X4_Y27_N18
\Contador_inst|contador[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[2]~8_combout\ = \Contador_inst|contador\(2) $ (((\Contador_inst|contador[2]~7_combout\ & ((!\Contador_inst|contador[3]~0_combout\) # (!\Contador_inst|contador[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador[2]~7_combout\,
	datab => \Contador_inst|contador[3]~1_combout\,
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador[3]~0_combout\,
	combout => \Contador_inst|contador[2]~8_combout\);

-- Location: FF_X4_Y27_N19
\Contador_inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|contador[2]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|contador\(2));

-- Location: LCCOMB_X4_Y27_N22
\Contador_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|LessThan1~0_combout\ = (!\Contador_inst|contador\(1) & (!\Contador_inst|contador\(0) & (!\Contador_inst|contador\(2) & !\Contador_inst|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y27_N14
\Contador_inst|contador[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[3]~1_combout\ = (\Contador_inst|LessThan1~0_combout\) # ((\Contador_inst|btn_restar_sync\(2)) # (!\Contador_inst|btn_restar_sync\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|LessThan1~0_combout\,
	datac => \Contador_inst|btn_restar_sync\(1),
	datad => \Contador_inst|btn_restar_sync\(2),
	combout => \Contador_inst|contador[3]~1_combout\);

-- Location: LCCOMB_X4_Y27_N0
\Contador_inst|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador~4_combout\ = (\Contador_inst|contador\(0) & (!\Contador_inst|contador[3]~3_combout\ & ((\Contador_inst|contador[3]~0_combout\)))) # (!\Contador_inst|contador\(0) & (((!\Contador_inst|contador[3]~0_combout\) # 
-- (!\Contador_inst|contador[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador[3]~3_combout\,
	datab => \Contador_inst|contador[3]~1_combout\,
	datac => \Contador_inst|contador\(0),
	datad => \Contador_inst|contador[3]~0_combout\,
	combout => \Contador_inst|contador~4_combout\);

-- Location: FF_X4_Y27_N1
\Contador_inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|contador~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|contador\(0));

-- Location: LCCOMB_X4_Y27_N10
\Contador_inst|contador[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|contador[1]~2_combout\ = \Contador_inst|contador\(1) $ (((\Contador_inst|contador\(0) & (\Contador_inst|contador[3]~1_combout\ & !\Contador_inst|contador[3]~0_combout\)) # (!\Contador_inst|contador\(0) & 
-- (!\Contador_inst|contador[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(0),
	datab => \Contador_inst|contador[3]~1_combout\,
	datac => \Contador_inst|contador\(1),
	datad => \Contador_inst|contador[3]~0_combout\,
	combout => \Contador_inst|contador[1]~2_combout\);

-- Location: FF_X4_Y27_N11
\Contador_inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Contador_inst|contador[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_inst|contador\(1));

-- Location: LCCOMB_X4_Y27_N2
\botones_habilitados~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_habilitados~0_combout\ = (!\Contador_inst|contador\(2) & ((\Contador_inst|contador\(1) & (\Contador_inst|contador\(0) & \Contador_inst|contador\(3))) # (!\Contador_inst|contador\(1) & (!\Contador_inst|contador\(0) & 
-- !\Contador_inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador\(3),
	combout => \botones_habilitados~0_combout\);

-- Location: LCCOMB_X1_Y26_N0
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\btn_piso1~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso1~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~0_combout\);

-- Location: FF_X1_Y26_N1
\Ascensor_inst|btn_sync[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[8][0]~q\);

-- Location: LCCOMB_X1_Y26_N14
\Ascensor_inst|btn_sync[8][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_sync[8][1]~feeder_combout\ = \Ascensor_inst|btn_sync[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|btn_sync[8][0]~q\,
	combout => \Ascensor_inst|btn_sync[8][1]~feeder_combout\);

-- Location: FF_X1_Y26_N15
\Ascensor_inst|btn_sync[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_sync[8][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[8][1]~q\);

-- Location: LCCOMB_X1_Y26_N8
\Ascensor_inst|btn_edges~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~0_combout\ = (!\Ascensor_inst|btn_sync[8][1]~q\ & \Ascensor_inst|btn_sync[8][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|btn_sync[8][1]~q\,
	datad => \Ascensor_inst|btn_sync[8][0]~q\,
	combout => \Ascensor_inst|btn_edges~0_combout\);

-- Location: FF_X1_Y26_N9
\Ascensor_inst|btn_edges[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(8));

-- Location: IOIBUF_X0_Y24_N1
\btn_piso5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso5,
	o => \btn_piso5~input_o\);

-- Location: LCCOMB_X1_Y24_N26
\comb~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\btn_piso5~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso5~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X1_Y24_N27
\Ascensor_inst|btn_sync[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[1][0]~q\);

-- Location: FF_X2_Y24_N25
\Ascensor_inst|btn_sync[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[1][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[1][1]~q\);

-- Location: LCCOMB_X1_Y24_N30
\Ascensor_inst|btn_edges~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~7_combout\ = (!\Ascensor_inst|btn_sync[1][1]~q\ & \Ascensor_inst|btn_sync[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_sync[1][1]~q\,
	datac => \Ascensor_inst|btn_sync[1][0]~q\,
	combout => \Ascensor_inst|btn_edges~7_combout\);

-- Location: FF_X1_Y24_N31
\Ascensor_inst|btn_edges[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(1));

-- Location: LCCOMB_X2_Y25_N28
\Ascensor_inst|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|WideOr2~combout\ = (\Ascensor_inst|main_state.DOOR_OPENING~q\) # ((\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\) # (\Ascensor_inst|main_state.DOOR_CLOSING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|WideOr2~combout\);

-- Location: LCCOMB_X3_Y26_N28
\Ascensor_inst|mem_data_in[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|mem_data_in[0]~1_combout\ = !\Ascensor_inst|current_floor[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	combout => \Ascensor_inst|mem_data_in[0]~1_combout\);

-- Location: FF_X3_Y26_N29
\Ascensor_inst|mem_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|mem_data_in[0]~1_combout\,
	ena => \Ascensor_inst|mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|mem_data_in\(0));

-- Location: FF_X3_Y24_N7
\Ascensor_inst|system_memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|mem_data_in\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|system_memory[0][0]~q\);

-- Location: LCCOMB_X9_Y26_N4
\Ascensor_inst|timer_counter[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[0]~28_combout\ = \Ascensor_inst|timer_counter\(0) $ (VCC)
-- \Ascensor_inst|timer_counter[0]~29\ = CARRY(\Ascensor_inst|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(0),
	datad => VCC,
	combout => \Ascensor_inst|timer_counter[0]~28_combout\,
	cout => \Ascensor_inst|timer_counter[0]~29\);

-- Location: LCCOMB_X6_Y25_N2
\Ascensor_inst|timer_counter[3]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[3]~78_combout\ = (!\Ascensor_inst|main_state.IDLE~q\) # (!\Ascensor_inst|LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan7~9_combout\,
	datad => \Ascensor_inst|main_state.IDLE~q\,
	combout => \Ascensor_inst|timer_counter[3]~78_combout\);

-- Location: LCCOMB_X7_Y24_N4
\Ascensor_inst|Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add7~1_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|current_floor[2]~2_combout\))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & ((!\Ascensor_inst|current_floor[2]~2_combout\) # 
-- (!\Ascensor_inst|current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add7~1_combout\);

-- Location: LCCOMB_X4_Y24_N24
\Ascensor_inst|floor_usage_counters[1][0]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][0]~91_combout\ = \Ascensor_inst|btn_edges\(1) $ (\Ascensor_inst|floor_usage_counters[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(1),
	datad => \Ascensor_inst|floor_usage_counters[1][0]~q\,
	combout => \Ascensor_inst|floor_usage_counters[1][0]~91_combout\);

-- Location: FF_X4_Y24_N23
\Ascensor_inst|floor_usage_counters[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[1][0]~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][0]~q\);

-- Location: LCCOMB_X5_Y24_N16
\Ascensor_inst|floor_usage_counters[1][1]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][1]~77_combout\ = (\Ascensor_inst|floor_usage_counters[1][1]~q\ & (\Ascensor_inst|floor_usage_counters[1][0]~q\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[1][1]~q\ & 
-- (\Ascensor_inst|floor_usage_counters[1][0]~q\ & VCC))
-- \Ascensor_inst|floor_usage_counters[1][1]~78\ = CARRY((\Ascensor_inst|floor_usage_counters[1][1]~q\ & \Ascensor_inst|floor_usage_counters[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][1]~q\,
	datab => \Ascensor_inst|floor_usage_counters[1][0]~q\,
	datad => VCC,
	combout => \Ascensor_inst|floor_usage_counters[1][1]~77_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][1]~78\);

-- Location: FF_X6_Y24_N31
\Ascensor_inst|floor_usage_counters[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[1][1]~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][1]~q\);

-- Location: LCCOMB_X5_Y24_N18
\Ascensor_inst|floor_usage_counters[1][2]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][2]~79_combout\ = (\Ascensor_inst|floor_usage_counters[1][2]~q\ & (!\Ascensor_inst|floor_usage_counters[1][1]~78\)) # (!\Ascensor_inst|floor_usage_counters[1][2]~q\ & ((\Ascensor_inst|floor_usage_counters[1][1]~78\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[1][2]~80\ = CARRY((!\Ascensor_inst|floor_usage_counters[1][1]~78\) # (!\Ascensor_inst|floor_usage_counters[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[1][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[1][1]~78\,
	combout => \Ascensor_inst|floor_usage_counters[1][2]~79_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][2]~80\);

-- Location: FF_X6_Y24_N25
\Ascensor_inst|floor_usage_counters[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[1][2]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][2]~q\);

-- Location: LCCOMB_X5_Y24_N20
\Ascensor_inst|floor_usage_counters[1][3]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][3]~81_combout\ = (\Ascensor_inst|floor_usage_counters[1][3]~q\ & (\Ascensor_inst|floor_usage_counters[1][2]~80\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[1][3]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[1][2]~80\ & VCC))
-- \Ascensor_inst|floor_usage_counters[1][3]~82\ = CARRY((\Ascensor_inst|floor_usage_counters[1][3]~q\ & !\Ascensor_inst|floor_usage_counters[1][2]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[1][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[1][2]~80\,
	combout => \Ascensor_inst|floor_usage_counters[1][3]~81_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][3]~82\);

-- Location: LCCOMB_X5_Y24_N4
\Ascensor_inst|floor_usage_counters[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][3]~feeder_combout\ = \Ascensor_inst|floor_usage_counters[1][3]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[1][3]~81_combout\,
	combout => \Ascensor_inst|floor_usage_counters[1][3]~feeder_combout\);

-- Location: FF_X5_Y24_N5
\Ascensor_inst|floor_usage_counters[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][3]~q\);

-- Location: LCCOMB_X7_Y24_N18
\Ascensor_inst|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add6~0_combout\ = (\Ascensor_inst|current_floor[1]~6_combout\ & (\Ascensor_inst|current_floor[0]~10_combout\)) # (!\Ascensor_inst|current_floor[1]~6_combout\ & (!\Ascensor_inst|current_floor[0]~10_combout\ & 
-- \Ascensor_inst|current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add6~0_combout\);

-- Location: LCCOMB_X6_Y24_N16
\Ascensor_inst|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[1][1]~q\ $ (VCC))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[1][1]~q\ & VCC))
-- \Ascensor_inst|Add8~1\ = CARRY((\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|floor_usage_counters[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|floor_usage_counters[1][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|Add8~0_combout\,
	cout => \Ascensor_inst|Add8~1\);

-- Location: LCCOMB_X6_Y24_N18
\Ascensor_inst|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~2_combout\ = (\Ascensor_inst|floor_usage_counters[1][2]~q\ & ((\Ascensor_inst|Add6~0_combout\ & (!\Ascensor_inst|Add8~1\)) # (!\Ascensor_inst|Add6~0_combout\ & (\Ascensor_inst|Add8~1\ & VCC)))) # 
-- (!\Ascensor_inst|floor_usage_counters[1][2]~q\ & ((\Ascensor_inst|Add6~0_combout\ & ((\Ascensor_inst|Add8~1\) # (GND))) # (!\Ascensor_inst|Add6~0_combout\ & (!\Ascensor_inst|Add8~1\))))
-- \Ascensor_inst|Add8~3\ = CARRY((\Ascensor_inst|floor_usage_counters[1][2]~q\ & (\Ascensor_inst|Add6~0_combout\ & !\Ascensor_inst|Add8~1\)) # (!\Ascensor_inst|floor_usage_counters[1][2]~q\ & ((\Ascensor_inst|Add6~0_combout\) # (!\Ascensor_inst|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][2]~q\,
	datab => \Ascensor_inst|Add6~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add8~1\,
	combout => \Ascensor_inst|Add8~2_combout\,
	cout => \Ascensor_inst|Add8~3\);

-- Location: LCCOMB_X6_Y24_N20
\Ascensor_inst|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~4_combout\ = ((\Ascensor_inst|Add7~1_combout\ $ (\Ascensor_inst|floor_usage_counters[1][3]~q\ $ (\Ascensor_inst|Add8~3\)))) # (GND)
-- \Ascensor_inst|Add8~5\ = CARRY((\Ascensor_inst|Add7~1_combout\ & (\Ascensor_inst|floor_usage_counters[1][3]~q\ & !\Ascensor_inst|Add8~3\)) # (!\Ascensor_inst|Add7~1_combout\ & ((\Ascensor_inst|floor_usage_counters[1][3]~q\) # (!\Ascensor_inst|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add7~1_combout\,
	datab => \Ascensor_inst|floor_usage_counters[1][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add8~3\,
	combout => \Ascensor_inst|Add8~4_combout\,
	cout => \Ascensor_inst|Add8~5\);

-- Location: LCCOMB_X6_Y24_N2
\Ascensor_inst|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~0_combout\ = \Ascensor_inst|Add8~0_combout\ $ (VCC)
-- \Ascensor_inst|Add9~1\ = CARRY(\Ascensor_inst|Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add8~0_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add9~0_combout\,
	cout => \Ascensor_inst|Add9~1\);

-- Location: LCCOMB_X6_Y24_N4
\Ascensor_inst|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~2_combout\ = (\Ascensor_inst|Add8~2_combout\ & (\Ascensor_inst|Add9~1\ & VCC)) # (!\Ascensor_inst|Add8~2_combout\ & (!\Ascensor_inst|Add9~1\))
-- \Ascensor_inst|Add9~3\ = CARRY((!\Ascensor_inst|Add8~2_combout\ & !\Ascensor_inst|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add8~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add9~1\,
	combout => \Ascensor_inst|Add9~2_combout\,
	cout => \Ascensor_inst|Add9~3\);

-- Location: LCCOMB_X6_Y24_N6
\Ascensor_inst|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~4_combout\ = (\Ascensor_inst|Add8~4_combout\ & (\Ascensor_inst|Add9~3\ $ (GND))) # (!\Ascensor_inst|Add8~4_combout\ & (!\Ascensor_inst|Add9~3\ & VCC))
-- \Ascensor_inst|Add9~5\ = CARRY((\Ascensor_inst|Add8~4_combout\ & !\Ascensor_inst|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add8~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add9~3\,
	combout => \Ascensor_inst|Add9~4_combout\,
	cout => \Ascensor_inst|Add9~5\);

-- Location: LCCOMB_X5_Y24_N8
\Ascensor_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan0~0_combout\ = (\Ascensor_inst|Add9~4_combout\) # ((\Ascensor_inst|floor_usage_counters[1][0]~q\) # ((\Ascensor_inst|Add9~2_combout\) # (\Ascensor_inst|Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add9~4_combout\,
	datab => \Ascensor_inst|floor_usage_counters[1][0]~q\,
	datac => \Ascensor_inst|Add9~2_combout\,
	datad => \Ascensor_inst|Add9~0_combout\,
	combout => \Ascensor_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y24_N30
\Ascensor_inst|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add20~0_combout\ = ((!\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[1]~6_combout\)) # (!\Ascensor_inst|current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add20~0_combout\);

-- Location: LCCOMB_X5_Y24_N22
\Ascensor_inst|floor_usage_counters[1][4]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][4]~83_combout\ = (\Ascensor_inst|floor_usage_counters[1][4]~q\ & (!\Ascensor_inst|floor_usage_counters[1][3]~82\)) # (!\Ascensor_inst|floor_usage_counters[1][4]~q\ & ((\Ascensor_inst|floor_usage_counters[1][3]~82\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[1][4]~84\ = CARRY((!\Ascensor_inst|floor_usage_counters[1][3]~82\) # (!\Ascensor_inst|floor_usage_counters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[1][3]~82\,
	combout => \Ascensor_inst|floor_usage_counters[1][4]~83_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][4]~84\);

-- Location: FF_X5_Y24_N23
\Ascensor_inst|floor_usage_counters[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[1][4]~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][4]~q\);

-- Location: LCCOMB_X5_Y24_N24
\Ascensor_inst|floor_usage_counters[1][5]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][5]~85_combout\ = (\Ascensor_inst|floor_usage_counters[1][5]~q\ & (\Ascensor_inst|floor_usage_counters[1][4]~84\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[1][5]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[1][4]~84\ & VCC))
-- \Ascensor_inst|floor_usage_counters[1][5]~86\ = CARRY((\Ascensor_inst|floor_usage_counters[1][5]~q\ & !\Ascensor_inst|floor_usage_counters[1][4]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[1][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[1][4]~84\,
	combout => \Ascensor_inst|floor_usage_counters[1][5]~85_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][5]~86\);

-- Location: FF_X6_Y24_N1
\Ascensor_inst|floor_usage_counters[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[1][5]~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][5]~q\);

-- Location: LCCOMB_X6_Y24_N0
\Ascensor_inst|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add7~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|current_floor[1]~6_combout\)) # (!\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add7~0_combout\);

-- Location: LCCOMB_X6_Y24_N22
\Ascensor_inst|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~6_combout\ = (\Ascensor_inst|floor_usage_counters[1][4]~q\ & ((\Ascensor_inst|Add7~0_combout\ & (!\Ascensor_inst|Add8~5\)) # (!\Ascensor_inst|Add7~0_combout\ & (\Ascensor_inst|Add8~5\ & VCC)))) # 
-- (!\Ascensor_inst|floor_usage_counters[1][4]~q\ & ((\Ascensor_inst|Add7~0_combout\ & ((\Ascensor_inst|Add8~5\) # (GND))) # (!\Ascensor_inst|Add7~0_combout\ & (!\Ascensor_inst|Add8~5\))))
-- \Ascensor_inst|Add8~7\ = CARRY((\Ascensor_inst|floor_usage_counters[1][4]~q\ & (\Ascensor_inst|Add7~0_combout\ & !\Ascensor_inst|Add8~5\)) # (!\Ascensor_inst|floor_usage_counters[1][4]~q\ & ((\Ascensor_inst|Add7~0_combout\) # (!\Ascensor_inst|Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][4]~q\,
	datab => \Ascensor_inst|Add7~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add8~5\,
	combout => \Ascensor_inst|Add8~6_combout\,
	cout => \Ascensor_inst|Add8~7\);

-- Location: LCCOMB_X6_Y24_N24
\Ascensor_inst|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~8_combout\ = ((\Ascensor_inst|Add20~0_combout\ $ (\Ascensor_inst|floor_usage_counters[1][5]~q\ $ (!\Ascensor_inst|Add8~7\)))) # (GND)
-- \Ascensor_inst|Add8~9\ = CARRY((\Ascensor_inst|Add20~0_combout\ & ((\Ascensor_inst|floor_usage_counters[1][5]~q\) # (!\Ascensor_inst|Add8~7\))) # (!\Ascensor_inst|Add20~0_combout\ & (\Ascensor_inst|floor_usage_counters[1][5]~q\ & 
-- !\Ascensor_inst|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add20~0_combout\,
	datab => \Ascensor_inst|floor_usage_counters[1][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add8~7\,
	combout => \Ascensor_inst|Add8~8_combout\,
	cout => \Ascensor_inst|Add8~9\);

-- Location: LCCOMB_X6_Y24_N8
\Ascensor_inst|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~6_combout\ = (\Ascensor_inst|Add8~6_combout\ & (!\Ascensor_inst|Add9~5\)) # (!\Ascensor_inst|Add8~6_combout\ & ((\Ascensor_inst|Add9~5\) # (GND)))
-- \Ascensor_inst|Add9~7\ = CARRY((!\Ascensor_inst|Add9~5\) # (!\Ascensor_inst|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add8~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add9~5\,
	combout => \Ascensor_inst|Add9~6_combout\,
	cout => \Ascensor_inst|Add9~7\);

-- Location: LCCOMB_X6_Y24_N10
\Ascensor_inst|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~8_combout\ = (\Ascensor_inst|Add8~8_combout\ & ((GND) # (!\Ascensor_inst|Add9~7\))) # (!\Ascensor_inst|Add8~8_combout\ & (\Ascensor_inst|Add9~7\ $ (GND)))
-- \Ascensor_inst|Add9~9\ = CARRY((\Ascensor_inst|Add8~8_combout\) # (!\Ascensor_inst|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add8~8_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add9~7\,
	combout => \Ascensor_inst|Add9~8_combout\,
	cout => \Ascensor_inst|Add9~9\);

-- Location: LCCOMB_X5_Y24_N26
\Ascensor_inst|floor_usage_counters[1][6]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][6]~87_combout\ = (\Ascensor_inst|floor_usage_counters[1][6]~q\ & (!\Ascensor_inst|floor_usage_counters[1][5]~86\)) # (!\Ascensor_inst|floor_usage_counters[1][6]~q\ & ((\Ascensor_inst|floor_usage_counters[1][5]~86\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[1][6]~88\ = CARRY((!\Ascensor_inst|floor_usage_counters[1][5]~86\) # (!\Ascensor_inst|floor_usage_counters[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[1][5]~86\,
	combout => \Ascensor_inst|floor_usage_counters[1][6]~87_combout\,
	cout => \Ascensor_inst|floor_usage_counters[1][6]~88\);

-- Location: FF_X5_Y24_N27
\Ascensor_inst|floor_usage_counters[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[1][6]~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][6]~q\);

-- Location: LCCOMB_X5_Y24_N28
\Ascensor_inst|floor_usage_counters[1][7]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[1][7]~89_combout\ = \Ascensor_inst|floor_usage_counters[1][6]~88\ $ (!\Ascensor_inst|floor_usage_counters[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[1][7]~q\,
	cin => \Ascensor_inst|floor_usage_counters[1][6]~88\,
	combout => \Ascensor_inst|floor_usage_counters[1][7]~89_combout\);

-- Location: FF_X5_Y24_N29
\Ascensor_inst|floor_usage_counters[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[1][7]~89_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[1][7]~q\);

-- Location: LCCOMB_X6_Y24_N26
\Ascensor_inst|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~10_combout\ = (\Ascensor_inst|floor_usage_counters[1][6]~q\ & (\Ascensor_inst|Add8~9\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[1][6]~q\ & (!\Ascensor_inst|Add8~9\))
-- \Ascensor_inst|Add8~11\ = CARRY((!\Ascensor_inst|floor_usage_counters[1][6]~q\ & !\Ascensor_inst|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[1][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add8~9\,
	combout => \Ascensor_inst|Add8~10_combout\,
	cout => \Ascensor_inst|Add8~11\);

-- Location: LCCOMB_X6_Y24_N28
\Ascensor_inst|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add8~12_combout\ = \Ascensor_inst|Add8~11\ $ (!\Ascensor_inst|floor_usage_counters[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[1][7]~q\,
	cin => \Ascensor_inst|Add8~11\,
	combout => \Ascensor_inst|Add8~12_combout\);

-- Location: LCCOMB_X6_Y24_N12
\Ascensor_inst|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~10_combout\ = (\Ascensor_inst|Add8~10_combout\ & (\Ascensor_inst|Add9~9\ & VCC)) # (!\Ascensor_inst|Add8~10_combout\ & (!\Ascensor_inst|Add9~9\))
-- \Ascensor_inst|Add9~11\ = CARRY((!\Ascensor_inst|Add8~10_combout\ & !\Ascensor_inst|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add8~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add9~9\,
	combout => \Ascensor_inst|Add9~10_combout\,
	cout => \Ascensor_inst|Add9~11\);

-- Location: LCCOMB_X6_Y24_N14
\Ascensor_inst|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add9~12_combout\ = \Ascensor_inst|Add9~11\ $ (\Ascensor_inst|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|Add8~12_combout\,
	cin => \Ascensor_inst|Add9~11\,
	combout => \Ascensor_inst|Add9~12_combout\);

-- Location: LCCOMB_X5_Y24_N14
\Ascensor_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan0~1_combout\ = (\Ascensor_inst|Add9~8_combout\) # ((\Ascensor_inst|Add9~12_combout\) # ((\Ascensor_inst|Add9~6_combout\) # (\Ascensor_inst|Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add9~8_combout\,
	datab => \Ascensor_inst|Add9~12_combout\,
	datac => \Ascensor_inst|Add9~6_combout\,
	datad => \Ascensor_inst|Add9~10_combout\,
	combout => \Ascensor_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y24_N10
\Ascensor_inst|next_target~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~1_combout\ = ((!\Ascensor_inst|LessThan0~0_combout\ & !\Ascensor_inst|LessThan0~1_combout\)) # (!\Ascensor_inst|floor_calls\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(1),
	datab => \Ascensor_inst|LessThan0~0_combout\,
	datac => \Ascensor_inst|LessThan0~1_combout\,
	combout => \Ascensor_inst|next_target~1_combout\);

-- Location: IOIBUF_X0_Y25_N22
\btn_piso4_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso4_dn,
	o => \btn_piso4_dn~input_o\);

-- Location: LCCOMB_X1_Y25_N30
\comb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\botones_habilitados~0_combout\ & \btn_piso4_dn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botones_habilitados~0_combout\,
	datac => \btn_piso4_dn~input_o\,
	combout => \comb~6_combout\);

-- Location: FF_X1_Y25_N31
\Ascensor_inst|btn_sync[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[2][0]~q\);

-- Location: FF_X1_Y24_N15
\Ascensor_inst|btn_sync[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[2][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[2][1]~q\);

-- Location: LCCOMB_X1_Y24_N10
\Ascensor_inst|btn_edges~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~6_combout\ = (!\Ascensor_inst|btn_sync[2][1]~q\ & \Ascensor_inst|btn_sync[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|btn_sync[2][1]~q\,
	datac => \Ascensor_inst|btn_sync[2][0]~q\,
	combout => \Ascensor_inst|btn_edges~6_combout\);

-- Location: FF_X1_Y24_N11
\Ascensor_inst|btn_edges[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(2));

-- Location: IOIBUF_X0_Y27_N1
\btn_piso4_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso4_up,
	o => \btn_piso4_up~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\btn_piso4_up~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso4_up~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X1_Y24_N9
\Ascensor_inst|btn_sync[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[3][0]~q\);

-- Location: FF_X1_Y24_N5
\Ascensor_inst|btn_sync[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[3][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[3][1]~q\);

-- Location: LCCOMB_X1_Y24_N28
\Ascensor_inst|btn_edges~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~5_combout\ = (\Ascensor_inst|btn_sync[3][0]~q\ & !\Ascensor_inst|btn_sync[3][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|btn_sync[3][0]~q\,
	datac => \Ascensor_inst|btn_sync[3][1]~q\,
	combout => \Ascensor_inst|btn_edges~5_combout\);

-- Location: FF_X1_Y24_N29
\Ascensor_inst|btn_edges[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(3));

-- Location: LCCOMB_X1_Y24_N4
\Ascensor_inst|elevator_control~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|elevator_control~2_combout\ = (\Ascensor_inst|btn_edges\(2)) # (\Ascensor_inst|btn_edges\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(2),
	datad => \Ascensor_inst|btn_edges\(3),
	combout => \Ascensor_inst|elevator_control~2_combout\);

-- Location: LCCOMB_X4_Y25_N4
\Ascensor_inst|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector15~0_combout\ = (\Ascensor_inst|main_state.MOVING_UP~q\ & (((\Ascensor_inst|LessThan7~9_combout\) # (!\Ascensor_inst|floor_calls~3_combout\)) # (!\Ascensor_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal3~0_combout\,
	datab => \Ascensor_inst|LessThan7~9_combout\,
	datac => \Ascensor_inst|main_state.MOVING_UP~q\,
	datad => \Ascensor_inst|floor_calls~3_combout\,
	combout => \Ascensor_inst|Selector15~0_combout\);

-- Location: LCCOMB_X4_Y24_N2
\Ascensor_inst|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~1_combout\ = (!\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Equal3~1_combout\);

-- Location: LCCOMB_X4_Y25_N14
\Ascensor_inst|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector15~1_combout\ = (\Ascensor_inst|WideOr2~combout\) # ((!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|Equal3~1_combout\) # (!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~4_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|Equal3~1_combout\,
	combout => \Ascensor_inst|Selector15~1_combout\);

-- Location: LCCOMB_X4_Y26_N20
\Ascensor_inst|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~2_combout\ = (\Ascensor_inst|current_floor[1]~6_combout\ & (\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Equal3~2_combout\);

-- Location: LCCOMB_X3_Y25_N26
\Ascensor_inst|floor_usage_counters[5][0]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][0]~109_combout\ = \Ascensor_inst|btn_edges\(8) $ (\Ascensor_inst|floor_usage_counters[5][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(8),
	datac => \Ascensor_inst|floor_usage_counters[5][0]~q\,
	combout => \Ascensor_inst|floor_usage_counters[5][0]~109_combout\);

-- Location: FF_X3_Y25_N27
\Ascensor_inst|floor_usage_counters[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][0]~109_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][0]~q\);

-- Location: LCCOMB_X6_Y25_N18
\Ascensor_inst|floor_usage_counters[5][1]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][1]~95_combout\ = (\Ascensor_inst|floor_usage_counters[5][0]~q\ & (\Ascensor_inst|floor_usage_counters[5][1]~q\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[5][0]~q\ & 
-- (\Ascensor_inst|floor_usage_counters[5][1]~q\ & VCC))
-- \Ascensor_inst|floor_usage_counters[5][1]~96\ = CARRY((\Ascensor_inst|floor_usage_counters[5][0]~q\ & \Ascensor_inst|floor_usage_counters[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][0]~q\,
	datab => \Ascensor_inst|floor_usage_counters[5][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|floor_usage_counters[5][1]~95_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][1]~96\);

-- Location: LCCOMB_X6_Y25_N0
\Ascensor_inst|floor_usage_counters[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][1]~feeder_combout\ = \Ascensor_inst|floor_usage_counters[5][1]~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[5][1]~95_combout\,
	combout => \Ascensor_inst|floor_usage_counters[5][1]~feeder_combout\);

-- Location: FF_X6_Y25_N1
\Ascensor_inst|floor_usage_counters[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][1]~q\);

-- Location: LCCOMB_X6_Y25_N20
\Ascensor_inst|floor_usage_counters[5][2]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][2]~97_combout\ = (\Ascensor_inst|floor_usage_counters[5][2]~q\ & (!\Ascensor_inst|floor_usage_counters[5][1]~96\)) # (!\Ascensor_inst|floor_usage_counters[5][2]~q\ & ((\Ascensor_inst|floor_usage_counters[5][1]~96\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[5][2]~98\ = CARRY((!\Ascensor_inst|floor_usage_counters[5][1]~96\) # (!\Ascensor_inst|floor_usage_counters[5][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[5][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[5][1]~96\,
	combout => \Ascensor_inst|floor_usage_counters[5][2]~97_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][2]~98\);

-- Location: FF_X6_Y25_N21
\Ascensor_inst|floor_usage_counters[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][2]~97_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][2]~q\);

-- Location: LCCOMB_X6_Y25_N22
\Ascensor_inst|floor_usage_counters[5][3]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][3]~99_combout\ = (\Ascensor_inst|floor_usage_counters[5][3]~q\ & (\Ascensor_inst|floor_usage_counters[5][2]~98\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[5][3]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[5][2]~98\ & VCC))
-- \Ascensor_inst|floor_usage_counters[5][3]~100\ = CARRY((\Ascensor_inst|floor_usage_counters[5][3]~q\ & !\Ascensor_inst|floor_usage_counters[5][2]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[5][2]~98\,
	combout => \Ascensor_inst|floor_usage_counters[5][3]~99_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][3]~100\);

-- Location: FF_X6_Y25_N23
\Ascensor_inst|floor_usage_counters[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][3]~99_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][3]~q\);

-- Location: LCCOMB_X6_Y25_N24
\Ascensor_inst|floor_usage_counters[5][4]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][4]~101_combout\ = (\Ascensor_inst|floor_usage_counters[5][4]~q\ & (!\Ascensor_inst|floor_usage_counters[5][3]~100\)) # (!\Ascensor_inst|floor_usage_counters[5][4]~q\ & 
-- ((\Ascensor_inst|floor_usage_counters[5][3]~100\) # (GND)))
-- \Ascensor_inst|floor_usage_counters[5][4]~102\ = CARRY((!\Ascensor_inst|floor_usage_counters[5][3]~100\) # (!\Ascensor_inst|floor_usage_counters[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[5][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[5][3]~100\,
	combout => \Ascensor_inst|floor_usage_counters[5][4]~101_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][4]~102\);

-- Location: FF_X6_Y25_N25
\Ascensor_inst|floor_usage_counters[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][4]~101_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][4]~q\);

-- Location: LCCOMB_X6_Y25_N26
\Ascensor_inst|floor_usage_counters[5][5]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][5]~103_combout\ = (\Ascensor_inst|floor_usage_counters[5][5]~q\ & (\Ascensor_inst|floor_usage_counters[5][4]~102\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[5][5]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[5][4]~102\ & VCC))
-- \Ascensor_inst|floor_usage_counters[5][5]~104\ = CARRY((\Ascensor_inst|floor_usage_counters[5][5]~q\ & !\Ascensor_inst|floor_usage_counters[5][4]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[5][4]~102\,
	combout => \Ascensor_inst|floor_usage_counters[5][5]~103_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][5]~104\);

-- Location: FF_X6_Y25_N27
\Ascensor_inst|floor_usage_counters[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][5]~103_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][5]~q\);

-- Location: LCCOMB_X6_Y25_N28
\Ascensor_inst|floor_usage_counters[5][6]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][6]~105_combout\ = (\Ascensor_inst|floor_usage_counters[5][6]~q\ & (!\Ascensor_inst|floor_usage_counters[5][5]~104\)) # (!\Ascensor_inst|floor_usage_counters[5][6]~q\ & 
-- ((\Ascensor_inst|floor_usage_counters[5][5]~104\) # (GND)))
-- \Ascensor_inst|floor_usage_counters[5][6]~106\ = CARRY((!\Ascensor_inst|floor_usage_counters[5][5]~104\) # (!\Ascensor_inst|floor_usage_counters[5][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[5][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[5][5]~104\,
	combout => \Ascensor_inst|floor_usage_counters[5][6]~105_combout\,
	cout => \Ascensor_inst|floor_usage_counters[5][6]~106\);

-- Location: FF_X6_Y25_N29
\Ascensor_inst|floor_usage_counters[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][6]~105_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][6]~q\);

-- Location: LCCOMB_X6_Y25_N30
\Ascensor_inst|floor_usage_counters[5][7]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[5][7]~107_combout\ = \Ascensor_inst|floor_usage_counters[5][7]~q\ $ (!\Ascensor_inst|floor_usage_counters[5][6]~106\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][7]~q\,
	cin => \Ascensor_inst|floor_usage_counters[5][6]~106\,
	combout => \Ascensor_inst|floor_usage_counters[5][7]~107_combout\);

-- Location: FF_X6_Y25_N31
\Ascensor_inst|floor_usage_counters[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[5][7]~107_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|btn_edges\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[5][7]~q\);

-- Location: LCCOMB_X6_Y26_N22
\Ascensor_inst|Equal3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~6_combout\ = (!\Ascensor_inst|current_floor[2]~2_combout\ & !\Ascensor_inst|current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Equal3~6_combout\);

-- Location: LCCOMB_X6_Y26_N24
\Ascensor_inst|Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add27~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|current_floor[1]~6_combout\))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (!\Ascensor_inst|current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add27~0_combout\);

-- Location: LCCOMB_X6_Y26_N26
\Ascensor_inst|Add27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add27~1_combout\ = \Ascensor_inst|current_floor[0]~10_combout\ $ (((\Ascensor_inst|current_floor[2]~2_combout\) # (\Ascensor_inst|current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add27~1_combout\);

-- Location: LCCOMB_X6_Y26_N20
\Ascensor_inst|Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add26~0_combout\ = ((!\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|current_floor[2]~2_combout\)) # (!\Ascensor_inst|current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add26~0_combout\);

-- Location: LCCOMB_X6_Y26_N0
\Ascensor_inst|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[5][1]~q\ $ (VCC))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[5][1]~q\ & VCC))
-- \Ascensor_inst|Add28~1\ = CARRY((\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|floor_usage_counters[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|floor_usage_counters[5][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|Add28~0_combout\,
	cout => \Ascensor_inst|Add28~1\);

-- Location: LCCOMB_X6_Y26_N2
\Ascensor_inst|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~2_combout\ = (\Ascensor_inst|floor_usage_counters[5][2]~q\ & ((\Ascensor_inst|Add26~0_combout\ & (\Ascensor_inst|Add28~1\ & VCC)) # (!\Ascensor_inst|Add26~0_combout\ & (!\Ascensor_inst|Add28~1\)))) # 
-- (!\Ascensor_inst|floor_usage_counters[5][2]~q\ & ((\Ascensor_inst|Add26~0_combout\ & (!\Ascensor_inst|Add28~1\)) # (!\Ascensor_inst|Add26~0_combout\ & ((\Ascensor_inst|Add28~1\) # (GND)))))
-- \Ascensor_inst|Add28~3\ = CARRY((\Ascensor_inst|floor_usage_counters[5][2]~q\ & (!\Ascensor_inst|Add26~0_combout\ & !\Ascensor_inst|Add28~1\)) # (!\Ascensor_inst|floor_usage_counters[5][2]~q\ & ((!\Ascensor_inst|Add28~1\) # 
-- (!\Ascensor_inst|Add26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][2]~q\,
	datab => \Ascensor_inst|Add26~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add28~1\,
	combout => \Ascensor_inst|Add28~2_combout\,
	cout => \Ascensor_inst|Add28~3\);

-- Location: LCCOMB_X6_Y26_N4
\Ascensor_inst|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~4_combout\ = ((\Ascensor_inst|Add27~1_combout\ $ (\Ascensor_inst|floor_usage_counters[5][3]~q\ $ (\Ascensor_inst|Add28~3\)))) # (GND)
-- \Ascensor_inst|Add28~5\ = CARRY((\Ascensor_inst|Add27~1_combout\ & (\Ascensor_inst|floor_usage_counters[5][3]~q\ & !\Ascensor_inst|Add28~3\)) # (!\Ascensor_inst|Add27~1_combout\ & ((\Ascensor_inst|floor_usage_counters[5][3]~q\) # 
-- (!\Ascensor_inst|Add28~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add27~1_combout\,
	datab => \Ascensor_inst|floor_usage_counters[5][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add28~3\,
	combout => \Ascensor_inst|Add28~4_combout\,
	cout => \Ascensor_inst|Add28~5\);

-- Location: LCCOMB_X6_Y26_N6
\Ascensor_inst|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~6_combout\ = (\Ascensor_inst|floor_usage_counters[5][4]~q\ & ((\Ascensor_inst|Add27~0_combout\ & (!\Ascensor_inst|Add28~5\)) # (!\Ascensor_inst|Add27~0_combout\ & (\Ascensor_inst|Add28~5\ & VCC)))) # 
-- (!\Ascensor_inst|floor_usage_counters[5][4]~q\ & ((\Ascensor_inst|Add27~0_combout\ & ((\Ascensor_inst|Add28~5\) # (GND))) # (!\Ascensor_inst|Add27~0_combout\ & (!\Ascensor_inst|Add28~5\))))
-- \Ascensor_inst|Add28~7\ = CARRY((\Ascensor_inst|floor_usage_counters[5][4]~q\ & (\Ascensor_inst|Add27~0_combout\ & !\Ascensor_inst|Add28~5\)) # (!\Ascensor_inst|floor_usage_counters[5][4]~q\ & ((\Ascensor_inst|Add27~0_combout\) # 
-- (!\Ascensor_inst|Add28~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][4]~q\,
	datab => \Ascensor_inst|Add27~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add28~5\,
	combout => \Ascensor_inst|Add28~6_combout\,
	cout => \Ascensor_inst|Add28~7\);

-- Location: LCCOMB_X6_Y26_N8
\Ascensor_inst|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~8_combout\ = ((\Ascensor_inst|Equal3~6_combout\ $ (\Ascensor_inst|floor_usage_counters[5][5]~q\ $ (\Ascensor_inst|Add28~7\)))) # (GND)
-- \Ascensor_inst|Add28~9\ = CARRY((\Ascensor_inst|Equal3~6_combout\ & (\Ascensor_inst|floor_usage_counters[5][5]~q\ & !\Ascensor_inst|Add28~7\)) # (!\Ascensor_inst|Equal3~6_combout\ & ((\Ascensor_inst|floor_usage_counters[5][5]~q\) # 
-- (!\Ascensor_inst|Add28~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal3~6_combout\,
	datab => \Ascensor_inst|floor_usage_counters[5][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add28~7\,
	combout => \Ascensor_inst|Add28~8_combout\,
	cout => \Ascensor_inst|Add28~9\);

-- Location: LCCOMB_X6_Y26_N10
\Ascensor_inst|Add28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~10_combout\ = (\Ascensor_inst|floor_usage_counters[5][6]~q\ & (\Ascensor_inst|Add28~9\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[5][6]~q\ & (!\Ascensor_inst|Add28~9\))
-- \Ascensor_inst|Add28~11\ = CARRY((!\Ascensor_inst|floor_usage_counters[5][6]~q\ & !\Ascensor_inst|Add28~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add28~9\,
	combout => \Ascensor_inst|Add28~10_combout\,
	cout => \Ascensor_inst|Add28~11\);

-- Location: LCCOMB_X6_Y26_N12
\Ascensor_inst|Add28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add28~12_combout\ = \Ascensor_inst|Add28~11\ $ (!\Ascensor_inst|floor_usage_counters[5][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[5][7]~q\,
	cin => \Ascensor_inst|Add28~11\,
	combout => \Ascensor_inst|Add28~12_combout\);

-- Location: LCCOMB_X7_Y26_N8
\Ascensor_inst|Add29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~0_combout\ = \Ascensor_inst|Add28~0_combout\ $ (VCC)
-- \Ascensor_inst|Add29~1\ = CARRY(\Ascensor_inst|Add28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add28~0_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add29~0_combout\,
	cout => \Ascensor_inst|Add29~1\);

-- Location: LCCOMB_X7_Y26_N10
\Ascensor_inst|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~2_combout\ = (\Ascensor_inst|Add28~2_combout\ & (\Ascensor_inst|Add29~1\ & VCC)) # (!\Ascensor_inst|Add28~2_combout\ & (!\Ascensor_inst|Add29~1\))
-- \Ascensor_inst|Add29~3\ = CARRY((!\Ascensor_inst|Add28~2_combout\ & !\Ascensor_inst|Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add28~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add29~1\,
	combout => \Ascensor_inst|Add29~2_combout\,
	cout => \Ascensor_inst|Add29~3\);

-- Location: LCCOMB_X7_Y26_N12
\Ascensor_inst|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~4_combout\ = (\Ascensor_inst|Add28~4_combout\ & (\Ascensor_inst|Add29~3\ $ (GND))) # (!\Ascensor_inst|Add28~4_combout\ & (!\Ascensor_inst|Add29~3\ & VCC))
-- \Ascensor_inst|Add29~5\ = CARRY((\Ascensor_inst|Add28~4_combout\ & !\Ascensor_inst|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add28~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add29~3\,
	combout => \Ascensor_inst|Add29~4_combout\,
	cout => \Ascensor_inst|Add29~5\);

-- Location: LCCOMB_X7_Y26_N14
\Ascensor_inst|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~6_combout\ = (\Ascensor_inst|Add28~6_combout\ & (!\Ascensor_inst|Add29~5\)) # (!\Ascensor_inst|Add28~6_combout\ & ((\Ascensor_inst|Add29~5\) # (GND)))
-- \Ascensor_inst|Add29~7\ = CARRY((!\Ascensor_inst|Add29~5\) # (!\Ascensor_inst|Add28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add28~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add29~5\,
	combout => \Ascensor_inst|Add29~6_combout\,
	cout => \Ascensor_inst|Add29~7\);

-- Location: LCCOMB_X7_Y26_N16
\Ascensor_inst|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~8_combout\ = (\Ascensor_inst|Add28~8_combout\ & ((GND) # (!\Ascensor_inst|Add29~7\))) # (!\Ascensor_inst|Add28~8_combout\ & (\Ascensor_inst|Add29~7\ $ (GND)))
-- \Ascensor_inst|Add29~9\ = CARRY((\Ascensor_inst|Add28~8_combout\) # (!\Ascensor_inst|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add28~8_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add29~7\,
	combout => \Ascensor_inst|Add29~8_combout\,
	cout => \Ascensor_inst|Add29~9\);

-- Location: LCCOMB_X7_Y26_N18
\Ascensor_inst|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~10_combout\ = (\Ascensor_inst|Add28~10_combout\ & (\Ascensor_inst|Add29~9\ & VCC)) # (!\Ascensor_inst|Add28~10_combout\ & (!\Ascensor_inst|Add29~9\))
-- \Ascensor_inst|Add29~11\ = CARRY((!\Ascensor_inst|Add28~10_combout\ & !\Ascensor_inst|Add29~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add28~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add29~9\,
	combout => \Ascensor_inst|Add29~10_combout\,
	cout => \Ascensor_inst|Add29~11\);

-- Location: LCCOMB_X7_Y26_N20
\Ascensor_inst|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add29~12_combout\ = \Ascensor_inst|Add29~11\ $ (\Ascensor_inst|Add28~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|Add28~12_combout\,
	cin => \Ascensor_inst|Add29~11\,
	combout => \Ascensor_inst|Add29~12_combout\);

-- Location: IOIBUF_X0_Y22_N15
\btn_piso2_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso2_up,
	o => \btn_piso2_up~input_o\);

-- Location: LCCOMB_X1_Y25_N16
\comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\botones_habilitados~0_combout\ & \btn_piso2_up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \botones_habilitados~0_combout\,
	datad => \btn_piso2_up~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X1_Y25_N17
\Ascensor_inst|btn_sync[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[7][0]~q\);

-- Location: FF_X5_Y25_N23
\Ascensor_inst|btn_sync[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[7][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[7][1]~q\);

-- Location: LCCOMB_X5_Y25_N10
\Ascensor_inst|btn_edges~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~1_combout\ = (!\Ascensor_inst|btn_sync[7][1]~q\ & \Ascensor_inst|btn_sync[7][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_sync[7][1]~q\,
	datab => \Ascensor_inst|btn_sync[7][0]~q\,
	combout => \Ascensor_inst|btn_edges~1_combout\);

-- Location: FF_X5_Y25_N15
\Ascensor_inst|btn_edges[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_edges~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(7));

-- Location: IOIBUF_X0_Y25_N15
\btn_piso2_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso2_dn,
	o => \btn_piso2_dn~input_o\);

-- Location: LCCOMB_X4_Y25_N6
\comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\btn_piso2_dn~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso2_dn~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~2_combout\);

-- Location: FF_X4_Y25_N7
\Ascensor_inst|btn_sync[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[6][0]~q\);

-- Location: FF_X5_Y25_N25
\Ascensor_inst|btn_sync[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[6][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[6][1]~q\);

-- Location: LCCOMB_X5_Y25_N2
\Ascensor_inst|btn_edges~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~2_combout\ = (\Ascensor_inst|btn_sync[6][0]~q\ & !\Ascensor_inst|btn_sync[6][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|btn_sync[6][0]~q\,
	datad => \Ascensor_inst|btn_sync[6][1]~q\,
	combout => \Ascensor_inst|btn_edges~2_combout\);

-- Location: FF_X5_Y25_N19
\Ascensor_inst|btn_edges[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_edges~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(6));

-- Location: LCCOMB_X5_Y25_N26
\Ascensor_inst|floor_usage_counters[4][0]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][0]~94_combout\ = \Ascensor_inst|floor_usage_counters[4][0]~q\ $ (((\Ascensor_inst|btn_edges\(7)) # (\Ascensor_inst|btn_edges\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(7),
	datab => \Ascensor_inst|btn_edges\(6),
	datad => \Ascensor_inst|floor_usage_counters[4][0]~q\,
	combout => \Ascensor_inst|floor_usage_counters[4][0]~94_combout\);

-- Location: FF_X5_Y25_N13
\Ascensor_inst|floor_usage_counters[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][0]~94_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][0]~q\);

-- Location: LCCOMB_X5_Y25_N12
\Ascensor_inst|floor_usage_counters[4][1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][1]~35_combout\ = (\Ascensor_inst|floor_usage_counters[4][0]~q\ & (\Ascensor_inst|floor_usage_counters[4][1]~q\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[4][0]~q\ & 
-- (\Ascensor_inst|floor_usage_counters[4][1]~q\ & VCC))
-- \Ascensor_inst|floor_usage_counters[4][1]~36\ = CARRY((\Ascensor_inst|floor_usage_counters[4][0]~q\ & \Ascensor_inst|floor_usage_counters[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][0]~q\,
	datab => \Ascensor_inst|floor_usage_counters[4][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|floor_usage_counters[4][1]~35_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][1]~36\);

-- Location: LCCOMB_X5_Y25_N4
\Ascensor_inst|elevator_control~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|elevator_control~0_combout\ = (\Ascensor_inst|btn_edges\(7)) # (\Ascensor_inst|btn_edges\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(7),
	datad => \Ascensor_inst|btn_edges\(6),
	combout => \Ascensor_inst|elevator_control~0_combout\);

-- Location: FF_X5_Y25_N27
\Ascensor_inst|floor_usage_counters[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][1]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][1]~q\);

-- Location: LCCOMB_X5_Y25_N14
\Ascensor_inst|floor_usage_counters[4][2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][2]~37_combout\ = (\Ascensor_inst|floor_usage_counters[4][2]~q\ & (!\Ascensor_inst|floor_usage_counters[4][1]~36\)) # (!\Ascensor_inst|floor_usage_counters[4][2]~q\ & ((\Ascensor_inst|floor_usage_counters[4][1]~36\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[4][2]~38\ = CARRY((!\Ascensor_inst|floor_usage_counters[4][1]~36\) # (!\Ascensor_inst|floor_usage_counters[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[4][1]~36\,
	combout => \Ascensor_inst|floor_usage_counters[4][2]~37_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][2]~38\);

-- Location: FF_X5_Y25_N11
\Ascensor_inst|floor_usage_counters[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][2]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][2]~q\);

-- Location: LCCOMB_X5_Y25_N16
\Ascensor_inst|floor_usage_counters[4][3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][3]~39_combout\ = (\Ascensor_inst|floor_usage_counters[4][3]~q\ & (\Ascensor_inst|floor_usage_counters[4][2]~38\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[4][3]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[4][2]~38\ & VCC))
-- \Ascensor_inst|floor_usage_counters[4][3]~40\ = CARRY((\Ascensor_inst|floor_usage_counters[4][3]~q\ & !\Ascensor_inst|floor_usage_counters[4][2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[4][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[4][2]~38\,
	combout => \Ascensor_inst|floor_usage_counters[4][3]~39_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][3]~40\);

-- Location: FF_X5_Y25_N5
\Ascensor_inst|floor_usage_counters[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][3]~q\);

-- Location: LCCOMB_X5_Y25_N18
\Ascensor_inst|floor_usage_counters[4][4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][4]~41_combout\ = (\Ascensor_inst|floor_usage_counters[4][4]~q\ & (!\Ascensor_inst|floor_usage_counters[4][3]~40\)) # (!\Ascensor_inst|floor_usage_counters[4][4]~q\ & ((\Ascensor_inst|floor_usage_counters[4][3]~40\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[4][4]~42\ = CARRY((!\Ascensor_inst|floor_usage_counters[4][3]~40\) # (!\Ascensor_inst|floor_usage_counters[4][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[4][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[4][3]~40\,
	combout => \Ascensor_inst|floor_usage_counters[4][4]~41_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][4]~42\);

-- Location: FF_X5_Y25_N3
\Ascensor_inst|floor_usage_counters[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][4]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][4]~q\);

-- Location: LCCOMB_X5_Y25_N20
\Ascensor_inst|floor_usage_counters[4][5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][5]~43_combout\ = (\Ascensor_inst|floor_usage_counters[4][5]~q\ & (\Ascensor_inst|floor_usage_counters[4][4]~42\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[4][5]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[4][4]~42\ & VCC))
-- \Ascensor_inst|floor_usage_counters[4][5]~44\ = CARRY((\Ascensor_inst|floor_usage_counters[4][5]~q\ & !\Ascensor_inst|floor_usage_counters[4][4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[4][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[4][4]~42\,
	combout => \Ascensor_inst|floor_usage_counters[4][5]~43_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][5]~44\);

-- Location: LCCOMB_X5_Y25_N28
\Ascensor_inst|floor_usage_counters[4][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][5]~feeder_combout\ = \Ascensor_inst|floor_usage_counters[4][5]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[4][5]~43_combout\,
	combout => \Ascensor_inst|floor_usage_counters[4][5]~feeder_combout\);

-- Location: FF_X5_Y25_N29
\Ascensor_inst|floor_usage_counters[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[4][5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][5]~q\);

-- Location: LCCOMB_X5_Y25_N22
\Ascensor_inst|floor_usage_counters[4][6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][6]~45_combout\ = (\Ascensor_inst|floor_usage_counters[4][6]~q\ & (!\Ascensor_inst|floor_usage_counters[4][5]~44\)) # (!\Ascensor_inst|floor_usage_counters[4][6]~q\ & ((\Ascensor_inst|floor_usage_counters[4][5]~44\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[4][6]~46\ = CARRY((!\Ascensor_inst|floor_usage_counters[4][5]~44\) # (!\Ascensor_inst|floor_usage_counters[4][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[4][5]~44\,
	combout => \Ascensor_inst|floor_usage_counters[4][6]~45_combout\,
	cout => \Ascensor_inst|floor_usage_counters[4][6]~46\);

-- Location: LCCOMB_X5_Y25_N6
\Ascensor_inst|floor_usage_counters[4][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][6]~feeder_combout\ = \Ascensor_inst|floor_usage_counters[4][6]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[4][6]~45_combout\,
	combout => \Ascensor_inst|floor_usage_counters[4][6]~feeder_combout\);

-- Location: FF_X5_Y25_N7
\Ascensor_inst|floor_usage_counters[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[4][6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][6]~q\);

-- Location: LCCOMB_X5_Y25_N24
\Ascensor_inst|floor_usage_counters[4][7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[4][7]~47_combout\ = \Ascensor_inst|floor_usage_counters[4][6]~46\ $ (!\Ascensor_inst|floor_usage_counters[4][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[4][7]~q\,
	cin => \Ascensor_inst|floor_usage_counters[4][6]~46\,
	combout => \Ascensor_inst|floor_usage_counters[4][7]~47_combout\);

-- Location: FF_X5_Y25_N1
\Ascensor_inst|floor_usage_counters[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[4][7]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[4][7]~q\);

-- Location: LCCOMB_X7_Y24_N0
\Ascensor_inst|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector16~0_combout\ = (!\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[2]~2_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Selector16~0_combout\);

-- Location: LCCOMB_X8_Y25_N14
\Ascensor_inst|Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add21~0_combout\ = \Ascensor_inst|current_floor[1]~6_combout\ $ (((\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add21~0_combout\);

-- Location: LCCOMB_X8_Y25_N16
\Ascensor_inst|Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add22~0_combout\ = (!\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|current_floor[1]~6_combout\) # (\Ascensor_inst|current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add22~0_combout\);

-- Location: LCCOMB_X8_Y25_N18
\Ascensor_inst|Add23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[4][1]~q\ & VCC)) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[4][1]~q\ $ (VCC)))
-- \Ascensor_inst|Add23~1\ = CARRY((!\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|floor_usage_counters[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|floor_usage_counters[4][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|Add23~0_combout\,
	cout => \Ascensor_inst|Add23~1\);

-- Location: LCCOMB_X8_Y25_N20
\Ascensor_inst|Add23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~2_combout\ = (\Ascensor_inst|floor_usage_counters[4][2]~q\ & ((\Ascensor_inst|Add21~0_combout\ & (!\Ascensor_inst|Add23~1\)) # (!\Ascensor_inst|Add21~0_combout\ & (\Ascensor_inst|Add23~1\ & VCC)))) # 
-- (!\Ascensor_inst|floor_usage_counters[4][2]~q\ & ((\Ascensor_inst|Add21~0_combout\ & ((\Ascensor_inst|Add23~1\) # (GND))) # (!\Ascensor_inst|Add21~0_combout\ & (!\Ascensor_inst|Add23~1\))))
-- \Ascensor_inst|Add23~3\ = CARRY((\Ascensor_inst|floor_usage_counters[4][2]~q\ & (\Ascensor_inst|Add21~0_combout\ & !\Ascensor_inst|Add23~1\)) # (!\Ascensor_inst|floor_usage_counters[4][2]~q\ & ((\Ascensor_inst|Add21~0_combout\) # 
-- (!\Ascensor_inst|Add23~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][2]~q\,
	datab => \Ascensor_inst|Add21~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add23~1\,
	combout => \Ascensor_inst|Add23~2_combout\,
	cout => \Ascensor_inst|Add23~3\);

-- Location: LCCOMB_X8_Y25_N22
\Ascensor_inst|Add23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~4_combout\ = ((\Ascensor_inst|floor_usage_counters[4][3]~q\ $ (\Ascensor_inst|Add22~0_combout\ $ (!\Ascensor_inst|Add23~3\)))) # (GND)
-- \Ascensor_inst|Add23~5\ = CARRY((\Ascensor_inst|floor_usage_counters[4][3]~q\ & ((\Ascensor_inst|Add22~0_combout\) # (!\Ascensor_inst|Add23~3\))) # (!\Ascensor_inst|floor_usage_counters[4][3]~q\ & (\Ascensor_inst|Add22~0_combout\ & 
-- !\Ascensor_inst|Add23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][3]~q\,
	datab => \Ascensor_inst|Add22~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add23~3\,
	combout => \Ascensor_inst|Add23~4_combout\,
	cout => \Ascensor_inst|Add23~5\);

-- Location: LCCOMB_X8_Y25_N24
\Ascensor_inst|Add23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~6_combout\ = (\Ascensor_inst|floor_usage_counters[4][4]~q\ & ((\Ascensor_inst|Add21~0_combout\ & (!\Ascensor_inst|Add23~5\)) # (!\Ascensor_inst|Add21~0_combout\ & (\Ascensor_inst|Add23~5\ & VCC)))) # 
-- (!\Ascensor_inst|floor_usage_counters[4][4]~q\ & ((\Ascensor_inst|Add21~0_combout\ & ((\Ascensor_inst|Add23~5\) # (GND))) # (!\Ascensor_inst|Add21~0_combout\ & (!\Ascensor_inst|Add23~5\))))
-- \Ascensor_inst|Add23~7\ = CARRY((\Ascensor_inst|floor_usage_counters[4][4]~q\ & (\Ascensor_inst|Add21~0_combout\ & !\Ascensor_inst|Add23~5\)) # (!\Ascensor_inst|floor_usage_counters[4][4]~q\ & ((\Ascensor_inst|Add21~0_combout\) # 
-- (!\Ascensor_inst|Add23~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][4]~q\,
	datab => \Ascensor_inst|Add21~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add23~5\,
	combout => \Ascensor_inst|Add23~6_combout\,
	cout => \Ascensor_inst|Add23~7\);

-- Location: LCCOMB_X8_Y25_N26
\Ascensor_inst|Add23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~8_combout\ = ((\Ascensor_inst|floor_usage_counters[4][5]~q\ $ (\Ascensor_inst|Selector16~0_combout\ $ (\Ascensor_inst|Add23~7\)))) # (GND)
-- \Ascensor_inst|Add23~9\ = CARRY((\Ascensor_inst|floor_usage_counters[4][5]~q\ & ((!\Ascensor_inst|Add23~7\) # (!\Ascensor_inst|Selector16~0_combout\))) # (!\Ascensor_inst|floor_usage_counters[4][5]~q\ & (!\Ascensor_inst|Selector16~0_combout\ & 
-- !\Ascensor_inst|Add23~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][5]~q\,
	datab => \Ascensor_inst|Selector16~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add23~7\,
	combout => \Ascensor_inst|Add23~8_combout\,
	cout => \Ascensor_inst|Add23~9\);

-- Location: LCCOMB_X8_Y25_N28
\Ascensor_inst|Add23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~10_combout\ = (\Ascensor_inst|floor_usage_counters[4][6]~q\ & (\Ascensor_inst|Add23~9\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[4][6]~q\ & (!\Ascensor_inst|Add23~9\))
-- \Ascensor_inst|Add23~11\ = CARRY((!\Ascensor_inst|floor_usage_counters[4][6]~q\ & !\Ascensor_inst|Add23~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[4][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add23~9\,
	combout => \Ascensor_inst|Add23~10_combout\,
	cout => \Ascensor_inst|Add23~11\);

-- Location: LCCOMB_X8_Y25_N30
\Ascensor_inst|Add23~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add23~12_combout\ = \Ascensor_inst|floor_usage_counters[4][7]~q\ $ (!\Ascensor_inst|Add23~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[4][7]~q\,
	cin => \Ascensor_inst|Add23~11\,
	combout => \Ascensor_inst|Add23~12_combout\);

-- Location: LCCOMB_X8_Y25_N0
\Ascensor_inst|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~0_combout\ = \Ascensor_inst|Add23~0_combout\ $ (VCC)
-- \Ascensor_inst|Add24~1\ = CARRY(\Ascensor_inst|Add23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add23~0_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add24~0_combout\,
	cout => \Ascensor_inst|Add24~1\);

-- Location: LCCOMB_X8_Y25_N2
\Ascensor_inst|Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~2_combout\ = (\Ascensor_inst|Add23~2_combout\ & (\Ascensor_inst|Add24~1\ & VCC)) # (!\Ascensor_inst|Add23~2_combout\ & (!\Ascensor_inst|Add24~1\))
-- \Ascensor_inst|Add24~3\ = CARRY((!\Ascensor_inst|Add23~2_combout\ & !\Ascensor_inst|Add24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add23~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add24~1\,
	combout => \Ascensor_inst|Add24~2_combout\,
	cout => \Ascensor_inst|Add24~3\);

-- Location: LCCOMB_X8_Y25_N4
\Ascensor_inst|Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~4_combout\ = (\Ascensor_inst|Add23~4_combout\ & (\Ascensor_inst|Add24~3\ $ (GND))) # (!\Ascensor_inst|Add23~4_combout\ & (!\Ascensor_inst|Add24~3\ & VCC))
-- \Ascensor_inst|Add24~5\ = CARRY((\Ascensor_inst|Add23~4_combout\ & !\Ascensor_inst|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add23~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add24~3\,
	combout => \Ascensor_inst|Add24~4_combout\,
	cout => \Ascensor_inst|Add24~5\);

-- Location: LCCOMB_X8_Y25_N6
\Ascensor_inst|Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~6_combout\ = (\Ascensor_inst|Add23~6_combout\ & (!\Ascensor_inst|Add24~5\)) # (!\Ascensor_inst|Add23~6_combout\ & ((\Ascensor_inst|Add24~5\) # (GND)))
-- \Ascensor_inst|Add24~7\ = CARRY((!\Ascensor_inst|Add24~5\) # (!\Ascensor_inst|Add23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add23~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add24~5\,
	combout => \Ascensor_inst|Add24~6_combout\,
	cout => \Ascensor_inst|Add24~7\);

-- Location: LCCOMB_X8_Y25_N8
\Ascensor_inst|Add24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~8_combout\ = (\Ascensor_inst|Add23~8_combout\ & ((GND) # (!\Ascensor_inst|Add24~7\))) # (!\Ascensor_inst|Add23~8_combout\ & (\Ascensor_inst|Add24~7\ $ (GND)))
-- \Ascensor_inst|Add24~9\ = CARRY((\Ascensor_inst|Add23~8_combout\) # (!\Ascensor_inst|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add23~8_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add24~7\,
	combout => \Ascensor_inst|Add24~8_combout\,
	cout => \Ascensor_inst|Add24~9\);

-- Location: LCCOMB_X8_Y25_N10
\Ascensor_inst|Add24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~10_combout\ = (\Ascensor_inst|Add23~10_combout\ & (\Ascensor_inst|Add24~9\ & VCC)) # (!\Ascensor_inst|Add23~10_combout\ & (!\Ascensor_inst|Add24~9\))
-- \Ascensor_inst|Add24~11\ = CARRY((!\Ascensor_inst|Add23~10_combout\ & !\Ascensor_inst|Add24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add23~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add24~9\,
	combout => \Ascensor_inst|Add24~10_combout\,
	cout => \Ascensor_inst|Add24~11\);

-- Location: LCCOMB_X8_Y25_N12
\Ascensor_inst|Add24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add24~12_combout\ = \Ascensor_inst|Add23~12_combout\ $ (\Ascensor_inst|Add24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add23~12_combout\,
	cin => \Ascensor_inst|Add24~11\,
	combout => \Ascensor_inst|Add24~12_combout\);

-- Location: IOIBUF_X0_Y27_N22
\btn_piso3_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso3_dn,
	o => \btn_piso3_dn~input_o\);

-- Location: LCCOMB_X1_Y26_N12
\comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\btn_piso3_dn~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso3_dn~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~4_combout\);

-- Location: FF_X1_Y26_N13
\Ascensor_inst|btn_sync[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[4][0]~q\);

-- Location: LCCOMB_X1_Y26_N22
\Ascensor_inst|btn_sync[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_sync[4][1]~feeder_combout\ = \Ascensor_inst|btn_sync[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|btn_sync[4][0]~q\,
	combout => \Ascensor_inst|btn_sync[4][1]~feeder_combout\);

-- Location: FF_X1_Y26_N23
\Ascensor_inst|btn_sync[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_sync[4][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[4][1]~q\);

-- Location: LCCOMB_X1_Y26_N2
\Ascensor_inst|btn_edges~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~4_combout\ = (\Ascensor_inst|btn_sync[4][0]~q\ & !\Ascensor_inst|btn_sync[4][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_sync[4][0]~q\,
	datac => \Ascensor_inst|btn_sync[4][1]~q\,
	combout => \Ascensor_inst|btn_edges~4_combout\);

-- Location: FF_X1_Y26_N3
\Ascensor_inst|btn_edges[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(4));

-- Location: IOIBUF_X0_Y23_N8
\btn_piso3_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso3_up,
	o => \btn_piso3_up~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\btn_piso3_up~input_o\ & !\botones_habilitados~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_piso3_up~input_o\,
	datad => \botones_habilitados~0_combout\,
	combout => \comb~3_combout\);

-- Location: FF_X1_Y24_N23
\Ascensor_inst|btn_sync[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[5][0]~q\);

-- Location: FF_X1_Y23_N27
\Ascensor_inst|btn_sync[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|btn_sync[5][0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_sync[5][1]~q\);

-- Location: LCCOMB_X1_Y23_N0
\Ascensor_inst|btn_edges~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|btn_edges~3_combout\ = (!\Ascensor_inst|btn_sync[5][1]~q\ & \Ascensor_inst|btn_sync[5][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_sync[5][1]~q\,
	datac => \Ascensor_inst|btn_sync[5][0]~q\,
	combout => \Ascensor_inst|btn_edges~3_combout\);

-- Location: FF_X1_Y23_N1
\Ascensor_inst|btn_edges[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|btn_edges~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|btn_edges\(5));

-- Location: LCCOMB_X1_Y23_N26
\Ascensor_inst|elevator_control~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|elevator_control~1_combout\ = (\Ascensor_inst|btn_edges\(4)) # (\Ascensor_inst|btn_edges\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(4),
	datad => \Ascensor_inst|btn_edges\(5),
	combout => \Ascensor_inst|elevator_control~1_combout\);

-- Location: LCCOMB_X3_Y24_N6
\Ascensor_inst|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~3_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Equal3~3_combout\);

-- Location: LCCOMB_X11_Y25_N4
\Ascensor_inst|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan5~1_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (\Ascensor_inst|next_target~3_combout\ & (\Ascensor_inst|current_floor[1]~6_combout\ $ (!\Ascensor_inst|next_target~5_combout\)))) # 
-- (!\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|next_target~3_combout\ & (\Ascensor_inst|current_floor[1]~6_combout\ $ (!\Ascensor_inst|next_target~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|next_target~3_combout\,
	datad => \Ascensor_inst|next_target~5_combout\,
	combout => \Ascensor_inst|LessThan5~1_combout\);

-- Location: LCCOMB_X10_Y25_N14
\Ascensor_inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan6~0_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (((\Ascensor_inst|current_floor[1]~6_combout\ & !\Ascensor_inst|next_target~5_combout\)) # (!\Ascensor_inst|next_target~3_combout\))) # 
-- (!\Ascensor_inst|current_floor[2]~2_combout\ & (\Ascensor_inst|current_floor[1]~6_combout\ & (!\Ascensor_inst|next_target~3_combout\ & !\Ascensor_inst|next_target~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|next_target~3_combout\,
	datad => \Ascensor_inst|next_target~5_combout\,
	combout => \Ascensor_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X10_Y25_N4
\Ascensor_inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan6~1_combout\ = (\Ascensor_inst|LessThan6~0_combout\) # ((\Ascensor_inst|LessThan5~1_combout\ & (\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|next_target~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan5~1_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|LessThan6~0_combout\,
	datad => \Ascensor_inst|next_target~8_combout\,
	combout => \Ascensor_inst|LessThan6~1_combout\);

-- Location: LCCOMB_X10_Y25_N2
\Ascensor_inst|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~2_combout\ = (\Ascensor_inst|target_floor[0]~2_combout\ & ((\Ascensor_inst|Mux0~2_combout\) # ((\Ascensor_inst|LessThan6~1_combout\) # (\Ascensor_inst|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Mux0~2_combout\,
	datab => \Ascensor_inst|target_floor[0]~2_combout\,
	datac => \Ascensor_inst|LessThan6~1_combout\,
	datad => \Ascensor_inst|LessThan5~2_combout\,
	combout => \Ascensor_inst|Selector19~2_combout\);

-- Location: LCCOMB_X10_Y25_N6
\Ascensor_inst|Selector18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector18~5_combout\ = (!\Ascensor_inst|Mux0~2_combout\ & (!\Ascensor_inst|Selector19~8_combout\ & (!\Ascensor_inst|LessThan5~2_combout\ & \Ascensor_inst|Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Mux0~2_combout\,
	datab => \Ascensor_inst|Selector19~8_combout\,
	datac => \Ascensor_inst|LessThan5~2_combout\,
	datad => \Ascensor_inst|Selector19~2_combout\,
	combout => \Ascensor_inst|Selector18~5_combout\);

-- Location: LCCOMB_X7_Y24_N20
\Ascensor_inst|Selector19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~3_combout\ = (!\Ascensor_inst|LessThan7~9_combout\ & ((\Ascensor_inst|main_state.MOVING_UP~q\) # (\Ascensor_inst|main_state.MOVING_DOWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|LessThan7~9_combout\,
	combout => \Ascensor_inst|Selector19~3_combout\);

-- Location: LCCOMB_X10_Y25_N18
\Ascensor_inst|Selector19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~7_combout\ = ((\Ascensor_inst|Selector19~2_combout\) # ((\Ascensor_inst|Selector19~3_combout\ & \Ascensor_inst|Selector21~0_combout\))) # (!\Ascensor_inst|Selector19~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector19~3_combout\,
	datab => \Ascensor_inst|Selector19~6_combout\,
	datac => \Ascensor_inst|Selector21~0_combout\,
	datad => \Ascensor_inst|Selector19~2_combout\,
	combout => \Ascensor_inst|Selector19~7_combout\);

-- Location: LCCOMB_X10_Y25_N30
\Ascensor_inst|Selector19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~9_combout\ = (\Ascensor_inst|Selector18~5_combout\) # ((!\Ascensor_inst|Selector19~8_combout\ & (\Ascensor_inst|main_state.MOVING_DOWN~q\ & !\Ascensor_inst|Selector19~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector18~5_combout\,
	datab => \Ascensor_inst|Selector19~8_combout\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|Selector19~7_combout\,
	combout => \Ascensor_inst|Selector19~9_combout\);

-- Location: FF_X10_Y25_N31
\Ascensor_inst|main_state.MOVING_DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector19~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.MOVING_DOWN~q\);

-- Location: LCCOMB_X4_Y25_N12
\Ascensor_inst|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector14~1_combout\ = (\Ascensor_inst|WideOr2~combout\) # ((!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|Equal3~2_combout\) # (!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~4_combout\,
	datab => \Ascensor_inst|Equal3~2_combout\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|main_state.IDLE~q\,
	combout => \Ascensor_inst|Selector14~1_combout\);

-- Location: LCCOMB_X4_Y25_N22
\Ascensor_inst|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector14~2_combout\ = (\Ascensor_inst|Selector14~1_combout\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & ((!\Ascensor_inst|floor_calls~6_combout\) # (!\Ascensor_inst|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal3~3_combout\,
	datab => \Ascensor_inst|floor_calls~6_combout\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|Selector14~1_combout\,
	combout => \Ascensor_inst|Selector14~2_combout\);

-- Location: LCCOMB_X4_Y25_N2
\Ascensor_inst|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector14~0_combout\ = (\Ascensor_inst|main_state.MOVING_UP~q\ & (((\Ascensor_inst|LessThan7~9_combout\) # (!\Ascensor_inst|Equal3~1_combout\)) # (!\Ascensor_inst|floor_calls~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|floor_calls~3_combout\,
	datac => \Ascensor_inst|LessThan7~9_combout\,
	datad => \Ascensor_inst|Equal3~1_combout\,
	combout => \Ascensor_inst|Selector14~0_combout\);

-- Location: LCCOMB_X5_Y25_N8
\Ascensor_inst|Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector14~3_combout\ = (\Ascensor_inst|elevator_control~1_combout\ & ((\Ascensor_inst|Selector14~2_combout\) # ((\Ascensor_inst|Selector14~0_combout\)))) # (!\Ascensor_inst|elevator_control~1_combout\ & (\Ascensor_inst|floor_calls\(3) & 
-- ((\Ascensor_inst|Selector14~2_combout\) # (\Ascensor_inst|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|elevator_control~1_combout\,
	datab => \Ascensor_inst|Selector14~2_combout\,
	datac => \Ascensor_inst|floor_calls\(3),
	datad => \Ascensor_inst|Selector14~0_combout\,
	combout => \Ascensor_inst|Selector14~3_combout\);

-- Location: FF_X5_Y25_N9
\Ascensor_inst|floor_calls[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector14~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_calls\(3));

-- Location: LCCOMB_X2_Y24_N0
\Ascensor_inst|floor_usage_counters[3][0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][0]~93_combout\ = \Ascensor_inst|floor_usage_counters[3][0]~q\ $ (((\Ascensor_inst|btn_edges\(5)) # (\Ascensor_inst|btn_edges\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(5),
	datac => \Ascensor_inst|floor_usage_counters[3][0]~q\,
	datad => \Ascensor_inst|btn_edges\(4),
	combout => \Ascensor_inst|floor_usage_counters[3][0]~93_combout\);

-- Location: FF_X2_Y24_N1
\Ascensor_inst|floor_usage_counters[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][0]~93_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][0]~q\);

-- Location: LCCOMB_X6_Y25_N4
\Ascensor_inst|floor_usage_counters[3][1]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][1]~49_combout\ = (\Ascensor_inst|floor_usage_counters[3][0]~q\ & (\Ascensor_inst|floor_usage_counters[3][1]~q\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[3][0]~q\ & 
-- (\Ascensor_inst|floor_usage_counters[3][1]~q\ & VCC))
-- \Ascensor_inst|floor_usage_counters[3][1]~50\ = CARRY((\Ascensor_inst|floor_usage_counters[3][0]~q\ & \Ascensor_inst|floor_usage_counters[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][0]~q\,
	datab => \Ascensor_inst|floor_usage_counters[3][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|floor_usage_counters[3][1]~49_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][1]~50\);

-- Location: FF_X7_Y25_N29
\Ascensor_inst|floor_usage_counters[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[3][1]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][1]~q\);

-- Location: LCCOMB_X6_Y25_N6
\Ascensor_inst|floor_usage_counters[3][2]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][2]~51_combout\ = (\Ascensor_inst|floor_usage_counters[3][2]~q\ & (!\Ascensor_inst|floor_usage_counters[3][1]~50\)) # (!\Ascensor_inst|floor_usage_counters[3][2]~q\ & ((\Ascensor_inst|floor_usage_counters[3][1]~50\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[3][2]~52\ = CARRY((!\Ascensor_inst|floor_usage_counters[3][1]~50\) # (!\Ascensor_inst|floor_usage_counters[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[3][1]~50\,
	combout => \Ascensor_inst|floor_usage_counters[3][2]~51_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][2]~52\);

-- Location: FF_X6_Y25_N7
\Ascensor_inst|floor_usage_counters[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][2]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][2]~q\);

-- Location: LCCOMB_X6_Y25_N8
\Ascensor_inst|floor_usage_counters[3][3]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][3]~53_combout\ = (\Ascensor_inst|floor_usage_counters[3][3]~q\ & (\Ascensor_inst|floor_usage_counters[3][2]~52\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[3][3]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[3][2]~52\ & VCC))
-- \Ascensor_inst|floor_usage_counters[3][3]~54\ = CARRY((\Ascensor_inst|floor_usage_counters[3][3]~q\ & !\Ascensor_inst|floor_usage_counters[3][2]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[3][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[3][2]~52\,
	combout => \Ascensor_inst|floor_usage_counters[3][3]~53_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][3]~54\);

-- Location: FF_X6_Y25_N9
\Ascensor_inst|floor_usage_counters[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][3]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][3]~q\);

-- Location: LCCOMB_X6_Y25_N10
\Ascensor_inst|floor_usage_counters[3][4]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][4]~55_combout\ = (\Ascensor_inst|floor_usage_counters[3][4]~q\ & (!\Ascensor_inst|floor_usage_counters[3][3]~54\)) # (!\Ascensor_inst|floor_usage_counters[3][4]~q\ & ((\Ascensor_inst|floor_usage_counters[3][3]~54\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[3][4]~56\ = CARRY((!\Ascensor_inst|floor_usage_counters[3][3]~54\) # (!\Ascensor_inst|floor_usage_counters[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[3][3]~54\,
	combout => \Ascensor_inst|floor_usage_counters[3][4]~55_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][4]~56\);

-- Location: FF_X6_Y25_N11
\Ascensor_inst|floor_usage_counters[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][4]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][4]~q\);

-- Location: LCCOMB_X6_Y25_N12
\Ascensor_inst|floor_usage_counters[3][5]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][5]~57_combout\ = (\Ascensor_inst|floor_usage_counters[3][5]~q\ & (\Ascensor_inst|floor_usage_counters[3][4]~56\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[3][5]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[3][4]~56\ & VCC))
-- \Ascensor_inst|floor_usage_counters[3][5]~58\ = CARRY((\Ascensor_inst|floor_usage_counters[3][5]~q\ & !\Ascensor_inst|floor_usage_counters[3][4]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[3][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[3][4]~56\,
	combout => \Ascensor_inst|floor_usage_counters[3][5]~57_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][5]~58\);

-- Location: FF_X6_Y25_N13
\Ascensor_inst|floor_usage_counters[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][5]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][5]~q\);

-- Location: LCCOMB_X6_Y25_N14
\Ascensor_inst|floor_usage_counters[3][6]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][6]~59_combout\ = (\Ascensor_inst|floor_usage_counters[3][6]~q\ & (!\Ascensor_inst|floor_usage_counters[3][5]~58\)) # (!\Ascensor_inst|floor_usage_counters[3][6]~q\ & ((\Ascensor_inst|floor_usage_counters[3][5]~58\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[3][6]~60\ = CARRY((!\Ascensor_inst|floor_usage_counters[3][5]~58\) # (!\Ascensor_inst|floor_usage_counters[3][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[3][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[3][5]~58\,
	combout => \Ascensor_inst|floor_usage_counters[3][6]~59_combout\,
	cout => \Ascensor_inst|floor_usage_counters[3][6]~60\);

-- Location: FF_X6_Y25_N15
\Ascensor_inst|floor_usage_counters[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][6]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][6]~q\);

-- Location: LCCOMB_X6_Y25_N16
\Ascensor_inst|floor_usage_counters[3][7]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[3][7]~61_combout\ = \Ascensor_inst|floor_usage_counters[3][6]~60\ $ (!\Ascensor_inst|floor_usage_counters[3][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[3][7]~q\,
	cin => \Ascensor_inst|floor_usage_counters[3][6]~60\,
	combout => \Ascensor_inst|floor_usage_counters[3][7]~61_combout\);

-- Location: FF_X6_Y25_N17
\Ascensor_inst|floor_usage_counters[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[3][7]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[3][7]~q\);

-- Location: LCCOMB_X7_Y25_N28
\Ascensor_inst|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add17~0_combout\ = ((!\Ascensor_inst|current_floor[0]~10_combout\) # (!\Ascensor_inst|current_floor[1]~6_combout\)) # (!\Ascensor_inst|current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[0]~10_combout\,
	combout => \Ascensor_inst|Add17~0_combout\);

-- Location: LCCOMB_X7_Y25_N30
\Ascensor_inst|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add16~0_combout\ = \Ascensor_inst|current_floor[1]~6_combout\ $ (((\Ascensor_inst|current_floor[2]~2_combout\ & !\Ascensor_inst|current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|current_floor[0]~10_combout\,
	combout => \Ascensor_inst|Add16~0_combout\);

-- Location: LCCOMB_X7_Y24_N22
\Ascensor_inst|Add17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add17~1_combout\ = ((\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|current_floor[2]~2_combout\)) # (!\Ascensor_inst|current_floor[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add17~1_combout\);

-- Location: LCCOMB_X7_Y25_N0
\Ascensor_inst|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~0_combout\ = (\Ascensor_inst|floor_usage_counters[3][1]~q\ & (\Ascensor_inst|current_floor[0]~10_combout\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[3][1]~q\ & (\Ascensor_inst|current_floor[0]~10_combout\ & VCC))
-- \Ascensor_inst|Add18~1\ = CARRY((\Ascensor_inst|floor_usage_counters[3][1]~q\ & \Ascensor_inst|current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][1]~q\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add18~0_combout\,
	cout => \Ascensor_inst|Add18~1\);

-- Location: LCCOMB_X7_Y25_N2
\Ascensor_inst|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~2_combout\ = (\Ascensor_inst|Add16~0_combout\ & ((\Ascensor_inst|floor_usage_counters[3][2]~q\ & (\Ascensor_inst|Add18~1\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[3][2]~q\ & (!\Ascensor_inst|Add18~1\)))) # 
-- (!\Ascensor_inst|Add16~0_combout\ & ((\Ascensor_inst|floor_usage_counters[3][2]~q\ & (!\Ascensor_inst|Add18~1\)) # (!\Ascensor_inst|floor_usage_counters[3][2]~q\ & ((\Ascensor_inst|Add18~1\) # (GND)))))
-- \Ascensor_inst|Add18~3\ = CARRY((\Ascensor_inst|Add16~0_combout\ & (!\Ascensor_inst|floor_usage_counters[3][2]~q\ & !\Ascensor_inst|Add18~1\)) # (!\Ascensor_inst|Add16~0_combout\ & ((!\Ascensor_inst|Add18~1\) # 
-- (!\Ascensor_inst|floor_usage_counters[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add16~0_combout\,
	datab => \Ascensor_inst|floor_usage_counters[3][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add18~1\,
	combout => \Ascensor_inst|Add18~2_combout\,
	cout => \Ascensor_inst|Add18~3\);

-- Location: LCCOMB_X7_Y25_N4
\Ascensor_inst|Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~4_combout\ = ((\Ascensor_inst|floor_usage_counters[3][3]~q\ $ (\Ascensor_inst|Add17~1_combout\ $ (\Ascensor_inst|Add18~3\)))) # (GND)
-- \Ascensor_inst|Add18~5\ = CARRY((\Ascensor_inst|floor_usage_counters[3][3]~q\ & ((!\Ascensor_inst|Add18~3\) # (!\Ascensor_inst|Add17~1_combout\))) # (!\Ascensor_inst|floor_usage_counters[3][3]~q\ & (!\Ascensor_inst|Add17~1_combout\ & 
-- !\Ascensor_inst|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][3]~q\,
	datab => \Ascensor_inst|Add17~1_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add18~3\,
	combout => \Ascensor_inst|Add18~4_combout\,
	cout => \Ascensor_inst|Add18~5\);

-- Location: LCCOMB_X7_Y25_N6
\Ascensor_inst|Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~6_combout\ = (\Ascensor_inst|Add16~0_combout\ & ((\Ascensor_inst|floor_usage_counters[3][4]~q\ & (\Ascensor_inst|Add18~5\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[3][4]~q\ & (!\Ascensor_inst|Add18~5\)))) # 
-- (!\Ascensor_inst|Add16~0_combout\ & ((\Ascensor_inst|floor_usage_counters[3][4]~q\ & (!\Ascensor_inst|Add18~5\)) # (!\Ascensor_inst|floor_usage_counters[3][4]~q\ & ((\Ascensor_inst|Add18~5\) # (GND)))))
-- \Ascensor_inst|Add18~7\ = CARRY((\Ascensor_inst|Add16~0_combout\ & (!\Ascensor_inst|floor_usage_counters[3][4]~q\ & !\Ascensor_inst|Add18~5\)) # (!\Ascensor_inst|Add16~0_combout\ & ((!\Ascensor_inst|Add18~5\) # 
-- (!\Ascensor_inst|floor_usage_counters[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add16~0_combout\,
	datab => \Ascensor_inst|floor_usage_counters[3][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add18~5\,
	combout => \Ascensor_inst|Add18~6_combout\,
	cout => \Ascensor_inst|Add18~7\);

-- Location: LCCOMB_X7_Y25_N8
\Ascensor_inst|Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~8_combout\ = ((\Ascensor_inst|floor_usage_counters[3][5]~q\ $ (\Ascensor_inst|Add17~0_combout\ $ (!\Ascensor_inst|Add18~7\)))) # (GND)
-- \Ascensor_inst|Add18~9\ = CARRY((\Ascensor_inst|floor_usage_counters[3][5]~q\ & ((\Ascensor_inst|Add17~0_combout\) # (!\Ascensor_inst|Add18~7\))) # (!\Ascensor_inst|floor_usage_counters[3][5]~q\ & (\Ascensor_inst|Add17~0_combout\ & 
-- !\Ascensor_inst|Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][5]~q\,
	datab => \Ascensor_inst|Add17~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add18~7\,
	combout => \Ascensor_inst|Add18~8_combout\,
	cout => \Ascensor_inst|Add18~9\);

-- Location: LCCOMB_X7_Y25_N10
\Ascensor_inst|Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~10_combout\ = (\Ascensor_inst|floor_usage_counters[3][6]~q\ & (!\Ascensor_inst|Add18~9\)) # (!\Ascensor_inst|floor_usage_counters[3][6]~q\ & ((\Ascensor_inst|Add18~9\) # (GND)))
-- \Ascensor_inst|Add18~11\ = CARRY((!\Ascensor_inst|Add18~9\) # (!\Ascensor_inst|floor_usage_counters[3][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add18~9\,
	combout => \Ascensor_inst|Add18~10_combout\,
	cout => \Ascensor_inst|Add18~11\);

-- Location: LCCOMB_X7_Y25_N12
\Ascensor_inst|Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add18~12_combout\ = \Ascensor_inst|floor_usage_counters[3][7]~q\ $ (!\Ascensor_inst|Add18~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[3][7]~q\,
	cin => \Ascensor_inst|Add18~11\,
	combout => \Ascensor_inst|Add18~12_combout\);

-- Location: LCCOMB_X7_Y25_N14
\Ascensor_inst|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~0_combout\ = \Ascensor_inst|Add18~0_combout\ $ (VCC)
-- \Ascensor_inst|Add19~1\ = CARRY(\Ascensor_inst|Add18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add18~0_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add19~0_combout\,
	cout => \Ascensor_inst|Add19~1\);

-- Location: LCCOMB_X7_Y25_N16
\Ascensor_inst|Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~2_combout\ = (\Ascensor_inst|Add18~2_combout\ & (\Ascensor_inst|Add19~1\ & VCC)) # (!\Ascensor_inst|Add18~2_combout\ & (!\Ascensor_inst|Add19~1\))
-- \Ascensor_inst|Add19~3\ = CARRY((!\Ascensor_inst|Add18~2_combout\ & !\Ascensor_inst|Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add18~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add19~1\,
	combout => \Ascensor_inst|Add19~2_combout\,
	cout => \Ascensor_inst|Add19~3\);

-- Location: LCCOMB_X7_Y25_N18
\Ascensor_inst|Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~4_combout\ = (\Ascensor_inst|Add18~4_combout\ & (\Ascensor_inst|Add19~3\ $ (GND))) # (!\Ascensor_inst|Add18~4_combout\ & (!\Ascensor_inst|Add19~3\ & VCC))
-- \Ascensor_inst|Add19~5\ = CARRY((\Ascensor_inst|Add18~4_combout\ & !\Ascensor_inst|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add18~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add19~3\,
	combout => \Ascensor_inst|Add19~4_combout\,
	cout => \Ascensor_inst|Add19~5\);

-- Location: LCCOMB_X7_Y25_N20
\Ascensor_inst|Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~6_combout\ = (\Ascensor_inst|Add18~6_combout\ & (!\Ascensor_inst|Add19~5\)) # (!\Ascensor_inst|Add18~6_combout\ & ((\Ascensor_inst|Add19~5\) # (GND)))
-- \Ascensor_inst|Add19~7\ = CARRY((!\Ascensor_inst|Add19~5\) # (!\Ascensor_inst|Add18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add18~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add19~5\,
	combout => \Ascensor_inst|Add19~6_combout\,
	cout => \Ascensor_inst|Add19~7\);

-- Location: LCCOMB_X7_Y25_N22
\Ascensor_inst|Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~8_combout\ = (\Ascensor_inst|Add18~8_combout\ & ((GND) # (!\Ascensor_inst|Add19~7\))) # (!\Ascensor_inst|Add18~8_combout\ & (\Ascensor_inst|Add19~7\ $ (GND)))
-- \Ascensor_inst|Add19~9\ = CARRY((\Ascensor_inst|Add18~8_combout\) # (!\Ascensor_inst|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add18~8_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add19~7\,
	combout => \Ascensor_inst|Add19~8_combout\,
	cout => \Ascensor_inst|Add19~9\);

-- Location: LCCOMB_X7_Y25_N24
\Ascensor_inst|Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~10_combout\ = (\Ascensor_inst|Add18~10_combout\ & (!\Ascensor_inst|Add19~9\)) # (!\Ascensor_inst|Add18~10_combout\ & ((\Ascensor_inst|Add19~9\) # (GND)))
-- \Ascensor_inst|Add19~11\ = CARRY((!\Ascensor_inst|Add19~9\) # (!\Ascensor_inst|Add18~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add18~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add19~9\,
	combout => \Ascensor_inst|Add19~10_combout\,
	cout => \Ascensor_inst|Add19~11\);

-- Location: LCCOMB_X7_Y25_N26
\Ascensor_inst|Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add19~12_combout\ = \Ascensor_inst|Add19~11\ $ (!\Ascensor_inst|Add18~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|Add18~12_combout\,
	cin => \Ascensor_inst|Add19~11\,
	combout => \Ascensor_inst|Add19~12_combout\);

-- Location: LCCOMB_X9_Y24_N24
\Ascensor_inst|best_score~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~0_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Add9~12_combout\,
	combout => \Ascensor_inst|best_score~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\Ascensor_inst|floor_usage_counters[2][0]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][0]~92_combout\ = \Ascensor_inst|floor_usage_counters[2][0]~q\ $ (((\Ascensor_inst|btn_edges\(2)) # (\Ascensor_inst|btn_edges\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(2),
	datac => \Ascensor_inst|floor_usage_counters[2][0]~q\,
	datad => \Ascensor_inst|btn_edges\(3),
	combout => \Ascensor_inst|floor_usage_counters[2][0]~92_combout\);

-- Location: FF_X1_Y24_N3
\Ascensor_inst|floor_usage_counters[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][0]~92_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][0]~q\);

-- Location: LCCOMB_X4_Y24_N4
\Ascensor_inst|floor_usage_counters[2][1]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][1]~63_combout\ = (\Ascensor_inst|floor_usage_counters[2][0]~q\ & (\Ascensor_inst|floor_usage_counters[2][1]~q\ $ (VCC))) # (!\Ascensor_inst|floor_usage_counters[2][0]~q\ & 
-- (\Ascensor_inst|floor_usage_counters[2][1]~q\ & VCC))
-- \Ascensor_inst|floor_usage_counters[2][1]~64\ = CARRY((\Ascensor_inst|floor_usage_counters[2][0]~q\ & \Ascensor_inst|floor_usage_counters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][0]~q\,
	datab => \Ascensor_inst|floor_usage_counters[2][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|floor_usage_counters[2][1]~63_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][1]~64\);

-- Location: FF_X4_Y24_N25
\Ascensor_inst|floor_usage_counters[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|floor_usage_counters[2][1]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][1]~q\);

-- Location: LCCOMB_X4_Y24_N6
\Ascensor_inst|floor_usage_counters[2][2]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][2]~65_combout\ = (\Ascensor_inst|floor_usage_counters[2][2]~q\ & (!\Ascensor_inst|floor_usage_counters[2][1]~64\)) # (!\Ascensor_inst|floor_usage_counters[2][2]~q\ & ((\Ascensor_inst|floor_usage_counters[2][1]~64\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[2][2]~66\ = CARRY((!\Ascensor_inst|floor_usage_counters[2][1]~64\) # (!\Ascensor_inst|floor_usage_counters[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[2][1]~64\,
	combout => \Ascensor_inst|floor_usage_counters[2][2]~65_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][2]~66\);

-- Location: FF_X4_Y24_N7
\Ascensor_inst|floor_usage_counters[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][2]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][2]~q\);

-- Location: LCCOMB_X4_Y24_N8
\Ascensor_inst|floor_usage_counters[2][3]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][3]~67_combout\ = (\Ascensor_inst|floor_usage_counters[2][3]~q\ & (\Ascensor_inst|floor_usage_counters[2][2]~66\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[2][3]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[2][2]~66\ & VCC))
-- \Ascensor_inst|floor_usage_counters[2][3]~68\ = CARRY((\Ascensor_inst|floor_usage_counters[2][3]~q\ & !\Ascensor_inst|floor_usage_counters[2][2]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[2][3]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[2][2]~66\,
	combout => \Ascensor_inst|floor_usage_counters[2][3]~67_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][3]~68\);

-- Location: FF_X4_Y24_N9
\Ascensor_inst|floor_usage_counters[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][3]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][3]~q\);

-- Location: LCCOMB_X4_Y24_N10
\Ascensor_inst|floor_usage_counters[2][4]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][4]~69_combout\ = (\Ascensor_inst|floor_usage_counters[2][4]~q\ & (!\Ascensor_inst|floor_usage_counters[2][3]~68\)) # (!\Ascensor_inst|floor_usage_counters[2][4]~q\ & ((\Ascensor_inst|floor_usage_counters[2][3]~68\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[2][4]~70\ = CARRY((!\Ascensor_inst|floor_usage_counters[2][3]~68\) # (!\Ascensor_inst|floor_usage_counters[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[2][3]~68\,
	combout => \Ascensor_inst|floor_usage_counters[2][4]~69_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][4]~70\);

-- Location: FF_X4_Y24_N11
\Ascensor_inst|floor_usage_counters[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][4]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][4]~q\);

-- Location: LCCOMB_X4_Y24_N12
\Ascensor_inst|floor_usage_counters[2][5]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][5]~71_combout\ = (\Ascensor_inst|floor_usage_counters[2][5]~q\ & (\Ascensor_inst|floor_usage_counters[2][4]~70\ $ (GND))) # (!\Ascensor_inst|floor_usage_counters[2][5]~q\ & 
-- (!\Ascensor_inst|floor_usage_counters[2][4]~70\ & VCC))
-- \Ascensor_inst|floor_usage_counters[2][5]~72\ = CARRY((\Ascensor_inst|floor_usage_counters[2][5]~q\ & !\Ascensor_inst|floor_usage_counters[2][4]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][5]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[2][4]~70\,
	combout => \Ascensor_inst|floor_usage_counters[2][5]~71_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][5]~72\);

-- Location: FF_X4_Y24_N13
\Ascensor_inst|floor_usage_counters[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][5]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][5]~q\);

-- Location: LCCOMB_X4_Y24_N14
\Ascensor_inst|floor_usage_counters[2][6]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][6]~73_combout\ = (\Ascensor_inst|floor_usage_counters[2][6]~q\ & (!\Ascensor_inst|floor_usage_counters[2][5]~72\)) # (!\Ascensor_inst|floor_usage_counters[2][6]~q\ & ((\Ascensor_inst|floor_usage_counters[2][5]~72\) # 
-- (GND)))
-- \Ascensor_inst|floor_usage_counters[2][6]~74\ = CARRY((!\Ascensor_inst|floor_usage_counters[2][5]~72\) # (!\Ascensor_inst|floor_usage_counters[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[2][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|floor_usage_counters[2][5]~72\,
	combout => \Ascensor_inst|floor_usage_counters[2][6]~73_combout\,
	cout => \Ascensor_inst|floor_usage_counters[2][6]~74\);

-- Location: FF_X4_Y24_N15
\Ascensor_inst|floor_usage_counters[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][6]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][6]~q\);

-- Location: LCCOMB_X4_Y24_N16
\Ascensor_inst|floor_usage_counters[2][7]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_usage_counters[2][7]~75_combout\ = \Ascensor_inst|floor_usage_counters[2][6]~74\ $ (!\Ascensor_inst|floor_usage_counters[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[2][7]~q\,
	cin => \Ascensor_inst|floor_usage_counters[2][6]~74\,
	combout => \Ascensor_inst|floor_usage_counters[2][7]~75_combout\);

-- Location: FF_X4_Y24_N17
\Ascensor_inst|floor_usage_counters[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|floor_usage_counters[2][7]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_usage_counters[2][7]~q\);

-- Location: LCCOMB_X8_Y24_N28
\Display_inst|piso_actual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Display_inst|piso_actual~0_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & \Ascensor_inst|current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Display_inst|piso_actual~0_combout\);

-- Location: LCCOMB_X8_Y24_N30
\Ascensor_inst|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add12~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (!\Ascensor_inst|current_floor[2]~2_combout\)) # (!\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[0]~10_combout\,
	combout => \Ascensor_inst|Add12~0_combout\);

-- Location: LCCOMB_X7_Y24_N28
\Ascensor_inst|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add12~1_combout\ = \Ascensor_inst|current_floor[0]~10_combout\ $ (((\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add12~1_combout\);

-- Location: LCCOMB_X7_Y24_N14
\Ascensor_inst|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add11~0_combout\ = (\Ascensor_inst|current_floor[1]~6_combout\) # ((\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Add11~0_combout\);

-- Location: LCCOMB_X8_Y24_N14
\Ascensor_inst|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~0_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[2][1]~q\ & VCC)) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_usage_counters[2][1]~q\ $ (VCC)))
-- \Ascensor_inst|Add13~1\ = CARRY((!\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|floor_usage_counters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datab => \Ascensor_inst|floor_usage_counters[2][1]~q\,
	datad => VCC,
	combout => \Ascensor_inst|Add13~0_combout\,
	cout => \Ascensor_inst|Add13~1\);

-- Location: LCCOMB_X8_Y24_N16
\Ascensor_inst|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~2_combout\ = (\Ascensor_inst|Add11~0_combout\ & ((\Ascensor_inst|floor_usage_counters[2][2]~q\ & (\Ascensor_inst|Add13~1\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[2][2]~q\ & (!\Ascensor_inst|Add13~1\)))) # 
-- (!\Ascensor_inst|Add11~0_combout\ & ((\Ascensor_inst|floor_usage_counters[2][2]~q\ & (!\Ascensor_inst|Add13~1\)) # (!\Ascensor_inst|floor_usage_counters[2][2]~q\ & ((\Ascensor_inst|Add13~1\) # (GND)))))
-- \Ascensor_inst|Add13~3\ = CARRY((\Ascensor_inst|Add11~0_combout\ & (!\Ascensor_inst|floor_usage_counters[2][2]~q\ & !\Ascensor_inst|Add13~1\)) # (!\Ascensor_inst|Add11~0_combout\ & ((!\Ascensor_inst|Add13~1\) # 
-- (!\Ascensor_inst|floor_usage_counters[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add11~0_combout\,
	datab => \Ascensor_inst|floor_usage_counters[2][2]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add13~1\,
	combout => \Ascensor_inst|Add13~2_combout\,
	cout => \Ascensor_inst|Add13~3\);

-- Location: LCCOMB_X8_Y24_N18
\Ascensor_inst|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~4_combout\ = ((\Ascensor_inst|floor_usage_counters[2][3]~q\ $ (\Ascensor_inst|Add12~1_combout\ $ (\Ascensor_inst|Add13~3\)))) # (GND)
-- \Ascensor_inst|Add13~5\ = CARRY((\Ascensor_inst|floor_usage_counters[2][3]~q\ & ((!\Ascensor_inst|Add13~3\) # (!\Ascensor_inst|Add12~1_combout\))) # (!\Ascensor_inst|floor_usage_counters[2][3]~q\ & (!\Ascensor_inst|Add12~1_combout\ & 
-- !\Ascensor_inst|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][3]~q\,
	datab => \Ascensor_inst|Add12~1_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add13~3\,
	combout => \Ascensor_inst|Add13~4_combout\,
	cout => \Ascensor_inst|Add13~5\);

-- Location: LCCOMB_X8_Y24_N20
\Ascensor_inst|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~6_combout\ = (\Ascensor_inst|Add12~0_combout\ & ((\Ascensor_inst|floor_usage_counters[2][4]~q\ & (\Ascensor_inst|Add13~5\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[2][4]~q\ & (!\Ascensor_inst|Add13~5\)))) # 
-- (!\Ascensor_inst|Add12~0_combout\ & ((\Ascensor_inst|floor_usage_counters[2][4]~q\ & (!\Ascensor_inst|Add13~5\)) # (!\Ascensor_inst|floor_usage_counters[2][4]~q\ & ((\Ascensor_inst|Add13~5\) # (GND)))))
-- \Ascensor_inst|Add13~7\ = CARRY((\Ascensor_inst|Add12~0_combout\ & (!\Ascensor_inst|floor_usage_counters[2][4]~q\ & !\Ascensor_inst|Add13~5\)) # (!\Ascensor_inst|Add12~0_combout\ & ((!\Ascensor_inst|Add13~5\) # 
-- (!\Ascensor_inst|floor_usage_counters[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add12~0_combout\,
	datab => \Ascensor_inst|floor_usage_counters[2][4]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add13~5\,
	combout => \Ascensor_inst|Add13~6_combout\,
	cout => \Ascensor_inst|Add13~7\);

-- Location: LCCOMB_X8_Y24_N22
\Ascensor_inst|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~8_combout\ = ((\Ascensor_inst|floor_usage_counters[2][5]~q\ $ (\Display_inst|piso_actual~0_combout\ $ (\Ascensor_inst|Add13~7\)))) # (GND)
-- \Ascensor_inst|Add13~9\ = CARRY((\Ascensor_inst|floor_usage_counters[2][5]~q\ & ((!\Ascensor_inst|Add13~7\) # (!\Display_inst|piso_actual~0_combout\))) # (!\Ascensor_inst|floor_usage_counters[2][5]~q\ & (!\Display_inst|piso_actual~0_combout\ & 
-- !\Ascensor_inst|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][5]~q\,
	datab => \Display_inst|piso_actual~0_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add13~7\,
	combout => \Ascensor_inst|Add13~8_combout\,
	cout => \Ascensor_inst|Add13~9\);

-- Location: LCCOMB_X8_Y24_N24
\Ascensor_inst|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~10_combout\ = (\Ascensor_inst|floor_usage_counters[2][6]~q\ & (\Ascensor_inst|Add13~9\ & VCC)) # (!\Ascensor_inst|floor_usage_counters[2][6]~q\ & (!\Ascensor_inst|Add13~9\))
-- \Ascensor_inst|Add13~11\ = CARRY((!\Ascensor_inst|floor_usage_counters[2][6]~q\ & !\Ascensor_inst|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][6]~q\,
	datad => VCC,
	cin => \Ascensor_inst|Add13~9\,
	combout => \Ascensor_inst|Add13~10_combout\,
	cout => \Ascensor_inst|Add13~11\);

-- Location: LCCOMB_X8_Y24_N26
\Ascensor_inst|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add13~12_combout\ = \Ascensor_inst|Add13~11\ $ (!\Ascensor_inst|floor_usage_counters[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|floor_usage_counters[2][7]~q\,
	cin => \Ascensor_inst|Add13~11\,
	combout => \Ascensor_inst|Add13~12_combout\);

-- Location: LCCOMB_X8_Y24_N0
\Ascensor_inst|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~0_combout\ = \Ascensor_inst|Add13~0_combout\ $ (VCC)
-- \Ascensor_inst|Add14~1\ = CARRY(\Ascensor_inst|Add13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add13~0_combout\,
	datad => VCC,
	combout => \Ascensor_inst|Add14~0_combout\,
	cout => \Ascensor_inst|Add14~1\);

-- Location: LCCOMB_X8_Y24_N2
\Ascensor_inst|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~2_combout\ = (\Ascensor_inst|Add13~2_combout\ & (\Ascensor_inst|Add14~1\ & VCC)) # (!\Ascensor_inst|Add13~2_combout\ & (!\Ascensor_inst|Add14~1\))
-- \Ascensor_inst|Add14~3\ = CARRY((!\Ascensor_inst|Add13~2_combout\ & !\Ascensor_inst|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add13~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add14~1\,
	combout => \Ascensor_inst|Add14~2_combout\,
	cout => \Ascensor_inst|Add14~3\);

-- Location: LCCOMB_X8_Y24_N4
\Ascensor_inst|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~4_combout\ = (\Ascensor_inst|Add13~4_combout\ & (\Ascensor_inst|Add14~3\ $ (GND))) # (!\Ascensor_inst|Add13~4_combout\ & (!\Ascensor_inst|Add14~3\ & VCC))
-- \Ascensor_inst|Add14~5\ = CARRY((\Ascensor_inst|Add13~4_combout\ & !\Ascensor_inst|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add13~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add14~3\,
	combout => \Ascensor_inst|Add14~4_combout\,
	cout => \Ascensor_inst|Add14~5\);

-- Location: LCCOMB_X8_Y24_N6
\Ascensor_inst|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~6_combout\ = (\Ascensor_inst|Add13~6_combout\ & (!\Ascensor_inst|Add14~5\)) # (!\Ascensor_inst|Add13~6_combout\ & ((\Ascensor_inst|Add14~5\) # (GND)))
-- \Ascensor_inst|Add14~7\ = CARRY((!\Ascensor_inst|Add14~5\) # (!\Ascensor_inst|Add13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add13~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add14~5\,
	combout => \Ascensor_inst|Add14~6_combout\,
	cout => \Ascensor_inst|Add14~7\);

-- Location: LCCOMB_X8_Y24_N8
\Ascensor_inst|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~8_combout\ = (\Ascensor_inst|Add13~8_combout\ & ((GND) # (!\Ascensor_inst|Add14~7\))) # (!\Ascensor_inst|Add13~8_combout\ & (\Ascensor_inst|Add14~7\ $ (GND)))
-- \Ascensor_inst|Add14~9\ = CARRY((\Ascensor_inst|Add13~8_combout\) # (!\Ascensor_inst|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add13~8_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add14~7\,
	combout => \Ascensor_inst|Add14~8_combout\,
	cout => \Ascensor_inst|Add14~9\);

-- Location: LCCOMB_X8_Y24_N10
\Ascensor_inst|Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~10_combout\ = (\Ascensor_inst|Add13~10_combout\ & (\Ascensor_inst|Add14~9\ & VCC)) # (!\Ascensor_inst|Add13~10_combout\ & (!\Ascensor_inst|Add14~9\))
-- \Ascensor_inst|Add14~11\ = CARRY((!\Ascensor_inst|Add13~10_combout\ & !\Ascensor_inst|Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add13~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|Add14~9\,
	combout => \Ascensor_inst|Add14~10_combout\,
	cout => \Ascensor_inst|Add14~11\);

-- Location: LCCOMB_X8_Y24_N12
\Ascensor_inst|Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add14~12_combout\ = \Ascensor_inst|Add14~11\ $ (\Ascensor_inst|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|Add13~12_combout\,
	cin => \Ascensor_inst|Add14~11\,
	combout => \Ascensor_inst|Add14~12_combout\);

-- Location: LCCOMB_X9_Y24_N26
\Ascensor_inst|best_score~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~1_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Add9~10_combout\,
	combout => \Ascensor_inst|best_score~1_combout\);

-- Location: LCCOMB_X5_Y24_N12
\Ascensor_inst|best_score~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~2_combout\ = (\Ascensor_inst|Add9~8_combout\ & \Ascensor_inst|floor_calls\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|Add9~8_combout\,
	datad => \Ascensor_inst|floor_calls\(1),
	combout => \Ascensor_inst|best_score~2_combout\);

-- Location: LCCOMB_X9_Y24_N4
\Ascensor_inst|best_score~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~3_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Add9~6_combout\,
	combout => \Ascensor_inst|best_score~3_combout\);

-- Location: LCCOMB_X5_Y24_N30
\Ascensor_inst|best_score~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~4_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Add9~4_combout\,
	combout => \Ascensor_inst|best_score~4_combout\);

-- Location: LCCOMB_X9_Y24_N2
\Ascensor_inst|best_score~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~5_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_calls\(1),
	datac => \Ascensor_inst|Add9~2_combout\,
	combout => \Ascensor_inst|best_score~5_combout\);

-- Location: LCCOMB_X5_Y24_N0
\Ascensor_inst|best_score~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~6_combout\ = (\Ascensor_inst|floor_calls\(1) & \Ascensor_inst|Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Add9~0_combout\,
	combout => \Ascensor_inst|best_score~6_combout\);

-- Location: LCCOMB_X5_Y24_N2
\Ascensor_inst|best_score~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~7_combout\ = (\Ascensor_inst|floor_usage_counters[1][0]~q\ & \Ascensor_inst|floor_calls\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_usage_counters[1][0]~q\,
	datad => \Ascensor_inst|floor_calls\(1),
	combout => \Ascensor_inst|best_score~7_combout\);

-- Location: LCCOMB_X9_Y24_N6
\Ascensor_inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~1_cout\ = CARRY((\Ascensor_inst|floor_usage_counters[2][0]~q\ & !\Ascensor_inst|best_score~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[2][0]~q\,
	datab => \Ascensor_inst|best_score~7_combout\,
	datad => VCC,
	cout => \Ascensor_inst|LessThan1~1_cout\);

-- Location: LCCOMB_X9_Y24_N8
\Ascensor_inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~3_cout\ = CARRY((\Ascensor_inst|Add14~0_combout\ & (\Ascensor_inst|best_score~6_combout\ & !\Ascensor_inst|LessThan1~1_cout\)) # (!\Ascensor_inst|Add14~0_combout\ & ((\Ascensor_inst|best_score~6_combout\) # 
-- (!\Ascensor_inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add14~0_combout\,
	datab => \Ascensor_inst|best_score~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~1_cout\,
	cout => \Ascensor_inst|LessThan1~3_cout\);

-- Location: LCCOMB_X9_Y24_N10
\Ascensor_inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~5_cout\ = CARRY((\Ascensor_inst|Add14~2_combout\ & ((!\Ascensor_inst|LessThan1~3_cout\) # (!\Ascensor_inst|best_score~5_combout\))) # (!\Ascensor_inst|Add14~2_combout\ & (!\Ascensor_inst|best_score~5_combout\ & 
-- !\Ascensor_inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add14~2_combout\,
	datab => \Ascensor_inst|best_score~5_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~3_cout\,
	cout => \Ascensor_inst|LessThan1~5_cout\);

-- Location: LCCOMB_X9_Y24_N12
\Ascensor_inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~7_cout\ = CARRY((\Ascensor_inst|best_score~4_combout\ & ((!\Ascensor_inst|LessThan1~5_cout\) # (!\Ascensor_inst|Add14~4_combout\))) # (!\Ascensor_inst|best_score~4_combout\ & (!\Ascensor_inst|Add14~4_combout\ & 
-- !\Ascensor_inst|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~4_combout\,
	datab => \Ascensor_inst|Add14~4_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~5_cout\,
	cout => \Ascensor_inst|LessThan1~7_cout\);

-- Location: LCCOMB_X9_Y24_N14
\Ascensor_inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~9_cout\ = CARRY((\Ascensor_inst|best_score~3_combout\ & (\Ascensor_inst|Add14~6_combout\ & !\Ascensor_inst|LessThan1~7_cout\)) # (!\Ascensor_inst|best_score~3_combout\ & ((\Ascensor_inst|Add14~6_combout\) # 
-- (!\Ascensor_inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~3_combout\,
	datab => \Ascensor_inst|Add14~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~7_cout\,
	cout => \Ascensor_inst|LessThan1~9_cout\);

-- Location: LCCOMB_X9_Y24_N16
\Ascensor_inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~11_cout\ = CARRY((\Ascensor_inst|Add14~8_combout\ & (\Ascensor_inst|best_score~2_combout\ & !\Ascensor_inst|LessThan1~9_cout\)) # (!\Ascensor_inst|Add14~8_combout\ & ((\Ascensor_inst|best_score~2_combout\) # 
-- (!\Ascensor_inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add14~8_combout\,
	datab => \Ascensor_inst|best_score~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~9_cout\,
	cout => \Ascensor_inst|LessThan1~11_cout\);

-- Location: LCCOMB_X9_Y24_N18
\Ascensor_inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~13_cout\ = CARRY((\Ascensor_inst|best_score~1_combout\ & (\Ascensor_inst|Add14~10_combout\ & !\Ascensor_inst|LessThan1~11_cout\)) # (!\Ascensor_inst|best_score~1_combout\ & ((\Ascensor_inst|Add14~10_combout\) # 
-- (!\Ascensor_inst|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~1_combout\,
	datab => \Ascensor_inst|Add14~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan1~11_cout\,
	cout => \Ascensor_inst|LessThan1~13_cout\);

-- Location: LCCOMB_X9_Y24_N20
\Ascensor_inst|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan1~14_combout\ = (\Ascensor_inst|Add14~12_combout\ & ((\Ascensor_inst|LessThan1~13_cout\) # (!\Ascensor_inst|best_score~0_combout\))) # (!\Ascensor_inst|Add14~12_combout\ & (\Ascensor_inst|LessThan1~13_cout\ & 
-- !\Ascensor_inst|best_score~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add14~12_combout\,
	datad => \Ascensor_inst|best_score~0_combout\,
	cin => \Ascensor_inst|LessThan1~13_cout\,
	combout => \Ascensor_inst|LessThan1~14_combout\);

-- Location: LCCOMB_X10_Y24_N0
\Ascensor_inst|best_score~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~8_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|Add14~12_combout\))) # (!\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|best_score~0_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (\Ascensor_inst|best_score~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(2),
	datab => \Ascensor_inst|best_score~0_combout\,
	datac => \Ascensor_inst|Add14~12_combout\,
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~8_combout\);

-- Location: LCCOMB_X10_Y24_N30
\Ascensor_inst|best_score~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~9_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|Add14~10_combout\)) # (!\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|best_score~1_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (((\Ascensor_inst|best_score~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(2),
	datab => \Ascensor_inst|Add14~10_combout\,
	datac => \Ascensor_inst|best_score~1_combout\,
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~9_combout\);

-- Location: LCCOMB_X10_Y24_N28
\Ascensor_inst|best_score~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~10_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|Add14~8_combout\))) # (!\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|best_score~2_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (\Ascensor_inst|best_score~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~2_combout\,
	datab => \Ascensor_inst|Add14~8_combout\,
	datac => \Ascensor_inst|floor_calls\(2),
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~10_combout\);

-- Location: LCCOMB_X9_Y24_N0
\Ascensor_inst|best_score~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~11_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|Add14~6_combout\)) # (!\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|best_score~3_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (((\Ascensor_inst|best_score~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(2),
	datab => \Ascensor_inst|Add14~6_combout\,
	datac => \Ascensor_inst|best_score~3_combout\,
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~11_combout\);

-- Location: LCCOMB_X9_Y24_N30
\Ascensor_inst|best_score~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~12_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|Add14~4_combout\))) # (!\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|best_score~4_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (\Ascensor_inst|best_score~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~4_combout\,
	datab => \Ascensor_inst|floor_calls\(2),
	datac => \Ascensor_inst|Add14~4_combout\,
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~12_combout\);

-- Location: LCCOMB_X9_Y24_N28
\Ascensor_inst|best_score~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~13_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|Add14~2_combout\)) # (!\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|best_score~5_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (((\Ascensor_inst|best_score~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add14~2_combout\,
	datab => \Ascensor_inst|best_score~5_combout\,
	datac => \Ascensor_inst|floor_calls\(2),
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~13_combout\);

-- Location: LCCOMB_X9_Y24_N22
\Ascensor_inst|best_score~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~14_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|Add14~0_combout\))) # (!\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|best_score~6_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (\Ascensor_inst|best_score~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(2),
	datab => \Ascensor_inst|best_score~6_combout\,
	datac => \Ascensor_inst|Add14~0_combout\,
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~14_combout\);

-- Location: LCCOMB_X10_Y24_N10
\Ascensor_inst|best_score~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~15_combout\ = (\Ascensor_inst|floor_calls\(2) & ((\Ascensor_inst|LessThan1~14_combout\ & ((\Ascensor_inst|floor_usage_counters[2][0]~q\))) # (!\Ascensor_inst|LessThan1~14_combout\ & (\Ascensor_inst|best_score~7_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(2) & (\Ascensor_inst|best_score~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~7_combout\,
	datab => \Ascensor_inst|floor_usage_counters[2][0]~q\,
	datac => \Ascensor_inst|floor_calls\(2),
	datad => \Ascensor_inst|LessThan1~14_combout\,
	combout => \Ascensor_inst|best_score~15_combout\);

-- Location: LCCOMB_X10_Y24_N12
\Ascensor_inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~1_cout\ = CARRY((!\Ascensor_inst|best_score~15_combout\ & \Ascensor_inst|floor_usage_counters[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~15_combout\,
	datab => \Ascensor_inst|floor_usage_counters[3][0]~q\,
	datad => VCC,
	cout => \Ascensor_inst|LessThan2~1_cout\);

-- Location: LCCOMB_X10_Y24_N14
\Ascensor_inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~3_cout\ = CARRY((\Ascensor_inst|Add19~0_combout\ & (\Ascensor_inst|best_score~14_combout\ & !\Ascensor_inst|LessThan2~1_cout\)) # (!\Ascensor_inst|Add19~0_combout\ & ((\Ascensor_inst|best_score~14_combout\) # 
-- (!\Ascensor_inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~0_combout\,
	datab => \Ascensor_inst|best_score~14_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~1_cout\,
	cout => \Ascensor_inst|LessThan2~3_cout\);

-- Location: LCCOMB_X10_Y24_N16
\Ascensor_inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~5_cout\ = CARRY((\Ascensor_inst|Add19~2_combout\ & ((!\Ascensor_inst|LessThan2~3_cout\) # (!\Ascensor_inst|best_score~13_combout\))) # (!\Ascensor_inst|Add19~2_combout\ & (!\Ascensor_inst|best_score~13_combout\ & 
-- !\Ascensor_inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~2_combout\,
	datab => \Ascensor_inst|best_score~13_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~3_cout\,
	cout => \Ascensor_inst|LessThan2~5_cout\);

-- Location: LCCOMB_X10_Y24_N18
\Ascensor_inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~7_cout\ = CARRY((\Ascensor_inst|Add19~4_combout\ & (\Ascensor_inst|best_score~12_combout\ & !\Ascensor_inst|LessThan2~5_cout\)) # (!\Ascensor_inst|Add19~4_combout\ & ((\Ascensor_inst|best_score~12_combout\) # 
-- (!\Ascensor_inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~4_combout\,
	datab => \Ascensor_inst|best_score~12_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~5_cout\,
	cout => \Ascensor_inst|LessThan2~7_cout\);

-- Location: LCCOMB_X10_Y24_N20
\Ascensor_inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~9_cout\ = CARRY((\Ascensor_inst|best_score~11_combout\ & (\Ascensor_inst|Add19~6_combout\ & !\Ascensor_inst|LessThan2~7_cout\)) # (!\Ascensor_inst|best_score~11_combout\ & ((\Ascensor_inst|Add19~6_combout\) # 
-- (!\Ascensor_inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~11_combout\,
	datab => \Ascensor_inst|Add19~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~7_cout\,
	cout => \Ascensor_inst|LessThan2~9_cout\);

-- Location: LCCOMB_X10_Y24_N22
\Ascensor_inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~11_cout\ = CARRY((\Ascensor_inst|Add19~8_combout\ & (\Ascensor_inst|best_score~10_combout\ & !\Ascensor_inst|LessThan2~9_cout\)) # (!\Ascensor_inst|Add19~8_combout\ & ((\Ascensor_inst|best_score~10_combout\) # 
-- (!\Ascensor_inst|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~8_combout\,
	datab => \Ascensor_inst|best_score~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~9_cout\,
	cout => \Ascensor_inst|LessThan2~11_cout\);

-- Location: LCCOMB_X10_Y24_N24
\Ascensor_inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~13_cout\ = CARRY((\Ascensor_inst|best_score~9_combout\ & (\Ascensor_inst|Add19~10_combout\ & !\Ascensor_inst|LessThan2~11_cout\)) # (!\Ascensor_inst|best_score~9_combout\ & ((\Ascensor_inst|Add19~10_combout\) # 
-- (!\Ascensor_inst|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~9_combout\,
	datab => \Ascensor_inst|Add19~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan2~11_cout\,
	cout => \Ascensor_inst|LessThan2~13_cout\);

-- Location: LCCOMB_X10_Y24_N26
\Ascensor_inst|LessThan2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan2~14_combout\ = (\Ascensor_inst|Add19~12_combout\ & ((\Ascensor_inst|LessThan2~13_cout\) # (!\Ascensor_inst|best_score~8_combout\))) # (!\Ascensor_inst|Add19~12_combout\ & (\Ascensor_inst|LessThan2~13_cout\ & 
-- !\Ascensor_inst|best_score~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add19~12_combout\,
	datad => \Ascensor_inst|best_score~8_combout\,
	cin => \Ascensor_inst|LessThan2~13_cout\,
	combout => \Ascensor_inst|LessThan2~14_combout\);

-- Location: LCCOMB_X10_Y24_N8
\Ascensor_inst|best_score~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~16_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~12_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~8_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(3),
	datab => \Ascensor_inst|Add19~12_combout\,
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~8_combout\,
	combout => \Ascensor_inst|best_score~16_combout\);

-- Location: LCCOMB_X10_Y24_N2
\Ascensor_inst|best_score~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~17_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|Add19~10_combout\))) # (!\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|best_score~9_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (\Ascensor_inst|best_score~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~9_combout\,
	datab => \Ascensor_inst|floor_calls\(3),
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|Add19~10_combout\,
	combout => \Ascensor_inst|best_score~17_combout\);

-- Location: LCCOMB_X10_Y24_N4
\Ascensor_inst|best_score~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~18_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~8_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~10_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~8_combout\,
	datab => \Ascensor_inst|floor_calls\(3),
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~10_combout\,
	combout => \Ascensor_inst|best_score~18_combout\);

-- Location: LCCOMB_X10_Y25_N28
\Ascensor_inst|best_score~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~19_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~6_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~11_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(3),
	datab => \Ascensor_inst|Add19~6_combout\,
	datac => \Ascensor_inst|best_score~11_combout\,
	datad => \Ascensor_inst|LessThan2~14_combout\,
	combout => \Ascensor_inst|best_score~19_combout\);

-- Location: LCCOMB_X11_Y24_N24
\Ascensor_inst|best_score~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~20_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~4_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~12_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(3),
	datab => \Ascensor_inst|Add19~4_combout\,
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~12_combout\,
	combout => \Ascensor_inst|best_score~20_combout\);

-- Location: LCCOMB_X11_Y24_N6
\Ascensor_inst|best_score~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~21_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~2_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~13_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(3),
	datab => \Ascensor_inst|Add19~2_combout\,
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~13_combout\,
	combout => \Ascensor_inst|best_score~21_combout\);

-- Location: LCCOMB_X11_Y24_N28
\Ascensor_inst|best_score~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~22_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|Add19~0_combout\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~14_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add19~0_combout\,
	datab => \Ascensor_inst|floor_calls\(3),
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~14_combout\,
	combout => \Ascensor_inst|best_score~22_combout\);

-- Location: LCCOMB_X10_Y24_N6
\Ascensor_inst|best_score~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~23_combout\ = (\Ascensor_inst|floor_calls\(3) & ((\Ascensor_inst|LessThan2~14_combout\ & (\Ascensor_inst|floor_usage_counters[3][0]~q\)) # (!\Ascensor_inst|LessThan2~14_combout\ & ((\Ascensor_inst|best_score~15_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(3) & (((\Ascensor_inst|best_score~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(3),
	datab => \Ascensor_inst|floor_usage_counters[3][0]~q\,
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|best_score~15_combout\,
	combout => \Ascensor_inst|best_score~23_combout\);

-- Location: LCCOMB_X11_Y24_N8
\Ascensor_inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~1_cout\ = CARRY((\Ascensor_inst|floor_usage_counters[4][0]~q\ & !\Ascensor_inst|best_score~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][0]~q\,
	datab => \Ascensor_inst|best_score~23_combout\,
	datad => VCC,
	cout => \Ascensor_inst|LessThan3~1_cout\);

-- Location: LCCOMB_X11_Y24_N10
\Ascensor_inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~3_cout\ = CARRY((\Ascensor_inst|Add24~0_combout\ & (\Ascensor_inst|best_score~22_combout\ & !\Ascensor_inst|LessThan3~1_cout\)) # (!\Ascensor_inst|Add24~0_combout\ & ((\Ascensor_inst|best_score~22_combout\) # 
-- (!\Ascensor_inst|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~0_combout\,
	datab => \Ascensor_inst|best_score~22_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~1_cout\,
	cout => \Ascensor_inst|LessThan3~3_cout\);

-- Location: LCCOMB_X11_Y24_N12
\Ascensor_inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~5_cout\ = CARRY((\Ascensor_inst|best_score~21_combout\ & (\Ascensor_inst|Add24~2_combout\ & !\Ascensor_inst|LessThan3~3_cout\)) # (!\Ascensor_inst|best_score~21_combout\ & ((\Ascensor_inst|Add24~2_combout\) # 
-- (!\Ascensor_inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~21_combout\,
	datab => \Ascensor_inst|Add24~2_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~3_cout\,
	cout => \Ascensor_inst|LessThan3~5_cout\);

-- Location: LCCOMB_X11_Y24_N14
\Ascensor_inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~7_cout\ = CARRY((\Ascensor_inst|Add24~4_combout\ & (\Ascensor_inst|best_score~20_combout\ & !\Ascensor_inst|LessThan3~5_cout\)) # (!\Ascensor_inst|Add24~4_combout\ & ((\Ascensor_inst|best_score~20_combout\) # 
-- (!\Ascensor_inst|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~4_combout\,
	datab => \Ascensor_inst|best_score~20_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~5_cout\,
	cout => \Ascensor_inst|LessThan3~7_cout\);

-- Location: LCCOMB_X11_Y24_N16
\Ascensor_inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~9_cout\ = CARRY((\Ascensor_inst|Add24~6_combout\ & ((!\Ascensor_inst|LessThan3~7_cout\) # (!\Ascensor_inst|best_score~19_combout\))) # (!\Ascensor_inst|Add24~6_combout\ & (!\Ascensor_inst|best_score~19_combout\ & 
-- !\Ascensor_inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~6_combout\,
	datab => \Ascensor_inst|best_score~19_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~7_cout\,
	cout => \Ascensor_inst|LessThan3~9_cout\);

-- Location: LCCOMB_X11_Y24_N18
\Ascensor_inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~11_cout\ = CARRY((\Ascensor_inst|Add24~8_combout\ & (\Ascensor_inst|best_score~18_combout\ & !\Ascensor_inst|LessThan3~9_cout\)) # (!\Ascensor_inst|Add24~8_combout\ & ((\Ascensor_inst|best_score~18_combout\) # 
-- (!\Ascensor_inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~8_combout\,
	datab => \Ascensor_inst|best_score~18_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~9_cout\,
	cout => \Ascensor_inst|LessThan3~11_cout\);

-- Location: LCCOMB_X11_Y24_N20
\Ascensor_inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~13_cout\ = CARRY((\Ascensor_inst|best_score~17_combout\ & (\Ascensor_inst|Add24~10_combout\ & !\Ascensor_inst|LessThan3~11_cout\)) # (!\Ascensor_inst|best_score~17_combout\ & ((\Ascensor_inst|Add24~10_combout\) # 
-- (!\Ascensor_inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~17_combout\,
	datab => \Ascensor_inst|Add24~10_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan3~11_cout\,
	cout => \Ascensor_inst|LessThan3~13_cout\);

-- Location: LCCOMB_X11_Y24_N22
\Ascensor_inst|LessThan3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan3~14_combout\ = (\Ascensor_inst|Add24~12_combout\ & ((\Ascensor_inst|LessThan3~13_cout\) # (!\Ascensor_inst|best_score~16_combout\))) # (!\Ascensor_inst|Add24~12_combout\ & (\Ascensor_inst|LessThan3~13_cout\ & 
-- !\Ascensor_inst|best_score~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add24~12_combout\,
	datad => \Ascensor_inst|best_score~16_combout\,
	cin => \Ascensor_inst|LessThan3~13_cout\,
	combout => \Ascensor_inst|LessThan3~14_combout\);

-- Location: LCCOMB_X11_Y24_N30
\Ascensor_inst|best_score~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~24_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|Add24~12_combout\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~16_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~12_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|best_score~16_combout\,
	combout => \Ascensor_inst|best_score~24_combout\);

-- Location: LCCOMB_X11_Y24_N4
\Ascensor_inst|best_score~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~25_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|Add24~10_combout\))) # (!\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|best_score~17_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (\Ascensor_inst|best_score~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~17_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|Add24~10_combout\,
	combout => \Ascensor_inst|best_score~25_combout\);

-- Location: LCCOMB_X11_Y25_N0
\Ascensor_inst|best_score~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~26_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|Add24~8_combout\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~18_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(4),
	datab => \Ascensor_inst|Add24~8_combout\,
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|best_score~18_combout\,
	combout => \Ascensor_inst|best_score~26_combout\);

-- Location: LCCOMB_X12_Y25_N2
\Ascensor_inst|best_score~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~27_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|Add24~6_combout\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~19_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~6_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|best_score~19_combout\,
	datad => \Ascensor_inst|LessThan3~14_combout\,
	combout => \Ascensor_inst|best_score~27_combout\);

-- Location: LCCOMB_X11_Y24_N2
\Ascensor_inst|best_score~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~28_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|Add24~4_combout\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~20_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~4_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|best_score~20_combout\,
	combout => \Ascensor_inst|best_score~28_combout\);

-- Location: LCCOMB_X11_Y24_N0
\Ascensor_inst|best_score~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~29_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|Add24~2_combout\))) # (!\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|best_score~21_combout\)))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (\Ascensor_inst|best_score~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~21_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|Add24~2_combout\,
	combout => \Ascensor_inst|best_score~29_combout\);

-- Location: LCCOMB_X11_Y24_N26
\Ascensor_inst|best_score~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~30_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|Add24~0_combout\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~22_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add24~0_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|LessThan3~14_combout\,
	datad => \Ascensor_inst|best_score~22_combout\,
	combout => \Ascensor_inst|best_score~30_combout\);

-- Location: LCCOMB_X12_Y24_N0
\Ascensor_inst|best_score~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~31_combout\ = (\Ascensor_inst|floor_calls\(4) & ((\Ascensor_inst|LessThan3~14_combout\ & (\Ascensor_inst|floor_usage_counters[4][0]~q\)) # (!\Ascensor_inst|LessThan3~14_combout\ & ((\Ascensor_inst|best_score~23_combout\))))) # 
-- (!\Ascensor_inst|floor_calls\(4) & (((\Ascensor_inst|best_score~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[4][0]~q\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|best_score~23_combout\,
	datad => \Ascensor_inst|LessThan3~14_combout\,
	combout => \Ascensor_inst|best_score~31_combout\);

-- Location: LCCOMB_X11_Y25_N6
\Ascensor_inst|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~1_cout\ = CARRY((\Ascensor_inst|floor_usage_counters[5][0]~q\ & !\Ascensor_inst|best_score~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_usage_counters[5][0]~q\,
	datab => \Ascensor_inst|best_score~31_combout\,
	datad => VCC,
	cout => \Ascensor_inst|LessThan4~1_cout\);

-- Location: LCCOMB_X11_Y25_N8
\Ascensor_inst|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~3_cout\ = CARRY((\Ascensor_inst|Add29~0_combout\ & (\Ascensor_inst|best_score~30_combout\ & !\Ascensor_inst|LessThan4~1_cout\)) # (!\Ascensor_inst|Add29~0_combout\ & ((\Ascensor_inst|best_score~30_combout\) # 
-- (!\Ascensor_inst|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add29~0_combout\,
	datab => \Ascensor_inst|best_score~30_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~1_cout\,
	cout => \Ascensor_inst|LessThan4~3_cout\);

-- Location: LCCOMB_X11_Y25_N10
\Ascensor_inst|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~5_cout\ = CARRY((\Ascensor_inst|Add29~2_combout\ & ((!\Ascensor_inst|LessThan4~3_cout\) # (!\Ascensor_inst|best_score~29_combout\))) # (!\Ascensor_inst|Add29~2_combout\ & (!\Ascensor_inst|best_score~29_combout\ & 
-- !\Ascensor_inst|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add29~2_combout\,
	datab => \Ascensor_inst|best_score~29_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~3_cout\,
	cout => \Ascensor_inst|LessThan4~5_cout\);

-- Location: LCCOMB_X11_Y25_N12
\Ascensor_inst|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~7_cout\ = CARRY((\Ascensor_inst|Add29~4_combout\ & (\Ascensor_inst|best_score~28_combout\ & !\Ascensor_inst|LessThan4~5_cout\)) # (!\Ascensor_inst|Add29~4_combout\ & ((\Ascensor_inst|best_score~28_combout\) # 
-- (!\Ascensor_inst|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add29~4_combout\,
	datab => \Ascensor_inst|best_score~28_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~5_cout\,
	cout => \Ascensor_inst|LessThan4~7_cout\);

-- Location: LCCOMB_X11_Y25_N14
\Ascensor_inst|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~9_cout\ = CARRY((\Ascensor_inst|best_score~27_combout\ & (\Ascensor_inst|Add29~6_combout\ & !\Ascensor_inst|LessThan4~7_cout\)) # (!\Ascensor_inst|best_score~27_combout\ & ((\Ascensor_inst|Add29~6_combout\) # 
-- (!\Ascensor_inst|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|best_score~27_combout\,
	datab => \Ascensor_inst|Add29~6_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~7_cout\,
	cout => \Ascensor_inst|LessThan4~9_cout\);

-- Location: LCCOMB_X11_Y25_N16
\Ascensor_inst|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~11_cout\ = CARRY((\Ascensor_inst|Add29~8_combout\ & (\Ascensor_inst|best_score~26_combout\ & !\Ascensor_inst|LessThan4~9_cout\)) # (!\Ascensor_inst|Add29~8_combout\ & ((\Ascensor_inst|best_score~26_combout\) # 
-- (!\Ascensor_inst|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add29~8_combout\,
	datab => \Ascensor_inst|best_score~26_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~9_cout\,
	cout => \Ascensor_inst|LessThan4~11_cout\);

-- Location: LCCOMB_X11_Y25_N18
\Ascensor_inst|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~13_cout\ = CARRY((\Ascensor_inst|Add29~10_combout\ & ((!\Ascensor_inst|LessThan4~11_cout\) # (!\Ascensor_inst|best_score~25_combout\))) # (!\Ascensor_inst|Add29~10_combout\ & (!\Ascensor_inst|best_score~25_combout\ & 
-- !\Ascensor_inst|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Add29~10_combout\,
	datab => \Ascensor_inst|best_score~25_combout\,
	datad => VCC,
	cin => \Ascensor_inst|LessThan4~11_cout\,
	cout => \Ascensor_inst|LessThan4~13_cout\);

-- Location: LCCOMB_X11_Y25_N20
\Ascensor_inst|LessThan4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan4~14_combout\ = (\Ascensor_inst|Add29~12_combout\ & ((\Ascensor_inst|LessThan4~13_cout\) # (!\Ascensor_inst|best_score~24_combout\))) # (!\Ascensor_inst|Add29~12_combout\ & (\Ascensor_inst|LessThan4~13_cout\ & 
-- !\Ascensor_inst|best_score~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Add29~12_combout\,
	datad => \Ascensor_inst|best_score~24_combout\,
	cin => \Ascensor_inst|LessThan4~13_cout\,
	combout => \Ascensor_inst|LessThan4~14_combout\);

-- Location: LCCOMB_X11_Y25_N26
\Ascensor_inst|next_target~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~7_combout\ = (\Ascensor_inst|next_target~1_combout\ & (\Ascensor_inst|next_target~0_combout\ & ((!\Ascensor_inst|LessThan4~14_combout\) # (!\Ascensor_inst|floor_calls\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(5),
	datab => \Ascensor_inst|next_target~1_combout\,
	datac => \Ascensor_inst|next_target~0_combout\,
	datad => \Ascensor_inst|LessThan4~14_combout\,
	combout => \Ascensor_inst|next_target~7_combout\);

-- Location: LCCOMB_X12_Y25_N26
\Ascensor_inst|best_score~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~33_combout\ = (\Ascensor_inst|LessThan2~14_combout\ & \Ascensor_inst|floor_calls\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|LessThan2~14_combout\,
	datad => \Ascensor_inst|floor_calls\(3),
	combout => \Ascensor_inst|best_score~33_combout\);

-- Location: LCCOMB_X12_Y25_N6
\Ascensor_inst|next_target~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~6_combout\ = (\Ascensor_inst|floor_calls\(5) & ((\Ascensor_inst|LessThan4~14_combout\) # ((!\Ascensor_inst|best_score~32_combout\ & \Ascensor_inst|best_score~33_combout\)))) # (!\Ascensor_inst|floor_calls\(5) & 
-- (!\Ascensor_inst|best_score~32_combout\ & (\Ascensor_inst|best_score~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(5),
	datab => \Ascensor_inst|best_score~32_combout\,
	datac => \Ascensor_inst|best_score~33_combout\,
	datad => \Ascensor_inst|LessThan4~14_combout\,
	combout => \Ascensor_inst|next_target~6_combout\);

-- Location: LCCOMB_X11_Y25_N28
\Ascensor_inst|next_target~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~8_combout\ = (\Ascensor_inst|next_target~7_combout\ & (((!\Ascensor_inst|current_floor[0]~10_combout\)))) # (!\Ascensor_inst|next_target~7_combout\ & (!\Ascensor_inst|next_target~0_combout\ & 
-- ((!\Ascensor_inst|next_target~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|next_target~0_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|next_target~7_combout\,
	datad => \Ascensor_inst|next_target~6_combout\,
	combout => \Ascensor_inst|next_target~8_combout\);

-- Location: LCCOMB_X12_Y25_N22
\Ascensor_inst|target_floor[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|target_floor[0]~3_combout\ = (!\Ascensor_inst|Mux0~2_combout\ & (!\Ascensor_inst|main_state.IDLE~q\ & ((\Ascensor_inst|Equal0~0_combout\) # (\Ascensor_inst|floor_calls\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal0~0_combout\,
	datab => \Ascensor_inst|Mux0~2_combout\,
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|main_state.IDLE~q\,
	combout => \Ascensor_inst|target_floor[0]~3_combout\);

-- Location: FF_X11_Y25_N29
\Ascensor_inst|target_floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|next_target~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|target_floor\(0));

-- Location: LCCOMB_X7_Y24_N8
\Ascensor_inst|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal2~1_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|target_floor\(0) & (\Ascensor_inst|target_floor\(1) $ (!\Ascensor_inst|current_floor[1]~6_combout\)))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & 
-- (!\Ascensor_inst|target_floor\(0) & (\Ascensor_inst|target_floor\(1) $ (\Ascensor_inst|current_floor[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|target_floor\(1),
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|target_floor\(0),
	combout => \Ascensor_inst|Equal2~1_combout\);

-- Location: LCCOMB_X3_Y24_N22
\Ascensor_inst|floor_calls~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_calls~6_combout\ = (!\Ascensor_inst|LessThan7~9_combout\ & (\Ascensor_inst|Equal2~0_combout\ & \Ascensor_inst|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|LessThan7~9_combout\,
	datac => \Ascensor_inst|Equal2~0_combout\,
	datad => \Ascensor_inst|Equal2~1_combout\,
	combout => \Ascensor_inst|floor_calls~6_combout\);

-- Location: LCCOMB_X4_Y25_N16
\Ascensor_inst|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector15~2_combout\ = (\Ascensor_inst|Selector15~1_combout\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & ((!\Ascensor_inst|floor_calls~6_combout\) # (!\Ascensor_inst|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector15~1_combout\,
	datab => \Ascensor_inst|Equal3~2_combout\,
	datac => \Ascensor_inst|floor_calls~6_combout\,
	datad => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	combout => \Ascensor_inst|Selector15~2_combout\);

-- Location: LCCOMB_X4_Y25_N18
\Ascensor_inst|Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector15~3_combout\ = (\Ascensor_inst|elevator_control~2_combout\ & ((\Ascensor_inst|Selector15~0_combout\) # ((\Ascensor_inst|Selector15~2_combout\)))) # (!\Ascensor_inst|elevator_control~2_combout\ & (\Ascensor_inst|floor_calls\(2) & 
-- ((\Ascensor_inst|Selector15~0_combout\) # (\Ascensor_inst|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|elevator_control~2_combout\,
	datab => \Ascensor_inst|Selector15~0_combout\,
	datac => \Ascensor_inst|floor_calls\(2),
	datad => \Ascensor_inst|Selector15~2_combout\,
	combout => \Ascensor_inst|Selector15~3_combout\);

-- Location: FF_X4_Y25_N19
\Ascensor_inst|floor_calls[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector15~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_calls\(2));

-- Location: LCCOMB_X12_Y25_N20
\Ascensor_inst|next_target~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~0_combout\ = (!\Ascensor_inst|best_score~32_combout\ & (!\Ascensor_inst|best_score~33_combout\ & ((!\Ascensor_inst|LessThan1~14_combout\) # (!\Ascensor_inst|floor_calls\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(2),
	datab => \Ascensor_inst|LessThan1~14_combout\,
	datac => \Ascensor_inst|best_score~32_combout\,
	datad => \Ascensor_inst|best_score~33_combout\,
	combout => \Ascensor_inst|next_target~0_combout\);

-- Location: LCCOMB_X12_Y25_N0
\Ascensor_inst|next_target~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~4_combout\ = (\Ascensor_inst|next_target~0_combout\ & (\Ascensor_inst|current_floor[1]~6_combout\ & (\Ascensor_inst|next_target~1_combout\))) # (!\Ascensor_inst|next_target~0_combout\ & 
-- (((!\Ascensor_inst|best_score~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datab => \Ascensor_inst|next_target~1_combout\,
	datac => \Ascensor_inst|best_score~32_combout\,
	datad => \Ascensor_inst|next_target~0_combout\,
	combout => \Ascensor_inst|next_target~4_combout\);

-- Location: LCCOMB_X11_Y25_N24
\Ascensor_inst|next_target~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~5_combout\ = (\Ascensor_inst|next_target~4_combout\ & ((!\Ascensor_inst|LessThan4~14_combout\) # (!\Ascensor_inst|floor_calls\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(5),
	datac => \Ascensor_inst|next_target~4_combout\,
	datad => \Ascensor_inst|LessThan4~14_combout\,
	combout => \Ascensor_inst|next_target~5_combout\);

-- Location: FF_X11_Y25_N25
\Ascensor_inst|target_floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|next_target~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|target_floor\(1));

-- Location: LCCOMB_X7_Y24_N2
\Ascensor_inst|floor_calls~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_calls~2_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|target_floor\(0) & (\Ascensor_inst|target_floor\(1) $ (\Ascensor_inst|current_floor[1]~6_combout\)))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & 
-- (!\Ascensor_inst|target_floor\(0) & (\Ascensor_inst|target_floor\(1) $ (!\Ascensor_inst|current_floor[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|target_floor\(1),
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|target_floor\(0),
	combout => \Ascensor_inst|floor_calls~2_combout\);

-- Location: FF_X11_Y25_N31
\Ascensor_inst|target_floor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|next_target~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|target_floor\(2));

-- Location: LCCOMB_X7_Y24_N12
\Ascensor_inst|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add17~2_combout\ = (!\Ascensor_inst|current_floor[1]~6_combout\) # (!\Ascensor_inst|current_floor[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add17~2_combout\);

-- Location: LCCOMB_X7_Y24_N30
\Ascensor_inst|floor_calls~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_calls~3_combout\ = (\Ascensor_inst|floor_calls~2_combout\ & ((\Ascensor_inst|target_floor\(2) & (\Ascensor_inst|Add17~2_combout\ $ (!\Ascensor_inst|current_floor[2]~2_combout\))) # (!\Ascensor_inst|target_floor\(2) & 
-- (\Ascensor_inst|Add17~2_combout\ & !\Ascensor_inst|current_floor[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~2_combout\,
	datab => \Ascensor_inst|target_floor\(2),
	datac => \Ascensor_inst|Add17~2_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|floor_calls~3_combout\);

-- Location: LCCOMB_X4_Y25_N28
\Ascensor_inst|floor_calls~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_calls~5_combout\ = (!\Ascensor_inst|LessThan7~9_combout\ & \Ascensor_inst|floor_calls~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|LessThan7~9_combout\,
	datad => \Ascensor_inst|floor_calls~3_combout\,
	combout => \Ascensor_inst|floor_calls~5_combout\);

-- Location: LCCOMB_X3_Y24_N4
\Ascensor_inst|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~4_combout\ = (\Ascensor_inst|current_floor[0]~10_combout\ & (!\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Equal3~4_combout\);

-- Location: LCCOMB_X4_Y25_N20
\Ascensor_inst|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector13~0_combout\ = (\Ascensor_inst|WideOr2~combout\) # ((!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|Equal3~3_combout\) # (!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~4_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|Equal3~3_combout\,
	combout => \Ascensor_inst|Selector13~0_combout\);

-- Location: LCCOMB_X4_Y25_N26
\Ascensor_inst|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector13~1_combout\ = (\Ascensor_inst|Selector13~0_combout\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & ((!\Ascensor_inst|floor_calls~6_combout\) # (!\Ascensor_inst|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal3~4_combout\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datac => \Ascensor_inst|floor_calls~6_combout\,
	datad => \Ascensor_inst|Selector13~0_combout\,
	combout => \Ascensor_inst|Selector13~1_combout\);

-- Location: LCCOMB_X4_Y25_N8
\Ascensor_inst|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector13~2_combout\ = (\Ascensor_inst|Selector13~1_combout\) # ((\Ascensor_inst|main_state.MOVING_UP~q\ & ((!\Ascensor_inst|Equal3~2_combout\) # (!\Ascensor_inst|floor_calls~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|floor_calls~5_combout\,
	datac => \Ascensor_inst|Equal3~2_combout\,
	datad => \Ascensor_inst|Selector13~1_combout\,
	combout => \Ascensor_inst|Selector13~2_combout\);

-- Location: LCCOMB_X5_Y25_N30
\Ascensor_inst|Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector13~3_combout\ = (\Ascensor_inst|Selector13~2_combout\ & ((\Ascensor_inst|btn_edges\(6)) # ((\Ascensor_inst|floor_calls\(4)) # (\Ascensor_inst|btn_edges\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector13~2_combout\,
	datab => \Ascensor_inst|btn_edges\(6),
	datac => \Ascensor_inst|floor_calls\(4),
	datad => \Ascensor_inst|btn_edges\(7),
	combout => \Ascensor_inst|Selector13~3_combout\);

-- Location: FF_X5_Y25_N31
\Ascensor_inst|floor_calls[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector13~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_calls\(4));

-- Location: LCCOMB_X12_Y25_N4
\Ascensor_inst|best_score~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|best_score~32_combout\ = (\Ascensor_inst|floor_calls\(4) & \Ascensor_inst|LessThan3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|floor_calls\(4),
	datad => \Ascensor_inst|LessThan3~14_combout\,
	combout => \Ascensor_inst|best_score~32_combout\);

-- Location: LCCOMB_X12_Y25_N14
\Ascensor_inst|next_target~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~2_combout\ = (\Ascensor_inst|next_target~0_combout\ & (\Ascensor_inst|current_floor[2]~2_combout\ & (\Ascensor_inst|next_target~1_combout\))) # (!\Ascensor_inst|next_target~0_combout\ & 
-- (((\Ascensor_inst|best_score~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|next_target~1_combout\,
	datac => \Ascensor_inst|best_score~32_combout\,
	datad => \Ascensor_inst|next_target~0_combout\,
	combout => \Ascensor_inst|next_target~2_combout\);

-- Location: LCCOMB_X11_Y25_N30
\Ascensor_inst|next_target~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|next_target~3_combout\ = (\Ascensor_inst|next_target~2_combout\) # ((\Ascensor_inst|floor_calls\(5) & \Ascensor_inst|LessThan4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(5),
	datac => \Ascensor_inst|next_target~2_combout\,
	datad => \Ascensor_inst|LessThan4~14_combout\,
	combout => \Ascensor_inst|next_target~3_combout\);

-- Location: LCCOMB_X11_Y25_N22
\Ascensor_inst|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan5~0_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[1]~6_combout\ & (\Ascensor_inst|next_target~3_combout\ & \Ascensor_inst|next_target~5_combout\))) # 
-- (!\Ascensor_inst|current_floor[2]~2_combout\ & ((\Ascensor_inst|next_target~3_combout\) # ((!\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|next_target~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|next_target~3_combout\,
	datad => \Ascensor_inst|next_target~5_combout\,
	combout => \Ascensor_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X11_Y25_N2
\Ascensor_inst|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan5~2_combout\ = (\Ascensor_inst|LessThan5~0_combout\) # ((!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|LessThan5~1_combout\ & !\Ascensor_inst|next_target~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan5~0_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|LessThan5~1_combout\,
	datad => \Ascensor_inst|next_target~8_combout\,
	combout => \Ascensor_inst|LessThan5~2_combout\);

-- Location: LCCOMB_X9_Y25_N28
\Ascensor_inst|timer_counter[3]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[3]~79_combout\ = (\Ascensor_inst|floor_calls\(1) & (((\Ascensor_inst|LessThan5~2_combout\) # (\Ascensor_inst|LessThan6~1_combout\)))) # (!\Ascensor_inst|floor_calls\(1) & (\Ascensor_inst|Equal0~0_combout\ & 
-- ((\Ascensor_inst|LessThan5~2_combout\) # (\Ascensor_inst|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(1),
	datab => \Ascensor_inst|Equal0~0_combout\,
	datac => \Ascensor_inst|LessThan5~2_combout\,
	datad => \Ascensor_inst|LessThan6~1_combout\,
	combout => \Ascensor_inst|timer_counter[3]~79_combout\);

-- Location: LCCOMB_X9_Y25_N30
\Ascensor_inst|timer_counter[3]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[3]~80_combout\ = (!\Ascensor_inst|WideOr2~combout\ & ((\Ascensor_inst|main_state.IDLE~q\) # ((!\Ascensor_inst|Mux0~2_combout\ & \Ascensor_inst|timer_counter[3]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.IDLE~q\,
	datab => \Ascensor_inst|Mux0~2_combout\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|timer_counter[3]~79_combout\,
	combout => \Ascensor_inst|timer_counter[3]~80_combout\);

-- Location: FF_X8_Y25_N19
\Ascensor_inst|timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[0]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(0));

-- Location: LCCOMB_X9_Y26_N6
\Ascensor_inst|timer_counter[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[1]~30_combout\ = (\Ascensor_inst|timer_counter\(1) & (!\Ascensor_inst|timer_counter[0]~29\)) # (!\Ascensor_inst|timer_counter\(1) & ((\Ascensor_inst|timer_counter[0]~29\) # (GND)))
-- \Ascensor_inst|timer_counter[1]~31\ = CARRY((!\Ascensor_inst|timer_counter[0]~29\) # (!\Ascensor_inst|timer_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(1),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[0]~29\,
	combout => \Ascensor_inst|timer_counter[1]~30_combout\,
	cout => \Ascensor_inst|timer_counter[1]~31\);

-- Location: FF_X8_Y25_N7
\Ascensor_inst|timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[1]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(1));

-- Location: LCCOMB_X9_Y26_N8
\Ascensor_inst|timer_counter[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[2]~32_combout\ = (\Ascensor_inst|timer_counter\(2) & (\Ascensor_inst|timer_counter[1]~31\ $ (GND))) # (!\Ascensor_inst|timer_counter\(2) & (!\Ascensor_inst|timer_counter[1]~31\ & VCC))
-- \Ascensor_inst|timer_counter[2]~33\ = CARRY((\Ascensor_inst|timer_counter\(2) & !\Ascensor_inst|timer_counter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(2),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[1]~31\,
	combout => \Ascensor_inst|timer_counter[2]~32_combout\,
	cout => \Ascensor_inst|timer_counter[2]~33\);

-- Location: FF_X1_Y25_N1
\Ascensor_inst|timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[2]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(2));

-- Location: LCCOMB_X9_Y26_N10
\Ascensor_inst|timer_counter[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[3]~34_combout\ = (\Ascensor_inst|timer_counter\(3) & (!\Ascensor_inst|timer_counter[2]~33\)) # (!\Ascensor_inst|timer_counter\(3) & ((\Ascensor_inst|timer_counter[2]~33\) # (GND)))
-- \Ascensor_inst|timer_counter[3]~35\ = CARRY((!\Ascensor_inst|timer_counter[2]~33\) # (!\Ascensor_inst|timer_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(3),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[2]~33\,
	combout => \Ascensor_inst|timer_counter[3]~34_combout\,
	cout => \Ascensor_inst|timer_counter[3]~35\);

-- Location: FF_X8_Y25_N25
\Ascensor_inst|timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[3]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(3));

-- Location: LCCOMB_X9_Y26_N12
\Ascensor_inst|timer_counter[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[4]~36_combout\ = (\Ascensor_inst|timer_counter\(4) & (\Ascensor_inst|timer_counter[3]~35\ $ (GND))) # (!\Ascensor_inst|timer_counter\(4) & (!\Ascensor_inst|timer_counter[3]~35\ & VCC))
-- \Ascensor_inst|timer_counter[4]~37\ = CARRY((\Ascensor_inst|timer_counter\(4) & !\Ascensor_inst|timer_counter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(4),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[3]~35\,
	combout => \Ascensor_inst|timer_counter[4]~36_combout\,
	cout => \Ascensor_inst|timer_counter[4]~37\);

-- Location: FF_X4_Y25_N29
\Ascensor_inst|timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[4]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(4));

-- Location: LCCOMB_X9_Y26_N14
\Ascensor_inst|timer_counter[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[5]~38_combout\ = (\Ascensor_inst|timer_counter\(5) & (!\Ascensor_inst|timer_counter[4]~37\)) # (!\Ascensor_inst|timer_counter\(5) & ((\Ascensor_inst|timer_counter[4]~37\) # (GND)))
-- \Ascensor_inst|timer_counter[5]~39\ = CARRY((!\Ascensor_inst|timer_counter[4]~37\) # (!\Ascensor_inst|timer_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(5),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[4]~37\,
	combout => \Ascensor_inst|timer_counter[5]~38_combout\,
	cout => \Ascensor_inst|timer_counter[5]~39\);

-- Location: FF_X8_Y25_N23
\Ascensor_inst|timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[5]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(5));

-- Location: LCCOMB_X9_Y26_N16
\Ascensor_inst|timer_counter[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[6]~40_combout\ = (\Ascensor_inst|timer_counter\(6) & (\Ascensor_inst|timer_counter[5]~39\ $ (GND))) # (!\Ascensor_inst|timer_counter\(6) & (!\Ascensor_inst|timer_counter[5]~39\ & VCC))
-- \Ascensor_inst|timer_counter[6]~41\ = CARRY((\Ascensor_inst|timer_counter\(6) & !\Ascensor_inst|timer_counter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(6),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[5]~39\,
	combout => \Ascensor_inst|timer_counter[6]~40_combout\,
	cout => \Ascensor_inst|timer_counter[6]~41\);

-- Location: FF_X1_Y25_N11
\Ascensor_inst|timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[6]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(6));

-- Location: LCCOMB_X9_Y26_N18
\Ascensor_inst|timer_counter[7]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[7]~42_combout\ = (\Ascensor_inst|timer_counter\(7) & (!\Ascensor_inst|timer_counter[6]~41\)) # (!\Ascensor_inst|timer_counter\(7) & ((\Ascensor_inst|timer_counter[6]~41\) # (GND)))
-- \Ascensor_inst|timer_counter[7]~43\ = CARRY((!\Ascensor_inst|timer_counter[6]~41\) # (!\Ascensor_inst|timer_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(7),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[6]~41\,
	combout => \Ascensor_inst|timer_counter[7]~42_combout\,
	cout => \Ascensor_inst|timer_counter[7]~43\);

-- Location: FF_X8_Y25_N13
\Ascensor_inst|timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[7]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(7));

-- Location: LCCOMB_X9_Y26_N20
\Ascensor_inst|timer_counter[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[8]~44_combout\ = (\Ascensor_inst|timer_counter\(8) & (\Ascensor_inst|timer_counter[7]~43\ $ (GND))) # (!\Ascensor_inst|timer_counter\(8) & (!\Ascensor_inst|timer_counter[7]~43\ & VCC))
-- \Ascensor_inst|timer_counter[8]~45\ = CARRY((\Ascensor_inst|timer_counter\(8) & !\Ascensor_inst|timer_counter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(8),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[7]~43\,
	combout => \Ascensor_inst|timer_counter[8]~44_combout\,
	cout => \Ascensor_inst|timer_counter[8]~45\);

-- Location: FF_X1_Y25_N9
\Ascensor_inst|timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[8]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(8));

-- Location: LCCOMB_X9_Y26_N22
\Ascensor_inst|timer_counter[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[9]~46_combout\ = (\Ascensor_inst|timer_counter\(9) & (!\Ascensor_inst|timer_counter[8]~45\)) # (!\Ascensor_inst|timer_counter\(9) & ((\Ascensor_inst|timer_counter[8]~45\) # (GND)))
-- \Ascensor_inst|timer_counter[9]~47\ = CARRY((!\Ascensor_inst|timer_counter[8]~45\) # (!\Ascensor_inst|timer_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(9),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[8]~45\,
	combout => \Ascensor_inst|timer_counter[9]~46_combout\,
	cout => \Ascensor_inst|timer_counter[9]~47\);

-- Location: FF_X8_Y25_N5
\Ascensor_inst|timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[9]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(9));

-- Location: LCCOMB_X9_Y26_N24
\Ascensor_inst|timer_counter[10]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[10]~48_combout\ = (\Ascensor_inst|timer_counter\(10) & (\Ascensor_inst|timer_counter[9]~47\ $ (GND))) # (!\Ascensor_inst|timer_counter\(10) & (!\Ascensor_inst|timer_counter[9]~47\ & VCC))
-- \Ascensor_inst|timer_counter[10]~49\ = CARRY((\Ascensor_inst|timer_counter\(10) & !\Ascensor_inst|timer_counter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(10),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[9]~47\,
	combout => \Ascensor_inst|timer_counter[10]~48_combout\,
	cout => \Ascensor_inst|timer_counter[10]~49\);

-- Location: FF_X8_Y25_N21
\Ascensor_inst|timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[10]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(10));

-- Location: LCCOMB_X9_Y26_N26
\Ascensor_inst|timer_counter[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[11]~50_combout\ = (\Ascensor_inst|timer_counter\(11) & (!\Ascensor_inst|timer_counter[10]~49\)) # (!\Ascensor_inst|timer_counter\(11) & ((\Ascensor_inst|timer_counter[10]~49\) # (GND)))
-- \Ascensor_inst|timer_counter[11]~51\ = CARRY((!\Ascensor_inst|timer_counter[10]~49\) # (!\Ascensor_inst|timer_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(11),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[10]~49\,
	combout => \Ascensor_inst|timer_counter[11]~50_combout\,
	cout => \Ascensor_inst|timer_counter[11]~51\);

-- Location: FF_X8_Y25_N1
\Ascensor_inst|timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|timer_counter[11]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	sload => VCC,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(11));

-- Location: LCCOMB_X9_Y26_N28
\Ascensor_inst|timer_counter[12]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[12]~52_combout\ = (\Ascensor_inst|timer_counter\(12) & (\Ascensor_inst|timer_counter[11]~51\ $ (GND))) # (!\Ascensor_inst|timer_counter\(12) & (!\Ascensor_inst|timer_counter[11]~51\ & VCC))
-- \Ascensor_inst|timer_counter[12]~53\ = CARRY((\Ascensor_inst|timer_counter\(12) & !\Ascensor_inst|timer_counter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(12),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[11]~51\,
	combout => \Ascensor_inst|timer_counter[12]~52_combout\,
	cout => \Ascensor_inst|timer_counter[12]~53\);

-- Location: FF_X9_Y26_N29
\Ascensor_inst|timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[12]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(12));

-- Location: LCCOMB_X9_Y26_N30
\Ascensor_inst|timer_counter[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[13]~54_combout\ = (\Ascensor_inst|timer_counter\(13) & (!\Ascensor_inst|timer_counter[12]~53\)) # (!\Ascensor_inst|timer_counter\(13) & ((\Ascensor_inst|timer_counter[12]~53\) # (GND)))
-- \Ascensor_inst|timer_counter[13]~55\ = CARRY((!\Ascensor_inst|timer_counter[12]~53\) # (!\Ascensor_inst|timer_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(13),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[12]~53\,
	combout => \Ascensor_inst|timer_counter[13]~54_combout\,
	cout => \Ascensor_inst|timer_counter[13]~55\);

-- Location: FF_X9_Y26_N31
\Ascensor_inst|timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[13]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(13));

-- Location: LCCOMB_X9_Y25_N0
\Ascensor_inst|timer_counter[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[14]~56_combout\ = (\Ascensor_inst|timer_counter\(14) & (\Ascensor_inst|timer_counter[13]~55\ $ (GND))) # (!\Ascensor_inst|timer_counter\(14) & (!\Ascensor_inst|timer_counter[13]~55\ & VCC))
-- \Ascensor_inst|timer_counter[14]~57\ = CARRY((\Ascensor_inst|timer_counter\(14) & !\Ascensor_inst|timer_counter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(14),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[13]~55\,
	combout => \Ascensor_inst|timer_counter[14]~56_combout\,
	cout => \Ascensor_inst|timer_counter[14]~57\);

-- Location: FF_X9_Y25_N1
\Ascensor_inst|timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[14]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(14));

-- Location: LCCOMB_X9_Y25_N2
\Ascensor_inst|timer_counter[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[15]~58_combout\ = (\Ascensor_inst|timer_counter\(15) & (!\Ascensor_inst|timer_counter[14]~57\)) # (!\Ascensor_inst|timer_counter\(15) & ((\Ascensor_inst|timer_counter[14]~57\) # (GND)))
-- \Ascensor_inst|timer_counter[15]~59\ = CARRY((!\Ascensor_inst|timer_counter[14]~57\) # (!\Ascensor_inst|timer_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(15),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[14]~57\,
	combout => \Ascensor_inst|timer_counter[15]~58_combout\,
	cout => \Ascensor_inst|timer_counter[15]~59\);

-- Location: FF_X9_Y25_N3
\Ascensor_inst|timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[15]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(15));

-- Location: LCCOMB_X9_Y25_N4
\Ascensor_inst|timer_counter[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[16]~60_combout\ = (\Ascensor_inst|timer_counter\(16) & (\Ascensor_inst|timer_counter[15]~59\ $ (GND))) # (!\Ascensor_inst|timer_counter\(16) & (!\Ascensor_inst|timer_counter[15]~59\ & VCC))
-- \Ascensor_inst|timer_counter[16]~61\ = CARRY((\Ascensor_inst|timer_counter\(16) & !\Ascensor_inst|timer_counter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(16),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[15]~59\,
	combout => \Ascensor_inst|timer_counter[16]~60_combout\,
	cout => \Ascensor_inst|timer_counter[16]~61\);

-- Location: FF_X9_Y25_N5
\Ascensor_inst|timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[16]~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(16));

-- Location: LCCOMB_X9_Y25_N6
\Ascensor_inst|timer_counter[17]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[17]~62_combout\ = (\Ascensor_inst|timer_counter\(17) & (!\Ascensor_inst|timer_counter[16]~61\)) # (!\Ascensor_inst|timer_counter\(17) & ((\Ascensor_inst|timer_counter[16]~61\) # (GND)))
-- \Ascensor_inst|timer_counter[17]~63\ = CARRY((!\Ascensor_inst|timer_counter[16]~61\) # (!\Ascensor_inst|timer_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(17),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[16]~61\,
	combout => \Ascensor_inst|timer_counter[17]~62_combout\,
	cout => \Ascensor_inst|timer_counter[17]~63\);

-- Location: FF_X9_Y25_N7
\Ascensor_inst|timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[17]~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(17));

-- Location: LCCOMB_X9_Y25_N8
\Ascensor_inst|timer_counter[18]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[18]~64_combout\ = (\Ascensor_inst|timer_counter\(18) & (\Ascensor_inst|timer_counter[17]~63\ $ (GND))) # (!\Ascensor_inst|timer_counter\(18) & (!\Ascensor_inst|timer_counter[17]~63\ & VCC))
-- \Ascensor_inst|timer_counter[18]~65\ = CARRY((\Ascensor_inst|timer_counter\(18) & !\Ascensor_inst|timer_counter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(18),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[17]~63\,
	combout => \Ascensor_inst|timer_counter[18]~64_combout\,
	cout => \Ascensor_inst|timer_counter[18]~65\);

-- Location: FF_X9_Y25_N9
\Ascensor_inst|timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[18]~64_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(18));

-- Location: LCCOMB_X9_Y25_N10
\Ascensor_inst|timer_counter[19]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[19]~66_combout\ = (\Ascensor_inst|timer_counter\(19) & (!\Ascensor_inst|timer_counter[18]~65\)) # (!\Ascensor_inst|timer_counter\(19) & ((\Ascensor_inst|timer_counter[18]~65\) # (GND)))
-- \Ascensor_inst|timer_counter[19]~67\ = CARRY((!\Ascensor_inst|timer_counter[18]~65\) # (!\Ascensor_inst|timer_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(19),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[18]~65\,
	combout => \Ascensor_inst|timer_counter[19]~66_combout\,
	cout => \Ascensor_inst|timer_counter[19]~67\);

-- Location: FF_X9_Y25_N11
\Ascensor_inst|timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[19]~66_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(19));

-- Location: LCCOMB_X9_Y25_N12
\Ascensor_inst|timer_counter[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[20]~68_combout\ = (\Ascensor_inst|timer_counter\(20) & (\Ascensor_inst|timer_counter[19]~67\ $ (GND))) # (!\Ascensor_inst|timer_counter\(20) & (!\Ascensor_inst|timer_counter[19]~67\ & VCC))
-- \Ascensor_inst|timer_counter[20]~69\ = CARRY((\Ascensor_inst|timer_counter\(20) & !\Ascensor_inst|timer_counter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(20),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[19]~67\,
	combout => \Ascensor_inst|timer_counter[20]~68_combout\,
	cout => \Ascensor_inst|timer_counter[20]~69\);

-- Location: FF_X9_Y25_N13
\Ascensor_inst|timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[20]~68_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(20));

-- Location: LCCOMB_X9_Y25_N14
\Ascensor_inst|timer_counter[21]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[21]~70_combout\ = (\Ascensor_inst|timer_counter\(21) & (!\Ascensor_inst|timer_counter[20]~69\)) # (!\Ascensor_inst|timer_counter\(21) & ((\Ascensor_inst|timer_counter[20]~69\) # (GND)))
-- \Ascensor_inst|timer_counter[21]~71\ = CARRY((!\Ascensor_inst|timer_counter[20]~69\) # (!\Ascensor_inst|timer_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(21),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[20]~69\,
	combout => \Ascensor_inst|timer_counter[21]~70_combout\,
	cout => \Ascensor_inst|timer_counter[21]~71\);

-- Location: FF_X9_Y25_N15
\Ascensor_inst|timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[21]~70_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(21));

-- Location: LCCOMB_X9_Y25_N16
\Ascensor_inst|timer_counter[22]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[22]~72_combout\ = (\Ascensor_inst|timer_counter\(22) & (\Ascensor_inst|timer_counter[21]~71\ $ (GND))) # (!\Ascensor_inst|timer_counter\(22) & (!\Ascensor_inst|timer_counter[21]~71\ & VCC))
-- \Ascensor_inst|timer_counter[22]~73\ = CARRY((\Ascensor_inst|timer_counter\(22) & !\Ascensor_inst|timer_counter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(22),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[21]~71\,
	combout => \Ascensor_inst|timer_counter[22]~72_combout\,
	cout => \Ascensor_inst|timer_counter[22]~73\);

-- Location: FF_X9_Y25_N17
\Ascensor_inst|timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[22]~72_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(22));

-- Location: LCCOMB_X9_Y25_N18
\Ascensor_inst|timer_counter[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[23]~74_combout\ = (\Ascensor_inst|timer_counter\(23) & (!\Ascensor_inst|timer_counter[22]~73\)) # (!\Ascensor_inst|timer_counter\(23) & ((\Ascensor_inst|timer_counter[22]~73\) # (GND)))
-- \Ascensor_inst|timer_counter[23]~75\ = CARRY((!\Ascensor_inst|timer_counter[22]~73\) # (!\Ascensor_inst|timer_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(23),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[22]~73\,
	combout => \Ascensor_inst|timer_counter[23]~74_combout\,
	cout => \Ascensor_inst|timer_counter[23]~75\);

-- Location: FF_X9_Y25_N19
\Ascensor_inst|timer_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[23]~74_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(23));

-- Location: LCCOMB_X8_Y26_N12
\Ascensor_inst|LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~8_combout\ = (((!\Ascensor_inst|timer_counter\(21)) # (!\Ascensor_inst|timer_counter\(20))) # (!\Ascensor_inst|timer_counter\(22))) # (!\Ascensor_inst|timer_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(23),
	datab => \Ascensor_inst|timer_counter\(22),
	datac => \Ascensor_inst|timer_counter\(20),
	datad => \Ascensor_inst|timer_counter\(21),
	combout => \Ascensor_inst|LessThan7~8_combout\);

-- Location: LCCOMB_X9_Y25_N20
\Ascensor_inst|timer_counter[24]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[24]~76_combout\ = (\Ascensor_inst|timer_counter\(24) & (\Ascensor_inst|timer_counter[23]~75\ $ (GND))) # (!\Ascensor_inst|timer_counter\(24) & (!\Ascensor_inst|timer_counter[23]~75\ & VCC))
-- \Ascensor_inst|timer_counter[24]~77\ = CARRY((\Ascensor_inst|timer_counter\(24) & !\Ascensor_inst|timer_counter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(24),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[23]~75\,
	combout => \Ascensor_inst|timer_counter[24]~76_combout\,
	cout => \Ascensor_inst|timer_counter[24]~77\);

-- Location: FF_X9_Y25_N21
\Ascensor_inst|timer_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[24]~76_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(24));

-- Location: LCCOMB_X9_Y25_N22
\Ascensor_inst|timer_counter[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[25]~81_combout\ = (\Ascensor_inst|timer_counter\(25) & (!\Ascensor_inst|timer_counter[24]~77\)) # (!\Ascensor_inst|timer_counter\(25) & ((\Ascensor_inst|timer_counter[24]~77\) # (GND)))
-- \Ascensor_inst|timer_counter[25]~82\ = CARRY((!\Ascensor_inst|timer_counter[24]~77\) # (!\Ascensor_inst|timer_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(25),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[24]~77\,
	combout => \Ascensor_inst|timer_counter[25]~81_combout\,
	cout => \Ascensor_inst|timer_counter[25]~82\);

-- Location: FF_X9_Y25_N23
\Ascensor_inst|timer_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[25]~81_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(25));

-- Location: LCCOMB_X9_Y25_N24
\Ascensor_inst|timer_counter[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[26]~83_combout\ = (\Ascensor_inst|timer_counter\(26) & (\Ascensor_inst|timer_counter[25]~82\ $ (GND))) # (!\Ascensor_inst|timer_counter\(26) & (!\Ascensor_inst|timer_counter[25]~82\ & VCC))
-- \Ascensor_inst|timer_counter[26]~84\ = CARRY((\Ascensor_inst|timer_counter\(26) & !\Ascensor_inst|timer_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(26),
	datad => VCC,
	cin => \Ascensor_inst|timer_counter[25]~82\,
	combout => \Ascensor_inst|timer_counter[26]~83_combout\,
	cout => \Ascensor_inst|timer_counter[26]~84\);

-- Location: FF_X9_Y25_N25
\Ascensor_inst|timer_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[26]~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(26));

-- Location: LCCOMB_X9_Y25_N26
\Ascensor_inst|timer_counter[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|timer_counter[27]~85_combout\ = \Ascensor_inst|timer_counter\(27) $ (\Ascensor_inst|timer_counter[26]~84\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(27),
	cin => \Ascensor_inst|timer_counter[26]~84\,
	combout => \Ascensor_inst|timer_counter[27]~85_combout\);

-- Location: FF_X9_Y25_N27
\Ascensor_inst|timer_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|timer_counter[27]~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|timer_counter[3]~78_combout\,
	ena => \Ascensor_inst|timer_counter[3]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|timer_counter\(27));

-- Location: LCCOMB_X9_Y26_N2
\Ascensor_inst|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~5_combout\ = (!\Ascensor_inst|timer_counter\(10) & (!\Ascensor_inst|timer_counter\(11) & !\Ascensor_inst|timer_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(10),
	datac => \Ascensor_inst|timer_counter\(11),
	datad => \Ascensor_inst|timer_counter\(9),
	combout => \Ascensor_inst|LessThan7~5_combout\);

-- Location: LCCOMB_X9_Y26_N0
\Ascensor_inst|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~2_combout\ = (((!\Ascensor_inst|timer_counter\(1)) # (!\Ascensor_inst|timer_counter\(3))) # (!\Ascensor_inst|timer_counter\(2))) # (!\Ascensor_inst|timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(0),
	datab => \Ascensor_inst|timer_counter\(2),
	datac => \Ascensor_inst|timer_counter\(3),
	datad => \Ascensor_inst|timer_counter\(1),
	combout => \Ascensor_inst|LessThan7~2_combout\);

-- Location: LCCOMB_X8_Y26_N28
\Ascensor_inst|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~3_combout\ = ((!\Ascensor_inst|timer_counter\(5)) # (!\Ascensor_inst|timer_counter\(6))) # (!\Ascensor_inst|timer_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|timer_counter\(4),
	datac => \Ascensor_inst|timer_counter\(6),
	datad => \Ascensor_inst|timer_counter\(5),
	combout => \Ascensor_inst|LessThan7~3_combout\);

-- Location: LCCOMB_X8_Y26_N2
\Ascensor_inst|LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~4_combout\ = ((!\Ascensor_inst|timer_counter\(7) & ((\Ascensor_inst|LessThan7~2_combout\) # (\Ascensor_inst|LessThan7~3_combout\)))) # (!\Ascensor_inst|timer_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(7),
	datab => \Ascensor_inst|LessThan7~2_combout\,
	datac => \Ascensor_inst|timer_counter\(8),
	datad => \Ascensor_inst|LessThan7~3_combout\,
	combout => \Ascensor_inst|LessThan7~4_combout\);

-- Location: LCCOMB_X8_Y26_N24
\Ascensor_inst|LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~6_combout\ = (!\Ascensor_inst|timer_counter\(13) & (((\Ascensor_inst|LessThan7~5_combout\ & \Ascensor_inst|LessThan7~4_combout\)) # (!\Ascensor_inst|timer_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan7~5_combout\,
	datab => \Ascensor_inst|LessThan7~4_combout\,
	datac => \Ascensor_inst|timer_counter\(13),
	datad => \Ascensor_inst|timer_counter\(12),
	combout => \Ascensor_inst|LessThan7~6_combout\);

-- Location: LCCOMB_X8_Y26_N30
\Ascensor_inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~1_combout\ = (!\Ascensor_inst|timer_counter\(18) & (!\Ascensor_inst|timer_counter\(17) & (!\Ascensor_inst|timer_counter\(19) & !\Ascensor_inst|timer_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(18),
	datab => \Ascensor_inst|timer_counter\(17),
	datac => \Ascensor_inst|timer_counter\(19),
	datad => \Ascensor_inst|timer_counter\(16),
	combout => \Ascensor_inst|LessThan7~1_combout\);

-- Location: LCCOMB_X8_Y26_N26
\Ascensor_inst|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~7_combout\ = (\Ascensor_inst|LessThan7~1_combout\ & (((\Ascensor_inst|LessThan7~6_combout\) # (!\Ascensor_inst|timer_counter\(14))) # (!\Ascensor_inst|timer_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(15),
	datab => \Ascensor_inst|LessThan7~6_combout\,
	datac => \Ascensor_inst|LessThan7~1_combout\,
	datad => \Ascensor_inst|timer_counter\(14),
	combout => \Ascensor_inst|LessThan7~7_combout\);

-- Location: LCCOMB_X8_Y26_N0
\Ascensor_inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~0_combout\ = (!\Ascensor_inst|timer_counter\(26) & (!\Ascensor_inst|timer_counter\(25) & !\Ascensor_inst|timer_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|timer_counter\(26),
	datab => \Ascensor_inst|timer_counter\(25),
	datad => \Ascensor_inst|timer_counter\(24),
	combout => \Ascensor_inst|LessThan7~0_combout\);

-- Location: LCCOMB_X8_Y26_N22
\Ascensor_inst|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan7~9_combout\ = ((\Ascensor_inst|LessThan7~0_combout\ & ((\Ascensor_inst|LessThan7~8_combout\) # (\Ascensor_inst|LessThan7~7_combout\)))) # (!\Ascensor_inst|timer_counter\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan7~8_combout\,
	datab => \Ascensor_inst|timer_counter\(27),
	datac => \Ascensor_inst|LessThan7~7_combout\,
	datad => \Ascensor_inst|LessThan7~0_combout\,
	combout => \Ascensor_inst|LessThan7~9_combout\);

-- Location: LCCOMB_X3_Y24_N2
\Ascensor_inst|current_floor[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[0]~9_combout\ = (\reset~input_o\ & ((!\Ascensor_inst|system_memory[0][0]~q\))) # (!\reset~input_o\ & (\Ascensor_inst|current_floor[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[0]~9_combout\,
	datac => \reset~input_o\,
	datad => \Ascensor_inst|system_memory[0][0]~q\,
	combout => \Ascensor_inst|current_floor[0]~9_combout\);

-- Location: LCCOMB_X4_Y24_N22
\Ascensor_inst|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|WideNor0~0_combout\ = (!\Ascensor_inst|main_state.MOVING_UP~q\ & !\Ascensor_inst|main_state.MOVING_DOWN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	combout => \Ascensor_inst|WideNor0~0_combout\);

-- Location: LCCOMB_X3_Y24_N12
\Ascensor_inst|current_floor[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[0]~11_combout\ = \Ascensor_inst|current_floor[0]~10_combout\ $ (\Ascensor_inst|current_floor[0]~9_combout\ $ (((!\Ascensor_inst|LessThan7~9_combout\ & !\Ascensor_inst|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan7~9_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|current_floor[0]~9_combout\,
	datad => \Ascensor_inst|WideNor0~0_combout\,
	combout => \Ascensor_inst|current_floor[0]~11_combout\);

-- Location: FF_X3_Y24_N25
\Ascensor_inst|current_floor[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|current_floor[0]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|current_floor[0]~_emulated_q\);

-- Location: LCCOMB_X3_Y24_N24
\Ascensor_inst|current_floor[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[0]~10_combout\ = (\reset~input_o\ & (!\Ascensor_inst|system_memory[0][0]~q\)) # (!\reset~input_o\ & ((\Ascensor_inst|current_floor[0]~_emulated_q\ $ (\Ascensor_inst|current_floor[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|system_memory[0][0]~q\,
	datab => \reset~input_o\,
	datac => \Ascensor_inst|current_floor[0]~_emulated_q\,
	datad => \Ascensor_inst|current_floor[0]~9_combout\,
	combout => \Ascensor_inst|current_floor[0]~10_combout\);

-- Location: LCCOMB_X3_Y24_N28
\Ascensor_inst|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~0_combout\ = (!\Ascensor_inst|current_floor[2]~2_combout\ & (\Ascensor_inst|current_floor[0]~10_combout\ & !\Ascensor_inst|current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Equal3~0_combout\);

-- Location: LCCOMB_X4_Y25_N30
\Ascensor_inst|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector16~2_combout\ = (\Ascensor_inst|WideOr2~combout\) # ((!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|Equal3~0_combout\) # (!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~4_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|Equal3~0_combout\,
	combout => \Ascensor_inst|Selector16~2_combout\);

-- Location: LCCOMB_X4_Y24_N20
\Ascensor_inst|Selector16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector16~3_combout\ = (\Ascensor_inst|Selector16~2_combout\) # ((\Ascensor_inst|main_state.MOVING_UP~q\ & ((!\Ascensor_inst|floor_calls~5_combout\) # (!\Ascensor_inst|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector16~2_combout\,
	datab => \Ascensor_inst|Selector16~0_combout\,
	datac => \Ascensor_inst|floor_calls~5_combout\,
	datad => \Ascensor_inst|main_state.MOVING_UP~q\,
	combout => \Ascensor_inst|Selector16~3_combout\);

-- Location: LCCOMB_X4_Y24_N18
\Ascensor_inst|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector16~1_combout\ = (\Ascensor_inst|main_state.MOVING_DOWN~q\ & (((\Ascensor_inst|LessThan7~9_combout\) # (!\Ascensor_inst|Equal3~1_combout\)) # (!\Ascensor_inst|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal2~2_combout\,
	datab => \Ascensor_inst|Equal3~1_combout\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|LessThan7~9_combout\,
	combout => \Ascensor_inst|Selector16~1_combout\);

-- Location: LCCOMB_X5_Y24_N6
\Ascensor_inst|Selector16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector16~4_combout\ = (\Ascensor_inst|btn_edges\(1) & ((\Ascensor_inst|Selector16~3_combout\) # ((\Ascensor_inst|Selector16~1_combout\)))) # (!\Ascensor_inst|btn_edges\(1) & (\Ascensor_inst|floor_calls\(1) & 
-- ((\Ascensor_inst|Selector16~3_combout\) # (\Ascensor_inst|Selector16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(1),
	datab => \Ascensor_inst|Selector16~3_combout\,
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Selector16~1_combout\,
	combout => \Ascensor_inst|Selector16~4_combout\);

-- Location: FF_X5_Y24_N7
\Ascensor_inst|floor_calls[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector16~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_calls\(1));

-- Location: LCCOMB_X12_Y25_N28
\Ascensor_inst|floor_calls~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|floor_calls~4_combout\ = (\Ascensor_inst|Mux0~2_combout\ & ((\Ascensor_inst|Equal0~0_combout\) # (\Ascensor_inst|floor_calls\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal0~0_combout\,
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Mux0~2_combout\,
	combout => \Ascensor_inst|floor_calls~4_combout\);

-- Location: LCCOMB_X4_Y25_N10
\Ascensor_inst|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector12~1_combout\ = (\Ascensor_inst|WideOr2~combout\) # ((!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|Equal3~4_combout\) # (!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls~4_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|WideOr2~combout\,
	datad => \Ascensor_inst|Equal3~4_combout\,
	combout => \Ascensor_inst|Selector12~1_combout\);

-- Location: LCCOMB_X4_Y25_N0
\Ascensor_inst|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector12~0_combout\ = (\Ascensor_inst|main_state.MOVING_UP~q\ & (((\Ascensor_inst|LessThan7~9_combout\) # (!\Ascensor_inst|floor_calls~3_combout\)) # (!\Ascensor_inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal3~3_combout\,
	datab => \Ascensor_inst|LessThan7~9_combout\,
	datac => \Ascensor_inst|main_state.MOVING_UP~q\,
	datad => \Ascensor_inst|floor_calls~3_combout\,
	combout => \Ascensor_inst|Selector12~0_combout\);

-- Location: LCCOMB_X3_Y24_N14
\Ascensor_inst|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector12~2_combout\ = ((\Ascensor_inst|current_floor[0]~10_combout\) # ((!\Ascensor_inst|current_floor[1]~6_combout\) # (!\Ascensor_inst|floor_calls~6_combout\))) # (!\Ascensor_inst|current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datac => \Ascensor_inst|floor_calls~6_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Selector12~2_combout\);

-- Location: LCCOMB_X4_Y25_N24
\Ascensor_inst|Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector12~3_combout\ = (\Ascensor_inst|Selector12~1_combout\) # ((\Ascensor_inst|Selector12~0_combout\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & \Ascensor_inst|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector12~1_combout\,
	datab => \Ascensor_inst|Selector12~0_combout\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|Selector12~2_combout\,
	combout => \Ascensor_inst|Selector12~3_combout\);

-- Location: LCCOMB_X3_Y25_N20
\Ascensor_inst|Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector12~4_combout\ = (\Ascensor_inst|Selector12~3_combout\ & ((\Ascensor_inst|btn_edges\(8)) # (\Ascensor_inst|floor_calls\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|btn_edges\(8),
	datab => \Ascensor_inst|Selector12~3_combout\,
	datac => \Ascensor_inst|floor_calls\(5),
	combout => \Ascensor_inst|Selector12~4_combout\);

-- Location: FF_X3_Y25_N21
\Ascensor_inst|floor_calls[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector12~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|floor_calls\(5));

-- Location: LCCOMB_X12_Y25_N8
\Ascensor_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal0~0_combout\ = (\Ascensor_inst|floor_calls\(5)) # ((\Ascensor_inst|floor_calls\(4)) # ((\Ascensor_inst|floor_calls\(2)) # (\Ascensor_inst|floor_calls\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|floor_calls\(5),
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|floor_calls\(2),
	datad => \Ascensor_inst|floor_calls\(3),
	combout => \Ascensor_inst|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y25_N30
\Ascensor_inst|target_floor[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|target_floor[0]~2_combout\ = (!\Ascensor_inst|main_state.IDLE~q\ & ((\Ascensor_inst|Equal0~0_combout\) # (\Ascensor_inst|floor_calls\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal0~0_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|floor_calls\(1),
	combout => \Ascensor_inst|target_floor[0]~2_combout\);

-- Location: FF_X3_Y25_N31
\Ascensor_inst|mem_write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|target_floor[0]~2_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|mem_write_en~q\);

-- Location: LCCOMB_X3_Y25_N30
\Ascensor_inst|system_memory[0][2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|system_memory[0][2]~0_combout\ = (!\Ascensor_inst|mem_addr\(1) & \Ascensor_inst|mem_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|mem_addr\(1),
	datac => \Ascensor_inst|mem_write_en~q\,
	combout => \Ascensor_inst|system_memory[0][2]~0_combout\);

-- Location: FF_X7_Y24_N13
\Ascensor_inst|system_memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|mem_data_in\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|system_memory[0][1]~q\);

-- Location: LCCOMB_X7_Y24_N6
\Ascensor_inst|current_floor[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[1]~5_combout\ = (\reset~input_o\ & ((\Ascensor_inst|system_memory[0][1]~q\))) # (!\reset~input_o\ & (\Ascensor_inst|current_floor[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~5_combout\,
	datac => \reset~input_o\,
	datad => \Ascensor_inst|system_memory[0][1]~q\,
	combout => \Ascensor_inst|current_floor[1]~5_combout\);

-- Location: LCCOMB_X4_Y24_N26
\Ascensor_inst|current_floor[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[1]~7_combout\ = \Ascensor_inst|current_floor[1]~6_combout\ $ (\Ascensor_inst|main_state.MOVING_DOWN~q\ $ (\Ascensor_inst|current_floor[0]~10_combout\ $ (\Ascensor_inst|current_floor[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~5_combout\,
	combout => \Ascensor_inst|current_floor[1]~7_combout\);

-- Location: FF_X7_Y24_N27
\Ascensor_inst|current_floor[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|current_floor[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|current_floor[1]~_emulated_q\);

-- Location: LCCOMB_X7_Y24_N26
\Ascensor_inst|current_floor[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[1]~6_combout\ = (\reset~input_o\ & (\Ascensor_inst|system_memory[0][1]~q\)) # (!\reset~input_o\ & ((\Ascensor_inst|current_floor[1]~_emulated_q\ $ (\Ascensor_inst|current_floor[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|system_memory[0][1]~q\,
	datab => \reset~input_o\,
	datac => \Ascensor_inst|current_floor[1]~_emulated_q\,
	datad => \Ascensor_inst|current_floor[1]~5_combout\,
	combout => \Ascensor_inst|current_floor[1]~6_combout\);

-- Location: LCCOMB_X7_Y24_N10
\Ascensor_inst|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal2~0_combout\ = (\Ascensor_inst|target_floor\(2) & (\Ascensor_inst|current_floor[2]~2_combout\ & ((\Ascensor_inst|current_floor[1]~6_combout\) # (\Ascensor_inst|current_floor[0]~10_combout\)))) # (!\Ascensor_inst|target_floor\(2) & 
-- (\Ascensor_inst|current_floor[2]~2_combout\ $ (((\Ascensor_inst|current_floor[1]~6_combout\) # (\Ascensor_inst|current_floor[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datab => \Ascensor_inst|target_floor\(2),
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Equal2~0_combout\);

-- Location: LCCOMB_X3_Y24_N10
\Ascensor_inst|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal2~2_combout\ = (\Ascensor_inst|Equal2~0_combout\ & \Ascensor_inst|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|Equal2~0_combout\,
	datad => \Ascensor_inst|Equal2~1_combout\,
	combout => \Ascensor_inst|Equal2~2_combout\);

-- Location: LCCOMB_X4_Y24_N0
\Ascensor_inst|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~0_combout\ = (\Ascensor_inst|LessThan7~9_combout\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & (\Ascensor_inst|Equal2~2_combout\)) # (!\Ascensor_inst|main_state.MOVING_DOWN~q\ & ((\Ascensor_inst|floor_calls~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal2~2_combout\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datac => \Ascensor_inst|floor_calls~3_combout\,
	datad => \Ascensor_inst|LessThan7~9_combout\,
	combout => \Ascensor_inst|Selector21~0_combout\);

-- Location: LCCOMB_X2_Y25_N12
\Ascensor_inst|door_counter[22]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~2_combout\ = (!\Ascensor_inst|main_state.DOOR_OPENING~q\ & !\Ascensor_inst|main_state.DOOR_CLOSING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|door_counter[22]~2_combout\);

-- Location: LCCOMB_X2_Y25_N10
\Ascensor_inst|Selector19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~4_combout\ = (\Ascensor_inst|door_counter[22]~2_combout\ & ((\Ascensor_inst|Selector21~0_combout\) # ((!\Ascensor_inst|main_state.MOVING_UP~q\ & !\Ascensor_inst|main_state.MOVING_DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~0_combout\,
	datab => \Ascensor_inst|main_state.MOVING_UP~q\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|door_counter[22]~2_combout\,
	combout => \Ascensor_inst|Selector19~4_combout\);

-- Location: LCCOMB_X2_Y25_N18
\Ascensor_inst|Selector19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~5_combout\ = (\Ascensor_inst|main_state.MOVING_DOWN~q\ & (((\Ascensor_inst|current_floor[2]~2_combout\) # (!\Ascensor_inst|Add17~2_combout\)))) # (!\Ascensor_inst|main_state.MOVING_DOWN~q\ & 
-- (!\Ascensor_inst|LessThan10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|Add17~2_combout\,
	combout => \Ascensor_inst|Selector19~5_combout\);

-- Location: LCCOMB_X2_Y25_N4
\Ascensor_inst|Selector19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~6_combout\ = (\Ascensor_inst|Selector19~4_combout\) # ((\Ascensor_inst|main_state.MOVING_UP~q\ & (!\Ascensor_inst|current_floor[2]~2_combout\)) # (!\Ascensor_inst|main_state.MOVING_UP~q\ & 
-- ((\Ascensor_inst|Selector19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector19~4_combout\,
	datab => \Ascensor_inst|current_floor[2]~2_combout\,
	datac => \Ascensor_inst|Selector19~5_combout\,
	datad => \Ascensor_inst|main_state.MOVING_UP~q\,
	combout => \Ascensor_inst|Selector19~6_combout\);

-- Location: LCCOMB_X10_Y25_N0
\Ascensor_inst|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector20~0_combout\ = (\Ascensor_inst|Selector19~2_combout\ & (\Ascensor_inst|Mux0~2_combout\)) # (!\Ascensor_inst|Selector19~2_combout\ & ((\Ascensor_inst|Selector19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Mux0~2_combout\,
	datac => \Ascensor_inst|Selector19~6_combout\,
	datad => \Ascensor_inst|Selector19~2_combout\,
	combout => \Ascensor_inst|Selector20~0_combout\);

-- Location: LCCOMB_X10_Y25_N16
\Ascensor_inst|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector20~1_combout\ = (!\Ascensor_inst|Selector19~8_combout\ & ((\Ascensor_inst|Selector19~7_combout\ & (\Ascensor_inst|Selector20~0_combout\)) # (!\Ascensor_inst|Selector19~7_combout\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector19~8_combout\,
	datab => \Ascensor_inst|Selector20~0_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|Selector19~7_combout\,
	combout => \Ascensor_inst|Selector20~1_combout\);

-- Location: FF_X10_Y25_N17
\Ascensor_inst|main_state.DOOR_OPENING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector20~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.DOOR_OPENING~q\);

-- Location: LCCOMB_X2_Y24_N6
\Ascensor_inst|Add33~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~48_combout\ = \Ascensor_inst|door_counter\(0) $ (VCC)
-- \Ascensor_inst|Add33~49\ = CARRY(\Ascensor_inst|door_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(0),
	datad => VCC,
	combout => \Ascensor_inst|Add33~48_combout\,
	cout => \Ascensor_inst|Add33~49\);

-- Location: LCCOMB_X2_Y25_N22
\Ascensor_inst|Add33~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~113_combout\ = (\Ascensor_inst|Add33~48_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datac => \Ascensor_inst|Add33~48_combout\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|Add33~113_combout\);

-- Location: LCCOMB_X3_Y24_N20
\Ascensor_inst|door_counter[22]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~3_combout\ = (\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\) # ((\Ascensor_inst|main_state.MOVING_DOWN~q\ & ((!\Ascensor_inst|Equal2~0_combout\) # (!\Ascensor_inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Equal2~1_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datac => \Ascensor_inst|Equal2~0_combout\,
	datad => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	combout => \Ascensor_inst|door_counter[22]~3_combout\);

-- Location: LCCOMB_X4_Y24_N30
\Ascensor_inst|door_counter[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~4_combout\ = (\Ascensor_inst|main_state.MOVING_UP~q\ & (((!\Ascensor_inst|floor_calls~3_combout\)))) # (!\Ascensor_inst|main_state.MOVING_UP~q\ & (\Ascensor_inst|door_counter[22]~3_combout\ & 
-- ((!\Ascensor_inst|Selector19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|door_counter[22]~3_combout\,
	datac => \Ascensor_inst|floor_calls~3_combout\,
	datad => \Ascensor_inst|Selector19~8_combout\,
	combout => \Ascensor_inst|door_counter[22]~4_combout\);

-- Location: LCCOMB_X3_Y25_N8
\Ascensor_inst|Selector80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector80~0_combout\ = (\Ascensor_inst|LessThan10~8_combout\ & \Ascensor_inst|main_state.DOOR_OPENING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|LessThan10~8_combout\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Selector80~0_combout\);

-- Location: LCCOMB_X4_Y24_N28
\Ascensor_inst|door_counter[22]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~5_combout\ = (\Ascensor_inst|Selector80~0_combout\) # ((\Ascensor_inst|main_state.IDLE~q\ & (\Ascensor_inst|door_counter[22]~4_combout\)) # (!\Ascensor_inst|main_state.IDLE~q\ & ((!\Ascensor_inst|floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter[22]~4_combout\,
	datab => \Ascensor_inst|main_state.IDLE~q\,
	datac => \Ascensor_inst|Selector80~0_combout\,
	datad => \Ascensor_inst|floor_calls~4_combout\,
	combout => \Ascensor_inst|door_counter[22]~5_combout\);

-- Location: LCCOMB_X3_Y24_N18
\Ascensor_inst|door_counter[22]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~6_combout\ = (\Ascensor_inst|door_counter[22]~5_combout\) # ((\Ascensor_inst|LessThan7~9_combout\ & (!\Ascensor_inst|WideNor0~0_combout\ & \Ascensor_inst|main_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan7~9_combout\,
	datab => \Ascensor_inst|WideNor0~0_combout\,
	datac => \Ascensor_inst|main_state.IDLE~q\,
	datad => \Ascensor_inst|door_counter[22]~5_combout\,
	combout => \Ascensor_inst|door_counter[22]~6_combout\);

-- Location: FF_X2_Y25_N23
\Ascensor_inst|door_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~113_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(0));

-- Location: LCCOMB_X2_Y24_N8
\Ascensor_inst|Add33~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~50_combout\ = (\Ascensor_inst|door_counter\(1) & (!\Ascensor_inst|Add33~49\)) # (!\Ascensor_inst|door_counter\(1) & ((\Ascensor_inst|Add33~49\) # (GND)))
-- \Ascensor_inst|Add33~51\ = CARRY((!\Ascensor_inst|Add33~49\) # (!\Ascensor_inst|door_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(1),
	datad => VCC,
	cin => \Ascensor_inst|Add33~49\,
	combout => \Ascensor_inst|Add33~50_combout\,
	cout => \Ascensor_inst|Add33~51\);

-- Location: LCCOMB_X3_Y24_N16
\Ascensor_inst|Add33~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~112_combout\ = (\Ascensor_inst|Add33~50_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~50_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~112_combout\);

-- Location: FF_X2_Y25_N1
\Ascensor_inst|door_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|Add33~112_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(1));

-- Location: LCCOMB_X2_Y24_N10
\Ascensor_inst|Add33~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~52_combout\ = (\Ascensor_inst|door_counter\(2) & (\Ascensor_inst|Add33~51\ $ (GND))) # (!\Ascensor_inst|door_counter\(2) & (!\Ascensor_inst|Add33~51\ & VCC))
-- \Ascensor_inst|Add33~53\ = CARRY((\Ascensor_inst|door_counter\(2) & !\Ascensor_inst|Add33~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(2),
	datad => VCC,
	cin => \Ascensor_inst|Add33~51\,
	combout => \Ascensor_inst|Add33~52_combout\,
	cout => \Ascensor_inst|Add33~53\);

-- Location: LCCOMB_X1_Y24_N0
\Ascensor_inst|Add33~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~111_combout\ = (\Ascensor_inst|Add33~52_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~52_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~111_combout\);

-- Location: FF_X1_Y24_N1
\Ascensor_inst|door_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~111_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(2));

-- Location: LCCOMB_X2_Y24_N12
\Ascensor_inst|Add33~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~54_combout\ = (\Ascensor_inst|door_counter\(3) & (!\Ascensor_inst|Add33~53\)) # (!\Ascensor_inst|door_counter\(3) & ((\Ascensor_inst|Add33~53\) # (GND)))
-- \Ascensor_inst|Add33~55\ = CARRY((!\Ascensor_inst|Add33~53\) # (!\Ascensor_inst|door_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(3),
	datad => VCC,
	cin => \Ascensor_inst|Add33~53\,
	combout => \Ascensor_inst|Add33~54_combout\,
	cout => \Ascensor_inst|Add33~55\);

-- Location: LCCOMB_X1_Y24_N24
\Ascensor_inst|Add33~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~110_combout\ = (\Ascensor_inst|Add33~54_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~54_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~110_combout\);

-- Location: FF_X1_Y24_N25
\Ascensor_inst|door_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~110_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(3));

-- Location: LCCOMB_X2_Y24_N14
\Ascensor_inst|Add33~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~56_combout\ = (\Ascensor_inst|door_counter\(4) & (\Ascensor_inst|Add33~55\ $ (GND))) # (!\Ascensor_inst|door_counter\(4) & (!\Ascensor_inst|Add33~55\ & VCC))
-- \Ascensor_inst|Add33~57\ = CARRY((\Ascensor_inst|door_counter\(4) & !\Ascensor_inst|Add33~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(4),
	datad => VCC,
	cin => \Ascensor_inst|Add33~55\,
	combout => \Ascensor_inst|Add33~56_combout\,
	cout => \Ascensor_inst|Add33~57\);

-- Location: LCCOMB_X1_Y24_N18
\Ascensor_inst|Add33~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~109_combout\ = (\Ascensor_inst|Add33~56_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~56_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~109_combout\);

-- Location: FF_X1_Y24_N19
\Ascensor_inst|door_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~109_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(4));

-- Location: LCCOMB_X2_Y24_N16
\Ascensor_inst|Add33~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~58_combout\ = (\Ascensor_inst|door_counter\(5) & (!\Ascensor_inst|Add33~57\)) # (!\Ascensor_inst|door_counter\(5) & ((\Ascensor_inst|Add33~57\) # (GND)))
-- \Ascensor_inst|Add33~59\ = CARRY((!\Ascensor_inst|Add33~57\) # (!\Ascensor_inst|door_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(5),
	datad => VCC,
	cin => \Ascensor_inst|Add33~57\,
	combout => \Ascensor_inst|Add33~58_combout\,
	cout => \Ascensor_inst|Add33~59\);

-- Location: LCCOMB_X1_Y24_N16
\Ascensor_inst|Add33~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~108_combout\ = (\Ascensor_inst|Add33~58_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~58_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~108_combout\);

-- Location: FF_X1_Y24_N17
\Ascensor_inst|door_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~108_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(5));

-- Location: LCCOMB_X2_Y24_N18
\Ascensor_inst|Add33~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~60_combout\ = (\Ascensor_inst|door_counter\(6) & (\Ascensor_inst|Add33~59\ $ (GND))) # (!\Ascensor_inst|door_counter\(6) & (!\Ascensor_inst|Add33~59\ & VCC))
-- \Ascensor_inst|Add33~61\ = CARRY((\Ascensor_inst|door_counter\(6) & !\Ascensor_inst|Add33~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(6),
	datad => VCC,
	cin => \Ascensor_inst|Add33~59\,
	combout => \Ascensor_inst|Add33~60_combout\,
	cout => \Ascensor_inst|Add33~61\);

-- Location: LCCOMB_X1_Y24_N12
\Ascensor_inst|Add33~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~107_combout\ = (\Ascensor_inst|Add33~60_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~60_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~107_combout\);

-- Location: FF_X1_Y24_N13
\Ascensor_inst|door_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~107_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(6));

-- Location: LCCOMB_X2_Y24_N20
\Ascensor_inst|Add33~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~62_combout\ = (\Ascensor_inst|door_counter\(7) & (!\Ascensor_inst|Add33~61\)) # (!\Ascensor_inst|door_counter\(7) & ((\Ascensor_inst|Add33~61\) # (GND)))
-- \Ascensor_inst|Add33~63\ = CARRY((!\Ascensor_inst|Add33~61\) # (!\Ascensor_inst|door_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(7),
	datad => VCC,
	cin => \Ascensor_inst|Add33~61\,
	combout => \Ascensor_inst|Add33~62_combout\,
	cout => \Ascensor_inst|Add33~63\);

-- Location: LCCOMB_X1_Y23_N8
\Ascensor_inst|Add33~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~114_combout\ = (\Ascensor_inst|Add33~62_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~62_combout\,
	combout => \Ascensor_inst|Add33~114_combout\);

-- Location: FF_X1_Y23_N9
\Ascensor_inst|door_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~114_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(7));

-- Location: LCCOMB_X2_Y24_N22
\Ascensor_inst|Add33~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~64_combout\ = (\Ascensor_inst|door_counter\(8) & (\Ascensor_inst|Add33~63\ $ (GND))) # (!\Ascensor_inst|door_counter\(8) & (!\Ascensor_inst|Add33~63\ & VCC))
-- \Ascensor_inst|Add33~65\ = CARRY((\Ascensor_inst|door_counter\(8) & !\Ascensor_inst|Add33~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(8),
	datad => VCC,
	cin => \Ascensor_inst|Add33~63\,
	combout => \Ascensor_inst|Add33~64_combout\,
	cout => \Ascensor_inst|Add33~65\);

-- Location: LCCOMB_X1_Y24_N6
\Ascensor_inst|Add33~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~118_combout\ = (\Ascensor_inst|Add33~64_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|Add33~64_combout\,
	datac => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Add33~118_combout\);

-- Location: FF_X1_Y24_N7
\Ascensor_inst|door_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~118_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(8));

-- Location: LCCOMB_X2_Y24_N24
\Ascensor_inst|Add33~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~66_combout\ = (\Ascensor_inst|door_counter\(9) & (!\Ascensor_inst|Add33~65\)) # (!\Ascensor_inst|door_counter\(9) & ((\Ascensor_inst|Add33~65\) # (GND)))
-- \Ascensor_inst|Add33~67\ = CARRY((!\Ascensor_inst|Add33~65\) # (!\Ascensor_inst|door_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(9),
	datad => VCC,
	cin => \Ascensor_inst|Add33~65\,
	combout => \Ascensor_inst|Add33~66_combout\,
	cout => \Ascensor_inst|Add33~67\);

-- Location: LCCOMB_X2_Y25_N24
\Ascensor_inst|Add33~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~117_combout\ = (\Ascensor_inst|Add33~66_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|Add33~66_combout\,
	datac => \Ascensor_inst|LessThan10~8_combout\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|Add33~117_combout\);

-- Location: FF_X2_Y25_N25
\Ascensor_inst|door_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~117_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(9));

-- Location: LCCOMB_X2_Y24_N26
\Ascensor_inst|Add33~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~68_combout\ = (\Ascensor_inst|door_counter\(10) & (\Ascensor_inst|Add33~67\ $ (GND))) # (!\Ascensor_inst|door_counter\(10) & (!\Ascensor_inst|Add33~67\ & VCC))
-- \Ascensor_inst|Add33~69\ = CARRY((\Ascensor_inst|door_counter\(10) & !\Ascensor_inst|Add33~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(10),
	datad => VCC,
	cin => \Ascensor_inst|Add33~67\,
	combout => \Ascensor_inst|Add33~68_combout\,
	cout => \Ascensor_inst|Add33~69\);

-- Location: LCCOMB_X2_Y25_N30
\Ascensor_inst|Add33~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~116_combout\ = (\Ascensor_inst|Add33~68_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datac => \Ascensor_inst|Add33~68_combout\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|Add33~116_combout\);

-- Location: FF_X2_Y25_N31
\Ascensor_inst|door_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~116_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(10));

-- Location: LCCOMB_X2_Y24_N28
\Ascensor_inst|Add33~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~70_combout\ = (\Ascensor_inst|door_counter\(11) & (!\Ascensor_inst|Add33~69\)) # (!\Ascensor_inst|door_counter\(11) & ((\Ascensor_inst|Add33~69\) # (GND)))
-- \Ascensor_inst|Add33~71\ = CARRY((!\Ascensor_inst|Add33~69\) # (!\Ascensor_inst|door_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(11),
	datad => VCC,
	cin => \Ascensor_inst|Add33~69\,
	combout => \Ascensor_inst|Add33~70_combout\,
	cout => \Ascensor_inst|Add33~71\);

-- Location: LCCOMB_X2_Y25_N20
\Ascensor_inst|Add33~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~115_combout\ = (\Ascensor_inst|Add33~70_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|LessThan10~8_combout\))) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|Add33~70_combout\,
	datac => \Ascensor_inst|LessThan10~8_combout\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|Add33~115_combout\);

-- Location: FF_X2_Y25_N21
\Ascensor_inst|door_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~115_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(11));

-- Location: LCCOMB_X2_Y24_N30
\Ascensor_inst|Add33~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~72_combout\ = (\Ascensor_inst|door_counter\(12) & (\Ascensor_inst|Add33~71\ $ (GND))) # (!\Ascensor_inst|door_counter\(12) & (!\Ascensor_inst|Add33~71\ & VCC))
-- \Ascensor_inst|Add33~73\ = CARRY((\Ascensor_inst|door_counter\(12) & !\Ascensor_inst|Add33~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(12),
	datad => VCC,
	cin => \Ascensor_inst|Add33~71\,
	combout => \Ascensor_inst|Add33~72_combout\,
	cout => \Ascensor_inst|Add33~73\);

-- Location: LCCOMB_X1_Y24_N20
\Ascensor_inst|Add33~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~106_combout\ = (\Ascensor_inst|Add33~72_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~72_combout\,
	combout => \Ascensor_inst|Add33~106_combout\);

-- Location: FF_X1_Y24_N21
\Ascensor_inst|door_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~106_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(12));

-- Location: LCCOMB_X2_Y23_N0
\Ascensor_inst|Add33~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~74_combout\ = (\Ascensor_inst|door_counter\(13) & (!\Ascensor_inst|Add33~73\)) # (!\Ascensor_inst|door_counter\(13) & ((\Ascensor_inst|Add33~73\) # (GND)))
-- \Ascensor_inst|Add33~75\ = CARRY((!\Ascensor_inst|Add33~73\) # (!\Ascensor_inst|door_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(13),
	datad => VCC,
	cin => \Ascensor_inst|Add33~73\,
	combout => \Ascensor_inst|Add33~74_combout\,
	cout => \Ascensor_inst|Add33~75\);

-- Location: LCCOMB_X1_Y23_N30
\Ascensor_inst|Add33~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~105_combout\ = (\Ascensor_inst|Add33~74_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~74_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~105_combout\);

-- Location: FF_X1_Y23_N31
\Ascensor_inst|door_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~105_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(13));

-- Location: LCCOMB_X2_Y23_N2
\Ascensor_inst|Add33~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~76_combout\ = (\Ascensor_inst|door_counter\(14) & (\Ascensor_inst|Add33~75\ $ (GND))) # (!\Ascensor_inst|door_counter\(14) & (!\Ascensor_inst|Add33~75\ & VCC))
-- \Ascensor_inst|Add33~77\ = CARRY((\Ascensor_inst|door_counter\(14) & !\Ascensor_inst|Add33~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(14),
	datad => VCC,
	cin => \Ascensor_inst|Add33~75\,
	combout => \Ascensor_inst|Add33~76_combout\,
	cout => \Ascensor_inst|Add33~77\);

-- Location: LCCOMB_X1_Y23_N24
\Ascensor_inst|Add33~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~104_combout\ = (\Ascensor_inst|Add33~76_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~76_combout\,
	combout => \Ascensor_inst|Add33~104_combout\);

-- Location: FF_X1_Y23_N25
\Ascensor_inst|door_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~104_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(14));

-- Location: LCCOMB_X2_Y23_N4
\Ascensor_inst|Add33~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~78_combout\ = (\Ascensor_inst|door_counter\(15) & (!\Ascensor_inst|Add33~77\)) # (!\Ascensor_inst|door_counter\(15) & ((\Ascensor_inst|Add33~77\) # (GND)))
-- \Ascensor_inst|Add33~79\ = CARRY((!\Ascensor_inst|Add33~77\) # (!\Ascensor_inst|door_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(15),
	datad => VCC,
	cin => \Ascensor_inst|Add33~77\,
	combout => \Ascensor_inst|Add33~78_combout\,
	cout => \Ascensor_inst|Add33~79\);

-- Location: LCCOMB_X1_Y23_N2
\Ascensor_inst|Add33~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~103_combout\ = (\Ascensor_inst|Add33~78_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~78_combout\,
	combout => \Ascensor_inst|Add33~103_combout\);

-- Location: FF_X1_Y23_N3
\Ascensor_inst|door_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~103_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(15));

-- Location: LCCOMB_X2_Y23_N6
\Ascensor_inst|Add33~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~80_combout\ = (\Ascensor_inst|door_counter\(16) & (\Ascensor_inst|Add33~79\ $ (GND))) # (!\Ascensor_inst|door_counter\(16) & (!\Ascensor_inst|Add33~79\ & VCC))
-- \Ascensor_inst|Add33~81\ = CARRY((\Ascensor_inst|door_counter\(16) & !\Ascensor_inst|Add33~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(16),
	datad => VCC,
	cin => \Ascensor_inst|Add33~79\,
	combout => \Ascensor_inst|Add33~80_combout\,
	cout => \Ascensor_inst|Add33~81\);

-- Location: LCCOMB_X1_Y23_N4
\Ascensor_inst|Add33~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~102_combout\ = (\Ascensor_inst|Add33~80_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~80_combout\,
	combout => \Ascensor_inst|Add33~102_combout\);

-- Location: FF_X1_Y23_N5
\Ascensor_inst|door_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~102_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(16));

-- Location: LCCOMB_X2_Y23_N8
\Ascensor_inst|Add33~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~82_combout\ = (\Ascensor_inst|door_counter\(17) & (!\Ascensor_inst|Add33~81\)) # (!\Ascensor_inst|door_counter\(17) & ((\Ascensor_inst|Add33~81\) # (GND)))
-- \Ascensor_inst|Add33~83\ = CARRY((!\Ascensor_inst|Add33~81\) # (!\Ascensor_inst|door_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(17),
	datad => VCC,
	cin => \Ascensor_inst|Add33~81\,
	combout => \Ascensor_inst|Add33~82_combout\,
	cout => \Ascensor_inst|Add33~83\);

-- Location: LCCOMB_X1_Y23_N14
\Ascensor_inst|Add33~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~101_combout\ = (\Ascensor_inst|Add33~82_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~82_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~101_combout\);

-- Location: FF_X1_Y23_N15
\Ascensor_inst|door_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~101_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(17));

-- Location: LCCOMB_X2_Y23_N10
\Ascensor_inst|Add33~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~84_combout\ = (\Ascensor_inst|door_counter\(18) & (\Ascensor_inst|Add33~83\ $ (GND))) # (!\Ascensor_inst|door_counter\(18) & (!\Ascensor_inst|Add33~83\ & VCC))
-- \Ascensor_inst|Add33~85\ = CARRY((\Ascensor_inst|door_counter\(18) & !\Ascensor_inst|Add33~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(18),
	datad => VCC,
	cin => \Ascensor_inst|Add33~83\,
	combout => \Ascensor_inst|Add33~84_combout\,
	cout => \Ascensor_inst|Add33~85\);

-- Location: LCCOMB_X1_Y23_N20
\Ascensor_inst|Add33~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~100_combout\ = (\Ascensor_inst|Add33~84_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~84_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~100_combout\);

-- Location: FF_X1_Y23_N21
\Ascensor_inst|door_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~100_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(18));

-- Location: LCCOMB_X2_Y24_N2
\Ascensor_inst|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~1_combout\ = (\Ascensor_inst|door_counter\(6) & (\Ascensor_inst|door_counter\(4) & (\Ascensor_inst|door_counter\(5) & \Ascensor_inst|door_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(6),
	datab => \Ascensor_inst|door_counter\(4),
	datac => \Ascensor_inst|door_counter\(5),
	datad => \Ascensor_inst|door_counter\(3),
	combout => \Ascensor_inst|LessThan10~1_combout\);

-- Location: LCCOMB_X1_Y22_N0
\Ascensor_inst|LessThan10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~2_combout\ = (\Ascensor_inst|LessThan10~1_combout\ & (\Ascensor_inst|door_counter\(1) & (\Ascensor_inst|door_counter\(2) & \Ascensor_inst|door_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~1_combout\,
	datab => \Ascensor_inst|door_counter\(1),
	datac => \Ascensor_inst|door_counter\(2),
	datad => \Ascensor_inst|door_counter\(0),
	combout => \Ascensor_inst|LessThan10~2_combout\);

-- Location: LCCOMB_X2_Y23_N30
\Ascensor_inst|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~0_combout\ = (\Ascensor_inst|door_counter\(15) & (\Ascensor_inst|door_counter\(13) & (\Ascensor_inst|door_counter\(12) & \Ascensor_inst|door_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(15),
	datab => \Ascensor_inst|door_counter\(13),
	datac => \Ascensor_inst|door_counter\(12),
	datad => \Ascensor_inst|door_counter\(14),
	combout => \Ascensor_inst|LessThan10~0_combout\);

-- Location: LCCOMB_X2_Y24_N4
\Ascensor_inst|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~3_combout\ = (\Ascensor_inst|door_counter\(10)) # ((\Ascensor_inst|door_counter\(8)) # ((\Ascensor_inst|door_counter\(9)) # (\Ascensor_inst|door_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(10),
	datab => \Ascensor_inst|door_counter\(8),
	datac => \Ascensor_inst|door_counter\(9),
	datad => \Ascensor_inst|door_counter\(11),
	combout => \Ascensor_inst|LessThan10~3_combout\);

-- Location: LCCOMB_X2_Y23_N28
\Ascensor_inst|LessThan10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~4_combout\ = (\Ascensor_inst|LessThan10~0_combout\ & ((\Ascensor_inst|door_counter\(7)) # ((\Ascensor_inst|LessThan10~2_combout\) # (\Ascensor_inst|LessThan10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(7),
	datab => \Ascensor_inst|LessThan10~2_combout\,
	datac => \Ascensor_inst|LessThan10~0_combout\,
	datad => \Ascensor_inst|LessThan10~3_combout\,
	combout => \Ascensor_inst|LessThan10~4_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Ascensor_inst|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~5_combout\ = (\Ascensor_inst|door_counter\(18)) # ((\Ascensor_inst|door_counter\(17) & ((\Ascensor_inst|door_counter\(16)) # (\Ascensor_inst|LessThan10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(17),
	datab => \Ascensor_inst|door_counter\(18),
	datac => \Ascensor_inst|door_counter\(16),
	datad => \Ascensor_inst|LessThan10~4_combout\,
	combout => \Ascensor_inst|LessThan10~5_combout\);

-- Location: LCCOMB_X3_Y25_N12
\Ascensor_inst|door_counter[22]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[22]~9_combout\ = (\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((!\Ascensor_inst|main_state.DOOR_OPENING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datac => \Ascensor_inst|LessThan10~8_combout\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|door_counter[22]~9_combout\);

-- Location: LCCOMB_X2_Y23_N12
\Ascensor_inst|Add33~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~86_combout\ = (\Ascensor_inst|door_counter\(19) & (!\Ascensor_inst|Add33~85\)) # (!\Ascensor_inst|door_counter\(19) & ((\Ascensor_inst|Add33~85\) # (GND)))
-- \Ascensor_inst|Add33~87\ = CARRY((!\Ascensor_inst|Add33~85\) # (!\Ascensor_inst|door_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(19),
	datad => VCC,
	cin => \Ascensor_inst|Add33~85\,
	combout => \Ascensor_inst|Add33~86_combout\,
	cout => \Ascensor_inst|Add33~87\);

-- Location: LCCOMB_X1_Y23_N10
\Ascensor_inst|Add33~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~119_combout\ = (\Ascensor_inst|Add33~86_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~86_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~119_combout\);

-- Location: FF_X1_Y23_N11
\Ascensor_inst|door_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~119_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(19));

-- Location: LCCOMB_X2_Y23_N14
\Ascensor_inst|Add33~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~88_combout\ = (\Ascensor_inst|door_counter\(20) & (\Ascensor_inst|Add33~87\ $ (GND))) # (!\Ascensor_inst|door_counter\(20) & (!\Ascensor_inst|Add33~87\ & VCC))
-- \Ascensor_inst|Add33~89\ = CARRY((\Ascensor_inst|door_counter\(20) & !\Ascensor_inst|Add33~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(20),
	datad => VCC,
	cin => \Ascensor_inst|Add33~87\,
	combout => \Ascensor_inst|Add33~88_combout\,
	cout => \Ascensor_inst|Add33~89\);

-- Location: LCCOMB_X1_Y23_N6
\Ascensor_inst|Add33~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~123_combout\ = (\Ascensor_inst|Add33~88_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~88_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~123_combout\);

-- Location: FF_X1_Y23_N7
\Ascensor_inst|door_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~123_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(20));

-- Location: LCCOMB_X2_Y23_N16
\Ascensor_inst|Add33~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~90_combout\ = (\Ascensor_inst|door_counter\(21) & (!\Ascensor_inst|Add33~89\)) # (!\Ascensor_inst|door_counter\(21) & ((\Ascensor_inst|Add33~89\) # (GND)))
-- \Ascensor_inst|Add33~91\ = CARRY((!\Ascensor_inst|Add33~89\) # (!\Ascensor_inst|door_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(21),
	datad => VCC,
	cin => \Ascensor_inst|Add33~89\,
	combout => \Ascensor_inst|Add33~90_combout\,
	cout => \Ascensor_inst|Add33~91\);

-- Location: LCCOMB_X1_Y23_N28
\Ascensor_inst|Add33~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~122_combout\ = (\Ascensor_inst|Add33~90_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~90_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~122_combout\);

-- Location: FF_X1_Y23_N29
\Ascensor_inst|door_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~122_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(21));

-- Location: LCCOMB_X2_Y23_N18
\Ascensor_inst|Add33~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~92_combout\ = (\Ascensor_inst|door_counter\(22) & (\Ascensor_inst|Add33~91\ $ (GND))) # (!\Ascensor_inst|door_counter\(22) & (!\Ascensor_inst|Add33~91\ & VCC))
-- \Ascensor_inst|Add33~93\ = CARRY((\Ascensor_inst|door_counter\(22) & !\Ascensor_inst|Add33~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(22),
	datad => VCC,
	cin => \Ascensor_inst|Add33~91\,
	combout => \Ascensor_inst|Add33~92_combout\,
	cout => \Ascensor_inst|Add33~93\);

-- Location: LCCOMB_X1_Y23_N22
\Ascensor_inst|Add33~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~121_combout\ = (\Ascensor_inst|Add33~92_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|Add33~92_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	combout => \Ascensor_inst|Add33~121_combout\);

-- Location: FF_X1_Y23_N23
\Ascensor_inst|door_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~121_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(22));

-- Location: LCCOMB_X2_Y23_N20
\Ascensor_inst|Add33~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~94_combout\ = (\Ascensor_inst|door_counter\(23) & (!\Ascensor_inst|Add33~93\)) # (!\Ascensor_inst|door_counter\(23) & ((\Ascensor_inst|Add33~93\) # (GND)))
-- \Ascensor_inst|Add33~95\ = CARRY((!\Ascensor_inst|Add33~93\) # (!\Ascensor_inst|door_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(23),
	datad => VCC,
	cin => \Ascensor_inst|Add33~93\,
	combout => \Ascensor_inst|Add33~94_combout\,
	cout => \Ascensor_inst|Add33~95\);

-- Location: LCCOMB_X1_Y23_N16
\Ascensor_inst|Add33~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~120_combout\ = (\Ascensor_inst|Add33~94_combout\ & ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (!\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|Add33~94_combout\,
	combout => \Ascensor_inst|Add33~120_combout\);

-- Location: FF_X1_Y23_N17
\Ascensor_inst|door_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Add33~120_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Ascensor_inst|ALT_INV_door_counter[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(23));

-- Location: LCCOMB_X2_Y23_N22
\Ascensor_inst|Add33~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~96_combout\ = (\Ascensor_inst|door_counter\(24) & (\Ascensor_inst|Add33~95\ $ (GND))) # (!\Ascensor_inst|door_counter\(24) & (!\Ascensor_inst|Add33~95\ & VCC))
-- \Ascensor_inst|Add33~97\ = CARRY((\Ascensor_inst|door_counter\(24) & !\Ascensor_inst|Add33~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|door_counter\(24),
	datad => VCC,
	cin => \Ascensor_inst|Add33~95\,
	combout => \Ascensor_inst|Add33~96_combout\,
	cout => \Ascensor_inst|Add33~97\);

-- Location: LCCOMB_X3_Y25_N14
\Ascensor_inst|door_counter[24]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[24]~8_combout\ = (\Ascensor_inst|door_counter[22]~6_combout\ & (((\Ascensor_inst|door_counter\(24))))) # (!\Ascensor_inst|door_counter[22]~6_combout\ & (!\Ascensor_inst|door_counter[22]~9_combout\ & 
-- (\Ascensor_inst|Add33~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter[22]~9_combout\,
	datab => \Ascensor_inst|Add33~96_combout\,
	datac => \Ascensor_inst|door_counter\(24),
	datad => \Ascensor_inst|door_counter[22]~6_combout\,
	combout => \Ascensor_inst|door_counter[24]~8_combout\);

-- Location: FF_X3_Y25_N15
\Ascensor_inst|door_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|door_counter[24]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(24));

-- Location: LCCOMB_X1_Y23_N12
\Ascensor_inst|LessThan10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~6_combout\ = (\Ascensor_inst|door_counter\(20) & (\Ascensor_inst|door_counter\(21) & (\Ascensor_inst|door_counter\(22) & \Ascensor_inst|door_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter\(20),
	datab => \Ascensor_inst|door_counter\(21),
	datac => \Ascensor_inst|door_counter\(22),
	datad => \Ascensor_inst|door_counter\(23),
	combout => \Ascensor_inst|LessThan10~6_combout\);

-- Location: LCCOMB_X1_Y23_N18
\Ascensor_inst|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~7_combout\ = (\Ascensor_inst|LessThan10~6_combout\ & \Ascensor_inst|door_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~6_combout\,
	datad => \Ascensor_inst|door_counter\(19),
	combout => \Ascensor_inst|LessThan10~7_combout\);

-- Location: LCCOMB_X2_Y23_N24
\Ascensor_inst|Add33~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add33~98_combout\ = \Ascensor_inst|Add33~97\ $ (\Ascensor_inst|door_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|door_counter\(25),
	cin => \Ascensor_inst|Add33~97\,
	combout => \Ascensor_inst|Add33~98_combout\);

-- Location: LCCOMB_X3_Y25_N0
\Ascensor_inst|door_counter[25]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_counter[25]~7_combout\ = (\Ascensor_inst|door_counter[22]~6_combout\ & (((\Ascensor_inst|door_counter\(25))))) # (!\Ascensor_inst|door_counter[22]~6_combout\ & (!\Ascensor_inst|door_counter[22]~9_combout\ & 
-- (\Ascensor_inst|Add33~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|door_counter[22]~9_combout\,
	datab => \Ascensor_inst|Add33~98_combout\,
	datac => \Ascensor_inst|door_counter\(25),
	datad => \Ascensor_inst|door_counter[22]~6_combout\,
	combout => \Ascensor_inst|door_counter[25]~7_combout\);

-- Location: FF_X3_Y25_N1
\Ascensor_inst|door_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|door_counter[25]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_counter\(25));

-- Location: LCCOMB_X3_Y23_N18
\Ascensor_inst|LessThan10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan10~8_combout\ = (\Ascensor_inst|door_counter\(25) & ((\Ascensor_inst|door_counter\(24)) # ((\Ascensor_inst|LessThan10~5_combout\ & \Ascensor_inst|LessThan10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~5_combout\,
	datab => \Ascensor_inst|door_counter\(24),
	datac => \Ascensor_inst|LessThan10~7_combout\,
	datad => \Ascensor_inst|door_counter\(25),
	combout => \Ascensor_inst|LessThan10~8_combout\);

-- Location: LCCOMB_X10_Y25_N22
\Ascensor_inst|Selector21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~4_combout\ = (\Ascensor_inst|Selector21~0_combout\ & ((\Ascensor_inst|Selector19~3_combout\) # ((\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & \Ascensor_inst|Selector19~8_combout\)))) # (!\Ascensor_inst|Selector21~0_combout\ & 
-- (\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & (\Ascensor_inst|Selector19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~0_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datac => \Ascensor_inst|Selector19~8_combout\,
	datad => \Ascensor_inst|Selector19~3_combout\,
	combout => \Ascensor_inst|Selector21~4_combout\);

-- Location: LCCOMB_X12_Y25_N18
\Ascensor_inst|Selector18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector18~4_combout\ = (!\Ascensor_inst|Selector19~8_combout\ & !\Ascensor_inst|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|Selector19~8_combout\,
	datad => \Ascensor_inst|Mux0~2_combout\,
	combout => \Ascensor_inst|Selector18~4_combout\);

-- Location: LCCOMB_X10_Y25_N20
\Ascensor_inst|Selector21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~5_combout\ = ((\Ascensor_inst|LessThan5~2_combout\) # ((!\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & \Ascensor_inst|LessThan6~1_combout\))) # (!\Ascensor_inst|Selector18~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datab => \Ascensor_inst|Selector18~4_combout\,
	datac => \Ascensor_inst|LessThan6~1_combout\,
	datad => \Ascensor_inst|LessThan5~2_combout\,
	combout => \Ascensor_inst|Selector21~5_combout\);

-- Location: LCCOMB_X10_Y25_N10
\Ascensor_inst|Selector21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~6_combout\ = (\Ascensor_inst|Selector21~4_combout\) # ((\Ascensor_inst|Selector21~3_combout\) # ((\Ascensor_inst|target_floor[0]~2_combout\ & \Ascensor_inst|Selector21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~4_combout\,
	datab => \Ascensor_inst|target_floor[0]~2_combout\,
	datac => \Ascensor_inst|Selector21~3_combout\,
	datad => \Ascensor_inst|Selector21~5_combout\,
	combout => \Ascensor_inst|Selector21~6_combout\);

-- Location: LCCOMB_X10_Y25_N8
\Ascensor_inst|main_state.DOOR_OPEN_WAIT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|main_state.DOOR_OPEN_WAIT~2_combout\ = (\Ascensor_inst|LessThan10~8_combout\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\) # ((\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & !\Ascensor_inst|Selector21~6_combout\)))) # 
-- (!\Ascensor_inst|LessThan10~8_combout\ & (((\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & !\Ascensor_inst|Selector21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan10~8_combout\,
	datab => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datac => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datad => \Ascensor_inst|Selector21~6_combout\,
	combout => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~2_combout\);

-- Location: FF_X10_Y25_N9
\Ascensor_inst|main_state.DOOR_OPEN_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\);

-- Location: LCCOMB_X2_Y26_N28
\Ascensor_inst|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~0_combout\ = (((!\Ascensor_inst|wait_counter\(22)) # (!\Ascensor_inst|wait_counter\(20))) # (!\Ascensor_inst|wait_counter\(21))) # (!\Ascensor_inst|wait_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(23),
	datab => \Ascensor_inst|wait_counter\(21),
	datac => \Ascensor_inst|wait_counter\(20),
	datad => \Ascensor_inst|wait_counter\(22),
	combout => \Ascensor_inst|LessThan11~0_combout\);

-- Location: LCCOMB_X3_Y26_N0
\Ascensor_inst|LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~5_combout\ = (((!\Ascensor_inst|wait_counter\(14)) # (!\Ascensor_inst|wait_counter\(15))) # (!\Ascensor_inst|wait_counter\(16))) # (!\Ascensor_inst|wait_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(13),
	datab => \Ascensor_inst|wait_counter\(16),
	datac => \Ascensor_inst|wait_counter\(15),
	datad => \Ascensor_inst|wait_counter\(14),
	combout => \Ascensor_inst|LessThan11~5_combout\);

-- Location: LCCOMB_X2_Y27_N2
\Ascensor_inst|LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~2_combout\ = (((!\Ascensor_inst|wait_counter\(0)) # (!\Ascensor_inst|wait_counter\(1))) # (!\Ascensor_inst|wait_counter\(2))) # (!\Ascensor_inst|wait_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(3),
	datab => \Ascensor_inst|wait_counter\(2),
	datac => \Ascensor_inst|wait_counter\(1),
	datad => \Ascensor_inst|wait_counter\(0),
	combout => \Ascensor_inst|LessThan11~2_combout\);

-- Location: LCCOMB_X2_Y27_N4
\Ascensor_inst|LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~1_combout\ = (!\Ascensor_inst|wait_counter\(10) & (!\Ascensor_inst|wait_counter\(11) & (!\Ascensor_inst|wait_counter\(8) & !\Ascensor_inst|wait_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(10),
	datab => \Ascensor_inst|wait_counter\(11),
	datac => \Ascensor_inst|wait_counter\(8),
	datad => \Ascensor_inst|wait_counter\(9),
	combout => \Ascensor_inst|LessThan11~1_combout\);

-- Location: LCCOMB_X2_Y27_N0
\Ascensor_inst|LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~3_combout\ = (((!\Ascensor_inst|wait_counter\(6)) # (!\Ascensor_inst|wait_counter\(4))) # (!\Ascensor_inst|wait_counter\(5))) # (!\Ascensor_inst|wait_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(7),
	datab => \Ascensor_inst|wait_counter\(5),
	datac => \Ascensor_inst|wait_counter\(4),
	datad => \Ascensor_inst|wait_counter\(6),
	combout => \Ascensor_inst|LessThan11~3_combout\);

-- Location: LCCOMB_X3_Y27_N12
\Ascensor_inst|LessThan11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~4_combout\ = (\Ascensor_inst|LessThan11~1_combout\ & (!\Ascensor_inst|wait_counter\(12) & ((\Ascensor_inst|LessThan11~2_combout\) # (\Ascensor_inst|LessThan11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan11~2_combout\,
	datab => \Ascensor_inst|LessThan11~1_combout\,
	datac => \Ascensor_inst|LessThan11~3_combout\,
	datad => \Ascensor_inst|wait_counter\(12),
	combout => \Ascensor_inst|LessThan11~4_combout\);

-- Location: LCCOMB_X3_Y26_N6
\Ascensor_inst|LessThan11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~6_combout\ = ((!\Ascensor_inst|wait_counter\(17) & ((\Ascensor_inst|LessThan11~5_combout\) # (\Ascensor_inst|LessThan11~4_combout\)))) # (!\Ascensor_inst|wait_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(18),
	datab => \Ascensor_inst|LessThan11~5_combout\,
	datac => \Ascensor_inst|LessThan11~4_combout\,
	datad => \Ascensor_inst|wait_counter\(17),
	combout => \Ascensor_inst|LessThan11~6_combout\);

-- Location: LCCOMB_X2_Y26_N30
\Ascensor_inst|LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan11~7_combout\ = (\Ascensor_inst|LessThan11~0_combout\) # (((!\Ascensor_inst|wait_counter\(19) & \Ascensor_inst|LessThan11~6_combout\)) # (!\Ascensor_inst|wait_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(19),
	datab => \Ascensor_inst|LessThan11~0_combout\,
	datac => \Ascensor_inst|wait_counter\(24),
	datad => \Ascensor_inst|LessThan11~6_combout\,
	combout => \Ascensor_inst|LessThan11~7_combout\);

-- Location: LCCOMB_X1_Y22_N20
\Ascensor_inst|wait_counter[0]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[0]~81_combout\ = ((\Ascensor_inst|wait_counter\(26) & ((\Ascensor_inst|wait_counter\(25)) # (!\Ascensor_inst|LessThan11~7_combout\)))) # (!\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(26),
	datab => \Ascensor_inst|wait_counter\(25),
	datac => \Ascensor_inst|LessThan11~7_combout\,
	datad => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	combout => \Ascensor_inst|wait_counter[0]~81_combout\);

-- Location: LCCOMB_X2_Y25_N0
\Ascensor_inst|wait_counter[0]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[0]~82_combout\ = ((\Ascensor_inst|main_state.DOOR_OPENING~q\ & \Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|wait_counter[0]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datad => \Ascensor_inst|wait_counter[0]~81_combout\,
	combout => \Ascensor_inst|wait_counter[0]~82_combout\);

-- Location: FF_X2_Y27_N7
\Ascensor_inst|wait_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[0]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(0));

-- Location: LCCOMB_X2_Y27_N8
\Ascensor_inst|wait_counter[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[1]~29_combout\ = (\Ascensor_inst|wait_counter\(1) & (!\Ascensor_inst|wait_counter[0]~28\)) # (!\Ascensor_inst|wait_counter\(1) & ((\Ascensor_inst|wait_counter[0]~28\) # (GND)))
-- \Ascensor_inst|wait_counter[1]~30\ = CARRY((!\Ascensor_inst|wait_counter[0]~28\) # (!\Ascensor_inst|wait_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(1),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[0]~28\,
	combout => \Ascensor_inst|wait_counter[1]~29_combout\,
	cout => \Ascensor_inst|wait_counter[1]~30\);

-- Location: FF_X2_Y27_N9
\Ascensor_inst|wait_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[1]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(1));

-- Location: LCCOMB_X2_Y27_N10
\Ascensor_inst|wait_counter[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[2]~31_combout\ = (\Ascensor_inst|wait_counter\(2) & (\Ascensor_inst|wait_counter[1]~30\ $ (GND))) # (!\Ascensor_inst|wait_counter\(2) & (!\Ascensor_inst|wait_counter[1]~30\ & VCC))
-- \Ascensor_inst|wait_counter[2]~32\ = CARRY((\Ascensor_inst|wait_counter\(2) & !\Ascensor_inst|wait_counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(2),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[1]~30\,
	combout => \Ascensor_inst|wait_counter[2]~31_combout\,
	cout => \Ascensor_inst|wait_counter[2]~32\);

-- Location: FF_X2_Y27_N11
\Ascensor_inst|wait_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[2]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(2));

-- Location: LCCOMB_X2_Y27_N12
\Ascensor_inst|wait_counter[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[3]~33_combout\ = (\Ascensor_inst|wait_counter\(3) & (!\Ascensor_inst|wait_counter[2]~32\)) # (!\Ascensor_inst|wait_counter\(3) & ((\Ascensor_inst|wait_counter[2]~32\) # (GND)))
-- \Ascensor_inst|wait_counter[3]~34\ = CARRY((!\Ascensor_inst|wait_counter[2]~32\) # (!\Ascensor_inst|wait_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(3),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[2]~32\,
	combout => \Ascensor_inst|wait_counter[3]~33_combout\,
	cout => \Ascensor_inst|wait_counter[3]~34\);

-- Location: FF_X2_Y27_N13
\Ascensor_inst|wait_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[3]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(3));

-- Location: LCCOMB_X2_Y27_N14
\Ascensor_inst|wait_counter[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[4]~35_combout\ = (\Ascensor_inst|wait_counter\(4) & (\Ascensor_inst|wait_counter[3]~34\ $ (GND))) # (!\Ascensor_inst|wait_counter\(4) & (!\Ascensor_inst|wait_counter[3]~34\ & VCC))
-- \Ascensor_inst|wait_counter[4]~36\ = CARRY((\Ascensor_inst|wait_counter\(4) & !\Ascensor_inst|wait_counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(4),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[3]~34\,
	combout => \Ascensor_inst|wait_counter[4]~35_combout\,
	cout => \Ascensor_inst|wait_counter[4]~36\);

-- Location: FF_X2_Y27_N15
\Ascensor_inst|wait_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[4]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(4));

-- Location: LCCOMB_X2_Y27_N16
\Ascensor_inst|wait_counter[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[5]~37_combout\ = (\Ascensor_inst|wait_counter\(5) & (!\Ascensor_inst|wait_counter[4]~36\)) # (!\Ascensor_inst|wait_counter\(5) & ((\Ascensor_inst|wait_counter[4]~36\) # (GND)))
-- \Ascensor_inst|wait_counter[5]~38\ = CARRY((!\Ascensor_inst|wait_counter[4]~36\) # (!\Ascensor_inst|wait_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(5),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[4]~36\,
	combout => \Ascensor_inst|wait_counter[5]~37_combout\,
	cout => \Ascensor_inst|wait_counter[5]~38\);

-- Location: FF_X2_Y27_N17
\Ascensor_inst|wait_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[5]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(5));

-- Location: LCCOMB_X2_Y27_N18
\Ascensor_inst|wait_counter[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[6]~39_combout\ = (\Ascensor_inst|wait_counter\(6) & (\Ascensor_inst|wait_counter[5]~38\ $ (GND))) # (!\Ascensor_inst|wait_counter\(6) & (!\Ascensor_inst|wait_counter[5]~38\ & VCC))
-- \Ascensor_inst|wait_counter[6]~40\ = CARRY((\Ascensor_inst|wait_counter\(6) & !\Ascensor_inst|wait_counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(6),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[5]~38\,
	combout => \Ascensor_inst|wait_counter[6]~39_combout\,
	cout => \Ascensor_inst|wait_counter[6]~40\);

-- Location: FF_X2_Y27_N19
\Ascensor_inst|wait_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[6]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(6));

-- Location: LCCOMB_X2_Y27_N20
\Ascensor_inst|wait_counter[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[7]~41_combout\ = (\Ascensor_inst|wait_counter\(7) & (!\Ascensor_inst|wait_counter[6]~40\)) # (!\Ascensor_inst|wait_counter\(7) & ((\Ascensor_inst|wait_counter[6]~40\) # (GND)))
-- \Ascensor_inst|wait_counter[7]~42\ = CARRY((!\Ascensor_inst|wait_counter[6]~40\) # (!\Ascensor_inst|wait_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(7),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[6]~40\,
	combout => \Ascensor_inst|wait_counter[7]~41_combout\,
	cout => \Ascensor_inst|wait_counter[7]~42\);

-- Location: FF_X2_Y27_N21
\Ascensor_inst|wait_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[7]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(7));

-- Location: LCCOMB_X2_Y27_N22
\Ascensor_inst|wait_counter[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[8]~43_combout\ = (\Ascensor_inst|wait_counter\(8) & (\Ascensor_inst|wait_counter[7]~42\ $ (GND))) # (!\Ascensor_inst|wait_counter\(8) & (!\Ascensor_inst|wait_counter[7]~42\ & VCC))
-- \Ascensor_inst|wait_counter[8]~44\ = CARRY((\Ascensor_inst|wait_counter\(8) & !\Ascensor_inst|wait_counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(8),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[7]~42\,
	combout => \Ascensor_inst|wait_counter[8]~43_combout\,
	cout => \Ascensor_inst|wait_counter[8]~44\);

-- Location: FF_X2_Y27_N23
\Ascensor_inst|wait_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[8]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(8));

-- Location: LCCOMB_X2_Y27_N24
\Ascensor_inst|wait_counter[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[9]~45_combout\ = (\Ascensor_inst|wait_counter\(9) & (!\Ascensor_inst|wait_counter[8]~44\)) # (!\Ascensor_inst|wait_counter\(9) & ((\Ascensor_inst|wait_counter[8]~44\) # (GND)))
-- \Ascensor_inst|wait_counter[9]~46\ = CARRY((!\Ascensor_inst|wait_counter[8]~44\) # (!\Ascensor_inst|wait_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(9),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[8]~44\,
	combout => \Ascensor_inst|wait_counter[9]~45_combout\,
	cout => \Ascensor_inst|wait_counter[9]~46\);

-- Location: FF_X2_Y27_N25
\Ascensor_inst|wait_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[9]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(9));

-- Location: LCCOMB_X2_Y27_N26
\Ascensor_inst|wait_counter[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[10]~47_combout\ = (\Ascensor_inst|wait_counter\(10) & (\Ascensor_inst|wait_counter[9]~46\ $ (GND))) # (!\Ascensor_inst|wait_counter\(10) & (!\Ascensor_inst|wait_counter[9]~46\ & VCC))
-- \Ascensor_inst|wait_counter[10]~48\ = CARRY((\Ascensor_inst|wait_counter\(10) & !\Ascensor_inst|wait_counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(10),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[9]~46\,
	combout => \Ascensor_inst|wait_counter[10]~47_combout\,
	cout => \Ascensor_inst|wait_counter[10]~48\);

-- Location: FF_X2_Y27_N27
\Ascensor_inst|wait_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[10]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(10));

-- Location: LCCOMB_X2_Y27_N28
\Ascensor_inst|wait_counter[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[11]~49_combout\ = (\Ascensor_inst|wait_counter\(11) & (!\Ascensor_inst|wait_counter[10]~48\)) # (!\Ascensor_inst|wait_counter\(11) & ((\Ascensor_inst|wait_counter[10]~48\) # (GND)))
-- \Ascensor_inst|wait_counter[11]~50\ = CARRY((!\Ascensor_inst|wait_counter[10]~48\) # (!\Ascensor_inst|wait_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(11),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[10]~48\,
	combout => \Ascensor_inst|wait_counter[11]~49_combout\,
	cout => \Ascensor_inst|wait_counter[11]~50\);

-- Location: FF_X2_Y27_N29
\Ascensor_inst|wait_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[11]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(11));

-- Location: LCCOMB_X2_Y27_N30
\Ascensor_inst|wait_counter[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[12]~51_combout\ = (\Ascensor_inst|wait_counter\(12) & (\Ascensor_inst|wait_counter[11]~50\ $ (GND))) # (!\Ascensor_inst|wait_counter\(12) & (!\Ascensor_inst|wait_counter[11]~50\ & VCC))
-- \Ascensor_inst|wait_counter[12]~52\ = CARRY((\Ascensor_inst|wait_counter\(12) & !\Ascensor_inst|wait_counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(12),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[11]~50\,
	combout => \Ascensor_inst|wait_counter[12]~51_combout\,
	cout => \Ascensor_inst|wait_counter[12]~52\);

-- Location: FF_X2_Y27_N31
\Ascensor_inst|wait_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[12]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(12));

-- Location: LCCOMB_X2_Y26_N0
\Ascensor_inst|wait_counter[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[13]~53_combout\ = (\Ascensor_inst|wait_counter\(13) & (!\Ascensor_inst|wait_counter[12]~52\)) # (!\Ascensor_inst|wait_counter\(13) & ((\Ascensor_inst|wait_counter[12]~52\) # (GND)))
-- \Ascensor_inst|wait_counter[13]~54\ = CARRY((!\Ascensor_inst|wait_counter[12]~52\) # (!\Ascensor_inst|wait_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(13),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[12]~52\,
	combout => \Ascensor_inst|wait_counter[13]~53_combout\,
	cout => \Ascensor_inst|wait_counter[13]~54\);

-- Location: FF_X2_Y26_N1
\Ascensor_inst|wait_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[13]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(13));

-- Location: LCCOMB_X2_Y26_N2
\Ascensor_inst|wait_counter[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[14]~55_combout\ = (\Ascensor_inst|wait_counter\(14) & (\Ascensor_inst|wait_counter[13]~54\ $ (GND))) # (!\Ascensor_inst|wait_counter\(14) & (!\Ascensor_inst|wait_counter[13]~54\ & VCC))
-- \Ascensor_inst|wait_counter[14]~56\ = CARRY((\Ascensor_inst|wait_counter\(14) & !\Ascensor_inst|wait_counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(14),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[13]~54\,
	combout => \Ascensor_inst|wait_counter[14]~55_combout\,
	cout => \Ascensor_inst|wait_counter[14]~56\);

-- Location: FF_X2_Y26_N3
\Ascensor_inst|wait_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[14]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(14));

-- Location: LCCOMB_X2_Y26_N4
\Ascensor_inst|wait_counter[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[15]~57_combout\ = (\Ascensor_inst|wait_counter\(15) & (!\Ascensor_inst|wait_counter[14]~56\)) # (!\Ascensor_inst|wait_counter\(15) & ((\Ascensor_inst|wait_counter[14]~56\) # (GND)))
-- \Ascensor_inst|wait_counter[15]~58\ = CARRY((!\Ascensor_inst|wait_counter[14]~56\) # (!\Ascensor_inst|wait_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(15),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[14]~56\,
	combout => \Ascensor_inst|wait_counter[15]~57_combout\,
	cout => \Ascensor_inst|wait_counter[15]~58\);

-- Location: FF_X2_Y26_N5
\Ascensor_inst|wait_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[15]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(15));

-- Location: LCCOMB_X2_Y26_N6
\Ascensor_inst|wait_counter[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[16]~59_combout\ = (\Ascensor_inst|wait_counter\(16) & (\Ascensor_inst|wait_counter[15]~58\ $ (GND))) # (!\Ascensor_inst|wait_counter\(16) & (!\Ascensor_inst|wait_counter[15]~58\ & VCC))
-- \Ascensor_inst|wait_counter[16]~60\ = CARRY((\Ascensor_inst|wait_counter\(16) & !\Ascensor_inst|wait_counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(16),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[15]~58\,
	combout => \Ascensor_inst|wait_counter[16]~59_combout\,
	cout => \Ascensor_inst|wait_counter[16]~60\);

-- Location: FF_X2_Y26_N7
\Ascensor_inst|wait_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[16]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(16));

-- Location: LCCOMB_X2_Y26_N8
\Ascensor_inst|wait_counter[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[17]~61_combout\ = (\Ascensor_inst|wait_counter\(17) & (!\Ascensor_inst|wait_counter[16]~60\)) # (!\Ascensor_inst|wait_counter\(17) & ((\Ascensor_inst|wait_counter[16]~60\) # (GND)))
-- \Ascensor_inst|wait_counter[17]~62\ = CARRY((!\Ascensor_inst|wait_counter[16]~60\) # (!\Ascensor_inst|wait_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(17),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[16]~60\,
	combout => \Ascensor_inst|wait_counter[17]~61_combout\,
	cout => \Ascensor_inst|wait_counter[17]~62\);

-- Location: FF_X2_Y26_N9
\Ascensor_inst|wait_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[17]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(17));

-- Location: LCCOMB_X2_Y26_N10
\Ascensor_inst|wait_counter[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[18]~63_combout\ = (\Ascensor_inst|wait_counter\(18) & (\Ascensor_inst|wait_counter[17]~62\ $ (GND))) # (!\Ascensor_inst|wait_counter\(18) & (!\Ascensor_inst|wait_counter[17]~62\ & VCC))
-- \Ascensor_inst|wait_counter[18]~64\ = CARRY((\Ascensor_inst|wait_counter\(18) & !\Ascensor_inst|wait_counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(18),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[17]~62\,
	combout => \Ascensor_inst|wait_counter[18]~63_combout\,
	cout => \Ascensor_inst|wait_counter[18]~64\);

-- Location: FF_X2_Y26_N11
\Ascensor_inst|wait_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[18]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(18));

-- Location: LCCOMB_X2_Y26_N12
\Ascensor_inst|wait_counter[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[19]~65_combout\ = (\Ascensor_inst|wait_counter\(19) & (!\Ascensor_inst|wait_counter[18]~64\)) # (!\Ascensor_inst|wait_counter\(19) & ((\Ascensor_inst|wait_counter[18]~64\) # (GND)))
-- \Ascensor_inst|wait_counter[19]~66\ = CARRY((!\Ascensor_inst|wait_counter[18]~64\) # (!\Ascensor_inst|wait_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(19),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[18]~64\,
	combout => \Ascensor_inst|wait_counter[19]~65_combout\,
	cout => \Ascensor_inst|wait_counter[19]~66\);

-- Location: FF_X2_Y26_N13
\Ascensor_inst|wait_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[19]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(19));

-- Location: LCCOMB_X2_Y26_N14
\Ascensor_inst|wait_counter[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[20]~67_combout\ = (\Ascensor_inst|wait_counter\(20) & (\Ascensor_inst|wait_counter[19]~66\ $ (GND))) # (!\Ascensor_inst|wait_counter\(20) & (!\Ascensor_inst|wait_counter[19]~66\ & VCC))
-- \Ascensor_inst|wait_counter[20]~68\ = CARRY((\Ascensor_inst|wait_counter\(20) & !\Ascensor_inst|wait_counter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(20),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[19]~66\,
	combout => \Ascensor_inst|wait_counter[20]~67_combout\,
	cout => \Ascensor_inst|wait_counter[20]~68\);

-- Location: FF_X2_Y26_N15
\Ascensor_inst|wait_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[20]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(20));

-- Location: LCCOMB_X2_Y26_N16
\Ascensor_inst|wait_counter[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[21]~69_combout\ = (\Ascensor_inst|wait_counter\(21) & (!\Ascensor_inst|wait_counter[20]~68\)) # (!\Ascensor_inst|wait_counter\(21) & ((\Ascensor_inst|wait_counter[20]~68\) # (GND)))
-- \Ascensor_inst|wait_counter[21]~70\ = CARRY((!\Ascensor_inst|wait_counter[20]~68\) # (!\Ascensor_inst|wait_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(21),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[20]~68\,
	combout => \Ascensor_inst|wait_counter[21]~69_combout\,
	cout => \Ascensor_inst|wait_counter[21]~70\);

-- Location: FF_X2_Y26_N17
\Ascensor_inst|wait_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[21]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(21));

-- Location: LCCOMB_X2_Y26_N18
\Ascensor_inst|wait_counter[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[22]~71_combout\ = (\Ascensor_inst|wait_counter\(22) & (\Ascensor_inst|wait_counter[21]~70\ $ (GND))) # (!\Ascensor_inst|wait_counter\(22) & (!\Ascensor_inst|wait_counter[21]~70\ & VCC))
-- \Ascensor_inst|wait_counter[22]~72\ = CARRY((\Ascensor_inst|wait_counter\(22) & !\Ascensor_inst|wait_counter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(22),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[21]~70\,
	combout => \Ascensor_inst|wait_counter[22]~71_combout\,
	cout => \Ascensor_inst|wait_counter[22]~72\);

-- Location: FF_X2_Y26_N19
\Ascensor_inst|wait_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[22]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(22));

-- Location: LCCOMB_X2_Y26_N20
\Ascensor_inst|wait_counter[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[23]~73_combout\ = (\Ascensor_inst|wait_counter\(23) & (!\Ascensor_inst|wait_counter[22]~72\)) # (!\Ascensor_inst|wait_counter\(23) & ((\Ascensor_inst|wait_counter[22]~72\) # (GND)))
-- \Ascensor_inst|wait_counter[23]~74\ = CARRY((!\Ascensor_inst|wait_counter[22]~72\) # (!\Ascensor_inst|wait_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(23),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[22]~72\,
	combout => \Ascensor_inst|wait_counter[23]~73_combout\,
	cout => \Ascensor_inst|wait_counter[23]~74\);

-- Location: FF_X2_Y26_N21
\Ascensor_inst|wait_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[23]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(23));

-- Location: LCCOMB_X2_Y26_N22
\Ascensor_inst|wait_counter[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[24]~75_combout\ = (\Ascensor_inst|wait_counter\(24) & (\Ascensor_inst|wait_counter[23]~74\ $ (GND))) # (!\Ascensor_inst|wait_counter\(24) & (!\Ascensor_inst|wait_counter[23]~74\ & VCC))
-- \Ascensor_inst|wait_counter[24]~76\ = CARRY((\Ascensor_inst|wait_counter\(24) & !\Ascensor_inst|wait_counter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(24),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[23]~74\,
	combout => \Ascensor_inst|wait_counter[24]~75_combout\,
	cout => \Ascensor_inst|wait_counter[24]~76\);

-- Location: FF_X2_Y26_N23
\Ascensor_inst|wait_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[24]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(24));

-- Location: LCCOMB_X2_Y26_N24
\Ascensor_inst|wait_counter[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[25]~77_combout\ = (\Ascensor_inst|wait_counter\(25) & (!\Ascensor_inst|wait_counter[24]~76\)) # (!\Ascensor_inst|wait_counter\(25) & ((\Ascensor_inst|wait_counter[24]~76\) # (GND)))
-- \Ascensor_inst|wait_counter[25]~78\ = CARRY((!\Ascensor_inst|wait_counter[24]~76\) # (!\Ascensor_inst|wait_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|wait_counter\(25),
	datad => VCC,
	cin => \Ascensor_inst|wait_counter[24]~76\,
	combout => \Ascensor_inst|wait_counter[25]~77_combout\,
	cout => \Ascensor_inst|wait_counter[25]~78\);

-- Location: FF_X2_Y26_N25
\Ascensor_inst|wait_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[25]~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(25));

-- Location: LCCOMB_X2_Y26_N26
\Ascensor_inst|wait_counter[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|wait_counter[26]~79_combout\ = \Ascensor_inst|wait_counter\(26) $ (!\Ascensor_inst|wait_counter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(26),
	cin => \Ascensor_inst|wait_counter[25]~78\,
	combout => \Ascensor_inst|wait_counter[26]~79_combout\);

-- Location: FF_X2_Y26_N27
\Ascensor_inst|wait_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|wait_counter[26]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \Ascensor_inst|wait_counter[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|wait_counter\(26));

-- Location: LCCOMB_X1_Y22_N10
\Ascensor_inst|Selector19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector19~8_combout\ = (\Ascensor_inst|wait_counter\(26) & (\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & ((\Ascensor_inst|wait_counter\(25)) # (!\Ascensor_inst|LessThan11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|wait_counter\(26),
	datab => \Ascensor_inst|wait_counter\(25),
	datac => \Ascensor_inst|LessThan11~7_combout\,
	datad => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	combout => \Ascensor_inst|Selector19~8_combout\);

-- Location: LCCOMB_X3_Y23_N0
\Ascensor_inst|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector22~0_combout\ = (\Ascensor_inst|Selector19~8_combout\) # ((\Ascensor_inst|main_state.DOOR_CLOSING~q\ & !\Ascensor_inst|LessThan10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|Selector19~8_combout\,
	datac => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datad => \Ascensor_inst|LessThan10~8_combout\,
	combout => \Ascensor_inst|Selector22~0_combout\);

-- Location: FF_X3_Y23_N1
\Ascensor_inst|main_state.DOOR_CLOSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.DOOR_CLOSING~q\);

-- Location: LCCOMB_X2_Y25_N26
\Ascensor_inst|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~1_combout\ = (\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (\Ascensor_inst|LessThan10~8_combout\)) # (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & (((!\Ascensor_inst|current_floor[2]~2_combout\ & 
-- \Ascensor_inst|Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|Add17~2_combout\,
	combout => \Ascensor_inst|Selector21~1_combout\);

-- Location: LCCOMB_X2_Y25_N16
\Ascensor_inst|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~2_combout\ = (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|Selector21~0_combout\) # ((!\Ascensor_inst|main_state.MOVING_UP~q\ & !\Ascensor_inst|main_state.MOVING_DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~0_combout\,
	datab => \Ascensor_inst|main_state.MOVING_UP~q\,
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|Selector21~2_combout\);

-- Location: LCCOMB_X2_Y25_N14
\Ascensor_inst|Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector21~3_combout\ = (!\Ascensor_inst|Selector21~2_combout\ & ((\Ascensor_inst|main_state.MOVING_UP~q\ & ((\Ascensor_inst|current_floor[2]~2_combout\))) # (!\Ascensor_inst|main_state.MOVING_UP~q\ & 
-- (\Ascensor_inst|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~1_combout\,
	datab => \Ascensor_inst|Selector21~2_combout\,
	datac => \Ascensor_inst|current_floor[2]~2_combout\,
	datad => \Ascensor_inst|main_state.MOVING_UP~q\,
	combout => \Ascensor_inst|Selector21~3_combout\);

-- Location: LCCOMB_X10_Y25_N26
\Ascensor_inst|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector17~0_combout\ = (\Ascensor_inst|Selector80~0_combout\) # ((!\Ascensor_inst|Selector21~3_combout\ & ((\Ascensor_inst|main_state.IDLE~q\) # (\Ascensor_inst|Selector21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector21~3_combout\,
	datab => \Ascensor_inst|Selector80~0_combout\,
	datac => \Ascensor_inst|main_state.IDLE~q\,
	datad => \Ascensor_inst|Selector21~6_combout\,
	combout => \Ascensor_inst|Selector17~0_combout\);

-- Location: FF_X10_Y25_N27
\Ascensor_inst|main_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.IDLE~q\);

-- Location: LCCOMB_X3_Y24_N8
\Ascensor_inst|mem_data_in[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|mem_data_in[2]~0_combout\ = (!\reset~input_o\ & !\Ascensor_inst|main_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Ascensor_inst|main_state.IDLE~q\,
	combout => \Ascensor_inst|mem_data_in[2]~0_combout\);

-- Location: FF_X6_Y24_N17
\Ascensor_inst|mem_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|current_floor[2]~2_combout\,
	sload => VCC,
	ena => \Ascensor_inst|mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|mem_data_in\(2));

-- Location: FF_X7_Y24_N21
\Ascensor_inst|system_memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|mem_data_in\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|system_memory[0][2]~q\);

-- Location: LCCOMB_X7_Y24_N24
\Ascensor_inst|current_floor[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[2]~1_combout\ = (\reset~input_o\ & ((\Ascensor_inst|system_memory[0][2]~q\))) # (!\reset~input_o\ & (\Ascensor_inst|current_floor[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|current_floor[2]~1_combout\,
	datac => \reset~input_o\,
	datad => \Ascensor_inst|system_memory[0][2]~q\,
	combout => \Ascensor_inst|current_floor[2]~1_combout\);

-- Location: LCCOMB_X3_Y24_N0
\Ascensor_inst|Add32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add32~0_combout\ = \Ascensor_inst|current_floor[2]~2_combout\ $ (((\Ascensor_inst|current_floor[0]~10_combout\) # (\Ascensor_inst|current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add32~0_combout\);

-- Location: LCCOMB_X3_Y24_N26
\Ascensor_inst|Add30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Add30~0_combout\ = \Ascensor_inst|current_floor[2]~2_combout\ $ (((\Ascensor_inst|current_floor[0]~10_combout\ & \Ascensor_inst|current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[1]~6_combout\,
	combout => \Ascensor_inst|Add30~0_combout\);

-- Location: LCCOMB_X3_Y24_N30
\Ascensor_inst|current_floor[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[2]~3_combout\ = \Ascensor_inst|current_floor[2]~1_combout\ $ (((\Ascensor_inst|main_state.MOVING_DOWN~q\ & (!\Ascensor_inst|Add32~0_combout\)) # (!\Ascensor_inst|main_state.MOVING_DOWN~q\ & 
-- ((\Ascensor_inst|Add30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datab => \Ascensor_inst|Add32~0_combout\,
	datac => \Ascensor_inst|Add30~0_combout\,
	datad => \Ascensor_inst|current_floor[2]~1_combout\,
	combout => \Ascensor_inst|current_floor[2]~3_combout\);

-- Location: FF_X7_Y24_N17
\Ascensor_inst|current_floor[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Ascensor_inst|current_floor[2]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Ascensor_inst|Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|current_floor[2]~_emulated_q\);

-- Location: LCCOMB_X7_Y24_N16
\Ascensor_inst|current_floor[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|current_floor[2]~2_combout\ = (\reset~input_o\ & (((\Ascensor_inst|system_memory[0][2]~q\)))) # (!\reset~input_o\ & (\Ascensor_inst|current_floor[2]~1_combout\ $ ((\Ascensor_inst|current_floor[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Ascensor_inst|current_floor[2]~1_combout\,
	datac => \Ascensor_inst|current_floor[2]~_emulated_q\,
	datad => \Ascensor_inst|system_memory[0][2]~q\,
	combout => \Ascensor_inst|current_floor[2]~2_combout\);

-- Location: LCCOMB_X12_Y25_N12
\Ascensor_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Mux0~0_combout\ = (\Ascensor_inst|current_floor[1]~6_combout\ & ((\Ascensor_inst|current_floor[0]~10_combout\ & ((\Ascensor_inst|floor_calls\(3)))) # (!\Ascensor_inst|current_floor[0]~10_combout\ & (\Ascensor_inst|floor_calls\(2))))) # 
-- (!\Ascensor_inst|current_floor[1]~6_combout\ & (((\Ascensor_inst|current_floor[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datab => \Ascensor_inst|floor_calls\(2),
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|floor_calls\(3),
	combout => \Ascensor_inst|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y25_N10
\Ascensor_inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Mux0~1_combout\ = (\Ascensor_inst|Mux0~0_combout\ & (((\Ascensor_inst|floor_calls\(5)) # (!\Ascensor_inst|current_floor[2]~2_combout\)))) # (!\Ascensor_inst|Mux0~0_combout\ & (\Ascensor_inst|floor_calls\(4) & 
-- ((\Ascensor_inst|current_floor[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Mux0~0_combout\,
	datab => \Ascensor_inst|floor_calls\(4),
	datac => \Ascensor_inst|floor_calls\(5),
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y25_N16
\Ascensor_inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Mux0~2_combout\ = (\Ascensor_inst|Mux0~1_combout\ & ((\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[1]~6_combout\)) # (!\Ascensor_inst|current_floor[2]~2_combout\ & ((\Ascensor_inst|current_floor[1]~6_combout\) 
-- # (\Ascensor_inst|floor_calls\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|floor_calls\(1),
	datad => \Ascensor_inst|Mux0~1_combout\,
	combout => \Ascensor_inst|Mux0~2_combout\);

-- Location: LCCOMB_X10_Y25_N12
\Ascensor_inst|Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector18~2_combout\ = (!\Ascensor_inst|Mux0~2_combout\ & (\Ascensor_inst|target_floor[0]~2_combout\ & \Ascensor_inst|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Mux0~2_combout\,
	datab => \Ascensor_inst|target_floor[0]~2_combout\,
	datad => \Ascensor_inst|LessThan5~2_combout\,
	combout => \Ascensor_inst|Selector18~2_combout\);

-- Location: LCCOMB_X10_Y25_N24
\Ascensor_inst|Selector18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector18~3_combout\ = (!\Ascensor_inst|Selector19~8_combout\ & ((\Ascensor_inst|Selector19~7_combout\ & (\Ascensor_inst|Selector18~2_combout\)) # (!\Ascensor_inst|Selector19~7_combout\ & ((\Ascensor_inst|main_state.MOVING_UP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector18~2_combout\,
	datab => \Ascensor_inst|Selector19~8_combout\,
	datac => \Ascensor_inst|main_state.MOVING_UP~q\,
	datad => \Ascensor_inst|Selector19~7_combout\,
	combout => \Ascensor_inst|Selector18~3_combout\);

-- Location: FF_X10_Y25_N25
\Ascensor_inst|main_state.MOVING_UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector18~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|main_state.MOVING_UP~q\);

-- Location: LCCOMB_X28_Y25_N16
\Contador_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Equal0~0_combout\ = (\Contador_inst|contador\(1) & (!\Contador_inst|contador\(2) & (\Contador_inst|contador\(3) & \Contador_inst|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(3),
	datad => \Contador_inst|contador\(0),
	combout => \Contador_inst|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\motor_in1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in1~0_combout\ = (\Ascensor_inst|main_state.MOVING_UP~q\ & !\Contador_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|main_state.MOVING_UP~q\,
	datad => \Contador_inst|Equal0~0_combout\,
	combout => \motor_in1~0_combout\);

-- Location: LCCOMB_X28_Y25_N28
\motor_in2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in2~0_combout\ = (\Ascensor_inst|main_state.MOVING_DOWN~q\ & !\Contador_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datad => \Contador_inst|Equal0~0_combout\,
	combout => \motor_in2~0_combout\);

-- Location: LCCOMB_X28_Y25_N18
\motor_ena~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_ena~2_combout\ = (!\Contador_inst|Equal0~0_combout\ & ((\Ascensor_inst|main_state.MOVING_DOWN~q\) # (\Ascensor_inst|main_state.MOVING_UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datac => \Ascensor_inst|main_state.MOVING_UP~q\,
	datad => \Contador_inst|Equal0~0_combout\,
	combout => \motor_ena~2_combout\);

-- Location: LCCOMB_X1_Y28_N12
\Ascensor_inst|pwm_counter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[0]~20_combout\ = \Ascensor_inst|pwm_counter\(0) $ (VCC)
-- \Ascensor_inst|pwm_counter[0]~21\ = CARRY(\Ascensor_inst|pwm_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(0),
	datad => VCC,
	combout => \Ascensor_inst|pwm_counter[0]~20_combout\,
	cout => \Ascensor_inst|pwm_counter[0]~21\);

-- Location: LCCOMB_X1_Y27_N12
\Ascensor_inst|pwm_counter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[16]~52_combout\ = (\Ascensor_inst|pwm_counter\(16) & (\Ascensor_inst|pwm_counter[15]~51\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(16) & (!\Ascensor_inst|pwm_counter[15]~51\ & VCC))
-- \Ascensor_inst|pwm_counter[16]~53\ = CARRY((\Ascensor_inst|pwm_counter\(16) & !\Ascensor_inst|pwm_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(16),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[15]~51\,
	combout => \Ascensor_inst|pwm_counter[16]~52_combout\,
	cout => \Ascensor_inst|pwm_counter[16]~53\);

-- Location: LCCOMB_X1_Y27_N14
\Ascensor_inst|pwm_counter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[17]~54_combout\ = (\Ascensor_inst|pwm_counter\(17) & (!\Ascensor_inst|pwm_counter[16]~53\)) # (!\Ascensor_inst|pwm_counter\(17) & ((\Ascensor_inst|pwm_counter[16]~53\) # (GND)))
-- \Ascensor_inst|pwm_counter[17]~55\ = CARRY((!\Ascensor_inst|pwm_counter[16]~53\) # (!\Ascensor_inst|pwm_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(17),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[16]~53\,
	combout => \Ascensor_inst|pwm_counter[17]~54_combout\,
	cout => \Ascensor_inst|pwm_counter[17]~55\);

-- Location: FF_X1_Y27_N15
\Ascensor_inst|pwm_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[17]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(17));

-- Location: LCCOMB_X1_Y27_N16
\Ascensor_inst|pwm_counter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[18]~56_combout\ = (\Ascensor_inst|pwm_counter\(18) & (\Ascensor_inst|pwm_counter[17]~55\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(18) & (!\Ascensor_inst|pwm_counter[17]~55\ & VCC))
-- \Ascensor_inst|pwm_counter[18]~57\ = CARRY((\Ascensor_inst|pwm_counter\(18) & !\Ascensor_inst|pwm_counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(18),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[17]~55\,
	combout => \Ascensor_inst|pwm_counter[18]~56_combout\,
	cout => \Ascensor_inst|pwm_counter[18]~57\);

-- Location: FF_X1_Y27_N17
\Ascensor_inst|pwm_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[18]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(18));

-- Location: LCCOMB_X1_Y27_N18
\Ascensor_inst|pwm_counter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[19]~58_combout\ = \Ascensor_inst|pwm_counter[18]~57\ $ (\Ascensor_inst|pwm_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ascensor_inst|pwm_counter\(19),
	cin => \Ascensor_inst|pwm_counter[18]~57\,
	combout => \Ascensor_inst|pwm_counter[19]~58_combout\);

-- Location: FF_X1_Y27_N19
\Ascensor_inst|pwm_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[19]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(19));

-- Location: LCCOMB_X1_Y27_N24
\Ascensor_inst|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~0_combout\ = (((!\Ascensor_inst|pwm_counter\(19)) # (!\Ascensor_inst|pwm_counter\(17))) # (!\Ascensor_inst|pwm_counter\(18))) # (!\Ascensor_inst|pwm_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(16),
	datab => \Ascensor_inst|pwm_counter\(18),
	datac => \Ascensor_inst|pwm_counter\(17),
	datad => \Ascensor_inst|pwm_counter\(19),
	combout => \Ascensor_inst|LessThan12~0_combout\);

-- Location: LCCOMB_X1_Y28_N2
\Ascensor_inst|LessThan12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~4_combout\ = (!\Ascensor_inst|pwm_counter\(6) & (!\Ascensor_inst|pwm_counter\(7) & !\Ascensor_inst|pwm_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(6),
	datac => \Ascensor_inst|pwm_counter\(7),
	datad => \Ascensor_inst|pwm_counter\(8),
	combout => \Ascensor_inst|LessThan12~4_combout\);

-- Location: LCCOMB_X1_Y28_N6
\Ascensor_inst|LessThan12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~2_combout\ = (((!\Ascensor_inst|pwm_counter\(4)) # (!\Ascensor_inst|pwm_counter\(5))) # (!\Ascensor_inst|pwm_counter\(3))) # (!\Ascensor_inst|pwm_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(0),
	datab => \Ascensor_inst|pwm_counter\(3),
	datac => \Ascensor_inst|pwm_counter\(5),
	datad => \Ascensor_inst|pwm_counter\(4),
	combout => \Ascensor_inst|LessThan12~2_combout\);

-- Location: LCCOMB_X1_Y28_N8
\Ascensor_inst|LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~3_combout\ = ((\Ascensor_inst|LessThan12~2_combout\) # (!\Ascensor_inst|pwm_counter\(1))) # (!\Ascensor_inst|pwm_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(2),
	datac => \Ascensor_inst|pwm_counter\(1),
	datad => \Ascensor_inst|LessThan12~2_combout\,
	combout => \Ascensor_inst|LessThan12~3_combout\);

-- Location: LCCOMB_X1_Y27_N22
\Ascensor_inst|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~1_combout\ = (!\Ascensor_inst|pwm_counter\(13) & (!\Ascensor_inst|pwm_counter\(10) & (!\Ascensor_inst|pwm_counter\(12) & !\Ascensor_inst|pwm_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(13),
	datab => \Ascensor_inst|pwm_counter\(10),
	datac => \Ascensor_inst|pwm_counter\(12),
	datad => \Ascensor_inst|pwm_counter\(11),
	combout => \Ascensor_inst|LessThan12~1_combout\);

-- Location: LCCOMB_X1_Y28_N0
\Ascensor_inst|LessThan12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~5_combout\ = (\Ascensor_inst|LessThan12~1_combout\ & (((\Ascensor_inst|LessThan12~4_combout\ & \Ascensor_inst|LessThan12~3_combout\)) # (!\Ascensor_inst|pwm_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(9),
	datab => \Ascensor_inst|LessThan12~4_combout\,
	datac => \Ascensor_inst|LessThan12~3_combout\,
	datad => \Ascensor_inst|LessThan12~1_combout\,
	combout => \Ascensor_inst|LessThan12~5_combout\);

-- Location: LCCOMB_X1_Y28_N10
\Ascensor_inst|LessThan12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan12~6_combout\ = (!\Ascensor_inst|LessThan12~0_combout\ & ((\Ascensor_inst|pwm_counter\(15)) # ((\Ascensor_inst|pwm_counter\(14) & !\Ascensor_inst|LessThan12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(14),
	datab => \Ascensor_inst|pwm_counter\(15),
	datac => \Ascensor_inst|LessThan12~0_combout\,
	datad => \Ascensor_inst|LessThan12~5_combout\,
	combout => \Ascensor_inst|LessThan12~6_combout\);

-- Location: FF_X1_Y28_N13
\Ascensor_inst|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[0]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(0));

-- Location: LCCOMB_X1_Y28_N14
\Ascensor_inst|pwm_counter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[1]~22_combout\ = (\Ascensor_inst|pwm_counter\(1) & (!\Ascensor_inst|pwm_counter[0]~21\)) # (!\Ascensor_inst|pwm_counter\(1) & ((\Ascensor_inst|pwm_counter[0]~21\) # (GND)))
-- \Ascensor_inst|pwm_counter[1]~23\ = CARRY((!\Ascensor_inst|pwm_counter[0]~21\) # (!\Ascensor_inst|pwm_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(1),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[0]~21\,
	combout => \Ascensor_inst|pwm_counter[1]~22_combout\,
	cout => \Ascensor_inst|pwm_counter[1]~23\);

-- Location: FF_X1_Y28_N15
\Ascensor_inst|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[1]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(1));

-- Location: LCCOMB_X1_Y28_N16
\Ascensor_inst|pwm_counter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[2]~24_combout\ = (\Ascensor_inst|pwm_counter\(2) & (\Ascensor_inst|pwm_counter[1]~23\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(2) & (!\Ascensor_inst|pwm_counter[1]~23\ & VCC))
-- \Ascensor_inst|pwm_counter[2]~25\ = CARRY((\Ascensor_inst|pwm_counter\(2) & !\Ascensor_inst|pwm_counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(2),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[1]~23\,
	combout => \Ascensor_inst|pwm_counter[2]~24_combout\,
	cout => \Ascensor_inst|pwm_counter[2]~25\);

-- Location: FF_X1_Y28_N17
\Ascensor_inst|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[2]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(2));

-- Location: LCCOMB_X1_Y28_N18
\Ascensor_inst|pwm_counter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[3]~26_combout\ = (\Ascensor_inst|pwm_counter\(3) & (!\Ascensor_inst|pwm_counter[2]~25\)) # (!\Ascensor_inst|pwm_counter\(3) & ((\Ascensor_inst|pwm_counter[2]~25\) # (GND)))
-- \Ascensor_inst|pwm_counter[3]~27\ = CARRY((!\Ascensor_inst|pwm_counter[2]~25\) # (!\Ascensor_inst|pwm_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(3),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[2]~25\,
	combout => \Ascensor_inst|pwm_counter[3]~26_combout\,
	cout => \Ascensor_inst|pwm_counter[3]~27\);

-- Location: FF_X1_Y28_N19
\Ascensor_inst|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[3]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(3));

-- Location: LCCOMB_X1_Y28_N20
\Ascensor_inst|pwm_counter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[4]~28_combout\ = (\Ascensor_inst|pwm_counter\(4) & (\Ascensor_inst|pwm_counter[3]~27\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(4) & (!\Ascensor_inst|pwm_counter[3]~27\ & VCC))
-- \Ascensor_inst|pwm_counter[4]~29\ = CARRY((\Ascensor_inst|pwm_counter\(4) & !\Ascensor_inst|pwm_counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(4),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[3]~27\,
	combout => \Ascensor_inst|pwm_counter[4]~28_combout\,
	cout => \Ascensor_inst|pwm_counter[4]~29\);

-- Location: FF_X1_Y28_N21
\Ascensor_inst|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[4]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(4));

-- Location: LCCOMB_X1_Y28_N22
\Ascensor_inst|pwm_counter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[5]~30_combout\ = (\Ascensor_inst|pwm_counter\(5) & (!\Ascensor_inst|pwm_counter[4]~29\)) # (!\Ascensor_inst|pwm_counter\(5) & ((\Ascensor_inst|pwm_counter[4]~29\) # (GND)))
-- \Ascensor_inst|pwm_counter[5]~31\ = CARRY((!\Ascensor_inst|pwm_counter[4]~29\) # (!\Ascensor_inst|pwm_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(5),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[4]~29\,
	combout => \Ascensor_inst|pwm_counter[5]~30_combout\,
	cout => \Ascensor_inst|pwm_counter[5]~31\);

-- Location: FF_X1_Y28_N23
\Ascensor_inst|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[5]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(5));

-- Location: LCCOMB_X1_Y28_N24
\Ascensor_inst|pwm_counter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[6]~32_combout\ = (\Ascensor_inst|pwm_counter\(6) & (\Ascensor_inst|pwm_counter[5]~31\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(6) & (!\Ascensor_inst|pwm_counter[5]~31\ & VCC))
-- \Ascensor_inst|pwm_counter[6]~33\ = CARRY((\Ascensor_inst|pwm_counter\(6) & !\Ascensor_inst|pwm_counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(6),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[5]~31\,
	combout => \Ascensor_inst|pwm_counter[6]~32_combout\,
	cout => \Ascensor_inst|pwm_counter[6]~33\);

-- Location: FF_X1_Y28_N25
\Ascensor_inst|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[6]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(6));

-- Location: LCCOMB_X1_Y28_N26
\Ascensor_inst|pwm_counter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[7]~34_combout\ = (\Ascensor_inst|pwm_counter\(7) & (!\Ascensor_inst|pwm_counter[6]~33\)) # (!\Ascensor_inst|pwm_counter\(7) & ((\Ascensor_inst|pwm_counter[6]~33\) # (GND)))
-- \Ascensor_inst|pwm_counter[7]~35\ = CARRY((!\Ascensor_inst|pwm_counter[6]~33\) # (!\Ascensor_inst|pwm_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(7),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[6]~33\,
	combout => \Ascensor_inst|pwm_counter[7]~34_combout\,
	cout => \Ascensor_inst|pwm_counter[7]~35\);

-- Location: FF_X1_Y28_N27
\Ascensor_inst|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[7]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(7));

-- Location: LCCOMB_X1_Y28_N28
\Ascensor_inst|pwm_counter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[8]~36_combout\ = (\Ascensor_inst|pwm_counter\(8) & (\Ascensor_inst|pwm_counter[7]~35\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(8) & (!\Ascensor_inst|pwm_counter[7]~35\ & VCC))
-- \Ascensor_inst|pwm_counter[8]~37\ = CARRY((\Ascensor_inst|pwm_counter\(8) & !\Ascensor_inst|pwm_counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(8),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[7]~35\,
	combout => \Ascensor_inst|pwm_counter[8]~36_combout\,
	cout => \Ascensor_inst|pwm_counter[8]~37\);

-- Location: FF_X1_Y28_N29
\Ascensor_inst|pwm_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[8]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(8));

-- Location: LCCOMB_X1_Y28_N30
\Ascensor_inst|pwm_counter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[9]~38_combout\ = (\Ascensor_inst|pwm_counter\(9) & (!\Ascensor_inst|pwm_counter[8]~37\)) # (!\Ascensor_inst|pwm_counter\(9) & ((\Ascensor_inst|pwm_counter[8]~37\) # (GND)))
-- \Ascensor_inst|pwm_counter[9]~39\ = CARRY((!\Ascensor_inst|pwm_counter[8]~37\) # (!\Ascensor_inst|pwm_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(9),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[8]~37\,
	combout => \Ascensor_inst|pwm_counter[9]~38_combout\,
	cout => \Ascensor_inst|pwm_counter[9]~39\);

-- Location: FF_X1_Y28_N31
\Ascensor_inst|pwm_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[9]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(9));

-- Location: LCCOMB_X1_Y27_N0
\Ascensor_inst|pwm_counter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[10]~40_combout\ = (\Ascensor_inst|pwm_counter\(10) & (\Ascensor_inst|pwm_counter[9]~39\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(10) & (!\Ascensor_inst|pwm_counter[9]~39\ & VCC))
-- \Ascensor_inst|pwm_counter[10]~41\ = CARRY((\Ascensor_inst|pwm_counter\(10) & !\Ascensor_inst|pwm_counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(10),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[9]~39\,
	combout => \Ascensor_inst|pwm_counter[10]~40_combout\,
	cout => \Ascensor_inst|pwm_counter[10]~41\);

-- Location: FF_X1_Y27_N1
\Ascensor_inst|pwm_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[10]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(10));

-- Location: LCCOMB_X1_Y27_N2
\Ascensor_inst|pwm_counter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[11]~42_combout\ = (\Ascensor_inst|pwm_counter\(11) & (!\Ascensor_inst|pwm_counter[10]~41\)) # (!\Ascensor_inst|pwm_counter\(11) & ((\Ascensor_inst|pwm_counter[10]~41\) # (GND)))
-- \Ascensor_inst|pwm_counter[11]~43\ = CARRY((!\Ascensor_inst|pwm_counter[10]~41\) # (!\Ascensor_inst|pwm_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(11),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[10]~41\,
	combout => \Ascensor_inst|pwm_counter[11]~42_combout\,
	cout => \Ascensor_inst|pwm_counter[11]~43\);

-- Location: FF_X1_Y27_N3
\Ascensor_inst|pwm_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[11]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(11));

-- Location: LCCOMB_X1_Y27_N4
\Ascensor_inst|pwm_counter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[12]~44_combout\ = (\Ascensor_inst|pwm_counter\(12) & (\Ascensor_inst|pwm_counter[11]~43\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(12) & (!\Ascensor_inst|pwm_counter[11]~43\ & VCC))
-- \Ascensor_inst|pwm_counter[12]~45\ = CARRY((\Ascensor_inst|pwm_counter\(12) & !\Ascensor_inst|pwm_counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(12),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[11]~43\,
	combout => \Ascensor_inst|pwm_counter[12]~44_combout\,
	cout => \Ascensor_inst|pwm_counter[12]~45\);

-- Location: FF_X1_Y27_N5
\Ascensor_inst|pwm_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[12]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(12));

-- Location: LCCOMB_X1_Y27_N6
\Ascensor_inst|pwm_counter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[13]~46_combout\ = (\Ascensor_inst|pwm_counter\(13) & (!\Ascensor_inst|pwm_counter[12]~45\)) # (!\Ascensor_inst|pwm_counter\(13) & ((\Ascensor_inst|pwm_counter[12]~45\) # (GND)))
-- \Ascensor_inst|pwm_counter[13]~47\ = CARRY((!\Ascensor_inst|pwm_counter[12]~45\) # (!\Ascensor_inst|pwm_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(13),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[12]~45\,
	combout => \Ascensor_inst|pwm_counter[13]~46_combout\,
	cout => \Ascensor_inst|pwm_counter[13]~47\);

-- Location: FF_X1_Y27_N7
\Ascensor_inst|pwm_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[13]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(13));

-- Location: LCCOMB_X1_Y27_N8
\Ascensor_inst|pwm_counter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[14]~48_combout\ = (\Ascensor_inst|pwm_counter\(14) & (\Ascensor_inst|pwm_counter[13]~47\ $ (GND))) # (!\Ascensor_inst|pwm_counter\(14) & (!\Ascensor_inst|pwm_counter[13]~47\ & VCC))
-- \Ascensor_inst|pwm_counter[14]~49\ = CARRY((\Ascensor_inst|pwm_counter\(14) & !\Ascensor_inst|pwm_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(14),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[13]~47\,
	combout => \Ascensor_inst|pwm_counter[14]~48_combout\,
	cout => \Ascensor_inst|pwm_counter[14]~49\);

-- Location: FF_X1_Y27_N9
\Ascensor_inst|pwm_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[14]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(14));

-- Location: LCCOMB_X1_Y27_N10
\Ascensor_inst|pwm_counter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|pwm_counter[15]~50_combout\ = (\Ascensor_inst|pwm_counter\(15) & (!\Ascensor_inst|pwm_counter[14]~49\)) # (!\Ascensor_inst|pwm_counter\(15) & ((\Ascensor_inst|pwm_counter[14]~49\) # (GND)))
-- \Ascensor_inst|pwm_counter[15]~51\ = CARRY((!\Ascensor_inst|pwm_counter[14]~49\) # (!\Ascensor_inst|pwm_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(15),
	datad => VCC,
	cin => \Ascensor_inst|pwm_counter[14]~49\,
	combout => \Ascensor_inst|pwm_counter[15]~50_combout\,
	cout => \Ascensor_inst|pwm_counter[15]~51\);

-- Location: FF_X1_Y27_N11
\Ascensor_inst|pwm_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[15]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(15));

-- Location: FF_X1_Y27_N13
\Ascensor_inst|pwm_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|pwm_counter[16]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Ascensor_inst|LessThan12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|pwm_counter\(16));

-- Location: LCCOMB_X1_Y27_N28
\Ascensor_inst|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~0_combout\ = (!\Ascensor_inst|pwm_counter\(18) & (!\Ascensor_inst|pwm_counter\(17) & !\Ascensor_inst|pwm_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(18),
	datac => \Ascensor_inst|pwm_counter\(17),
	datad => \Ascensor_inst|pwm_counter\(19),
	combout => \Ascensor_inst|LessThan13~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\Ascensor_inst|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector2~0_combout\ = (\Ascensor_inst|main_state.DOOR_CLOSING~q\) # ((\Ascensor_inst|servo_pwm_width\(14) & ((\Ascensor_inst|main_state.MOVING_UP~q\) # (\Ascensor_inst|main_state.MOVING_DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datac => \Ascensor_inst|servo_pwm_width\(14),
	datad => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	combout => \Ascensor_inst|Selector2~0_combout\);

-- Location: FF_X1_Y25_N21
\Ascensor_inst|servo_pwm_width[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|servo_pwm_width\(14));

-- Location: LCCOMB_X2_Y25_N6
\Ascensor_inst|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector10~0_combout\ = (!\Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\ & \Ascensor_inst|main_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|main_state.DOOR_OPEN_WAIT~q\,
	datad => \Ascensor_inst|main_state.IDLE~q\,
	combout => \Ascensor_inst|Selector10~0_combout\);

-- Location: LCCOMB_X1_Y25_N6
\Ascensor_inst|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector3~4_combout\ = (\Ascensor_inst|Selector10~0_combout\ & ((\Ascensor_inst|servo_pwm_width\(13)) # ((!\Ascensor_inst|main_state.MOVING_DOWN~q\ & !\Ascensor_inst|main_state.MOVING_UP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector10~0_combout\,
	datab => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	datac => \Ascensor_inst|servo_pwm_width\(13),
	datad => \Ascensor_inst|main_state.MOVING_UP~q\,
	combout => \Ascensor_inst|Selector3~4_combout\);

-- Location: FF_X1_Y25_N7
\Ascensor_inst|servo_pwm_width[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector3~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|servo_pwm_width\(13));

-- Location: LCCOMB_X1_Y27_N30
\Ascensor_inst|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~1_combout\ = (!\Ascensor_inst|pwm_counter\(13) & !\Ascensor_inst|servo_pwm_width\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|pwm_counter\(13),
	datac => \Ascensor_inst|servo_pwm_width\(13),
	combout => \Ascensor_inst|LessThan13~1_combout\);

-- Location: LCCOMB_X1_Y27_N20
\Ascensor_inst|LessThan13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~2_combout\ = (!\Ascensor_inst|pwm_counter\(11) & (!\Ascensor_inst|pwm_counter\(12) & (\Ascensor_inst|servo_pwm_width\(13) $ (\Ascensor_inst|pwm_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|servo_pwm_width\(13),
	datab => \Ascensor_inst|pwm_counter\(11),
	datac => \Ascensor_inst|pwm_counter\(13),
	datad => \Ascensor_inst|pwm_counter\(12),
	combout => \Ascensor_inst|LessThan13~2_combout\);

-- Location: LCCOMB_X2_Y25_N8
\Ascensor_inst|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector4~0_combout\ = (!\Ascensor_inst|main_state.DOOR_OPENING~q\ & (\Ascensor_inst|Selector10~0_combout\ & ((\Ascensor_inst|WideNor0~0_combout\) # (\Ascensor_inst|servo_pwm_width\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|WideNor0~0_combout\,
	datac => \Ascensor_inst|servo_pwm_width\(10),
	datad => \Ascensor_inst|Selector10~0_combout\,
	combout => \Ascensor_inst|Selector4~0_combout\);

-- Location: FF_X2_Y25_N9
\Ascensor_inst|servo_pwm_width[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|servo_pwm_width\(10));

-- Location: LCCOMB_X1_Y25_N14
\Ascensor_inst|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector1~4_combout\ = ((\Ascensor_inst|servo_pwm_width\(15) & ((\Ascensor_inst|main_state.MOVING_UP~q\) # (\Ascensor_inst|main_state.MOVING_DOWN~q\)))) # (!\Ascensor_inst|door_counter[22]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.MOVING_UP~q\,
	datab => \Ascensor_inst|door_counter[22]~2_combout\,
	datac => \Ascensor_inst|servo_pwm_width\(15),
	datad => \Ascensor_inst|main_state.MOVING_DOWN~q\,
	combout => \Ascensor_inst|Selector1~4_combout\);

-- Location: FF_X1_Y25_N15
\Ascensor_inst|servo_pwm_width[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector1~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|servo_pwm_width\(15));

-- Location: LCCOMB_X1_Y25_N4
\Ascensor_inst|Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Selector10~1_combout\ = (\Ascensor_inst|Selector10~0_combout\ & (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|servo_pwm_width\(4)) # (\Ascensor_inst|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|Selector10~0_combout\,
	datab => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	datac => \Ascensor_inst|servo_pwm_width\(4),
	datad => \Ascensor_inst|WideNor0~0_combout\,
	combout => \Ascensor_inst|Selector10~1_combout\);

-- Location: FF_X1_Y25_N5
\Ascensor_inst|servo_pwm_width[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|Selector10~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|servo_pwm_width\(4));

-- Location: LCCOMB_X1_Y28_N4
\Ascensor_inst|LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~3_combout\ = (\Ascensor_inst|servo_pwm_width\(4) & (!\Ascensor_inst|pwm_counter\(4) & (!\Ascensor_inst|servo_pwm_width\(13) & !\Ascensor_inst|pwm_counter\(3)))) # (!\Ascensor_inst|servo_pwm_width\(4) & 
-- (((!\Ascensor_inst|servo_pwm_width\(13) & !\Ascensor_inst|pwm_counter\(3))) # (!\Ascensor_inst|pwm_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|servo_pwm_width\(4),
	datab => \Ascensor_inst|pwm_counter\(4),
	datac => \Ascensor_inst|servo_pwm_width\(13),
	datad => \Ascensor_inst|pwm_counter\(3),
	combout => \Ascensor_inst|LessThan13~3_combout\);

-- Location: LCCOMB_X1_Y25_N22
\Ascensor_inst|LessThan13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~4_combout\ = (\Ascensor_inst|LessThan13~3_combout\ & ((!\Ascensor_inst|pwm_counter\(5)) # (!\Ascensor_inst|servo_pwm_width\(10)))) # (!\Ascensor_inst|LessThan13~3_combout\ & (!\Ascensor_inst|servo_pwm_width\(10) & 
-- !\Ascensor_inst|pwm_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan13~3_combout\,
	datac => \Ascensor_inst|servo_pwm_width\(10),
	datad => \Ascensor_inst|pwm_counter\(5),
	combout => \Ascensor_inst|LessThan13~4_combout\);

-- Location: LCCOMB_X1_Y25_N0
\Ascensor_inst|LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~5_combout\ = (\Ascensor_inst|LessThan13~4_combout\ & ((!\Ascensor_inst|pwm_counter\(6)) # (!\Ascensor_inst|servo_pwm_width\(4)))) # (!\Ascensor_inst|LessThan13~4_combout\ & (!\Ascensor_inst|servo_pwm_width\(4) & 
-- !\Ascensor_inst|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|LessThan13~4_combout\,
	datab => \Ascensor_inst|servo_pwm_width\(4),
	datad => \Ascensor_inst|pwm_counter\(6),
	combout => \Ascensor_inst|LessThan13~5_combout\);

-- Location: LCCOMB_X1_Y25_N8
\Ascensor_inst|LessThan13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~6_combout\ = (\Ascensor_inst|pwm_counter\(7) & (!\Ascensor_inst|servo_pwm_width\(10) & \Ascensor_inst|LessThan13~5_combout\)) # (!\Ascensor_inst|pwm_counter\(7) & ((\Ascensor_inst|LessThan13~5_combout\) # 
-- (!\Ascensor_inst|servo_pwm_width\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(7),
	datab => \Ascensor_inst|servo_pwm_width\(10),
	datad => \Ascensor_inst|LessThan13~5_combout\,
	combout => \Ascensor_inst|LessThan13~6_combout\);

-- Location: LCCOMB_X1_Y25_N28
\Ascensor_inst|LessThan13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~7_combout\ = (\Ascensor_inst|servo_pwm_width\(14) & ((\Ascensor_inst|LessThan13~6_combout\) # (!\Ascensor_inst|pwm_counter\(8)))) # (!\Ascensor_inst|servo_pwm_width\(14) & (\Ascensor_inst|LessThan13~6_combout\ & 
-- !\Ascensor_inst|pwm_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|servo_pwm_width\(14),
	datac => \Ascensor_inst|LessThan13~6_combout\,
	datad => \Ascensor_inst|pwm_counter\(8),
	combout => \Ascensor_inst|LessThan13~7_combout\);

-- Location: LCCOMB_X1_Y25_N10
\Ascensor_inst|LessThan13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~8_combout\ = (\Ascensor_inst|pwm_counter\(9) & (\Ascensor_inst|servo_pwm_width\(15) & \Ascensor_inst|LessThan13~7_combout\)) # (!\Ascensor_inst|pwm_counter\(9) & ((\Ascensor_inst|servo_pwm_width\(15)) # 
-- (\Ascensor_inst|LessThan13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(9),
	datab => \Ascensor_inst|servo_pwm_width\(15),
	datad => \Ascensor_inst|LessThan13~7_combout\,
	combout => \Ascensor_inst|LessThan13~8_combout\);

-- Location: LCCOMB_X1_Y25_N2
\Ascensor_inst|LessThan13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~9_combout\ = (\Ascensor_inst|LessThan13~2_combout\ & ((\Ascensor_inst|pwm_counter\(10) & (!\Ascensor_inst|servo_pwm_width\(10) & \Ascensor_inst|LessThan13~8_combout\)) # (!\Ascensor_inst|pwm_counter\(10) & 
-- ((\Ascensor_inst|LessThan13~8_combout\) # (!\Ascensor_inst|servo_pwm_width\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(10),
	datab => \Ascensor_inst|LessThan13~2_combout\,
	datac => \Ascensor_inst|servo_pwm_width\(10),
	datad => \Ascensor_inst|LessThan13~8_combout\,
	combout => \Ascensor_inst|LessThan13~9_combout\);

-- Location: LCCOMB_X1_Y25_N24
\Ascensor_inst|LessThan13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~10_combout\ = (\Ascensor_inst|pwm_counter\(14) & (\Ascensor_inst|servo_pwm_width\(14) & ((\Ascensor_inst|LessThan13~1_combout\) # (\Ascensor_inst|LessThan13~9_combout\)))) # (!\Ascensor_inst|pwm_counter\(14) & 
-- ((\Ascensor_inst|servo_pwm_width\(14)) # ((\Ascensor_inst|LessThan13~1_combout\) # (\Ascensor_inst|LessThan13~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(14),
	datab => \Ascensor_inst|servo_pwm_width\(14),
	datac => \Ascensor_inst|LessThan13~1_combout\,
	datad => \Ascensor_inst|LessThan13~9_combout\,
	combout => \Ascensor_inst|LessThan13~10_combout\);

-- Location: LCCOMB_X1_Y25_N26
\Ascensor_inst|LessThan13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~11_combout\ = (\Ascensor_inst|LessThan13~10_combout\ & ((\Ascensor_inst|servo_pwm_width\(15)) # (!\Ascensor_inst|pwm_counter\(15)))) # (!\Ascensor_inst|LessThan13~10_combout\ & (\Ascensor_inst|servo_pwm_width\(15) & 
-- !\Ascensor_inst|pwm_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ascensor_inst|LessThan13~10_combout\,
	datac => \Ascensor_inst|servo_pwm_width\(15),
	datad => \Ascensor_inst|pwm_counter\(15),
	combout => \Ascensor_inst|LessThan13~11_combout\);

-- Location: LCCOMB_X1_Y27_N26
\Ascensor_inst|LessThan13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|LessThan13~12_combout\ = (\Ascensor_inst|LessThan13~0_combout\ & ((\Ascensor_inst|pwm_counter\(16) & (\Ascensor_inst|LessThan13~11_combout\ & !\Ascensor_inst|servo_pwm_width\(10))) # (!\Ascensor_inst|pwm_counter\(16) & 
-- ((\Ascensor_inst|LessThan13~11_combout\) # (!\Ascensor_inst|servo_pwm_width\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|pwm_counter\(16),
	datab => \Ascensor_inst|LessThan13~0_combout\,
	datac => \Ascensor_inst|LessThan13~11_combout\,
	datad => \Ascensor_inst|servo_pwm_width\(10),
	combout => \Ascensor_inst|LessThan13~12_combout\);

-- Location: LCCOMB_X2_Y25_N2
\Ascensor_inst|door_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|door_state~0_combout\ = (\Ascensor_inst|LessThan10~8_combout\ & (!\Ascensor_inst|main_state.DOOR_CLOSING~q\ & ((\Ascensor_inst|main_state.DOOR_OPENING~q\) # (\Ascensor_inst|door_state~q\)))) # (!\Ascensor_inst|LessThan10~8_combout\ & 
-- (((\Ascensor_inst|door_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|main_state.DOOR_OPENING~q\,
	datab => \Ascensor_inst|LessThan10~8_combout\,
	datac => \Ascensor_inst|door_state~q\,
	datad => \Ascensor_inst|main_state.DOOR_CLOSING~q\,
	combout => \Ascensor_inst|door_state~0_combout\);

-- Location: FF_X2_Y25_N3
\Ascensor_inst|door_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Ascensor_inst|door_state~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ascensor_inst|door_state~q\);

-- Location: LCCOMB_X4_Y26_N14
\Display_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Display_inst|Mux6~0_combout\ = \Ascensor_inst|current_floor[1]~6_combout\ $ (\Ascensor_inst|current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Display_inst|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y26_N12
\Ascensor_inst|Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ascensor_inst|Equal3~5_combout\ = (!\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Ascensor_inst|Equal3~5_combout\);

-- Location: LCCOMB_X12_Y25_N24
\Display_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Display_inst|Mux3~0_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[1]~6_combout\ & \Ascensor_inst|current_floor[0]~10_combout\)) # (!\Ascensor_inst|current_floor[2]~2_combout\ & 
-- (\Ascensor_inst|current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[2]~2_combout\,
	datab => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	combout => \Display_inst|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y26_N10
\Display_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Display_inst|Mux2~0_combout\ = (\Ascensor_inst|current_floor[2]~2_combout\ & (!\Ascensor_inst|current_floor[1]~6_combout\)) # (!\Ascensor_inst|current_floor[2]~2_combout\ & ((\Ascensor_inst|current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Display_inst|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y26_N0
\Display_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Display_inst|Mux1~0_combout\ = \Ascensor_inst|current_floor[2]~2_combout\ $ (((!\Ascensor_inst|current_floor[1]~6_combout\ & !\Ascensor_inst|current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ascensor_inst|current_floor[1]~6_combout\,
	datac => \Ascensor_inst|current_floor[0]~10_combout\,
	datad => \Ascensor_inst|current_floor[2]~2_combout\,
	combout => \Display_inst|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y27_N20
\Contador_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux6~0_combout\ = (\Contador_inst|contador\(1) & (\Contador_inst|contador\(3) & (\Contador_inst|contador\(0) $ (\Contador_inst|contador\(2))))) # (!\Contador_inst|contador\(1) & (!\Contador_inst|contador\(3) & (\Contador_inst|contador\(0) $ 
-- (\Contador_inst|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\Contador_inst|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux5~0_combout\ = (\Contador_inst|contador\(2) & ((\Contador_inst|contador\(1) & (\Contador_inst|contador\(0) $ (!\Contador_inst|contador\(3)))) # (!\Contador_inst|contador\(1) & (\Contador_inst|contador\(0) & 
-- !\Contador_inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(0),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y28_N10
\Contador_inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux4~0_combout\ = (!\Contador_inst|contador\(0) & ((\Contador_inst|contador\(1) & (!\Contador_inst|contador\(2) & !\Contador_inst|contador\(3))) # (!\Contador_inst|contador\(1) & (\Contador_inst|contador\(2) & 
-- \Contador_inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(0),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y27_N8
\Contador_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux3~0_combout\ = (\Contador_inst|contador\(1) & ((\Contador_inst|contador\(0) & (\Contador_inst|contador\(2) $ (\Contador_inst|contador\(3)))) # (!\Contador_inst|contador\(0) & (\Contador_inst|contador\(2) & \Contador_inst|contador\(3))))) 
-- # (!\Contador_inst|contador\(1) & (!\Contador_inst|contador\(3) & (\Contador_inst|contador\(0) $ (\Contador_inst|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(0),
	datac => \Contador_inst|contador\(2),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y25_N6
\Contador_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux2~0_combout\ = (\Contador_inst|contador\(0)) # ((\Contador_inst|contador\(2) & (\Contador_inst|contador\(1) $ (!\Contador_inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(3),
	datad => \Contador_inst|contador\(0),
	combout => \Contador_inst|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\Contador_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux1~0_combout\ = (\Contador_inst|contador\(1) & ((\Contador_inst|contador\(2) & (\Contador_inst|contador\(0) & !\Contador_inst|contador\(3))) # (!\Contador_inst|contador\(2) & ((\Contador_inst|contador\(0)) # 
-- (!\Contador_inst|contador\(3)))))) # (!\Contador_inst|contador\(1) & ((\Contador_inst|contador\(2) & ((\Contador_inst|contador\(3)))) # (!\Contador_inst|contador\(2) & (\Contador_inst|contador\(0) & !\Contador_inst|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(0),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y28_N14
\Contador_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|Mux0~0_combout\ = (\Contador_inst|contador\(2) & (((\Contador_inst|contador\(3)) # (!\Contador_inst|contador\(0))) # (!\Contador_inst|contador\(1)))) # (!\Contador_inst|contador\(2) & (\Contador_inst|contador\(1) $ 
-- (((\Contador_inst|contador\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(0),
	datad => \Contador_inst|contador\(3),
	combout => \Contador_inst|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y25_N24
\Contador_inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_inst|LessThan2~0_combout\ = (\Contador_inst|contador\(3) & ((\Contador_inst|contador\(1)) # (\Contador_inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_inst|contador\(1),
	datab => \Contador_inst|contador\(2),
	datac => \Contador_inst|contador\(3),
	combout => \Contador_inst|LessThan2~0_combout\);

ww_motor_in1 <= \motor_in1~output_o\;

ww_motor_in2 <= \motor_in2~output_o\;

ww_motor_ena <= \motor_ena~output_o\;

ww_servo1_pwm <= \servo1_pwm~output_o\;

ww_servo2_pwm <= \servo2_pwm~output_o\;

ww_led_piso1 <= \led_piso1~output_o\;

ww_led_piso2 <= \led_piso2~output_o\;

ww_led_piso3 <= \led_piso3~output_o\;

ww_led_piso4 <= \led_piso4~output_o\;

ww_led_piso5 <= \led_piso5~output_o\;

ww_door_open <= \door_open~output_o\;

ww_moving <= \moving~output_o\;

ww_display_7seg(0) <= \display_7seg[0]~output_o\;

ww_display_7seg(1) <= \display_7seg[1]~output_o\;

ww_display_7seg(2) <= \display_7seg[2]~output_o\;

ww_display_7seg(3) <= \display_7seg[3]~output_o\;

ww_display_7seg(4) <= \display_7seg[4]~output_o\;

ww_display_7seg(5) <= \display_7seg[5]~output_o\;

ww_display_7seg(6) <= \display_7seg[6]~output_o\;

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


