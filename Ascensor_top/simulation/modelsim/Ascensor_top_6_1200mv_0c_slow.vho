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

-- DATE "06/06/2025 15:30:35"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	Ascensor_top IS
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
	total_trips : BUFFER std_logic_vector(7 DOWNTO 0);
	most_used_floor : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END Ascensor_top;

-- Design Ports Information
-- motor_in1	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_in2	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_ena	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo1_pwm	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo2_pwm	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso1	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso2	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso3	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso4	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_piso5	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- door_open	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moving	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[4]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_trips[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- most_used_floor[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- most_used_floor[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- most_used_floor[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso1	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso2_up	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso2_dn	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso3_up	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso3_dn	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso4_up	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso4_dn	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_piso5	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ascensor_top IS
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
SIGNAL ww_total_trips : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_most_used_floor : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \total_trips[0]~output_o\ : std_logic;
SIGNAL \total_trips[1]~output_o\ : std_logic;
SIGNAL \total_trips[2]~output_o\ : std_logic;
SIGNAL \total_trips[3]~output_o\ : std_logic;
SIGNAL \total_trips[4]~output_o\ : std_logic;
SIGNAL \total_trips[5]~output_o\ : std_logic;
SIGNAL \total_trips[6]~output_o\ : std_logic;
SIGNAL \total_trips[7]~output_o\ : std_logic;
SIGNAL \most_used_floor[0]~output_o\ : std_logic;
SIGNAL \most_used_floor[1]~output_o\ : std_logic;
SIGNAL \most_used_floor[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_counter[0]~28_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \wait_counter[0]~27_combout\ : std_logic;
SIGNAL \mem_data_in[0]~1_combout\ : std_logic;
SIGNAL \mem_data_in[2]~0_combout\ : std_logic;
SIGNAL \mem_write_en~q\ : std_logic;
SIGNAL \mem_addr[1]~feeder_combout\ : std_logic;
SIGNAL \system_memory[0][2]~0_combout\ : std_logic;
SIGNAL \system_memory[0][0]~q\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \current_floor[0]~9_combout\ : std_logic;
SIGNAL \current_floor[0]~11_combout\ : std_logic;
SIGNAL \current_floor[0]~_emulated_q\ : std_logic;
SIGNAL \current_floor[0]~10_combout\ : std_logic;
SIGNAL \mem_data_in[1]~feeder_combout\ : std_logic;
SIGNAL \system_memory[0][1]~q\ : std_logic;
SIGNAL \current_floor[1]~5_combout\ : std_logic;
SIGNAL \current_floor[1]~7_combout\ : std_logic;
SIGNAL \current_floor[1]~_emulated_q\ : std_logic;
SIGNAL \current_floor[1]~6_combout\ : std_logic;
SIGNAL \Add17~3_combout\ : std_logic;
SIGNAL \mem_data_in[2]~feeder_combout\ : std_logic;
SIGNAL \system_memory[0][2]~q\ : std_logic;
SIGNAL \Add33~0_combout\ : std_logic;
SIGNAL \current_floor[2]~1_combout\ : std_logic;
SIGNAL \Add31~0_combout\ : std_logic;
SIGNAL \current_floor[2]~3_combout\ : std_logic;
SIGNAL \current_floor[2]~_emulated_q\ : std_logic;
SIGNAL \current_floor[2]~2_combout\ : std_logic;
SIGNAL \Add34~0_combout\ : std_logic;
SIGNAL \Add34~65_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \btn_piso1~input_o\ : std_logic;
SIGNAL \btn_sync[8][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[8][0]~q\ : std_logic;
SIGNAL \btn_sync[8][1]~q\ : std_logic;
SIGNAL \btn_edges~0_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][0]~109_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][0]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][1]~95_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][1]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][1]~96\ : std_logic;
SIGNAL \floor_usage_counters[5][2]~97_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][2]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][2]~98\ : std_logic;
SIGNAL \floor_usage_counters[5][3]~99_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][3]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][3]~100\ : std_logic;
SIGNAL \floor_usage_counters[5][4]~101_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][4]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][4]~102\ : std_logic;
SIGNAL \floor_usage_counters[5][5]~103_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][5]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][5]~104\ : std_logic;
SIGNAL \floor_usage_counters[5][6]~105_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][6]~q\ : std_logic;
SIGNAL \floor_usage_counters[5][6]~106\ : std_logic;
SIGNAL \floor_usage_counters[5][7]~107_combout\ : std_logic;
SIGNAL \floor_usage_counters[5][7]~q\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add27~0_combout\ : std_logic;
SIGNAL \Add27~1_combout\ : std_logic;
SIGNAL \Add26~0_combout\ : std_logic;
SIGNAL \Add28~1\ : std_logic;
SIGNAL \Add28~3\ : std_logic;
SIGNAL \Add28~5\ : std_logic;
SIGNAL \Add28~7\ : std_logic;
SIGNAL \Add28~9\ : std_logic;
SIGNAL \Add28~11\ : std_logic;
SIGNAL \Add28~12_combout\ : std_logic;
SIGNAL \Add28~10_combout\ : std_logic;
SIGNAL \Add28~8_combout\ : std_logic;
SIGNAL \Add28~6_combout\ : std_logic;
SIGNAL \Add28~4_combout\ : std_logic;
SIGNAL \Add28~2_combout\ : std_logic;
SIGNAL \Add28~0_combout\ : std_logic;
SIGNAL \Add29~1\ : std_logic;
SIGNAL \Add29~3\ : std_logic;
SIGNAL \Add29~5\ : std_logic;
SIGNAL \Add29~7\ : std_logic;
SIGNAL \Add29~9\ : std_logic;
SIGNAL \Add29~11\ : std_logic;
SIGNAL \Add29~12_combout\ : std_logic;
SIGNAL \btn_piso2_up~input_o\ : std_logic;
SIGNAL \btn_sync[7][0]~q\ : std_logic;
SIGNAL \btn_sync[7][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[7][1]~q\ : std_logic;
SIGNAL \btn_edges~1_combout\ : std_logic;
SIGNAL \btn_piso2_dn~input_o\ : std_logic;
SIGNAL \btn_sync[6][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[6][0]~q\ : std_logic;
SIGNAL \btn_sync[6][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[6][1]~q\ : std_logic;
SIGNAL \btn_edges~2_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][0]~94_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][0]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][1]~35_combout\ : std_logic;
SIGNAL \elevator_control~0_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][1]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][1]~36\ : std_logic;
SIGNAL \floor_usage_counters[4][2]~37_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][2]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][2]~38\ : std_logic;
SIGNAL \floor_usage_counters[4][3]~39_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][3]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][3]~40\ : std_logic;
SIGNAL \floor_usage_counters[4][4]~41_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][4]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][4]~42\ : std_logic;
SIGNAL \floor_usage_counters[4][5]~43_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][5]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][5]~44\ : std_logic;
SIGNAL \floor_usage_counters[4][6]~45_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][6]~q\ : std_logic;
SIGNAL \floor_usage_counters[4][6]~46\ : std_logic;
SIGNAL \floor_usage_counters[4][7]~47_combout\ : std_logic;
SIGNAL \floor_usage_counters[4][7]~q\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \Add23~1\ : std_logic;
SIGNAL \Add23~3\ : std_logic;
SIGNAL \Add23~5\ : std_logic;
SIGNAL \Add23~7\ : std_logic;
SIGNAL \Add23~9\ : std_logic;
SIGNAL \Add23~11\ : std_logic;
SIGNAL \Add23~12_combout\ : std_logic;
SIGNAL \Add23~10_combout\ : std_logic;
SIGNAL \Add23~8_combout\ : std_logic;
SIGNAL \Add23~6_combout\ : std_logic;
SIGNAL \Add23~4_combout\ : std_logic;
SIGNAL \Add23~2_combout\ : std_logic;
SIGNAL \Add23~0_combout\ : std_logic;
SIGNAL \Add24~1\ : std_logic;
SIGNAL \Add24~3\ : std_logic;
SIGNAL \Add24~5\ : std_logic;
SIGNAL \Add24~7\ : std_logic;
SIGNAL \Add24~9\ : std_logic;
SIGNAL \Add24~11\ : std_logic;
SIGNAL \Add24~12_combout\ : std_logic;
SIGNAL \btn_piso4_dn~input_o\ : std_logic;
SIGNAL \btn_sync[2][0]~q\ : std_logic;
SIGNAL \btn_sync[2][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[2][1]~q\ : std_logic;
SIGNAL \btn_edges~6_combout\ : std_logic;
SIGNAL \btn_piso4_up~input_o\ : std_logic;
SIGNAL \btn_sync[3][0]~q\ : std_logic;
SIGNAL \btn_sync[3][1]~q\ : std_logic;
SIGNAL \btn_edges~5_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][0]~92_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][0]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][1]~63_combout\ : std_logic;
SIGNAL \elevator_control~2_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][1]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][1]~64\ : std_logic;
SIGNAL \floor_usage_counters[2][2]~65_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][2]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][2]~66\ : std_logic;
SIGNAL \floor_usage_counters[2][3]~67_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][3]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][3]~68\ : std_logic;
SIGNAL \floor_usage_counters[2][4]~69_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][4]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][4]~70\ : std_logic;
SIGNAL \floor_usage_counters[2][5]~71_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][5]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][5]~72\ : std_logic;
SIGNAL \floor_usage_counters[2][6]~73_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][6]~q\ : std_logic;
SIGNAL \floor_usage_counters[2][6]~74\ : std_logic;
SIGNAL \floor_usage_counters[2][7]~75_combout\ : std_logic;
SIGNAL \floor_usage_counters[2][7]~q\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~1_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \btn_piso5~input_o\ : std_logic;
SIGNAL \btn_sync[1][0]~q\ : std_logic;
SIGNAL \btn_sync[1][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[1][1]~q\ : std_logic;
SIGNAL \btn_edges~7_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][0]~91_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][0]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][1]~77_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][1]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][1]~78\ : std_logic;
SIGNAL \floor_usage_counters[1][2]~79_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][2]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][2]~80\ : std_logic;
SIGNAL \floor_usage_counters[1][3]~81_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][3]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][3]~82\ : std_logic;
SIGNAL \floor_usage_counters[1][4]~83_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][4]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][4]~84\ : std_logic;
SIGNAL \floor_usage_counters[1][5]~85_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][5]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][5]~86\ : std_logic;
SIGNAL \floor_usage_counters[1][6]~87_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][6]~q\ : std_logic;
SIGNAL \floor_usage_counters[1][6]~88\ : std_logic;
SIGNAL \floor_usage_counters[1][7]~89_combout\ : std_logic;
SIGNAL \floor_usage_counters[1][7]~q\ : std_logic;
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \best_score~0_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \best_score~1_combout\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \best_score~2_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \best_score~3_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \best_score~4_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \best_score~5_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \best_score~6_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \best_score~7_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \best_score~8_combout\ : std_logic;
SIGNAL \btn_piso3_dn~input_o\ : std_logic;
SIGNAL \btn_sync[4][0]~q\ : std_logic;
SIGNAL \btn_sync[4][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[4][1]~q\ : std_logic;
SIGNAL \btn_edges~4_combout\ : std_logic;
SIGNAL \btn_piso3_up~input_o\ : std_logic;
SIGNAL \btn_sync[5][0]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[5][0]~q\ : std_logic;
SIGNAL \btn_sync[5][1]~feeder_combout\ : std_logic;
SIGNAL \btn_sync[5][1]~q\ : std_logic;
SIGNAL \btn_edges~3_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][0]~93_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][0]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][1]~49_combout\ : std_logic;
SIGNAL \elevator_control~1_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][1]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][1]~50\ : std_logic;
SIGNAL \floor_usage_counters[3][2]~51_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][2]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][2]~52\ : std_logic;
SIGNAL \floor_usage_counters[3][3]~53_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][3]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][3]~54\ : std_logic;
SIGNAL \floor_usage_counters[3][4]~55_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][4]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][4]~56\ : std_logic;
SIGNAL \floor_usage_counters[3][5]~57_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][5]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][5]~58\ : std_logic;
SIGNAL \floor_usage_counters[3][6]~59_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][6]~q\ : std_logic;
SIGNAL \floor_usage_counters[3][6]~60\ : std_logic;
SIGNAL \floor_usage_counters[3][7]~61_combout\ : std_logic;
SIGNAL \floor_usage_counters[3][7]~q\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add17~1_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \best_score~9_combout\ : std_logic;
SIGNAL \best_score~10_combout\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \best_score~11_combout\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \best_score~12_combout\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \best_score~13_combout\ : std_logic;
SIGNAL \best_score~14_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \best_score~15_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \best_score~16_combout\ : std_logic;
SIGNAL \Add24~10_combout\ : std_logic;
SIGNAL \best_score~17_combout\ : std_logic;
SIGNAL \Add24~8_combout\ : std_logic;
SIGNAL \best_score~18_combout\ : std_logic;
SIGNAL \Add24~6_combout\ : std_logic;
SIGNAL \best_score~19_combout\ : std_logic;
SIGNAL \Add24~4_combout\ : std_logic;
SIGNAL \best_score~20_combout\ : std_logic;
SIGNAL \best_score~21_combout\ : std_logic;
SIGNAL \Add24~2_combout\ : std_logic;
SIGNAL \best_score~22_combout\ : std_logic;
SIGNAL \Add24~0_combout\ : std_logic;
SIGNAL \best_score~23_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \best_score~24_combout\ : std_logic;
SIGNAL \best_score~25_combout\ : std_logic;
SIGNAL \Add29~10_combout\ : std_logic;
SIGNAL \best_score~26_combout\ : std_logic;
SIGNAL \Add29~8_combout\ : std_logic;
SIGNAL \Add29~6_combout\ : std_logic;
SIGNAL \best_score~27_combout\ : std_logic;
SIGNAL \Add29~4_combout\ : std_logic;
SIGNAL \best_score~28_combout\ : std_logic;
SIGNAL \best_score~29_combout\ : std_logic;
SIGNAL \Add29~2_combout\ : std_logic;
SIGNAL \Add29~0_combout\ : std_logic;
SIGNAL \best_score~30_combout\ : std_logic;
SIGNAL \best_score~31_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \next_target~1_combout\ : std_logic;
SIGNAL \best_score~32_combout\ : std_logic;
SIGNAL \next_target~4_combout\ : std_logic;
SIGNAL \next_target~5_combout\ : std_logic;
SIGNAL \target_floor[0]~3_combout\ : std_logic;
SIGNAL \floor_calls~2_combout\ : std_logic;
SIGNAL \floor_calls~3_combout\ : std_logic;
SIGNAL \floor_calls~5_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \floor_calls~4_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \door_counter[20]~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector22~6_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \main_state.DOOR_OPENING~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \next_target~2_combout\ : std_logic;
SIGNAL \next_target~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \door_counter[20]~3_combout\ : std_logic;
SIGNAL \door_counter[20]~4_combout\ : std_logic;
SIGNAL \door_counter[20]~5_combout\ : std_logic;
SIGNAL \door_counter[20]~6_combout\ : std_logic;
SIGNAL \Add34~1\ : std_logic;
SIGNAL \Add34~2_combout\ : std_logic;
SIGNAL \Add34~64_combout\ : std_logic;
SIGNAL \Add34~3\ : std_logic;
SIGNAL \Add34~4_combout\ : std_logic;
SIGNAL \Add34~63_combout\ : std_logic;
SIGNAL \Add34~5\ : std_logic;
SIGNAL \Add34~6_combout\ : std_logic;
SIGNAL \Add34~62_combout\ : std_logic;
SIGNAL \Add34~7\ : std_logic;
SIGNAL \Add34~8_combout\ : std_logic;
SIGNAL \Add34~61_combout\ : std_logic;
SIGNAL \Add34~9\ : std_logic;
SIGNAL \Add34~10_combout\ : std_logic;
SIGNAL \Add34~60_combout\ : std_logic;
SIGNAL \Add34~11\ : std_logic;
SIGNAL \Add34~12_combout\ : std_logic;
SIGNAL \Add34~59_combout\ : std_logic;
SIGNAL \Add34~13\ : std_logic;
SIGNAL \Add34~14_combout\ : std_logic;
SIGNAL \Add34~66_combout\ : std_logic;
SIGNAL \Add34~15\ : std_logic;
SIGNAL \Add34~16_combout\ : std_logic;
SIGNAL \Add34~70_combout\ : std_logic;
SIGNAL \Add34~17\ : std_logic;
SIGNAL \Add34~18_combout\ : std_logic;
SIGNAL \Add34~69_combout\ : std_logic;
SIGNAL \Add34~19\ : std_logic;
SIGNAL \Add34~20_combout\ : std_logic;
SIGNAL \Add34~68_combout\ : std_logic;
SIGNAL \Add34~21\ : std_logic;
SIGNAL \Add34~22_combout\ : std_logic;
SIGNAL \Add34~67_combout\ : std_logic;
SIGNAL \Add34~23\ : std_logic;
SIGNAL \Add34~24_combout\ : std_logic;
SIGNAL \Add34~58_combout\ : std_logic;
SIGNAL \Add34~25\ : std_logic;
SIGNAL \Add34~26_combout\ : std_logic;
SIGNAL \Add34~57_combout\ : std_logic;
SIGNAL \Add34~27\ : std_logic;
SIGNAL \Add34~28_combout\ : std_logic;
SIGNAL \Add34~56_combout\ : std_logic;
SIGNAL \Add34~29\ : std_logic;
SIGNAL \Add34~30_combout\ : std_logic;
SIGNAL \Add34~55_combout\ : std_logic;
SIGNAL \Add34~31\ : std_logic;
SIGNAL \Add34~32_combout\ : std_logic;
SIGNAL \Add34~54_combout\ : std_logic;
SIGNAL \Add34~33\ : std_logic;
SIGNAL \Add34~34_combout\ : std_logic;
SIGNAL \Add34~53_combout\ : std_logic;
SIGNAL \Add34~35\ : std_logic;
SIGNAL \Add34~36_combout\ : std_logic;
SIGNAL \Add34~52_combout\ : std_logic;
SIGNAL \Add34~37\ : std_logic;
SIGNAL \Add34~38_combout\ : std_logic;
SIGNAL \Add34~71_combout\ : std_logic;
SIGNAL \Add34~39\ : std_logic;
SIGNAL \Add34~40_combout\ : std_logic;
SIGNAL \Add34~75_combout\ : std_logic;
SIGNAL \Add34~41\ : std_logic;
SIGNAL \Add34~42_combout\ : std_logic;
SIGNAL \Add34~74_combout\ : std_logic;
SIGNAL \Add34~43\ : std_logic;
SIGNAL \Add34~44_combout\ : std_logic;
SIGNAL \Add34~73_combout\ : std_logic;
SIGNAL \Add34~45\ : std_logic;
SIGNAL \Add34~46_combout\ : std_logic;
SIGNAL \Add34~72_combout\ : std_logic;
SIGNAL \LessThan10~6_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \LessThan10~5_combout\ : std_logic;
SIGNAL \LessThan10~7_combout\ : std_logic;
SIGNAL \LessThan10~8_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \main_state.DOOR_OPEN_WAIT~0_combout\ : std_logic;
SIGNAL \main_state.DOOR_OPEN_WAIT~q\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \LessThan11~4_combout\ : std_logic;
SIGNAL \LessThan11~5_combout\ : std_logic;
SIGNAL \LessThan11~6_combout\ : std_logic;
SIGNAL \LessThan11~7_combout\ : std_logic;
SIGNAL \wait_counter[22]~81_combout\ : std_logic;
SIGNAL \wait_counter[22]~82_combout\ : std_logic;
SIGNAL \wait_counter[0]~28\ : std_logic;
SIGNAL \wait_counter[1]~29_combout\ : std_logic;
SIGNAL \wait_counter[1]~30\ : std_logic;
SIGNAL \wait_counter[2]~31_combout\ : std_logic;
SIGNAL \wait_counter[2]~32\ : std_logic;
SIGNAL \wait_counter[3]~33_combout\ : std_logic;
SIGNAL \wait_counter[3]~34\ : std_logic;
SIGNAL \wait_counter[4]~35_combout\ : std_logic;
SIGNAL \wait_counter[4]~36\ : std_logic;
SIGNAL \wait_counter[5]~37_combout\ : std_logic;
SIGNAL \wait_counter[5]~38\ : std_logic;
SIGNAL \wait_counter[6]~39_combout\ : std_logic;
SIGNAL \wait_counter[6]~40\ : std_logic;
SIGNAL \wait_counter[7]~41_combout\ : std_logic;
SIGNAL \wait_counter[7]~42\ : std_logic;
SIGNAL \wait_counter[8]~43_combout\ : std_logic;
SIGNAL \wait_counter[8]~44\ : std_logic;
SIGNAL \wait_counter[9]~45_combout\ : std_logic;
SIGNAL \wait_counter[9]~46\ : std_logic;
SIGNAL \wait_counter[10]~47_combout\ : std_logic;
SIGNAL \wait_counter[10]~48\ : std_logic;
SIGNAL \wait_counter[11]~49_combout\ : std_logic;
SIGNAL \wait_counter[11]~50\ : std_logic;
SIGNAL \wait_counter[12]~51_combout\ : std_logic;
SIGNAL \wait_counter[12]~52\ : std_logic;
SIGNAL \wait_counter[13]~53_combout\ : std_logic;
SIGNAL \wait_counter[13]~54\ : std_logic;
SIGNAL \wait_counter[14]~55_combout\ : std_logic;
SIGNAL \wait_counter[14]~56\ : std_logic;
SIGNAL \wait_counter[15]~57_combout\ : std_logic;
SIGNAL \wait_counter[15]~58\ : std_logic;
SIGNAL \wait_counter[16]~59_combout\ : std_logic;
SIGNAL \wait_counter[16]~60\ : std_logic;
SIGNAL \wait_counter[17]~61_combout\ : std_logic;
SIGNAL \wait_counter[17]~62\ : std_logic;
SIGNAL \wait_counter[18]~63_combout\ : std_logic;
SIGNAL \wait_counter[18]~64\ : std_logic;
SIGNAL \wait_counter[19]~65_combout\ : std_logic;
SIGNAL \wait_counter[19]~66\ : std_logic;
SIGNAL \wait_counter[20]~67_combout\ : std_logic;
SIGNAL \wait_counter[20]~68\ : std_logic;
SIGNAL \wait_counter[21]~69_combout\ : std_logic;
SIGNAL \wait_counter[21]~70\ : std_logic;
SIGNAL \wait_counter[22]~71_combout\ : std_logic;
SIGNAL \wait_counter[22]~72\ : std_logic;
SIGNAL \wait_counter[23]~73_combout\ : std_logic;
SIGNAL \wait_counter[23]~74\ : std_logic;
SIGNAL \wait_counter[24]~75_combout\ : std_logic;
SIGNAL \wait_counter[24]~76\ : std_logic;
SIGNAL \wait_counter[25]~77_combout\ : std_logic;
SIGNAL \wait_counter[25]~78\ : std_logic;
SIGNAL \wait_counter[26]~79_combout\ : std_logic;
SIGNAL \Selector22~8_combout\ : std_logic;
SIGNAL \Selector22~9_combout\ : std_logic;
SIGNAL \main_state.DOOR_CLOSING~q\ : std_logic;
SIGNAL \door_counter[20]~9_combout\ : std_logic;
SIGNAL \Add34~47\ : std_logic;
SIGNAL \Add34~48_combout\ : std_logic;
SIGNAL \door_counter[24]~8_combout\ : std_logic;
SIGNAL \Add34~49\ : std_logic;
SIGNAL \Add34~50_combout\ : std_logic;
SIGNAL \door_counter[25]~7_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector17~7_combout\ : std_logic;
SIGNAL \main_state.IDLE~q\ : std_logic;
SIGNAL \timer_counter[4]~78_combout\ : std_logic;
SIGNAL \timer_counter[4]~79_combout\ : std_logic;
SIGNAL \timer_counter[4]~80_combout\ : std_logic;
SIGNAL \timer_counter[0]~29\ : std_logic;
SIGNAL \timer_counter[1]~30_combout\ : std_logic;
SIGNAL \timer_counter[1]~31\ : std_logic;
SIGNAL \timer_counter[2]~32_combout\ : std_logic;
SIGNAL \timer_counter[2]~33\ : std_logic;
SIGNAL \timer_counter[3]~34_combout\ : std_logic;
SIGNAL \timer_counter[3]~35\ : std_logic;
SIGNAL \timer_counter[4]~36_combout\ : std_logic;
SIGNAL \timer_counter[4]~37\ : std_logic;
SIGNAL \timer_counter[5]~38_combout\ : std_logic;
SIGNAL \timer_counter[5]~39\ : std_logic;
SIGNAL \timer_counter[6]~40_combout\ : std_logic;
SIGNAL \timer_counter[6]~41\ : std_logic;
SIGNAL \timer_counter[7]~42_combout\ : std_logic;
SIGNAL \timer_counter[7]~43\ : std_logic;
SIGNAL \timer_counter[8]~44_combout\ : std_logic;
SIGNAL \timer_counter[8]~45\ : std_logic;
SIGNAL \timer_counter[9]~46_combout\ : std_logic;
SIGNAL \timer_counter[9]~47\ : std_logic;
SIGNAL \timer_counter[10]~48_combout\ : std_logic;
SIGNAL \timer_counter[10]~49\ : std_logic;
SIGNAL \timer_counter[11]~50_combout\ : std_logic;
SIGNAL \timer_counter[11]~51\ : std_logic;
SIGNAL \timer_counter[12]~52_combout\ : std_logic;
SIGNAL \timer_counter[12]~53\ : std_logic;
SIGNAL \timer_counter[13]~54_combout\ : std_logic;
SIGNAL \timer_counter[13]~55\ : std_logic;
SIGNAL \timer_counter[14]~56_combout\ : std_logic;
SIGNAL \timer_counter[14]~57\ : std_logic;
SIGNAL \timer_counter[15]~58_combout\ : std_logic;
SIGNAL \timer_counter[15]~59\ : std_logic;
SIGNAL \timer_counter[16]~60_combout\ : std_logic;
SIGNAL \timer_counter[16]~61\ : std_logic;
SIGNAL \timer_counter[17]~62_combout\ : std_logic;
SIGNAL \timer_counter[17]~63\ : std_logic;
SIGNAL \timer_counter[18]~64_combout\ : std_logic;
SIGNAL \timer_counter[18]~65\ : std_logic;
SIGNAL \timer_counter[19]~66_combout\ : std_logic;
SIGNAL \timer_counter[19]~67\ : std_logic;
SIGNAL \timer_counter[20]~68_combout\ : std_logic;
SIGNAL \timer_counter[20]~69\ : std_logic;
SIGNAL \timer_counter[21]~70_combout\ : std_logic;
SIGNAL \timer_counter[21]~71\ : std_logic;
SIGNAL \timer_counter[22]~72_combout\ : std_logic;
SIGNAL \timer_counter[22]~73\ : std_logic;
SIGNAL \timer_counter[23]~74_combout\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \timer_counter[23]~75\ : std_logic;
SIGNAL \timer_counter[24]~76_combout\ : std_logic;
SIGNAL \timer_counter[24]~77\ : std_logic;
SIGNAL \timer_counter[25]~81_combout\ : std_logic;
SIGNAL \timer_counter[25]~82\ : std_logic;
SIGNAL \timer_counter[26]~83_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \timer_counter[26]~84\ : std_logic;
SIGNAL \timer_counter[27]~85_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~9_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~7_combout\ : std_logic;
SIGNAL \Selector18~5_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \main_state.MOVING_DOWN~q\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \best_score~33_combout\ : std_logic;
SIGNAL \next_target~0_combout\ : std_logic;
SIGNAL \next_target~6_combout\ : std_logic;
SIGNAL \next_target~7_combout\ : std_logic;
SIGNAL \next_target~8_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \floor_calls~6_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \target_floor[0]~2_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \main_state.MOVING_UP~q\ : std_logic;
SIGNAL \pwm_counter[0]~20_combout\ : std_logic;
SIGNAL \pwm_counter[15]~51\ : std_logic;
SIGNAL \pwm_counter[16]~52_combout\ : std_logic;
SIGNAL \pwm_counter[16]~53\ : std_logic;
SIGNAL \pwm_counter[17]~54_combout\ : std_logic;
SIGNAL \pwm_counter[17]~55\ : std_logic;
SIGNAL \pwm_counter[18]~56_combout\ : std_logic;
SIGNAL \pwm_counter[18]~57\ : std_logic;
SIGNAL \pwm_counter[19]~58_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \LessThan16~4_combout\ : std_logic;
SIGNAL \LessThan16~2_combout\ : std_logic;
SIGNAL \LessThan16~3_combout\ : std_logic;
SIGNAL \LessThan16~5_combout\ : std_logic;
SIGNAL \LessThan16~6_combout\ : std_logic;
SIGNAL \pwm_counter[0]~21\ : std_logic;
SIGNAL \pwm_counter[1]~22_combout\ : std_logic;
SIGNAL \pwm_counter[1]~23\ : std_logic;
SIGNAL \pwm_counter[2]~24_combout\ : std_logic;
SIGNAL \pwm_counter[2]~25\ : std_logic;
SIGNAL \pwm_counter[3]~26_combout\ : std_logic;
SIGNAL \pwm_counter[3]~27\ : std_logic;
SIGNAL \pwm_counter[4]~28_combout\ : std_logic;
SIGNAL \pwm_counter[4]~29\ : std_logic;
SIGNAL \pwm_counter[5]~30_combout\ : std_logic;
SIGNAL \pwm_counter[5]~31\ : std_logic;
SIGNAL \pwm_counter[6]~32_combout\ : std_logic;
SIGNAL \pwm_counter[6]~33\ : std_logic;
SIGNAL \pwm_counter[7]~34_combout\ : std_logic;
SIGNAL \pwm_counter[7]~35\ : std_logic;
SIGNAL \pwm_counter[8]~36_combout\ : std_logic;
SIGNAL \pwm_counter[8]~37\ : std_logic;
SIGNAL \pwm_counter[9]~38_combout\ : std_logic;
SIGNAL \pwm_counter[9]~39\ : std_logic;
SIGNAL \pwm_counter[10]~40_combout\ : std_logic;
SIGNAL \pwm_counter[10]~41\ : std_logic;
SIGNAL \pwm_counter[11]~42_combout\ : std_logic;
SIGNAL \pwm_counter[11]~43\ : std_logic;
SIGNAL \pwm_counter[12]~44_combout\ : std_logic;
SIGNAL \pwm_counter[12]~45\ : std_logic;
SIGNAL \pwm_counter[13]~46_combout\ : std_logic;
SIGNAL \pwm_counter[13]~47\ : std_logic;
SIGNAL \pwm_counter[14]~48_combout\ : std_logic;
SIGNAL \pwm_counter[14]~49\ : std_logic;
SIGNAL \pwm_counter[15]~50_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \LessThan17~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \LessThan17~4_combout\ : std_logic;
SIGNAL \LessThan17~5_combout\ : std_logic;
SIGNAL \LessThan17~6_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \LessThan17~7_combout\ : std_logic;
SIGNAL \LessThan17~8_combout\ : std_logic;
SIGNAL \LessThan17~2_combout\ : std_logic;
SIGNAL \LessThan17~9_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \LessThan17~10_combout\ : std_logic;
SIGNAL \LessThan17~11_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan17~12_combout\ : std_logic;
SIGNAL \door_state~0_combout\ : std_logic;
SIGNAL \door_state~q\ : std_logic;
SIGNAL \trip_counter[0]~8_combout\ : std_logic;
SIGNAL \trip_counter[0]~9\ : std_logic;
SIGNAL \trip_counter[1]~10_combout\ : std_logic;
SIGNAL \trip_counter[1]~11\ : std_logic;
SIGNAL \trip_counter[2]~12_combout\ : std_logic;
SIGNAL \trip_counter[2]~13\ : std_logic;
SIGNAL \trip_counter[3]~14_combout\ : std_logic;
SIGNAL \trip_counter[3]~15\ : std_logic;
SIGNAL \trip_counter[4]~16_combout\ : std_logic;
SIGNAL \trip_counter[4]~17\ : std_logic;
SIGNAL \trip_counter[5]~18_combout\ : std_logic;
SIGNAL \trip_counter[5]~19\ : std_logic;
SIGNAL \trip_counter[6]~20_combout\ : std_logic;
SIGNAL \trip_counter[6]~21\ : std_logic;
SIGNAL \trip_counter[7]~22_combout\ : std_logic;
SIGNAL \most_popular_floor~2_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \LessThan14~1_cout\ : std_logic;
SIGNAL \LessThan14~3_cout\ : std_logic;
SIGNAL \LessThan14~5_cout\ : std_logic;
SIGNAL \LessThan14~7_cout\ : std_logic;
SIGNAL \LessThan14~9_cout\ : std_logic;
SIGNAL \LessThan14~11_cout\ : std_logic;
SIGNAL \LessThan14~13_cout\ : std_logic;
SIGNAL \LessThan14~14_combout\ : std_logic;
SIGNAL \LessThan13~1_cout\ : std_logic;
SIGNAL \LessThan13~3_cout\ : std_logic;
SIGNAL \LessThan13~5_cout\ : std_logic;
SIGNAL \LessThan13~7_cout\ : std_logic;
SIGNAL \LessThan13~9_cout\ : std_logic;
SIGNAL \LessThan13~11_cout\ : std_logic;
SIGNAL \LessThan13~13_cout\ : std_logic;
SIGNAL \LessThan13~14_combout\ : std_logic;
SIGNAL \LessThan12~1_cout\ : std_logic;
SIGNAL \LessThan12~3_cout\ : std_logic;
SIGNAL \LessThan12~5_cout\ : std_logic;
SIGNAL \LessThan12~7_cout\ : std_logic;
SIGNAL \LessThan12~9_cout\ : std_logic;
SIGNAL \LessThan12~11_cout\ : std_logic;
SIGNAL \LessThan12~13_cout\ : std_logic;
SIGNAL \LessThan12~14_combout\ : std_logic;
SIGNAL \most_popular_floor~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \LessThan15~1_cout\ : std_logic;
SIGNAL \LessThan15~3_cout\ : std_logic;
SIGNAL \LessThan15~5_cout\ : std_logic;
SIGNAL \LessThan15~7_cout\ : std_logic;
SIGNAL \LessThan15~9_cout\ : std_logic;
SIGNAL \LessThan15~11_cout\ : std_logic;
SIGNAL \LessThan15~13_cout\ : std_logic;
SIGNAL \LessThan15~14_combout\ : std_logic;
SIGNAL \most_popular_floor~0_combout\ : std_logic;
SIGNAL wait_counter : std_logic_vector(26 DOWNTO 0);
SIGNAL trip_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL timer_counter : std_logic_vector(27 DOWNTO 0);
SIGNAL target_floor : std_logic_vector(2 DOWNTO 0);
SIGNAL servo_pwm_width : std_logic_vector(19 DOWNTO 0);
SIGNAL pwm_counter : std_logic_vector(19 DOWNTO 0);
SIGNAL most_popular_floor : std_logic_vector(2 DOWNTO 0);
SIGNAL mem_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL floor_calls : std_logic_vector(5 DOWNTO 1);
SIGNAL door_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL btn_edges : std_logic_vector(8 DOWNTO 1);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_door_counter[20]~6_combout\ : std_logic;
SIGNAL \ALT_INV_main_state.DOOR_OPEN_WAIT~q\ : std_logic;
SIGNAL ALT_INV_most_popular_floor : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;

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
total_trips <= ww_total_trips;
most_used_floor <= ww_most_used_floor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_door_counter[20]~6_combout\ <= NOT \door_counter[20]~6_combout\;
\ALT_INV_main_state.DOOR_OPEN_WAIT~q\ <= NOT \main_state.DOOR_OPEN_WAIT~q\;
ALT_INV_most_popular_floor(0) <= NOT most_popular_floor(0);
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;

-- Location: IOOBUF_X13_Y24_N23
\motor_in1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_state.MOVING_UP~q\,
	devoe => ww_devoe,
	o => \motor_in1~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\motor_in2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_state.MOVING_DOWN~q\,
	devoe => ww_devoe,
	o => \motor_in2~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\motor_ena~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \motor_ena~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\servo1_pwm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan17~12_combout\,
	devoe => ww_devoe,
	o => \servo1_pwm~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\servo2_pwm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan17~12_combout\,
	devoe => ww_devoe,
	o => \servo2_pwm~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led_piso1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => \led_piso1~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\led_piso2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~1_combout\,
	devoe => ww_devoe,
	o => \led_piso2~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\led_piso3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~2_combout\,
	devoe => ww_devoe,
	o => \led_piso3~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\led_piso4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~3_combout\,
	devoe => ww_devoe,
	o => \led_piso4~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\led_piso5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~4_combout\,
	devoe => ww_devoe,
	o => \led_piso5~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\door_open~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \door_state~q\,
	devoe => ww_devoe,
	o => \door_open~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\moving~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \moving~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\total_trips[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(0),
	devoe => ww_devoe,
	o => \total_trips[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\total_trips[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(1),
	devoe => ww_devoe,
	o => \total_trips[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\total_trips[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(2),
	devoe => ww_devoe,
	o => \total_trips[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\total_trips[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(3),
	devoe => ww_devoe,
	o => \total_trips[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\total_trips[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(4),
	devoe => ww_devoe,
	o => \total_trips[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\total_trips[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(5),
	devoe => ww_devoe,
	o => \total_trips[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\total_trips[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(6),
	devoe => ww_devoe,
	o => \total_trips[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\total_trips[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => trip_counter(7),
	devoe => ww_devoe,
	o => \total_trips[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\most_used_floor[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_most_popular_floor(0),
	devoe => ww_devoe,
	o => \most_used_floor[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\most_used_floor[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => most_popular_floor(1),
	devoe => ww_devoe,
	o => \most_used_floor[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\most_used_floor[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => most_popular_floor(2),
	devoe => ww_devoe,
	o => \most_used_floor[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
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

-- Location: LCCOMB_X10_Y10_N4
\timer_counter[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[0]~28_combout\ = timer_counter(0) $ (VCC)
-- \timer_counter[0]~29\ = CARRY(timer_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(0),
	datad => VCC,
	combout => \timer_counter[0]~28_combout\,
	cout => \timer_counter[0]~29\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: LCCOMB_X16_Y8_N6
\wait_counter[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[0]~27_combout\ = wait_counter(0) $ (VCC)
-- \wait_counter[0]~28\ = CARRY(wait_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(0),
	datad => VCC,
	combout => \wait_counter[0]~27_combout\,
	cout => \wait_counter[0]~28\);

-- Location: LCCOMB_X17_Y9_N12
\mem_data_in[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in[0]~1_combout\ = !\current_floor[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_floor[0]~10_combout\,
	combout => \mem_data_in[0]~1_combout\);

-- Location: LCCOMB_X17_Y9_N14
\mem_data_in[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in[2]~0_combout\ = (!\reset~input_o\ & !\main_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \main_state.IDLE~q\,
	combout => \mem_data_in[2]~0_combout\);

-- Location: FF_X17_Y9_N13
\mem_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_data_in[0]~1_combout\,
	ena => \mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_data_in(0));

-- Location: FF_X17_Y9_N11
mem_write_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \target_floor[0]~2_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_en~q\);

-- Location: LCCOMB_X17_Y9_N0
\mem_addr[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_addr[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_addr[1]~feeder_combout\);

-- Location: FF_X17_Y9_N1
\mem_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_addr[1]~feeder_combout\,
	ena => \mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_addr(1));

-- Location: LCCOMB_X17_Y9_N10
\system_memory[0][2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \system_memory[0][2]~0_combout\ = (\mem_write_en~q\ & !mem_addr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_write_en~q\,
	datad => mem_addr(1),
	combout => \system_memory[0][2]~0_combout\);

-- Location: FF_X16_Y9_N13
\system_memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => mem_data_in(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_memory[0][0]~q\);

-- Location: LCCOMB_X14_Y10_N4
\WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\main_state.MOVING_DOWN~q\ & !\main_state.MOVING_UP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_state.MOVING_DOWN~q\,
	datad => \main_state.MOVING_UP~q\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X16_Y9_N2
\current_floor[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[0]~9_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((!\system_memory[0][0]~q\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\current_floor[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[0]~9_combout\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \system_memory[0][0]~q\,
	combout => \current_floor[0]~9_combout\);

-- Location: LCCOMB_X16_Y9_N28
\current_floor[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[0]~11_combout\ = \current_floor[0]~9_combout\ $ (\current_floor[0]~10_combout\ $ (((!\WideNor0~0_combout\ & !\LessThan7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \LessThan7~9_combout\,
	datac => \current_floor[0]~9_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \current_floor[0]~11_combout\);

-- Location: FF_X16_Y9_N1
\current_floor[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_floor[0]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_floor[0]~_emulated_q\);

-- Location: LCCOMB_X16_Y9_N0
\current_floor[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[0]~10_combout\ = (\reset~input_o\ & (!\system_memory[0][0]~q\)) # (!\reset~input_o\ & ((\current_floor[0]~_emulated_q\ $ (\current_floor[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_memory[0][0]~q\,
	datab => \reset~input_o\,
	datac => \current_floor[0]~_emulated_q\,
	datad => \current_floor[0]~9_combout\,
	combout => \current_floor[0]~10_combout\);

-- Location: LCCOMB_X17_Y9_N4
\mem_data_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in[1]~feeder_combout\ = \current_floor[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[1]~6_combout\,
	combout => \mem_data_in[1]~feeder_combout\);

-- Location: FF_X17_Y9_N5
\mem_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_data_in[1]~feeder_combout\,
	ena => \mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_data_in(1));

-- Location: FF_X17_Y11_N11
\system_memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => mem_data_in(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_memory[0][1]~q\);

-- Location: LCCOMB_X17_Y11_N18
\current_floor[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[1]~5_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\system_memory[0][1]~q\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\current_floor[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[1]~5_combout\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \system_memory[0][1]~q\,
	combout => \current_floor[1]~5_combout\);

-- Location: LCCOMB_X17_Y11_N14
\current_floor[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[1]~7_combout\ = \current_floor[1]~6_combout\ $ (\current_floor[0]~10_combout\ $ (\current_floor[1]~5_combout\ $ (\main_state.MOVING_DOWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~6_combout\,
	datab => \current_floor[0]~10_combout\,
	datac => \current_floor[1]~5_combout\,
	datad => \main_state.MOVING_DOWN~q\,
	combout => \current_floor[1]~7_combout\);

-- Location: FF_X17_Y11_N9
\current_floor[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_floor[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_floor[1]~_emulated_q\);

-- Location: LCCOMB_X17_Y11_N8
\current_floor[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[1]~6_combout\ = (\reset~input_o\ & (\system_memory[0][1]~q\)) # (!\reset~input_o\ & ((\current_floor[1]~_emulated_q\ $ (\current_floor[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_memory[0][1]~q\,
	datab => \reset~input_o\,
	datac => \current_floor[1]~_emulated_q\,
	datad => \current_floor[1]~5_combout\,
	combout => \current_floor[1]~6_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Add17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~3_combout\ = (\current_floor[0]~10_combout\ & \current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Add17~3_combout\);

-- Location: LCCOMB_X17_Y9_N26
\mem_data_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in[2]~feeder_combout\ = \current_floor[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_floor[2]~2_combout\,
	combout => \mem_data_in[2]~feeder_combout\);

-- Location: FF_X17_Y9_N27
\mem_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_data_in[2]~feeder_combout\,
	ena => \mem_data_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_data_in(2));

-- Location: FF_X17_Y11_N3
\system_memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => mem_data_in(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \system_memory[0][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_memory[0][2]~q\);

-- Location: LCCOMB_X17_Y11_N10
\Add33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add33~0_combout\ = \current_floor[2]~2_combout\ $ (((\current_floor[1]~6_combout\) # (\current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add33~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\current_floor[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[2]~1_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\system_memory[0][2]~q\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\current_floor[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~1_combout\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \system_memory[0][2]~q\,
	combout => \current_floor[2]~1_combout\);

-- Location: LCCOMB_X17_Y11_N2
\Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add31~0_combout\ = \current_floor[2]~2_combout\ $ (((\current_floor[1]~6_combout\ & \current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add31~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\current_floor[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[2]~3_combout\ = \current_floor[2]~1_combout\ $ (((\main_state.MOVING_DOWN~q\ & (!\Add33~0_combout\)) # (!\main_state.MOVING_DOWN~q\ & ((\Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~0_combout\,
	datab => \current_floor[2]~1_combout\,
	datac => \Add31~0_combout\,
	datad => \main_state.MOVING_DOWN~q\,
	combout => \current_floor[2]~3_combout\);

-- Location: FF_X17_Y11_N25
\current_floor[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_floor[2]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_floor[2]~_emulated_q\);

-- Location: LCCOMB_X17_Y11_N24
\current_floor[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_floor[2]~2_combout\ = (\reset~input_o\ & (\system_memory[0][2]~q\)) # (!\reset~input_o\ & ((\current_floor[2]~_emulated_q\ $ (\current_floor[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \system_memory[0][2]~q\,
	datac => \current_floor[2]~_emulated_q\,
	datad => \current_floor[2]~1_combout\,
	combout => \current_floor[2]~2_combout\);

-- Location: LCCOMB_X13_Y8_N6
\Add34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~0_combout\ = door_counter(0) $ (VCC)
-- \Add34~1\ = CARRY(door_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => door_counter(0),
	datad => VCC,
	combout => \Add34~0_combout\,
	cout => \Add34~1\);

-- Location: LCCOMB_X12_Y8_N6
\Add34~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~65_combout\ = (\Add34~0_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~0_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~65_combout\);

-- Location: LCCOMB_X17_Y9_N30
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\current_floor[0]~10_combout\ & (\current_floor[2]~2_combout\ & !\current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X13_Y9_N20
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\current_floor[2]~2_combout\ & (\current_floor[1]~6_combout\ & !\current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\main_state.MOVING_DOWN~q\ & (((\LessThan7~9_combout\) # (!\Equal3~1_combout\)) # (!\Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \LessThan7~9_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \Equal3~1_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\current_floor[1]~6_combout\ & (!\current_floor[2]~2_combout\ & !\current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~6_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X17_Y9_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\current_floor[0]~10_combout\ & (!\current_floor[2]~2_combout\ & !\current_floor[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X14_Y9_N16
\Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\WideOr2~combout\) # ((!\main_state.IDLE~q\ & ((!\floor_calls~4_combout\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \WideOr2~combout\,
	datac => \floor_calls~4_combout\,
	datad => \main_state.IDLE~q\,
	combout => \Selector16~2_combout\);

-- Location: IOIBUF_X13_Y24_N8
\btn_piso1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso1,
	o => \btn_piso1~input_o\);

-- Location: LCCOMB_X14_Y10_N26
\btn_sync[8][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[8][0]~feeder_combout\ = \btn_piso1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_piso1~input_o\,
	combout => \btn_sync[8][0]~feeder_combout\);

-- Location: FF_X14_Y10_N27
\btn_sync[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[8][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[8][0]~q\);

-- Location: FF_X11_Y10_N27
\btn_sync[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_sync[8][0]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[8][1]~q\);

-- Location: LCCOMB_X11_Y10_N30
\btn_edges~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~0_combout\ = (\btn_sync[8][0]~q\ & !\btn_sync[8][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_sync[8][0]~q\,
	datac => \btn_sync[8][1]~q\,
	combout => \btn_edges~0_combout\);

-- Location: FF_X11_Y10_N31
\btn_edges[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(8));

-- Location: LCCOMB_X11_Y10_N24
\floor_usage_counters[5][0]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][0]~109_combout\ = btn_edges(8) $ (\floor_usage_counters[5][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_edges(8),
	datac => \floor_usage_counters[5][0]~q\,
	combout => \floor_usage_counters[5][0]~109_combout\);

-- Location: FF_X11_Y10_N25
\floor_usage_counters[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][0]~109_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][0]~q\);

-- Location: LCCOMB_X12_Y10_N18
\floor_usage_counters[5][1]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][1]~95_combout\ = (\floor_usage_counters[5][1]~q\ & (\floor_usage_counters[5][0]~q\ $ (VCC))) # (!\floor_usage_counters[5][1]~q\ & (\floor_usage_counters[5][0]~q\ & VCC))
-- \floor_usage_counters[5][1]~96\ = CARRY((\floor_usage_counters[5][1]~q\ & \floor_usage_counters[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][1]~q\,
	datab => \floor_usage_counters[5][0]~q\,
	datad => VCC,
	combout => \floor_usage_counters[5][1]~95_combout\,
	cout => \floor_usage_counters[5][1]~96\);

-- Location: FF_X12_Y10_N19
\floor_usage_counters[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][1]~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][1]~q\);

-- Location: LCCOMB_X12_Y10_N20
\floor_usage_counters[5][2]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][2]~97_combout\ = (\floor_usage_counters[5][2]~q\ & (!\floor_usage_counters[5][1]~96\)) # (!\floor_usage_counters[5][2]~q\ & ((\floor_usage_counters[5][1]~96\) # (GND)))
-- \floor_usage_counters[5][2]~98\ = CARRY((!\floor_usage_counters[5][1]~96\) # (!\floor_usage_counters[5][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[5][2]~q\,
	datad => VCC,
	cin => \floor_usage_counters[5][1]~96\,
	combout => \floor_usage_counters[5][2]~97_combout\,
	cout => \floor_usage_counters[5][2]~98\);

-- Location: FF_X12_Y10_N21
\floor_usage_counters[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][2]~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][2]~q\);

-- Location: LCCOMB_X12_Y10_N22
\floor_usage_counters[5][3]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][3]~99_combout\ = (\floor_usage_counters[5][3]~q\ & (\floor_usage_counters[5][2]~98\ $ (GND))) # (!\floor_usage_counters[5][3]~q\ & (!\floor_usage_counters[5][2]~98\ & VCC))
-- \floor_usage_counters[5][3]~100\ = CARRY((\floor_usage_counters[5][3]~q\ & !\floor_usage_counters[5][2]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][3]~q\,
	datad => VCC,
	cin => \floor_usage_counters[5][2]~98\,
	combout => \floor_usage_counters[5][3]~99_combout\,
	cout => \floor_usage_counters[5][3]~100\);

-- Location: FF_X12_Y10_N23
\floor_usage_counters[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][3]~99_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][3]~q\);

-- Location: LCCOMB_X12_Y10_N24
\floor_usage_counters[5][4]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][4]~101_combout\ = (\floor_usage_counters[5][4]~q\ & (!\floor_usage_counters[5][3]~100\)) # (!\floor_usage_counters[5][4]~q\ & ((\floor_usage_counters[5][3]~100\) # (GND)))
-- \floor_usage_counters[5][4]~102\ = CARRY((!\floor_usage_counters[5][3]~100\) # (!\floor_usage_counters[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[5][4]~q\,
	datad => VCC,
	cin => \floor_usage_counters[5][3]~100\,
	combout => \floor_usage_counters[5][4]~101_combout\,
	cout => \floor_usage_counters[5][4]~102\);

-- Location: FF_X12_Y10_N25
\floor_usage_counters[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][4]~101_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][4]~q\);

-- Location: LCCOMB_X12_Y10_N26
\floor_usage_counters[5][5]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][5]~103_combout\ = (\floor_usage_counters[5][5]~q\ & (\floor_usage_counters[5][4]~102\ $ (GND))) # (!\floor_usage_counters[5][5]~q\ & (!\floor_usage_counters[5][4]~102\ & VCC))
-- \floor_usage_counters[5][5]~104\ = CARRY((\floor_usage_counters[5][5]~q\ & !\floor_usage_counters[5][4]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][5]~q\,
	datad => VCC,
	cin => \floor_usage_counters[5][4]~102\,
	combout => \floor_usage_counters[5][5]~103_combout\,
	cout => \floor_usage_counters[5][5]~104\);

-- Location: FF_X12_Y10_N27
\floor_usage_counters[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][5]~103_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][5]~q\);

-- Location: LCCOMB_X12_Y10_N28
\floor_usage_counters[5][6]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][6]~105_combout\ = (\floor_usage_counters[5][6]~q\ & (!\floor_usage_counters[5][5]~104\)) # (!\floor_usage_counters[5][6]~q\ & ((\floor_usage_counters[5][5]~104\) # (GND)))
-- \floor_usage_counters[5][6]~106\ = CARRY((!\floor_usage_counters[5][5]~104\) # (!\floor_usage_counters[5][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[5][6]~q\,
	datad => VCC,
	cin => \floor_usage_counters[5][5]~104\,
	combout => \floor_usage_counters[5][6]~105_combout\,
	cout => \floor_usage_counters[5][6]~106\);

-- Location: FF_X12_Y10_N29
\floor_usage_counters[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][6]~105_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][6]~q\);

-- Location: LCCOMB_X12_Y10_N30
\floor_usage_counters[5][7]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[5][7]~107_combout\ = \floor_usage_counters[5][7]~q\ $ (!\floor_usage_counters[5][6]~106\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][7]~q\,
	cin => \floor_usage_counters[5][6]~106\,
	combout => \floor_usage_counters[5][7]~107_combout\);

-- Location: FF_X12_Y10_N31
\floor_usage_counters[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[5][7]~107_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[5][7]~q\);

-- Location: LCCOMB_X13_Y10_N12
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!\current_floor[1]~6_combout\ & !\current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X12_Y10_N0
\Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add27~0_combout\ = (\current_floor[0]~10_combout\ & ((\current_floor[1]~6_combout\))) # (!\current_floor[0]~10_combout\ & (!\current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[0]~10_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Add27~0_combout\);

-- Location: LCCOMB_X16_Y10_N10
\Add27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add27~1_combout\ = \current_floor[0]~10_combout\ $ (((\current_floor[1]~6_combout\) # (\current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Add27~1_combout\);

-- Location: LCCOMB_X12_Y10_N2
\Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add26~0_combout\ = ((!\current_floor[0]~10_combout\ & \current_floor[2]~2_combout\)) # (!\current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[0]~10_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Add26~0_combout\);

-- Location: LCCOMB_X12_Y10_N4
\Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~0_combout\ = (\floor_usage_counters[5][1]~q\ & (\current_floor[0]~10_combout\ $ (VCC))) # (!\floor_usage_counters[5][1]~q\ & (\current_floor[0]~10_combout\ & VCC))
-- \Add28~1\ = CARRY((\floor_usage_counters[5][1]~q\ & \current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][1]~q\,
	datab => \current_floor[0]~10_combout\,
	datad => VCC,
	combout => \Add28~0_combout\,
	cout => \Add28~1\);

-- Location: LCCOMB_X12_Y10_N6
\Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~2_combout\ = (\floor_usage_counters[5][2]~q\ & ((\Add26~0_combout\ & (\Add28~1\ & VCC)) # (!\Add26~0_combout\ & (!\Add28~1\)))) # (!\floor_usage_counters[5][2]~q\ & ((\Add26~0_combout\ & (!\Add28~1\)) # (!\Add26~0_combout\ & ((\Add28~1\) # 
-- (GND)))))
-- \Add28~3\ = CARRY((\floor_usage_counters[5][2]~q\ & (!\Add26~0_combout\ & !\Add28~1\)) # (!\floor_usage_counters[5][2]~q\ & ((!\Add28~1\) # (!\Add26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][2]~q\,
	datab => \Add26~0_combout\,
	datad => VCC,
	cin => \Add28~1\,
	combout => \Add28~2_combout\,
	cout => \Add28~3\);

-- Location: LCCOMB_X12_Y10_N8
\Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~4_combout\ = ((\floor_usage_counters[5][3]~q\ $ (\Add27~1_combout\ $ (\Add28~3\)))) # (GND)
-- \Add28~5\ = CARRY((\floor_usage_counters[5][3]~q\ & ((!\Add28~3\) # (!\Add27~1_combout\))) # (!\floor_usage_counters[5][3]~q\ & (!\Add27~1_combout\ & !\Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][3]~q\,
	datab => \Add27~1_combout\,
	datad => VCC,
	cin => \Add28~3\,
	combout => \Add28~4_combout\,
	cout => \Add28~5\);

-- Location: LCCOMB_X12_Y10_N10
\Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~6_combout\ = (\Add27~0_combout\ & ((\floor_usage_counters[5][4]~q\ & (!\Add28~5\)) # (!\floor_usage_counters[5][4]~q\ & ((\Add28~5\) # (GND))))) # (!\Add27~0_combout\ & ((\floor_usage_counters[5][4]~q\ & (\Add28~5\ & VCC)) # 
-- (!\floor_usage_counters[5][4]~q\ & (!\Add28~5\))))
-- \Add28~7\ = CARRY((\Add27~0_combout\ & ((!\Add28~5\) # (!\floor_usage_counters[5][4]~q\))) # (!\Add27~0_combout\ & (!\floor_usage_counters[5][4]~q\ & !\Add28~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add27~0_combout\,
	datab => \floor_usage_counters[5][4]~q\,
	datad => VCC,
	cin => \Add28~5\,
	combout => \Add28~6_combout\,
	cout => \Add28~7\);

-- Location: LCCOMB_X12_Y10_N12
\Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~8_combout\ = ((\floor_usage_counters[5][5]~q\ $ (\Equal3~5_combout\ $ (\Add28~7\)))) # (GND)
-- \Add28~9\ = CARRY((\floor_usage_counters[5][5]~q\ & ((!\Add28~7\) # (!\Equal3~5_combout\))) # (!\floor_usage_counters[5][5]~q\ & (!\Equal3~5_combout\ & !\Add28~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][5]~q\,
	datab => \Equal3~5_combout\,
	datad => VCC,
	cin => \Add28~7\,
	combout => \Add28~8_combout\,
	cout => \Add28~9\);

-- Location: LCCOMB_X12_Y10_N14
\Add28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~10_combout\ = (\floor_usage_counters[5][6]~q\ & (\Add28~9\ & VCC)) # (!\floor_usage_counters[5][6]~q\ & (!\Add28~9\))
-- \Add28~11\ = CARRY((!\floor_usage_counters[5][6]~q\ & !\Add28~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[5][6]~q\,
	datad => VCC,
	cin => \Add28~9\,
	combout => \Add28~10_combout\,
	cout => \Add28~11\);

-- Location: LCCOMB_X12_Y10_N16
\Add28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add28~12_combout\ = \floor_usage_counters[5][7]~q\ $ (!\Add28~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][7]~q\,
	cin => \Add28~11\,
	combout => \Add28~12_combout\);

-- Location: LCCOMB_X11_Y10_N8
\Add29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~0_combout\ = \Add28~0_combout\ $ (VCC)
-- \Add29~1\ = CARRY(\Add28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add28~0_combout\,
	datad => VCC,
	combout => \Add29~0_combout\,
	cout => \Add29~1\);

-- Location: LCCOMB_X11_Y10_N10
\Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~2_combout\ = (\Add28~2_combout\ & (\Add29~1\ & VCC)) # (!\Add28~2_combout\ & (!\Add29~1\))
-- \Add29~3\ = CARRY((!\Add28~2_combout\ & !\Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add28~2_combout\,
	datad => VCC,
	cin => \Add29~1\,
	combout => \Add29~2_combout\,
	cout => \Add29~3\);

-- Location: LCCOMB_X11_Y10_N12
\Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~4_combout\ = (\Add28~4_combout\ & (\Add29~3\ $ (GND))) # (!\Add28~4_combout\ & (!\Add29~3\ & VCC))
-- \Add29~5\ = CARRY((\Add28~4_combout\ & !\Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add28~4_combout\,
	datad => VCC,
	cin => \Add29~3\,
	combout => \Add29~4_combout\,
	cout => \Add29~5\);

-- Location: LCCOMB_X11_Y10_N14
\Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~6_combout\ = (\Add28~6_combout\ & (!\Add29~5\)) # (!\Add28~6_combout\ & ((\Add29~5\) # (GND)))
-- \Add29~7\ = CARRY((!\Add29~5\) # (!\Add28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add28~6_combout\,
	datad => VCC,
	cin => \Add29~5\,
	combout => \Add29~6_combout\,
	cout => \Add29~7\);

-- Location: LCCOMB_X11_Y10_N16
\Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~8_combout\ = (\Add28~8_combout\ & ((GND) # (!\Add29~7\))) # (!\Add28~8_combout\ & (\Add29~7\ $ (GND)))
-- \Add29~9\ = CARRY((\Add28~8_combout\) # (!\Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add28~8_combout\,
	datad => VCC,
	cin => \Add29~7\,
	combout => \Add29~8_combout\,
	cout => \Add29~9\);

-- Location: LCCOMB_X11_Y10_N18
\Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~10_combout\ = (\Add28~10_combout\ & (\Add29~9\ & VCC)) # (!\Add28~10_combout\ & (!\Add29~9\))
-- \Add29~11\ = CARRY((!\Add28~10_combout\ & !\Add29~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add28~10_combout\,
	datad => VCC,
	cin => \Add29~9\,
	combout => \Add29~10_combout\,
	cout => \Add29~11\);

-- Location: LCCOMB_X11_Y10_N20
\Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add29~12_combout\ = \Add29~11\ $ (\Add28~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add28~12_combout\,
	cin => \Add29~11\,
	combout => \Add29~12_combout\);

-- Location: IOIBUF_X7_Y24_N15
\btn_piso2_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso2_up,
	o => \btn_piso2_up~input_o\);

-- Location: FF_X8_Y11_N13
\btn_sync[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_piso2_up~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[7][0]~q\);

-- Location: LCCOMB_X8_Y11_N2
\btn_sync[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[7][1]~feeder_combout\ = \btn_sync[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[7][0]~q\,
	combout => \btn_sync[7][1]~feeder_combout\);

-- Location: FF_X8_Y11_N3
\btn_sync[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[7][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[7][1]~q\);

-- Location: LCCOMB_X8_Y11_N22
\btn_edges~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~1_combout\ = (\btn_sync[7][0]~q\ & !\btn_sync[7][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_sync[7][0]~q\,
	datad => \btn_sync[7][1]~q\,
	combout => \btn_edges~1_combout\);

-- Location: FF_X8_Y11_N23
\btn_edges[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(7));

-- Location: IOIBUF_X7_Y24_N1
\btn_piso2_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso2_dn,
	o => \btn_piso2_dn~input_o\);

-- Location: LCCOMB_X8_Y11_N24
\btn_sync[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[6][0]~feeder_combout\ = \btn_piso2_dn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_piso2_dn~input_o\,
	combout => \btn_sync[6][0]~feeder_combout\);

-- Location: FF_X8_Y11_N25
\btn_sync[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[6][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[6][0]~q\);

-- Location: LCCOMB_X8_Y11_N10
\btn_sync[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[6][1]~feeder_combout\ = \btn_sync[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_sync[6][0]~q\,
	combout => \btn_sync[6][1]~feeder_combout\);

-- Location: FF_X8_Y11_N11
\btn_sync[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_sync[6][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[6][1]~q\);

-- Location: LCCOMB_X8_Y11_N20
\btn_edges~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~2_combout\ = (\btn_sync[6][0]~q\ & !\btn_sync[6][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_sync[6][0]~q\,
	datad => \btn_sync[6][1]~q\,
	combout => \btn_edges~2_combout\);

-- Location: FF_X8_Y11_N21
\btn_edges[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(6));

-- Location: LCCOMB_X8_Y11_N0
\floor_usage_counters[4][0]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][0]~94_combout\ = \floor_usage_counters[4][0]~q\ $ (((btn_edges(7)) # (btn_edges(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_edges(7),
	datac => \floor_usage_counters[4][0]~q\,
	datad => btn_edges(6),
	combout => \floor_usage_counters[4][0]~94_combout\);

-- Location: FF_X8_Y11_N1
\floor_usage_counters[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][0]~94_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][0]~q\);

-- Location: LCCOMB_X9_Y10_N0
\floor_usage_counters[4][1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][1]~35_combout\ = (\floor_usage_counters[4][0]~q\ & (\floor_usage_counters[4][1]~q\ $ (VCC))) # (!\floor_usage_counters[4][0]~q\ & (\floor_usage_counters[4][1]~q\ & VCC))
-- \floor_usage_counters[4][1]~36\ = CARRY((\floor_usage_counters[4][0]~q\ & \floor_usage_counters[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][0]~q\,
	datab => \floor_usage_counters[4][1]~q\,
	datad => VCC,
	combout => \floor_usage_counters[4][1]~35_combout\,
	cout => \floor_usage_counters[4][1]~36\);

-- Location: LCCOMB_X8_Y11_N26
\elevator_control~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elevator_control~0_combout\ = (btn_edges(7)) # (btn_edges(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => btn_edges(7),
	datad => btn_edges(6),
	combout => \elevator_control~0_combout\);

-- Location: FF_X9_Y10_N31
\floor_usage_counters[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[4][1]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][1]~q\);

-- Location: LCCOMB_X9_Y10_N2
\floor_usage_counters[4][2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][2]~37_combout\ = (\floor_usage_counters[4][2]~q\ & (!\floor_usage_counters[4][1]~36\)) # (!\floor_usage_counters[4][2]~q\ & ((\floor_usage_counters[4][1]~36\) # (GND)))
-- \floor_usage_counters[4][2]~38\ = CARRY((!\floor_usage_counters[4][1]~36\) # (!\floor_usage_counters[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[4][2]~q\,
	datad => VCC,
	cin => \floor_usage_counters[4][1]~36\,
	combout => \floor_usage_counters[4][2]~37_combout\,
	cout => \floor_usage_counters[4][2]~38\);

-- Location: FF_X9_Y10_N3
\floor_usage_counters[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][2]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][2]~q\);

-- Location: LCCOMB_X9_Y10_N4
\floor_usage_counters[4][3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][3]~39_combout\ = (\floor_usage_counters[4][3]~q\ & (\floor_usage_counters[4][2]~38\ $ (GND))) # (!\floor_usage_counters[4][3]~q\ & (!\floor_usage_counters[4][2]~38\ & VCC))
-- \floor_usage_counters[4][3]~40\ = CARRY((\floor_usage_counters[4][3]~q\ & !\floor_usage_counters[4][2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[4][3]~q\,
	datad => VCC,
	cin => \floor_usage_counters[4][2]~38\,
	combout => \floor_usage_counters[4][3]~39_combout\,
	cout => \floor_usage_counters[4][3]~40\);

-- Location: FF_X9_Y10_N5
\floor_usage_counters[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][3]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][3]~q\);

-- Location: LCCOMB_X9_Y10_N6
\floor_usage_counters[4][4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][4]~41_combout\ = (\floor_usage_counters[4][4]~q\ & (!\floor_usage_counters[4][3]~40\)) # (!\floor_usage_counters[4][4]~q\ & ((\floor_usage_counters[4][3]~40\) # (GND)))
-- \floor_usage_counters[4][4]~42\ = CARRY((!\floor_usage_counters[4][3]~40\) # (!\floor_usage_counters[4][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][4]~q\,
	datad => VCC,
	cin => \floor_usage_counters[4][3]~40\,
	combout => \floor_usage_counters[4][4]~41_combout\,
	cout => \floor_usage_counters[4][4]~42\);

-- Location: FF_X9_Y10_N7
\floor_usage_counters[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][4]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][4]~q\);

-- Location: LCCOMB_X9_Y10_N8
\floor_usage_counters[4][5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][5]~43_combout\ = (\floor_usage_counters[4][5]~q\ & (\floor_usage_counters[4][4]~42\ $ (GND))) # (!\floor_usage_counters[4][5]~q\ & (!\floor_usage_counters[4][4]~42\ & VCC))
-- \floor_usage_counters[4][5]~44\ = CARRY((\floor_usage_counters[4][5]~q\ & !\floor_usage_counters[4][4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[4][5]~q\,
	datad => VCC,
	cin => \floor_usage_counters[4][4]~42\,
	combout => \floor_usage_counters[4][5]~43_combout\,
	cout => \floor_usage_counters[4][5]~44\);

-- Location: FF_X9_Y10_N9
\floor_usage_counters[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][5]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][5]~q\);

-- Location: LCCOMB_X9_Y10_N10
\floor_usage_counters[4][6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][6]~45_combout\ = (\floor_usage_counters[4][6]~q\ & (!\floor_usage_counters[4][5]~44\)) # (!\floor_usage_counters[4][6]~q\ & ((\floor_usage_counters[4][5]~44\) # (GND)))
-- \floor_usage_counters[4][6]~46\ = CARRY((!\floor_usage_counters[4][5]~44\) # (!\floor_usage_counters[4][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][6]~q\,
	datad => VCC,
	cin => \floor_usage_counters[4][5]~44\,
	combout => \floor_usage_counters[4][6]~45_combout\,
	cout => \floor_usage_counters[4][6]~46\);

-- Location: FF_X9_Y10_N11
\floor_usage_counters[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][6]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][6]~q\);

-- Location: LCCOMB_X9_Y10_N12
\floor_usage_counters[4][7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[4][7]~47_combout\ = \floor_usage_counters[4][6]~46\ $ (!\floor_usage_counters[4][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[4][7]~q\,
	cin => \floor_usage_counters[4][6]~46\,
	combout => \floor_usage_counters[4][7]~47_combout\);

-- Location: FF_X9_Y10_N13
\floor_usage_counters[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[4][7]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[4][7]~q\);

-- Location: LCCOMB_X9_Y11_N28
\Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add21~0_combout\ = \current_floor[1]~6_combout\ $ (((\current_floor[0]~10_combout\ & !\current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[1]~6_combout\,
	datac => \current_floor[0]~10_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Add21~0_combout\);

-- Location: LCCOMB_X9_Y11_N30
\Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add22~0_combout\ = (!\current_floor[0]~10_combout\ & ((\current_floor[1]~6_combout\) # (\current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[1]~6_combout\,
	datac => \current_floor[0]~10_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Add22~0_combout\);

-- Location: LCCOMB_X9_Y11_N0
\Add23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~0_combout\ = (\current_floor[0]~10_combout\ & (\floor_usage_counters[4][1]~q\ & VCC)) # (!\current_floor[0]~10_combout\ & (\floor_usage_counters[4][1]~q\ $ (VCC)))
-- \Add23~1\ = CARRY((!\current_floor[0]~10_combout\ & \floor_usage_counters[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datab => \floor_usage_counters[4][1]~q\,
	datad => VCC,
	combout => \Add23~0_combout\,
	cout => \Add23~1\);

-- Location: LCCOMB_X9_Y11_N2
\Add23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~2_combout\ = (\floor_usage_counters[4][2]~q\ & ((\Add21~0_combout\ & (!\Add23~1\)) # (!\Add21~0_combout\ & (\Add23~1\ & VCC)))) # (!\floor_usage_counters[4][2]~q\ & ((\Add21~0_combout\ & ((\Add23~1\) # (GND))) # (!\Add21~0_combout\ & 
-- (!\Add23~1\))))
-- \Add23~3\ = CARRY((\floor_usage_counters[4][2]~q\ & (\Add21~0_combout\ & !\Add23~1\)) # (!\floor_usage_counters[4][2]~q\ & ((\Add21~0_combout\) # (!\Add23~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][2]~q\,
	datab => \Add21~0_combout\,
	datad => VCC,
	cin => \Add23~1\,
	combout => \Add23~2_combout\,
	cout => \Add23~3\);

-- Location: LCCOMB_X9_Y11_N4
\Add23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~4_combout\ = ((\Add22~0_combout\ $ (\floor_usage_counters[4][3]~q\ $ (!\Add23~3\)))) # (GND)
-- \Add23~5\ = CARRY((\Add22~0_combout\ & ((\floor_usage_counters[4][3]~q\) # (!\Add23~3\))) # (!\Add22~0_combout\ & (\floor_usage_counters[4][3]~q\ & !\Add23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~0_combout\,
	datab => \floor_usage_counters[4][3]~q\,
	datad => VCC,
	cin => \Add23~3\,
	combout => \Add23~4_combout\,
	cout => \Add23~5\);

-- Location: LCCOMB_X9_Y11_N6
\Add23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~6_combout\ = (\floor_usage_counters[4][4]~q\ & ((\Add21~0_combout\ & (!\Add23~5\)) # (!\Add21~0_combout\ & (\Add23~5\ & VCC)))) # (!\floor_usage_counters[4][4]~q\ & ((\Add21~0_combout\ & ((\Add23~5\) # (GND))) # (!\Add21~0_combout\ & 
-- (!\Add23~5\))))
-- \Add23~7\ = CARRY((\floor_usage_counters[4][4]~q\ & (\Add21~0_combout\ & !\Add23~5\)) # (!\floor_usage_counters[4][4]~q\ & ((\Add21~0_combout\) # (!\Add23~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][4]~q\,
	datab => \Add21~0_combout\,
	datad => VCC,
	cin => \Add23~5\,
	combout => \Add23~6_combout\,
	cout => \Add23~7\);

-- Location: LCCOMB_X9_Y11_N8
\Add23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~8_combout\ = ((\Selector16~0_combout\ $ (\floor_usage_counters[4][5]~q\ $ (\Add23~7\)))) # (GND)
-- \Add23~9\ = CARRY((\Selector16~0_combout\ & (\floor_usage_counters[4][5]~q\ & !\Add23~7\)) # (!\Selector16~0_combout\ & ((\floor_usage_counters[4][5]~q\) # (!\Add23~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \floor_usage_counters[4][5]~q\,
	datad => VCC,
	cin => \Add23~7\,
	combout => \Add23~8_combout\,
	cout => \Add23~9\);

-- Location: LCCOMB_X9_Y11_N10
\Add23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~10_combout\ = (\floor_usage_counters[4][6]~q\ & (\Add23~9\ & VCC)) # (!\floor_usage_counters[4][6]~q\ & (!\Add23~9\))
-- \Add23~11\ = CARRY((!\floor_usage_counters[4][6]~q\ & !\Add23~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][6]~q\,
	datad => VCC,
	cin => \Add23~9\,
	combout => \Add23~10_combout\,
	cout => \Add23~11\);

-- Location: LCCOMB_X9_Y11_N12
\Add23~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add23~12_combout\ = \Add23~11\ $ (!\floor_usage_counters[4][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[4][7]~q\,
	cin => \Add23~11\,
	combout => \Add23~12_combout\);

-- Location: LCCOMB_X9_Y11_N14
\Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~0_combout\ = \Add23~0_combout\ $ (VCC)
-- \Add24~1\ = CARRY(\Add23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add23~0_combout\,
	datad => VCC,
	combout => \Add24~0_combout\,
	cout => \Add24~1\);

-- Location: LCCOMB_X9_Y11_N16
\Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~2_combout\ = (\Add23~2_combout\ & (\Add24~1\ & VCC)) # (!\Add23~2_combout\ & (!\Add24~1\))
-- \Add24~3\ = CARRY((!\Add23~2_combout\ & !\Add24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add23~2_combout\,
	datad => VCC,
	cin => \Add24~1\,
	combout => \Add24~2_combout\,
	cout => \Add24~3\);

-- Location: LCCOMB_X9_Y11_N18
\Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~4_combout\ = (\Add23~4_combout\ & (\Add24~3\ $ (GND))) # (!\Add23~4_combout\ & (!\Add24~3\ & VCC))
-- \Add24~5\ = CARRY((\Add23~4_combout\ & !\Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add23~4_combout\,
	datad => VCC,
	cin => \Add24~3\,
	combout => \Add24~4_combout\,
	cout => \Add24~5\);

-- Location: LCCOMB_X9_Y11_N20
\Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~6_combout\ = (\Add23~6_combout\ & (!\Add24~5\)) # (!\Add23~6_combout\ & ((\Add24~5\) # (GND)))
-- \Add24~7\ = CARRY((!\Add24~5\) # (!\Add23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~6_combout\,
	datad => VCC,
	cin => \Add24~5\,
	combout => \Add24~6_combout\,
	cout => \Add24~7\);

-- Location: LCCOMB_X9_Y11_N22
\Add24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~8_combout\ = (\Add23~8_combout\ & ((GND) # (!\Add24~7\))) # (!\Add23~8_combout\ & (\Add24~7\ $ (GND)))
-- \Add24~9\ = CARRY((\Add23~8_combout\) # (!\Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add23~8_combout\,
	datad => VCC,
	cin => \Add24~7\,
	combout => \Add24~8_combout\,
	cout => \Add24~9\);

-- Location: LCCOMB_X9_Y11_N24
\Add24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~10_combout\ = (\Add23~10_combout\ & (\Add24~9\ & VCC)) # (!\Add23~10_combout\ & (!\Add24~9\))
-- \Add24~11\ = CARRY((!\Add23~10_combout\ & !\Add24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~10_combout\,
	datad => VCC,
	cin => \Add24~9\,
	combout => \Add24~10_combout\,
	cout => \Add24~11\);

-- Location: LCCOMB_X9_Y11_N26
\Add24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add24~12_combout\ = \Add24~11\ $ (\Add23~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add23~12_combout\,
	cin => \Add24~11\,
	combout => \Add24~12_combout\);

-- Location: IOIBUF_X13_Y0_N22
\btn_piso4_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso4_dn,
	o => \btn_piso4_dn~input_o\);

-- Location: FF_X14_Y7_N21
\btn_sync[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_piso4_dn~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[2][0]~q\);

-- Location: LCCOMB_X14_Y10_N12
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

-- Location: FF_X14_Y10_N13
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

-- Location: LCCOMB_X14_Y10_N0
\btn_edges~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~6_combout\ = (\btn_sync[2][0]~q\ & !\btn_sync[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_sync[2][0]~q\,
	datad => \btn_sync[2][1]~q\,
	combout => \btn_edges~6_combout\);

-- Location: FF_X14_Y10_N1
\btn_edges[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(2));

-- Location: IOIBUF_X16_Y0_N8
\btn_piso4_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso4_up,
	o => \btn_piso4_up~input_o\);

-- Location: FF_X16_Y10_N17
\btn_sync[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_piso4_up~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[3][0]~q\);

-- Location: FF_X16_Y12_N11
\btn_sync[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_sync[3][0]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[3][1]~q\);

-- Location: LCCOMB_X16_Y12_N2
\btn_edges~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~5_combout\ = (\btn_sync[3][0]~q\ & !\btn_sync[3][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[3][0]~q\,
	datad => \btn_sync[3][1]~q\,
	combout => \btn_edges~5_combout\);

-- Location: FF_X16_Y12_N3
\btn_edges[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(3));

-- Location: LCCOMB_X16_Y12_N28
\floor_usage_counters[2][0]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][0]~92_combout\ = \floor_usage_counters[2][0]~q\ $ (((btn_edges(2)) # (btn_edges(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_edges(2),
	datac => \floor_usage_counters[2][0]~q\,
	datad => btn_edges(3),
	combout => \floor_usage_counters[2][0]~92_combout\);

-- Location: FF_X13_Y11_N25
\floor_usage_counters[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[2][0]~92_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][0]~q\);

-- Location: LCCOMB_X14_Y12_N14
\floor_usage_counters[2][1]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][1]~63_combout\ = (\floor_usage_counters[2][1]~q\ & (\floor_usage_counters[2][0]~q\ $ (VCC))) # (!\floor_usage_counters[2][1]~q\ & (\floor_usage_counters[2][0]~q\ & VCC))
-- \floor_usage_counters[2][1]~64\ = CARRY((\floor_usage_counters[2][1]~q\ & \floor_usage_counters[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][1]~q\,
	datab => \floor_usage_counters[2][0]~q\,
	datad => VCC,
	combout => \floor_usage_counters[2][1]~63_combout\,
	cout => \floor_usage_counters[2][1]~64\);

-- Location: LCCOMB_X16_Y12_N4
\elevator_control~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elevator_control~2_combout\ = (btn_edges(2)) # (btn_edges(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => btn_edges(2),
	datad => btn_edges(3),
	combout => \elevator_control~2_combout\);

-- Location: FF_X14_Y11_N17
\floor_usage_counters[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[2][1]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][1]~q\);

-- Location: LCCOMB_X14_Y12_N16
\floor_usage_counters[2][2]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][2]~65_combout\ = (\floor_usage_counters[2][2]~q\ & (!\floor_usage_counters[2][1]~64\)) # (!\floor_usage_counters[2][2]~q\ & ((\floor_usage_counters[2][1]~64\) # (GND)))
-- \floor_usage_counters[2][2]~66\ = CARRY((!\floor_usage_counters[2][1]~64\) # (!\floor_usage_counters[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][2]~q\,
	datad => VCC,
	cin => \floor_usage_counters[2][1]~64\,
	combout => \floor_usage_counters[2][2]~65_combout\,
	cout => \floor_usage_counters[2][2]~66\);

-- Location: FF_X14_Y12_N17
\floor_usage_counters[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[2][2]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][2]~q\);

-- Location: LCCOMB_X14_Y12_N18
\floor_usage_counters[2][3]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][3]~67_combout\ = (\floor_usage_counters[2][3]~q\ & (\floor_usage_counters[2][2]~66\ $ (GND))) # (!\floor_usage_counters[2][3]~q\ & (!\floor_usage_counters[2][2]~66\ & VCC))
-- \floor_usage_counters[2][3]~68\ = CARRY((\floor_usage_counters[2][3]~q\ & !\floor_usage_counters[2][2]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][3]~q\,
	datad => VCC,
	cin => \floor_usage_counters[2][2]~66\,
	combout => \floor_usage_counters[2][3]~67_combout\,
	cout => \floor_usage_counters[2][3]~68\);

-- Location: FF_X14_Y12_N19
\floor_usage_counters[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[2][3]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][3]~q\);

-- Location: LCCOMB_X14_Y12_N20
\floor_usage_counters[2][4]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][4]~69_combout\ = (\floor_usage_counters[2][4]~q\ & (!\floor_usage_counters[2][3]~68\)) # (!\floor_usage_counters[2][4]~q\ & ((\floor_usage_counters[2][3]~68\) # (GND)))
-- \floor_usage_counters[2][4]~70\ = CARRY((!\floor_usage_counters[2][3]~68\) # (!\floor_usage_counters[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][4]~q\,
	datad => VCC,
	cin => \floor_usage_counters[2][3]~68\,
	combout => \floor_usage_counters[2][4]~69_combout\,
	cout => \floor_usage_counters[2][4]~70\);

-- Location: FF_X14_Y12_N21
\floor_usage_counters[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[2][4]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][4]~q\);

-- Location: LCCOMB_X14_Y12_N22
\floor_usage_counters[2][5]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][5]~71_combout\ = (\floor_usage_counters[2][5]~q\ & (\floor_usage_counters[2][4]~70\ $ (GND))) # (!\floor_usage_counters[2][5]~q\ & (!\floor_usage_counters[2][4]~70\ & VCC))
-- \floor_usage_counters[2][5]~72\ = CARRY((\floor_usage_counters[2][5]~q\ & !\floor_usage_counters[2][4]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][5]~q\,
	datad => VCC,
	cin => \floor_usage_counters[2][4]~70\,
	combout => \floor_usage_counters[2][5]~71_combout\,
	cout => \floor_usage_counters[2][5]~72\);

-- Location: FF_X14_Y11_N1
\floor_usage_counters[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[2][5]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][5]~q\);

-- Location: LCCOMB_X14_Y12_N24
\floor_usage_counters[2][6]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][6]~73_combout\ = (\floor_usage_counters[2][6]~q\ & (!\floor_usage_counters[2][5]~72\)) # (!\floor_usage_counters[2][6]~q\ & ((\floor_usage_counters[2][5]~72\) # (GND)))
-- \floor_usage_counters[2][6]~74\ = CARRY((!\floor_usage_counters[2][5]~72\) # (!\floor_usage_counters[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][6]~q\,
	datad => VCC,
	cin => \floor_usage_counters[2][5]~72\,
	combout => \floor_usage_counters[2][6]~73_combout\,
	cout => \floor_usage_counters[2][6]~74\);

-- Location: FF_X14_Y12_N25
\floor_usage_counters[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[2][6]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][6]~q\);

-- Location: LCCOMB_X14_Y12_N26
\floor_usage_counters[2][7]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[2][7]~75_combout\ = \floor_usage_counters[2][7]~q\ $ (!\floor_usage_counters[2][6]~74\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][7]~q\,
	cin => \floor_usage_counters[2][6]~74\,
	combout => \floor_usage_counters[2][7]~75_combout\);

-- Location: FF_X14_Y12_N27
\floor_usage_counters[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[2][7]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[2][7]~q\);

-- Location: LCCOMB_X17_Y11_N30
\Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (\current_floor[2]~2_combout\ & \current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Add17~2_combout\);

-- Location: LCCOMB_X17_Y11_N4
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (\current_floor[0]~10_combout\ & (!\current_floor[2]~2_combout\)) # (!\current_floor[0]~10_combout\ & ((\current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~2_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add12~0_combout\);

-- Location: LCCOMB_X14_Y11_N0
\Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~1_combout\ = \current_floor[0]~10_combout\ $ (((\current_floor[2]~2_combout\ & \current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add12~1_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\current_floor[1]~6_combout\) # ((!\current_floor[2]~2_combout\ & \current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add11~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (\floor_usage_counters[2][1]~q\ & (\current_floor[0]~10_combout\ $ (GND))) # (!\floor_usage_counters[2][1]~q\ & (!\current_floor[0]~10_combout\ & VCC))
-- \Add13~1\ = CARRY((\floor_usage_counters[2][1]~q\ & !\current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][1]~q\,
	datab => \current_floor[0]~10_combout\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X14_Y11_N4
\Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\floor_usage_counters[2][2]~q\ & ((\Add11~0_combout\ & (\Add13~1\ & VCC)) # (!\Add11~0_combout\ & (!\Add13~1\)))) # (!\floor_usage_counters[2][2]~q\ & ((\Add11~0_combout\ & (!\Add13~1\)) # (!\Add11~0_combout\ & ((\Add13~1\) # 
-- (GND)))))
-- \Add13~3\ = CARRY((\floor_usage_counters[2][2]~q\ & (!\Add11~0_combout\ & !\Add13~1\)) # (!\floor_usage_counters[2][2]~q\ & ((!\Add13~1\) # (!\Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][2]~q\,
	datab => \Add11~0_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X14_Y11_N6
\Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = ((\floor_usage_counters[2][3]~q\ $ (\Add12~1_combout\ $ (\Add13~3\)))) # (GND)
-- \Add13~5\ = CARRY((\floor_usage_counters[2][3]~q\ & ((!\Add13~3\) # (!\Add12~1_combout\))) # (!\floor_usage_counters[2][3]~q\ & (!\Add12~1_combout\ & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][3]~q\,
	datab => \Add12~1_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X14_Y11_N8
\Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Add12~0_combout\ & ((\floor_usage_counters[2][4]~q\ & (\Add13~5\ & VCC)) # (!\floor_usage_counters[2][4]~q\ & (!\Add13~5\)))) # (!\Add12~0_combout\ & ((\floor_usage_counters[2][4]~q\ & (!\Add13~5\)) # (!\floor_usage_counters[2][4]~q\ 
-- & ((\Add13~5\) # (GND)))))
-- \Add13~7\ = CARRY((\Add12~0_combout\ & (!\floor_usage_counters[2][4]~q\ & !\Add13~5\)) # (!\Add12~0_combout\ & ((!\Add13~5\) # (!\floor_usage_counters[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \floor_usage_counters[2][4]~q\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X14_Y11_N10
\Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = ((\floor_usage_counters[2][5]~q\ $ (\Add17~2_combout\ $ (\Add13~7\)))) # (GND)
-- \Add13~9\ = CARRY((\floor_usage_counters[2][5]~q\ & ((!\Add13~7\) # (!\Add17~2_combout\))) # (!\floor_usage_counters[2][5]~q\ & (!\Add17~2_combout\ & !\Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][5]~q\,
	datab => \Add17~2_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X14_Y11_N12
\Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\floor_usage_counters[2][6]~q\ & (\Add13~9\ & VCC)) # (!\floor_usage_counters[2][6]~q\ & (!\Add13~9\))
-- \Add13~11\ = CARRY((!\floor_usage_counters[2][6]~q\ & !\Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][6]~q\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X14_Y11_N14
\Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = \Add13~11\ $ (!\floor_usage_counters[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[2][7]~q\,
	cin => \Add13~11\,
	combout => \Add13~12_combout\);

-- Location: LCCOMB_X14_Y11_N18
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = \Add13~0_combout\ $ (VCC)
-- \Add14~1\ = CARRY(\Add13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~0_combout\,
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X14_Y11_N20
\Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (\Add13~2_combout\ & (\Add14~1\ & VCC)) # (!\Add13~2_combout\ & (!\Add14~1\))
-- \Add14~3\ = CARRY((!\Add13~2_combout\ & !\Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~2_combout\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X14_Y11_N22
\Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (\Add13~4_combout\ & (\Add14~3\ $ (GND))) # (!\Add13~4_combout\ & (!\Add14~3\ & VCC))
-- \Add14~5\ = CARRY((\Add13~4_combout\ & !\Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X14_Y11_N24
\Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (\Add13~6_combout\ & (!\Add14~5\)) # (!\Add13~6_combout\ & ((\Add14~5\) # (GND)))
-- \Add14~7\ = CARRY((!\Add14~5\) # (!\Add13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~6_combout\,
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X14_Y11_N26
\Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (\Add13~8_combout\ & ((GND) # (!\Add14~7\))) # (!\Add13~8_combout\ & (\Add14~7\ $ (GND)))
-- \Add14~9\ = CARRY((\Add13~8_combout\) # (!\Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X14_Y11_N28
\Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (\Add13~10_combout\ & (\Add14~9\ & VCC)) # (!\Add13~10_combout\ & (!\Add14~9\))
-- \Add14~11\ = CARRY((!\Add13~10_combout\ & !\Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X14_Y11_N30
\Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = \Add13~12_combout\ $ (\Add14~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~12_combout\,
	cin => \Add14~11\,
	combout => \Add14~12_combout\);

-- Location: IOIBUF_X16_Y24_N1
\btn_piso5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso5,
	o => \btn_piso5~input_o\);

-- Location: FF_X16_Y12_N1
\btn_sync[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_piso5~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[1][0]~q\);

-- Location: LCCOMB_X16_Y12_N8
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

-- Location: FF_X16_Y12_N9
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

-- Location: LCCOMB_X16_Y12_N6
\btn_edges~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~7_combout\ = (!\btn_sync[1][1]~q\ & \btn_sync[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[1][1]~q\,
	datad => \btn_sync[1][0]~q\,
	combout => \btn_edges~7_combout\);

-- Location: FF_X16_Y12_N7
\btn_edges[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(1));

-- Location: LCCOMB_X10_Y11_N30
\floor_usage_counters[1][0]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][0]~91_combout\ = \floor_usage_counters[1][0]~q\ $ (btn_edges(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \floor_usage_counters[1][0]~q\,
	datad => btn_edges(1),
	combout => \floor_usage_counters[1][0]~91_combout\);

-- Location: FF_X10_Y11_N31
\floor_usage_counters[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[1][0]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][0]~q\);

-- Location: LCCOMB_X16_Y12_N14
\floor_usage_counters[1][1]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][1]~77_combout\ = (\floor_usage_counters[1][1]~q\ & (\floor_usage_counters[1][0]~q\ $ (VCC))) # (!\floor_usage_counters[1][1]~q\ & (\floor_usage_counters[1][0]~q\ & VCC))
-- \floor_usage_counters[1][1]~78\ = CARRY((\floor_usage_counters[1][1]~q\ & \floor_usage_counters[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][1]~q\,
	datab => \floor_usage_counters[1][0]~q\,
	datad => VCC,
	combout => \floor_usage_counters[1][1]~77_combout\,
	cout => \floor_usage_counters[1][1]~78\);

-- Location: FF_X16_Y11_N3
\floor_usage_counters[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][1]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][1]~q\);

-- Location: LCCOMB_X16_Y12_N16
\floor_usage_counters[1][2]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][2]~79_combout\ = (\floor_usage_counters[1][2]~q\ & (!\floor_usage_counters[1][1]~78\)) # (!\floor_usage_counters[1][2]~q\ & ((\floor_usage_counters[1][1]~78\) # (GND)))
-- \floor_usage_counters[1][2]~80\ = CARRY((!\floor_usage_counters[1][1]~78\) # (!\floor_usage_counters[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[1][2]~q\,
	datad => VCC,
	cin => \floor_usage_counters[1][1]~78\,
	combout => \floor_usage_counters[1][2]~79_combout\,
	cout => \floor_usage_counters[1][2]~80\);

-- Location: FF_X16_Y11_N29
\floor_usage_counters[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][2]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][2]~q\);

-- Location: LCCOMB_X16_Y12_N18
\floor_usage_counters[1][3]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][3]~81_combout\ = (\floor_usage_counters[1][3]~q\ & (\floor_usage_counters[1][2]~80\ $ (GND))) # (!\floor_usage_counters[1][3]~q\ & (!\floor_usage_counters[1][2]~80\ & VCC))
-- \floor_usage_counters[1][3]~82\ = CARRY((\floor_usage_counters[1][3]~q\ & !\floor_usage_counters[1][2]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][3]~q\,
	datad => VCC,
	cin => \floor_usage_counters[1][2]~80\,
	combout => \floor_usage_counters[1][3]~81_combout\,
	cout => \floor_usage_counters[1][3]~82\);

-- Location: FF_X16_Y11_N23
\floor_usage_counters[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][3]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][3]~q\);

-- Location: LCCOMB_X16_Y12_N20
\floor_usage_counters[1][4]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][4]~83_combout\ = (\floor_usage_counters[1][4]~q\ & (!\floor_usage_counters[1][3]~82\)) # (!\floor_usage_counters[1][4]~q\ & ((\floor_usage_counters[1][3]~82\) # (GND)))
-- \floor_usage_counters[1][4]~84\ = CARRY((!\floor_usage_counters[1][3]~82\) # (!\floor_usage_counters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[1][4]~q\,
	datad => VCC,
	cin => \floor_usage_counters[1][3]~82\,
	combout => \floor_usage_counters[1][4]~83_combout\,
	cout => \floor_usage_counters[1][4]~84\);

-- Location: FF_X16_Y11_N17
\floor_usage_counters[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][4]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][4]~q\);

-- Location: LCCOMB_X16_Y12_N22
\floor_usage_counters[1][5]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][5]~85_combout\ = (\floor_usage_counters[1][5]~q\ & (\floor_usage_counters[1][4]~84\ $ (GND))) # (!\floor_usage_counters[1][5]~q\ & (!\floor_usage_counters[1][4]~84\ & VCC))
-- \floor_usage_counters[1][5]~86\ = CARRY((\floor_usage_counters[1][5]~q\ & !\floor_usage_counters[1][4]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][5]~q\,
	datad => VCC,
	cin => \floor_usage_counters[1][4]~84\,
	combout => \floor_usage_counters[1][5]~85_combout\,
	cout => \floor_usage_counters[1][5]~86\);

-- Location: FF_X16_Y11_N1
\floor_usage_counters[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][5]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][5]~q\);

-- Location: LCCOMB_X16_Y12_N24
\floor_usage_counters[1][6]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][6]~87_combout\ = (\floor_usage_counters[1][6]~q\ & (!\floor_usage_counters[1][5]~86\)) # (!\floor_usage_counters[1][6]~q\ & ((\floor_usage_counters[1][5]~86\) # (GND)))
-- \floor_usage_counters[1][6]~88\ = CARRY((!\floor_usage_counters[1][5]~86\) # (!\floor_usage_counters[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[1][6]~q\,
	datad => VCC,
	cin => \floor_usage_counters[1][5]~86\,
	combout => \floor_usage_counters[1][6]~87_combout\,
	cout => \floor_usage_counters[1][6]~88\);

-- Location: FF_X16_Y11_N19
\floor_usage_counters[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[1][6]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][6]~q\);

-- Location: LCCOMB_X16_Y12_N26
\floor_usage_counters[1][7]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[1][7]~89_combout\ = \floor_usage_counters[1][7]~q\ $ (!\floor_usage_counters[1][6]~88\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][7]~q\,
	cin => \floor_usage_counters[1][6]~88\,
	combout => \floor_usage_counters[1][7]~89_combout\);

-- Location: FF_X16_Y12_N27
\floor_usage_counters[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[1][7]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => btn_edges(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[1][7]~q\);

-- Location: LCCOMB_X16_Y11_N2
\Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add20~0_combout\ = ((!\current_floor[1]~6_combout\ & !\current_floor[0]~10_combout\)) # (!\current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add20~0_combout\);

-- Location: LCCOMB_X17_Y11_N26
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\current_floor[0]~10_combout\ & ((\current_floor[1]~6_combout\))) # (!\current_floor[0]~10_combout\ & (\current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~2_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
\Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = (\current_floor[2]~2_combout\ & ((\current_floor[0]~10_combout\) # (!\current_floor[1]~6_combout\))) # (!\current_floor[2]~2_combout\ & ((!\current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~2_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X17_Y11_N6
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\current_floor[1]~6_combout\ & ((\current_floor[0]~10_combout\))) # (!\current_floor[1]~6_combout\ & (\current_floor[2]~2_combout\ & !\current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[2]~2_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X16_Y11_N4
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\current_floor[0]~10_combout\ & (\floor_usage_counters[1][1]~q\ $ (VCC))) # (!\current_floor[0]~10_combout\ & (\floor_usage_counters[1][1]~q\ & VCC))
-- \Add8~1\ = CARRY((\current_floor[0]~10_combout\ & \floor_usage_counters[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datab => \floor_usage_counters[1][1]~q\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X16_Y11_N6
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add6~0_combout\ & ((\floor_usage_counters[1][2]~q\ & (!\Add8~1\)) # (!\floor_usage_counters[1][2]~q\ & ((\Add8~1\) # (GND))))) # (!\Add6~0_combout\ & ((\floor_usage_counters[1][2]~q\ & (\Add8~1\ & VCC)) # 
-- (!\floor_usage_counters[1][2]~q\ & (!\Add8~1\))))
-- \Add8~3\ = CARRY((\Add6~0_combout\ & ((!\Add8~1\) # (!\floor_usage_counters[1][2]~q\))) # (!\Add6~0_combout\ & (!\floor_usage_counters[1][2]~q\ & !\Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \floor_usage_counters[1][2]~q\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X16_Y11_N8
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\floor_usage_counters[1][3]~q\ $ (\Add7~1_combout\ $ (\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\floor_usage_counters[1][3]~q\ & ((!\Add8~3\) # (!\Add7~1_combout\))) # (!\floor_usage_counters[1][3]~q\ & (!\Add7~1_combout\ & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][3]~q\,
	datab => \Add7~1_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X16_Y11_N10
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\floor_usage_counters[1][4]~q\ & ((\Add7~0_combout\ & (!\Add8~5\)) # (!\Add7~0_combout\ & (\Add8~5\ & VCC)))) # (!\floor_usage_counters[1][4]~q\ & ((\Add7~0_combout\ & ((\Add8~5\) # (GND))) # (!\Add7~0_combout\ & (!\Add8~5\))))
-- \Add8~7\ = CARRY((\floor_usage_counters[1][4]~q\ & (\Add7~0_combout\ & !\Add8~5\)) # (!\floor_usage_counters[1][4]~q\ & ((\Add7~0_combout\) # (!\Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][4]~q\,
	datab => \Add7~0_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X16_Y11_N12
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\Add20~0_combout\ $ (\floor_usage_counters[1][5]~q\ $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\Add20~0_combout\ & ((\floor_usage_counters[1][5]~q\) # (!\Add8~7\))) # (!\Add20~0_combout\ & (\floor_usage_counters[1][5]~q\ & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => \floor_usage_counters[1][5]~q\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X16_Y11_N14
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\floor_usage_counters[1][6]~q\ & (\Add8~9\ & VCC)) # (!\floor_usage_counters[1][6]~q\ & (!\Add8~9\))
-- \Add8~11\ = CARRY((!\floor_usage_counters[1][6]~q\ & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[1][6]~q\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X16_Y11_N16
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \Add8~11\ $ (!\floor_usage_counters[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[1][7]~q\,
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X16_Y11_N18
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \Add8~0_combout\ $ (VCC)
-- \Add9~1\ = CARRY(\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~0_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X16_Y11_N20
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add8~2_combout\ & (\Add9~1\ & VCC)) # (!\Add8~2_combout\ & (!\Add9~1\))
-- \Add9~3\ = CARRY((!\Add8~2_combout\ & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X16_Y11_N22
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add8~4_combout\ & (\Add9~3\ $ (GND))) # (!\Add8~4_combout\ & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((\Add8~4_combout\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X16_Y11_N24
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add8~6_combout\ & (!\Add9~5\)) # (!\Add8~6_combout\ & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!\Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X16_Y11_N26
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add8~8_combout\ & ((GND) # (!\Add9~7\))) # (!\Add8~8_combout\ & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((\Add8~8_combout\) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X16_Y11_N28
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~10_combout\ & (\Add9~9\ & VCC)) # (!\Add8~10_combout\ & (!\Add9~9\))
-- \Add9~11\ = CARRY((!\Add8~10_combout\ & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X16_Y11_N30
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = \Add9~11\ $ (\Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~12_combout\,
	cin => \Add9~11\,
	combout => \Add9~12_combout\);

-- Location: LCCOMB_X13_Y11_N24
\best_score~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~0_combout\ = (floor_calls(1) & \Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datad => \Add9~12_combout\,
	combout => \best_score~0_combout\);

-- Location: LCCOMB_X13_Y11_N26
\best_score~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~1_combout\ = (floor_calls(1) & \Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datad => \Add9~10_combout\,
	combout => \best_score~1_combout\);

-- Location: LCCOMB_X16_Y11_N0
\best_score~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~2_combout\ = (floor_calls(1) & \Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(1),
	datad => \Add9~8_combout\,
	combout => \best_score~2_combout\);

-- Location: LCCOMB_X13_Y11_N0
\best_score~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~3_combout\ = (floor_calls(1) & \Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datad => \Add9~6_combout\,
	combout => \best_score~3_combout\);

-- Location: LCCOMB_X17_Y11_N28
\best_score~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~4_combout\ = (floor_calls(1) & \Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => floor_calls(1),
	datad => \Add9~4_combout\,
	combout => \best_score~4_combout\);

-- Location: LCCOMB_X10_Y11_N2
\best_score~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~5_combout\ = (\Add9~2_combout\ & floor_calls(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~2_combout\,
	datad => floor_calls(1),
	combout => \best_score~5_combout\);

-- Location: LCCOMB_X10_Y11_N12
\best_score~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~6_combout\ = (floor_calls(1) & \Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datad => \Add9~0_combout\,
	combout => \best_score~6_combout\);

-- Location: LCCOMB_X10_Y11_N20
\best_score~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~7_combout\ = (floor_calls(1) & \floor_usage_counters[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datac => \floor_usage_counters[1][0]~q\,
	combout => \best_score~7_combout\);

-- Location: LCCOMB_X13_Y11_N4
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\floor_usage_counters[2][0]~q\ & !\best_score~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][0]~q\,
	datab => \best_score~7_combout\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X13_Y11_N6
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\best_score~6_combout\ & ((!\LessThan1~1_cout\) # (!\Add14~0_combout\))) # (!\best_score~6_combout\ & (!\Add14~0_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~6_combout\,
	datab => \Add14~0_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X13_Y11_N8
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add14~2_combout\ & ((!\LessThan1~3_cout\) # (!\best_score~5_combout\))) # (!\Add14~2_combout\ & (!\best_score~5_combout\ & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~2_combout\,
	datab => \best_score~5_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X13_Y11_N10
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\best_score~4_combout\ & ((!\LessThan1~5_cout\) # (!\Add14~4_combout\))) # (!\best_score~4_combout\ & (!\Add14~4_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~4_combout\,
	datab => \Add14~4_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X13_Y11_N12
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\Add14~6_combout\ & ((!\LessThan1~7_cout\) # (!\best_score~3_combout\))) # (!\Add14~6_combout\ & (!\best_score~3_combout\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~6_combout\,
	datab => \best_score~3_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X13_Y11_N14
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\Add14~8_combout\ & (\best_score~2_combout\ & !\LessThan1~9_cout\)) # (!\Add14~8_combout\ & ((\best_score~2_combout\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~8_combout\,
	datab => \best_score~2_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X13_Y11_N16
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\best_score~1_combout\ & (\Add14~10_combout\ & !\LessThan1~11_cout\)) # (!\best_score~1_combout\ & ((\Add14~10_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~1_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X13_Y11_N18
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\Add14~12_combout\ & ((\LessThan1~13_cout\) # (!\best_score~0_combout\))) # (!\Add14~12_combout\ & (\LessThan1~13_cout\ & !\best_score~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~12_combout\,
	datad => \best_score~0_combout\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X13_Y11_N22
\best_score~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~8_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\Add14~12_combout\)) # (!\LessThan1~14_combout\ & ((\best_score~0_combout\))))) # (!floor_calls(2) & (((\best_score~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~12_combout\,
	datab => \best_score~0_combout\,
	datac => floor_calls(2),
	datad => \LessThan1~14_combout\,
	combout => \best_score~8_combout\);

-- Location: IOIBUF_X9_Y24_N15
\btn_piso3_dn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso3_dn,
	o => \btn_piso3_dn~input_o\);

-- Location: FF_X10_Y12_N3
\btn_sync[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_piso3_dn~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_sync[4][0]~q\);

-- Location: LCCOMB_X10_Y12_N8
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

-- Location: FF_X10_Y12_N9
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

-- Location: LCCOMB_X10_Y12_N12
\btn_edges~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~4_combout\ = (!\btn_sync[4][1]~q\ & \btn_sync[4][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_sync[4][1]~q\,
	datad => \btn_sync[4][0]~q\,
	combout => \btn_edges~4_combout\);

-- Location: FF_X10_Y12_N13
\btn_edges[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(4));

-- Location: IOIBUF_X0_Y8_N22
\btn_piso3_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_piso3_up,
	o => \btn_piso3_up~input_o\);

-- Location: LCCOMB_X3_Y9_N24
\btn_sync[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_sync[5][0]~feeder_combout\ = \btn_piso3_up~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_piso3_up~input_o\,
	combout => \btn_sync[5][0]~feeder_combout\);

-- Location: FF_X3_Y9_N25
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

-- Location: LCCOMB_X10_Y12_N0
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

-- Location: FF_X10_Y12_N1
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

-- Location: LCCOMB_X10_Y12_N10
\btn_edges~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_edges~3_combout\ = (\btn_sync[5][0]~q\ & !\btn_sync[5][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_sync[5][0]~q\,
	datad => \btn_sync[5][1]~q\,
	combout => \btn_edges~3_combout\);

-- Location: FF_X10_Y12_N11
\btn_edges[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_edges~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_edges(5));

-- Location: LCCOMB_X10_Y12_N28
\floor_usage_counters[3][0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][0]~93_combout\ = \floor_usage_counters[3][0]~q\ $ (((btn_edges(4)) # (btn_edges(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_edges(4),
	datac => \floor_usage_counters[3][0]~q\,
	datad => btn_edges(5),
	combout => \floor_usage_counters[3][0]~93_combout\);

-- Location: FF_X10_Y12_N29
\floor_usage_counters[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][0]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][0]~q\);

-- Location: LCCOMB_X12_Y12_N0
\floor_usage_counters[3][1]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][1]~49_combout\ = (\floor_usage_counters[3][0]~q\ & (\floor_usage_counters[3][1]~q\ $ (VCC))) # (!\floor_usage_counters[3][0]~q\ & (\floor_usage_counters[3][1]~q\ & VCC))
-- \floor_usage_counters[3][1]~50\ = CARRY((\floor_usage_counters[3][0]~q\ & \floor_usage_counters[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][0]~q\,
	datab => \floor_usage_counters[3][1]~q\,
	datad => VCC,
	combout => \floor_usage_counters[3][1]~49_combout\,
	cout => \floor_usage_counters[3][1]~50\);

-- Location: LCCOMB_X10_Y12_N22
\elevator_control~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \elevator_control~1_combout\ = (btn_edges(4)) # (btn_edges(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => btn_edges(4),
	datad => btn_edges(5),
	combout => \elevator_control~1_combout\);

-- Location: FF_X13_Y12_N29
\floor_usage_counters[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \floor_usage_counters[3][1]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][1]~q\);

-- Location: LCCOMB_X12_Y12_N2
\floor_usage_counters[3][2]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][2]~51_combout\ = (\floor_usage_counters[3][2]~q\ & (!\floor_usage_counters[3][1]~50\)) # (!\floor_usage_counters[3][2]~q\ & ((\floor_usage_counters[3][1]~50\) # (GND)))
-- \floor_usage_counters[3][2]~52\ = CARRY((!\floor_usage_counters[3][1]~50\) # (!\floor_usage_counters[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[3][2]~q\,
	datad => VCC,
	cin => \floor_usage_counters[3][1]~50\,
	combout => \floor_usage_counters[3][2]~51_combout\,
	cout => \floor_usage_counters[3][2]~52\);

-- Location: FF_X12_Y12_N3
\floor_usage_counters[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][2]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][2]~q\);

-- Location: LCCOMB_X12_Y12_N4
\floor_usage_counters[3][3]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][3]~53_combout\ = (\floor_usage_counters[3][3]~q\ & (\floor_usage_counters[3][2]~52\ $ (GND))) # (!\floor_usage_counters[3][3]~q\ & (!\floor_usage_counters[3][2]~52\ & VCC))
-- \floor_usage_counters[3][3]~54\ = CARRY((\floor_usage_counters[3][3]~q\ & !\floor_usage_counters[3][2]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[3][3]~q\,
	datad => VCC,
	cin => \floor_usage_counters[3][2]~52\,
	combout => \floor_usage_counters[3][3]~53_combout\,
	cout => \floor_usage_counters[3][3]~54\);

-- Location: FF_X12_Y12_N5
\floor_usage_counters[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][3]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][3]~q\);

-- Location: LCCOMB_X12_Y12_N6
\floor_usage_counters[3][4]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][4]~55_combout\ = (\floor_usage_counters[3][4]~q\ & (!\floor_usage_counters[3][3]~54\)) # (!\floor_usage_counters[3][4]~q\ & ((\floor_usage_counters[3][3]~54\) # (GND)))
-- \floor_usage_counters[3][4]~56\ = CARRY((!\floor_usage_counters[3][3]~54\) # (!\floor_usage_counters[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][4]~q\,
	datad => VCC,
	cin => \floor_usage_counters[3][3]~54\,
	combout => \floor_usage_counters[3][4]~55_combout\,
	cout => \floor_usage_counters[3][4]~56\);

-- Location: FF_X12_Y12_N7
\floor_usage_counters[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][4]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][4]~q\);

-- Location: LCCOMB_X12_Y12_N8
\floor_usage_counters[3][5]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][5]~57_combout\ = (\floor_usage_counters[3][5]~q\ & (\floor_usage_counters[3][4]~56\ $ (GND))) # (!\floor_usage_counters[3][5]~q\ & (!\floor_usage_counters[3][4]~56\ & VCC))
-- \floor_usage_counters[3][5]~58\ = CARRY((\floor_usage_counters[3][5]~q\ & !\floor_usage_counters[3][4]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[3][5]~q\,
	datad => VCC,
	cin => \floor_usage_counters[3][4]~56\,
	combout => \floor_usage_counters[3][5]~57_combout\,
	cout => \floor_usage_counters[3][5]~58\);

-- Location: FF_X12_Y12_N9
\floor_usage_counters[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][5]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][5]~q\);

-- Location: LCCOMB_X12_Y12_N10
\floor_usage_counters[3][6]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][6]~59_combout\ = (\floor_usage_counters[3][6]~q\ & (!\floor_usage_counters[3][5]~58\)) # (!\floor_usage_counters[3][6]~q\ & ((\floor_usage_counters[3][5]~58\) # (GND)))
-- \floor_usage_counters[3][6]~60\ = CARRY((!\floor_usage_counters[3][5]~58\) # (!\floor_usage_counters[3][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][6]~q\,
	datad => VCC,
	cin => \floor_usage_counters[3][5]~58\,
	combout => \floor_usage_counters[3][6]~59_combout\,
	cout => \floor_usage_counters[3][6]~60\);

-- Location: FF_X12_Y12_N11
\floor_usage_counters[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][6]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][6]~q\);

-- Location: LCCOMB_X12_Y12_N12
\floor_usage_counters[3][7]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_usage_counters[3][7]~61_combout\ = \floor_usage_counters[3][6]~60\ $ (!\floor_usage_counters[3][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[3][7]~q\,
	cin => \floor_usage_counters[3][6]~60\,
	combout => \floor_usage_counters[3][7]~61_combout\);

-- Location: FF_X12_Y12_N13
\floor_usage_counters[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \floor_usage_counters[3][7]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \elevator_control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \floor_usage_counters[3][7]~q\);

-- Location: LCCOMB_X13_Y12_N30
\Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = ((!\current_floor[2]~2_combout\) # (!\current_floor[0]~10_combout\)) # (!\current_floor[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_floor[1]~6_combout\,
	datac => \current_floor[0]~10_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Add17~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = \current_floor[1]~6_combout\ $ (((\current_floor[2]~2_combout\ & !\current_floor[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Add16~0_combout\);

-- Location: LCCOMB_X16_Y12_N12
\Add17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add17~1_combout\ = ((\current_floor[2]~2_combout\ & \current_floor[1]~6_combout\)) # (!\current_floor[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Add17~1_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = (\floor_usage_counters[3][1]~q\ & (\current_floor[0]~10_combout\ $ (VCC))) # (!\floor_usage_counters[3][1]~q\ & (\current_floor[0]~10_combout\ & VCC))
-- \Add18~1\ = CARRY((\floor_usage_counters[3][1]~q\ & \current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][1]~q\,
	datab => \current_floor[0]~10_combout\,
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X13_Y12_N2
\Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (\floor_usage_counters[3][2]~q\ & ((\Add16~0_combout\ & (\Add18~1\ & VCC)) # (!\Add16~0_combout\ & (!\Add18~1\)))) # (!\floor_usage_counters[3][2]~q\ & ((\Add16~0_combout\ & (!\Add18~1\)) # (!\Add16~0_combout\ & ((\Add18~1\) # 
-- (GND)))))
-- \Add18~3\ = CARRY((\floor_usage_counters[3][2]~q\ & (!\Add16~0_combout\ & !\Add18~1\)) # (!\floor_usage_counters[3][2]~q\ & ((!\Add18~1\) # (!\Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][2]~q\,
	datab => \Add16~0_combout\,
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X13_Y12_N4
\Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = ((\Add17~1_combout\ $ (\floor_usage_counters[3][3]~q\ $ (\Add18~3\)))) # (GND)
-- \Add18~5\ = CARRY((\Add17~1_combout\ & (\floor_usage_counters[3][3]~q\ & !\Add18~3\)) # (!\Add17~1_combout\ & ((\floor_usage_counters[3][3]~q\) # (!\Add18~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~1_combout\,
	datab => \floor_usage_counters[3][3]~q\,
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X13_Y12_N6
\Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (\floor_usage_counters[3][4]~q\ & ((\Add16~0_combout\ & (\Add18~5\ & VCC)) # (!\Add16~0_combout\ & (!\Add18~5\)))) # (!\floor_usage_counters[3][4]~q\ & ((\Add16~0_combout\ & (!\Add18~5\)) # (!\Add16~0_combout\ & ((\Add18~5\) # 
-- (GND)))))
-- \Add18~7\ = CARRY((\floor_usage_counters[3][4]~q\ & (!\Add16~0_combout\ & !\Add18~5\)) # (!\floor_usage_counters[3][4]~q\ & ((!\Add18~5\) # (!\Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][4]~q\,
	datab => \Add16~0_combout\,
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X13_Y12_N8
\Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = ((\Add17~0_combout\ $ (\floor_usage_counters[3][5]~q\ $ (!\Add18~7\)))) # (GND)
-- \Add18~9\ = CARRY((\Add17~0_combout\ & ((\floor_usage_counters[3][5]~q\) # (!\Add18~7\))) # (!\Add17~0_combout\ & (\floor_usage_counters[3][5]~q\ & !\Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \floor_usage_counters[3][5]~q\,
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X13_Y12_N10
\Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (\floor_usage_counters[3][6]~q\ & (!\Add18~9\)) # (!\floor_usage_counters[3][6]~q\ & ((\Add18~9\) # (GND)))
-- \Add18~11\ = CARRY((!\Add18~9\) # (!\floor_usage_counters[3][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][6]~q\,
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X13_Y12_N12
\Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = \Add18~11\ $ (!\floor_usage_counters[3][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \floor_usage_counters[3][7]~q\,
	cin => \Add18~11\,
	combout => \Add18~12_combout\);

-- Location: LCCOMB_X13_Y12_N14
\Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = \Add18~0_combout\ $ (VCC)
-- \Add19~1\ = CARRY(\Add18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~0_combout\,
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X13_Y12_N16
\Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (\Add18~2_combout\ & (\Add19~1\ & VCC)) # (!\Add18~2_combout\ & (!\Add19~1\))
-- \Add19~3\ = CARRY((!\Add18~2_combout\ & !\Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~2_combout\,
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X13_Y12_N18
\Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (\Add18~4_combout\ & (\Add19~3\ $ (GND))) # (!\Add18~4_combout\ & (!\Add19~3\ & VCC))
-- \Add19~5\ = CARRY((\Add18~4_combout\ & !\Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~4_combout\,
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X13_Y12_N20
\Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (\Add18~6_combout\ & (!\Add19~5\)) # (!\Add18~6_combout\ & ((\Add19~5\) # (GND)))
-- \Add19~7\ = CARRY((!\Add19~5\) # (!\Add18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~6_combout\,
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X13_Y12_N22
\Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = (\Add18~8_combout\ & ((GND) # (!\Add19~7\))) # (!\Add18~8_combout\ & (\Add19~7\ $ (GND)))
-- \Add19~9\ = CARRY((\Add18~8_combout\) # (!\Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add18~8_combout\,
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: LCCOMB_X13_Y12_N24
\Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (\Add18~10_combout\ & (!\Add19~9\)) # (!\Add18~10_combout\ & ((\Add19~9\) # (GND)))
-- \Add19~11\ = CARRY((!\Add19~9\) # (!\Add18~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~10_combout\,
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X13_Y12_N26
\Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = \Add19~11\ $ (!\Add18~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add18~12_combout\,
	cin => \Add19~11\,
	combout => \Add19~12_combout\);

-- Location: LCCOMB_X12_Y11_N0
\best_score~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~9_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\Add14~10_combout\)) # (!\LessThan1~14_combout\ & ((\best_score~1_combout\))))) # (!floor_calls(2) & (((\best_score~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(2),
	datab => \Add14~10_combout\,
	datac => \best_score~1_combout\,
	datad => \LessThan1~14_combout\,
	combout => \best_score~9_combout\);

-- Location: LCCOMB_X12_Y11_N26
\best_score~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~10_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & ((\Add14~8_combout\))) # (!\LessThan1~14_combout\ & (\best_score~2_combout\)))) # (!floor_calls(2) & (\best_score~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(2),
	datab => \best_score~2_combout\,
	datac => \Add14~8_combout\,
	datad => \LessThan1~14_combout\,
	combout => \best_score~10_combout\);

-- Location: LCCOMB_X13_Y11_N20
\best_score~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~11_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\Add14~6_combout\)) # (!\LessThan1~14_combout\ & ((\best_score~3_combout\))))) # (!floor_calls(2) & (((\best_score~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(2),
	datab => \Add14~6_combout\,
	datac => \best_score~3_combout\,
	datad => \LessThan1~14_combout\,
	combout => \best_score~11_combout\);

-- Location: LCCOMB_X13_Y11_N2
\best_score~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~12_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & ((\Add14~4_combout\))) # (!\LessThan1~14_combout\ & (\best_score~4_combout\)))) # (!floor_calls(2) & (\best_score~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~4_combout\,
	datab => \Add14~4_combout\,
	datac => floor_calls(2),
	datad => \LessThan1~14_combout\,
	combout => \best_score~12_combout\);

-- Location: LCCOMB_X13_Y11_N28
\best_score~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~13_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\Add14~2_combout\)) # (!\LessThan1~14_combout\ & ((\best_score~5_combout\))))) # (!floor_calls(2) & (((\best_score~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~2_combout\,
	datab => \best_score~5_combout\,
	datac => floor_calls(2),
	datad => \LessThan1~14_combout\,
	combout => \best_score~13_combout\);

-- Location: LCCOMB_X13_Y11_N30
\best_score~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~14_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\Add14~0_combout\)) # (!\LessThan1~14_combout\ & ((\best_score~6_combout\))))) # (!floor_calls(2) & (((\best_score~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => \best_score~6_combout\,
	datac => floor_calls(2),
	datad => \LessThan1~14_combout\,
	combout => \best_score~14_combout\);

-- Location: LCCOMB_X12_Y11_N24
\best_score~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~15_combout\ = (floor_calls(2) & ((\LessThan1~14_combout\ & (\floor_usage_counters[2][0]~q\)) # (!\LessThan1~14_combout\ & ((\best_score~7_combout\))))) # (!floor_calls(2) & (((\best_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(2),
	datab => \floor_usage_counters[2][0]~q\,
	datac => \best_score~7_combout\,
	datad => \LessThan1~14_combout\,
	combout => \best_score~15_combout\);

-- Location: LCCOMB_X12_Y11_N2
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\floor_usage_counters[3][0]~q\ & !\best_score~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][0]~q\,
	datab => \best_score~15_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X12_Y11_N4
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\best_score~14_combout\ & ((!\LessThan2~1_cout\) # (!\Add19~0_combout\))) # (!\best_score~14_combout\ & (!\Add19~0_combout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~14_combout\,
	datab => \Add19~0_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X12_Y11_N6
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add19~2_combout\ & ((!\LessThan2~3_cout\) # (!\best_score~13_combout\))) # (!\Add19~2_combout\ & (!\best_score~13_combout\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \best_score~13_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X12_Y11_N8
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\best_score~12_combout\ & ((!\LessThan2~5_cout\) # (!\Add19~4_combout\))) # (!\best_score~12_combout\ & (!\Add19~4_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~12_combout\,
	datab => \Add19~4_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X12_Y11_N10
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\best_score~11_combout\ & (\Add19~6_combout\ & !\LessThan2~7_cout\)) # (!\best_score~11_combout\ & ((\Add19~6_combout\) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~11_combout\,
	datab => \Add19~6_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X12_Y11_N12
\LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\best_score~10_combout\ & ((!\LessThan2~9_cout\) # (!\Add19~8_combout\))) # (!\best_score~10_combout\ & (!\Add19~8_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~10_combout\,
	datab => \Add19~8_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X12_Y11_N14
\LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\Add19~10_combout\ & ((!\LessThan2~11_cout\) # (!\best_score~9_combout\))) # (!\Add19~10_combout\ & (!\best_score~9_combout\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \best_score~9_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X12_Y11_N16
\LessThan2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\Add19~12_combout\ & ((\LessThan2~13_cout\) # (!\best_score~8_combout\))) # (!\Add19~12_combout\ & (\LessThan2~13_cout\ & !\best_score~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add19~12_combout\,
	datad => \best_score~8_combout\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X12_Y11_N18
\best_score~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~16_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & ((\Add19~12_combout\))) # (!\LessThan2~14_combout\ & (\best_score~8_combout\)))) # (!floor_calls(3) & (\best_score~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(3),
	datab => \best_score~8_combout\,
	datac => \Add19~12_combout\,
	datad => \LessThan2~14_combout\,
	combout => \best_score~16_combout\);

-- Location: LCCOMB_X12_Y11_N28
\best_score~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~17_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\Add19~10_combout\)) # (!\LessThan2~14_combout\ & ((\best_score~9_combout\))))) # (!floor_calls(3) & (((\best_score~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \best_score~9_combout\,
	datac => floor_calls(3),
	datad => \LessThan2~14_combout\,
	combout => \best_score~17_combout\);

-- Location: LCCOMB_X12_Y11_N22
\best_score~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~18_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\Add19~8_combout\)) # (!\LessThan2~14_combout\ & ((\best_score~10_combout\))))) # (!floor_calls(3) & (((\best_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(3),
	datab => \Add19~8_combout\,
	datac => \best_score~10_combout\,
	datad => \LessThan2~14_combout\,
	combout => \best_score~18_combout\);

-- Location: LCCOMB_X11_Y11_N28
\best_score~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~19_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\Add19~6_combout\)) # (!\LessThan2~14_combout\ & ((\best_score~11_combout\))))) # (!floor_calls(3) & (((\best_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~6_combout\,
	datab => floor_calls(3),
	datac => \best_score~11_combout\,
	datad => \LessThan2~14_combout\,
	combout => \best_score~19_combout\);

-- Location: LCCOMB_X10_Y11_N6
\best_score~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~20_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\Add19~4_combout\)) # (!\LessThan2~14_combout\ & ((\best_score~12_combout\))))) # (!floor_calls(3) & (((\best_score~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => floor_calls(3),
	datac => \best_score~12_combout\,
	datad => \LessThan2~14_combout\,
	combout => \best_score~20_combout\);

-- Location: LCCOMB_X10_Y11_N16
\best_score~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~21_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\Add19~2_combout\)) # (!\LessThan2~14_combout\ & ((\best_score~13_combout\))))) # (!floor_calls(3) & (((\best_score~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => floor_calls(3),
	datac => \best_score~13_combout\,
	datad => \LessThan2~14_combout\,
	combout => \best_score~21_combout\);

-- Location: LCCOMB_X12_Y11_N20
\best_score~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~22_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & ((\Add19~0_combout\))) # (!\LessThan2~14_combout\ & (\best_score~14_combout\)))) # (!floor_calls(3) & (\best_score~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~14_combout\,
	datab => \Add19~0_combout\,
	datac => floor_calls(3),
	datad => \LessThan2~14_combout\,
	combout => \best_score~22_combout\);

-- Location: LCCOMB_X12_Y11_N30
\best_score~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~23_combout\ = (floor_calls(3) & ((\LessThan2~14_combout\ & (\floor_usage_counters[3][0]~q\)) # (!\LessThan2~14_combout\ & ((\best_score~15_combout\))))) # (!floor_calls(3) & (((\best_score~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][0]~q\,
	datab => \best_score~15_combout\,
	datac => floor_calls(3),
	datad => \LessThan2~14_combout\,
	combout => \best_score~23_combout\);

-- Location: LCCOMB_X11_Y11_N2
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\best_score~23_combout\ & \floor_usage_counters[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~23_combout\,
	datab => \floor_usage_counters[4][0]~q\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X11_Y11_N4
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\best_score~22_combout\ & ((!\LessThan3~1_cout\) # (!\Add24~0_combout\))) # (!\best_score~22_combout\ & (!\Add24~0_combout\ & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~22_combout\,
	datab => \Add24~0_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X11_Y11_N6
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\best_score~21_combout\ & (\Add24~2_combout\ & !\LessThan3~3_cout\)) # (!\best_score~21_combout\ & ((\Add24~2_combout\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~21_combout\,
	datab => \Add24~2_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X11_Y11_N8
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\Add24~4_combout\ & (\best_score~20_combout\ & !\LessThan3~5_cout\)) # (!\Add24~4_combout\ & ((\best_score~20_combout\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~4_combout\,
	datab => \best_score~20_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X11_Y11_N10
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\Add24~6_combout\ & ((!\LessThan3~7_cout\) # (!\best_score~19_combout\))) # (!\Add24~6_combout\ & (!\best_score~19_combout\ & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~6_combout\,
	datab => \best_score~19_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X11_Y11_N12
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\Add24~8_combout\ & (\best_score~18_combout\ & !\LessThan3~9_cout\)) # (!\Add24~8_combout\ & ((\best_score~18_combout\) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~8_combout\,
	datab => \best_score~18_combout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X11_Y11_N14
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\Add24~10_combout\ & ((!\LessThan3~11_cout\) # (!\best_score~17_combout\))) # (!\Add24~10_combout\ & (!\best_score~17_combout\ & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~10_combout\,
	datab => \best_score~17_combout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X11_Y11_N16
\LessThan3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\Add24~12_combout\ & ((\LessThan3~13_cout\) # (!\best_score~16_combout\))) # (!\Add24~12_combout\ & (\LessThan3~13_cout\ & !\best_score~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add24~12_combout\,
	datad => \best_score~16_combout\,
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X11_Y9_N28
\best_score~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~24_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & (\Add24~12_combout\)) # (!\LessThan3~14_combout\ & ((\best_score~16_combout\))))) # (!floor_calls(4) & (((\best_score~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \Add24~12_combout\,
	datac => \LessThan3~14_combout\,
	datad => \best_score~16_combout\,
	combout => \best_score~24_combout\);

-- Location: LCCOMB_X11_Y9_N22
\best_score~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~25_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & (\Add24~10_combout\)) # (!\LessThan3~14_combout\ & ((\best_score~17_combout\))))) # (!floor_calls(4) & (((\best_score~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \Add24~10_combout\,
	datac => \LessThan3~14_combout\,
	datad => \best_score~17_combout\,
	combout => \best_score~25_combout\);

-- Location: LCCOMB_X11_Y11_N22
\best_score~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~26_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & ((\Add24~8_combout\))) # (!\LessThan3~14_combout\ & (\best_score~18_combout\)))) # (!floor_calls(4) & (\best_score~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \best_score~18_combout\,
	datac => \Add24~8_combout\,
	datad => \LessThan3~14_combout\,
	combout => \best_score~26_combout\);

-- Location: LCCOMB_X11_Y11_N24
\best_score~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~27_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & ((\Add24~6_combout\))) # (!\LessThan3~14_combout\ & (\best_score~19_combout\)))) # (!floor_calls(4) & (\best_score~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \best_score~19_combout\,
	datac => \Add24~6_combout\,
	datad => \LessThan3~14_combout\,
	combout => \best_score~27_combout\);

-- Location: LCCOMB_X10_Y11_N14
\best_score~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~28_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & ((\Add24~4_combout\))) # (!\LessThan3~14_combout\ & (\best_score~20_combout\)))) # (!floor_calls(4) & (\best_score~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~20_combout\,
	datab => \Add24~4_combout\,
	datac => floor_calls(4),
	datad => \LessThan3~14_combout\,
	combout => \best_score~28_combout\);

-- Location: LCCOMB_X10_Y11_N4
\best_score~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~29_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & ((\Add24~2_combout\))) # (!\LessThan3~14_combout\ & (\best_score~21_combout\)))) # (!floor_calls(4) & (\best_score~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \best_score~21_combout\,
	datac => \Add24~2_combout\,
	datad => \LessThan3~14_combout\,
	combout => \best_score~29_combout\);

-- Location: LCCOMB_X11_Y9_N24
\best_score~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~30_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & (\Add24~0_combout\)) # (!\LessThan3~14_combout\ & ((\best_score~22_combout\))))) # (!floor_calls(4) & (((\best_score~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \Add24~0_combout\,
	datac => \LessThan3~14_combout\,
	datad => \best_score~22_combout\,
	combout => \best_score~30_combout\);

-- Location: LCCOMB_X11_Y11_N18
\best_score~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~31_combout\ = (floor_calls(4) & ((\LessThan3~14_combout\ & (\floor_usage_counters[4][0]~q\)) # (!\LessThan3~14_combout\ & ((\best_score~23_combout\))))) # (!floor_calls(4) & (((\best_score~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => \floor_usage_counters[4][0]~q\,
	datac => \best_score~23_combout\,
	datad => \LessThan3~14_combout\,
	combout => \best_score~31_combout\);

-- Location: LCCOMB_X11_Y9_N0
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!\best_score~31_combout\ & \floor_usage_counters[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~31_combout\,
	datab => \floor_usage_counters[5][0]~q\,
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X11_Y9_N2
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\Add29~0_combout\ & (\best_score~30_combout\ & !\LessThan4~1_cout\)) # (!\Add29~0_combout\ & ((\best_score~30_combout\) # (!\LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add29~0_combout\,
	datab => \best_score~30_combout\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X11_Y9_N4
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\best_score~29_combout\ & (\Add29~2_combout\ & !\LessThan4~3_cout\)) # (!\best_score~29_combout\ & ((\Add29~2_combout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~29_combout\,
	datab => \Add29~2_combout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X11_Y9_N6
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\Add29~4_combout\ & (\best_score~28_combout\ & !\LessThan4~5_cout\)) # (!\Add29~4_combout\ & ((\best_score~28_combout\) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add29~4_combout\,
	datab => \best_score~28_combout\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X11_Y9_N8
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\Add29~6_combout\ & ((!\LessThan4~7_cout\) # (!\best_score~27_combout\))) # (!\Add29~6_combout\ & (!\best_score~27_combout\ & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add29~6_combout\,
	datab => \best_score~27_combout\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X11_Y9_N10
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\best_score~26_combout\ & ((!\LessThan4~9_cout\) # (!\Add29~8_combout\))) # (!\best_score~26_combout\ & (!\Add29~8_combout\ & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~26_combout\,
	datab => \Add29~8_combout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X11_Y9_N12
\LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\best_score~25_combout\ & (\Add29~10_combout\ & !\LessThan4~11_cout\)) # (!\best_score~25_combout\ & ((\Add29~10_combout\) # (!\LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \best_score~25_combout\,
	datab => \Add29~10_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X11_Y9_N14
\LessThan4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (\Add29~12_combout\ & ((\LessThan4~13_cout\) # (!\best_score~24_combout\))) # (!\Add29~12_combout\ & (\LessThan4~13_cout\ & !\best_score~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add29~12_combout\,
	datad => \best_score~24_combout\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X17_Y11_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\floor_usage_counters[1][0]~q\) # ((\Add9~2_combout\) # ((\Add9~0_combout\) # (\Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][0]~q\,
	datab => \Add9~2_combout\,
	datac => \Add9~0_combout\,
	datad => \Add9~4_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y10_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add9~6_combout\) # ((\Add9~8_combout\) # ((\Add9~12_combout\) # (\Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add9~8_combout\,
	datac => \Add9~12_combout\,
	datad => \Add9~10_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y10_N6
\next_target~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~1_combout\ = ((!\LessThan0~0_combout\ & !\LessThan0~1_combout\)) # (!floor_calls(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \next_target~1_combout\);

-- Location: LCCOMB_X11_Y11_N0
\best_score~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~32_combout\ = (floor_calls(4) & \LessThan3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datad => \LessThan3~14_combout\,
	combout => \best_score~32_combout\);

-- Location: LCCOMB_X11_Y11_N30
\next_target~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~4_combout\ = (\next_target~0_combout\ & (\next_target~1_combout\ & (\current_floor[1]~6_combout\))) # (!\next_target~0_combout\ & (((!\best_score~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_target~1_combout\,
	datab => \current_floor[1]~6_combout\,
	datac => \next_target~0_combout\,
	datad => \best_score~32_combout\,
	combout => \next_target~4_combout\);

-- Location: LCCOMB_X11_Y9_N16
\next_target~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~5_combout\ = (\next_target~4_combout\ & ((!\LessThan4~14_combout\) # (!floor_calls(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(5),
	datac => \LessThan4~14_combout\,
	datad => \next_target~4_combout\,
	combout => \next_target~5_combout\);

-- Location: LCCOMB_X17_Y9_N8
\target_floor[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_floor[0]~3_combout\ = (!\main_state.IDLE~q\ & (!\Mux0~2_combout\ & ((floor_calls(1)) # (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.IDLE~q\,
	datab => floor_calls(1),
	datac => \Equal0~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \target_floor[0]~3_combout\);

-- Location: FF_X11_Y9_N17
\target_floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_target~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_floor(1));

-- Location: LCCOMB_X13_Y9_N8
\floor_calls~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_calls~2_combout\ = (target_floor(0) & (\current_floor[0]~10_combout\ & (\current_floor[1]~6_combout\ $ (target_floor(1))))) # (!target_floor(0) & (!\current_floor[0]~10_combout\ & (\current_floor[1]~6_combout\ $ (!target_floor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => target_floor(0),
	datab => \current_floor[1]~6_combout\,
	datac => target_floor(1),
	datad => \current_floor[0]~10_combout\,
	combout => \floor_calls~2_combout\);

-- Location: LCCOMB_X13_Y9_N28
\floor_calls~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_calls~3_combout\ = (\floor_calls~2_combout\ & ((target_floor(2) & (\Add17~3_combout\ $ (\current_floor[2]~2_combout\))) # (!target_floor(2) & (!\Add17~3_combout\ & !\current_floor[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => target_floor(2),
	datab => \Add17~3_combout\,
	datac => \floor_calls~2_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \floor_calls~3_combout\);

-- Location: LCCOMB_X14_Y9_N2
\floor_calls~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_calls~5_combout\ = (!\LessThan7~9_combout\ & \floor_calls~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan7~9_combout\,
	datad => \floor_calls~3_combout\,
	combout => \floor_calls~5_combout\);

-- Location: LCCOMB_X14_Y9_N28
\Selector16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector16~2_combout\) # ((\main_state.MOVING_UP~q\ & ((!\floor_calls~5_combout\) # (!\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector16~2_combout\,
	datac => \main_state.MOVING_UP~q\,
	datad => \floor_calls~5_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X10_Y11_N28
\Selector16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\Selector16~1_combout\ & (((floor_calls(1)) # (btn_edges(1))))) # (!\Selector16~1_combout\ & (\Selector16~3_combout\ & ((floor_calls(1)) # (btn_edges(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~1_combout\,
	datab => \Selector16~3_combout\,
	datac => floor_calls(1),
	datad => btn_edges(1),
	combout => \Selector16~4_combout\);

-- Location: FF_X10_Y11_N29
\floor_calls[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => floor_calls(1));

-- Location: LCCOMB_X17_Y9_N22
\floor_calls~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_calls~4_combout\ = (\Mux0~2_combout\ & ((floor_calls(1)) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(1),
	datac => \Equal0~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \floor_calls~4_combout\);

-- Location: LCCOMB_X16_Y10_N20
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\current_floor[0]~10_combout\ & (\current_floor[1]~6_combout\ & !\current_floor[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datac => \current_floor[1]~6_combout\,
	datad => \current_floor[2]~2_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X14_Y9_N14
\Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\WideOr2~combout\) # ((!\main_state.IDLE~q\ & ((!\Equal3~2_combout\) # (!\floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~4_combout\,
	datab => \WideOr2~combout\,
	datac => \Equal3~2_combout\,
	datad => \main_state.IDLE~q\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X13_Y9_N30
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\current_floor[2]~2_combout\ & (!\current_floor[1]~6_combout\ & !\current_floor[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X14_Y9_N12
\Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Selector14~1_combout\) # ((\main_state.MOVING_DOWN~q\ & ((!\Equal3~3_combout\) # (!\floor_calls~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~6_combout\,
	datab => \Selector14~1_combout\,
	datac => \Equal3~3_combout\,
	datad => \main_state.MOVING_DOWN~q\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X14_Y9_N20
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\main_state.MOVING_UP~q\ & (((\LessThan7~9_combout\) # (!\Equal3~1_combout\)) # (!\floor_calls~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_UP~q\,
	datab => \floor_calls~3_combout\,
	datac => \LessThan7~9_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X14_Y9_N22
\Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~2_combout\ & ((\elevator_control~1_combout\) # ((floor_calls(3))))) # (!\Selector14~2_combout\ & (\Selector14~0_combout\ & ((\elevator_control~1_combout\) # (floor_calls(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~2_combout\,
	datab => \elevator_control~1_combout\,
	datac => floor_calls(3),
	datad => \Selector14~0_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X14_Y9_N23
\floor_calls[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => floor_calls(3));

-- Location: LCCOMB_X16_Y9_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\current_floor[1]~6_combout\ & ((\current_floor[0]~10_combout\ & (floor_calls(3))) # (!\current_floor[0]~10_combout\ & ((floor_calls(2)))))) # (!\current_floor[1]~6_combout\ & (((\current_floor[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~6_combout\,
	datab => floor_calls(3),
	datac => \current_floor[0]~10_combout\,
	datad => floor_calls(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y9_N28
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\current_floor[2]~2_combout\ & ((\Mux0~0_combout\ & ((floor_calls(5)))) # (!\Mux0~0_combout\ & (floor_calls(4))))) # (!\current_floor[2]~2_combout\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => floor_calls(5),
	datac => \current_floor[2]~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X17_Y9_N2
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & ((\current_floor[2]~2_combout\ & ((!\current_floor[1]~6_combout\))) # (!\current_floor[2]~2_combout\ & ((floor_calls(1)) # (\current_floor[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => floor_calls(1),
	datac => \current_floor[2]~2_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X13_Y10_N16
\Selector22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = (\main_state.MOVING_DOWN~q\ & ((\Add17~3_combout\) # ((\current_floor[2]~2_combout\)))) # (!\main_state.MOVING_DOWN~q\ & (((!\LessThan10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~3_combout\,
	datab => \current_floor[2]~2_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \LessThan10~8_combout\,
	combout => \Selector22~5_combout\);

-- Location: LCCOMB_X13_Y10_N0
\door_counter[20]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~2_combout\ = (!\main_state.DOOR_CLOSING~q\ & !\main_state.DOOR_OPENING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.DOOR_CLOSING~q\,
	datac => \main_state.DOOR_OPENING~q\,
	combout => \door_counter[20]~2_combout\);

-- Location: LCCOMB_X13_Y9_N22
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\LessThan7~9_combout\) # ((\main_state.MOVING_DOWN~q\ & (\Equal2~2_combout\)) # (!\main_state.MOVING_DOWN~q\ & ((\floor_calls~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \LessThan7~9_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \floor_calls~3_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X13_Y10_N2
\Selector22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\door_counter[20]~2_combout\ & ((\Selector17~0_combout\) # ((!\main_state.MOVING_UP~q\ & !\main_state.MOVING_DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_UP~q\,
	datab => \door_counter[20]~2_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector22~4_combout\);

-- Location: LCCOMB_X14_Y10_N30
\Selector22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~6_combout\ = (\Selector22~4_combout\) # ((\main_state.MOVING_UP~q\ & (!\current_floor[2]~2_combout\)) # (!\main_state.MOVING_UP~q\ & ((\Selector22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \main_state.MOVING_UP~q\,
	datac => \Selector22~5_combout\,
	datad => \Selector22~4_combout\,
	combout => \Selector22~6_combout\);

-- Location: LCCOMB_X12_Y9_N4
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\current_floor[2]~2_combout\ & (!\current_floor[1]~6_combout\ & (\next_target~5_combout\ & \next_target~3_combout\))) # (!\current_floor[2]~2_combout\ & ((\next_target~3_combout\) # ((!\current_floor[1]~6_combout\ & 
-- \next_target~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datac => \next_target~5_combout\,
	datad => \next_target~3_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X11_Y9_N30
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\current_floor[1]~6_combout\ & (\next_target~5_combout\ & (\current_floor[2]~2_combout\ $ (!\next_target~3_combout\)))) # (!\current_floor[1]~6_combout\ & (!\next_target~5_combout\ & (\current_floor[2]~2_combout\ $ 
-- (!\next_target~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[1]~6_combout\,
	datab => \current_floor[2]~2_combout\,
	datac => \next_target~3_combout\,
	datad => \next_target~5_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X12_Y9_N24
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\LessThan5~0_combout\) # ((!\next_target~8_combout\ & (!\current_floor[0]~10_combout\ & \LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_target~8_combout\,
	datab => \current_floor[0]~10_combout\,
	datac => \LessThan5~0_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X11_Y9_N20
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\current_floor[2]~2_combout\ & (((!\next_target~5_combout\ & \current_floor[1]~6_combout\)) # (!\next_target~3_combout\))) # (!\current_floor[2]~2_combout\ & (!\next_target~5_combout\ & (!\next_target~3_combout\ & 
-- \current_floor[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \next_target~5_combout\,
	datac => \next_target~3_combout\,
	datad => \current_floor[1]~6_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X11_Y9_N18
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\LessThan6~0_combout\) # ((\current_floor[0]~10_combout\ & (\LessThan5~1_combout\ & \next_target~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[0]~10_combout\,
	datab => \LessThan6~0_combout\,
	datac => \LessThan5~1_combout\,
	datad => \next_target~8_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X12_Y9_N12
\Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\target_floor[0]~2_combout\ & ((\LessThan5~2_combout\) # ((\Mux0~2_combout\) # (\LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \target_floor[0]~2_combout\,
	datab => \LessThan5~2_combout\,
	datac => \Mux0~2_combout\,
	datad => \LessThan6~1_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X12_Y9_N20
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector22~2_combout\ & (\Mux0~2_combout\)) # (!\Selector22~2_combout\ & ((\Selector22~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datac => \Selector22~6_combout\,
	datad => \Selector22~2_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (!\Selector22~8_combout\ & ((\Selector22~7_combout\ & (\Selector20~0_combout\)) # (!\Selector22~7_combout\ & ((\main_state.DOOR_OPENING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~8_combout\,
	datab => \Selector20~0_combout\,
	datac => \main_state.DOOR_OPENING~q\,
	datad => \Selector22~7_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X12_Y9_N17
\main_state.DOOR_OPENING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.DOOR_OPENING~q\);

-- Location: LCCOMB_X16_Y9_N30
WideOr2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\main_state.DOOR_OPEN_WAIT~q\) # ((\main_state.DOOR_OPENING~q\) # (\main_state.DOOR_CLOSING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_state.DOOR_OPEN_WAIT~q\,
	datac => \main_state.DOOR_OPENING~q\,
	datad => \main_state.DOOR_CLOSING~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X14_Y9_N4
\Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\WideOr2~combout\) # ((!\main_state.IDLE~q\ & ((!\floor_calls~4_combout\) # (!\Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \WideOr2~combout\,
	datac => \floor_calls~4_combout\,
	datad => \main_state.IDLE~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X13_Y9_N10
\Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = ((\current_floor[0]~10_combout\) # (!\current_floor[1]~6_combout\)) # (!\current_floor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datad => \current_floor[0]~10_combout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X14_Y9_N30
\Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~1_combout\) # ((\main_state.MOVING_DOWN~q\ & ((\Selector12~2_combout\) # (!\floor_calls~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~6_combout\,
	datab => \main_state.MOVING_DOWN~q\,
	datac => \Selector12~1_combout\,
	datad => \Selector12~2_combout\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\main_state.MOVING_UP~q\ & (((\LessThan7~9_combout\) # (!\floor_calls~3_combout\)) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \main_state.MOVING_UP~q\,
	datac => \LessThan7~9_combout\,
	datad => \floor_calls~3_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X13_Y9_N4
\Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Selector12~3_combout\ & ((btn_edges(8)) # ((floor_calls(5))))) # (!\Selector12~3_combout\ & (\Selector12~0_combout\ & ((btn_edges(8)) # (floor_calls(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~3_combout\,
	datab => btn_edges(8),
	datac => floor_calls(5),
	datad => \Selector12~0_combout\,
	combout => \Selector12~4_combout\);

-- Location: FF_X13_Y9_N5
\floor_calls[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => floor_calls(5));

-- Location: LCCOMB_X11_Y11_N20
\next_target~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~2_combout\ = (\next_target~0_combout\ & (\next_target~1_combout\ & (\current_floor[2]~2_combout\))) # (!\next_target~0_combout\ & (((\best_score~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_target~1_combout\,
	datab => \current_floor[2]~2_combout\,
	datac => \next_target~0_combout\,
	datad => \best_score~32_combout\,
	combout => \next_target~2_combout\);

-- Location: LCCOMB_X11_Y9_N26
\next_target~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~3_combout\ = (\next_target~2_combout\) # ((floor_calls(5) & \LessThan4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => floor_calls(5),
	datac => \LessThan4~14_combout\,
	datad => \next_target~2_combout\,
	combout => \next_target~3_combout\);

-- Location: FF_X11_Y9_N27
\target_floor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_target~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_floor(2));

-- Location: LCCOMB_X13_Y9_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\current_floor[2]~2_combout\ & (target_floor(2) $ (((!\current_floor[1]~6_combout\ & !\current_floor[0]~10_combout\))))) # (!\current_floor[2]~2_combout\ & (!target_floor(2) & ((\current_floor[1]~6_combout\) # 
-- (\current_floor[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_floor[2]~2_combout\,
	datab => \current_floor[1]~6_combout\,
	datac => target_floor(2),
	datad => \current_floor[0]~10_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X13_Y9_N6
\door_counter[20]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~3_combout\ = (\main_state.DOOR_OPEN_WAIT~q\) # ((\main_state.MOVING_DOWN~q\ & ((!\Equal2~0_combout\) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \main_state.DOOR_OPEN_WAIT~q\,
	combout => \door_counter[20]~3_combout\);

-- Location: LCCOMB_X13_Y9_N24
\door_counter[20]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~4_combout\ = (\main_state.MOVING_UP~q\ & (((!\floor_calls~3_combout\)))) # (!\main_state.MOVING_UP~q\ & (\door_counter[20]~3_combout\ & ((!\Selector22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_counter[20]~3_combout\,
	datab => \floor_calls~3_combout\,
	datac => \main_state.MOVING_UP~q\,
	datad => \Selector22~8_combout\,
	combout => \door_counter[20]~4_combout\);

-- Location: LCCOMB_X16_Y9_N20
\door_counter[20]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~5_combout\ = (\Selector88~0_combout\) # ((\main_state.IDLE~q\ & (\door_counter[20]~4_combout\)) # (!\main_state.IDLE~q\ & ((!\floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.IDLE~q\,
	datab => \door_counter[20]~4_combout\,
	datac => \Selector88~0_combout\,
	datad => \floor_calls~4_combout\,
	combout => \door_counter[20]~5_combout\);

-- Location: LCCOMB_X16_Y9_N6
\door_counter[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~6_combout\ = (\door_counter[20]~5_combout\) # ((!\WideNor0~0_combout\ & (\LessThan7~9_combout\ & \main_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \door_counter[20]~5_combout\,
	datac => \LessThan7~9_combout\,
	datad => \main_state.IDLE~q\,
	combout => \door_counter[20]~6_combout\);

-- Location: FF_X12_Y8_N7
\door_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(0));

-- Location: LCCOMB_X13_Y8_N8
\Add34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~2_combout\ = (door_counter(1) & (!\Add34~1\)) # (!door_counter(1) & ((\Add34~1\) # (GND)))
-- \Add34~3\ = CARRY((!\Add34~1\) # (!door_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(1),
	datad => VCC,
	cin => \Add34~1\,
	combout => \Add34~2_combout\,
	cout => \Add34~3\);

-- Location: LCCOMB_X13_Y8_N4
\Add34~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~64_combout\ = (\Add34~2_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~2_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~64_combout\);

-- Location: FF_X13_Y8_N5
\door_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~64_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(1));

-- Location: LCCOMB_X13_Y8_N10
\Add34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~4_combout\ = (door_counter(2) & (\Add34~3\ $ (GND))) # (!door_counter(2) & (!\Add34~3\ & VCC))
-- \Add34~5\ = CARRY((door_counter(2) & !\Add34~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(2),
	datad => VCC,
	cin => \Add34~3\,
	combout => \Add34~4_combout\,
	cout => \Add34~5\);

-- Location: LCCOMB_X12_Y8_N28
\Add34~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~63_combout\ = (\Add34~4_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~4_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~63_combout\);

-- Location: FF_X12_Y8_N29
\door_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(2));

-- Location: LCCOMB_X13_Y8_N12
\Add34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~6_combout\ = (door_counter(3) & (!\Add34~5\)) # (!door_counter(3) & ((\Add34~5\) # (GND)))
-- \Add34~7\ = CARRY((!\Add34~5\) # (!door_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(3),
	datad => VCC,
	cin => \Add34~5\,
	combout => \Add34~6_combout\,
	cout => \Add34~7\);

-- Location: LCCOMB_X12_Y8_N16
\Add34~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~62_combout\ = (\Add34~6_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~6_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~62_combout\);

-- Location: FF_X12_Y8_N17
\door_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~62_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(3));

-- Location: LCCOMB_X13_Y8_N14
\Add34~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~8_combout\ = (door_counter(4) & (\Add34~7\ $ (GND))) # (!door_counter(4) & (!\Add34~7\ & VCC))
-- \Add34~9\ = CARRY((door_counter(4) & !\Add34~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(4),
	datad => VCC,
	cin => \Add34~7\,
	combout => \Add34~8_combout\,
	cout => \Add34~9\);

-- Location: LCCOMB_X12_Y8_N2
\Add34~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~61_combout\ = (\Add34~8_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~8_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~61_combout\);

-- Location: FF_X12_Y8_N3
\door_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(4));

-- Location: LCCOMB_X13_Y8_N16
\Add34~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~10_combout\ = (door_counter(5) & (!\Add34~9\)) # (!door_counter(5) & ((\Add34~9\) # (GND)))
-- \Add34~11\ = CARRY((!\Add34~9\) # (!door_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(5),
	datad => VCC,
	cin => \Add34~9\,
	combout => \Add34~10_combout\,
	cout => \Add34~11\);

-- Location: LCCOMB_X12_Y8_N20
\Add34~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~60_combout\ = (\Add34~10_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~10_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~60_combout\);

-- Location: FF_X12_Y8_N21
\door_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(5));

-- Location: LCCOMB_X13_Y8_N18
\Add34~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~12_combout\ = (door_counter(6) & (\Add34~11\ $ (GND))) # (!door_counter(6) & (!\Add34~11\ & VCC))
-- \Add34~13\ = CARRY((door_counter(6) & !\Add34~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(6),
	datad => VCC,
	cin => \Add34~11\,
	combout => \Add34~12_combout\,
	cout => \Add34~13\);

-- Location: LCCOMB_X12_Y8_N14
\Add34~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~59_combout\ = (\Add34~12_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~12_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~59_combout\);

-- Location: FF_X12_Y8_N15
\door_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(6));

-- Location: LCCOMB_X13_Y8_N20
\Add34~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~14_combout\ = (door_counter(7) & (!\Add34~13\)) # (!door_counter(7) & ((\Add34~13\) # (GND)))
-- \Add34~15\ = CARRY((!\Add34~13\) # (!door_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(7),
	datad => VCC,
	cin => \Add34~13\,
	combout => \Add34~14_combout\,
	cout => \Add34~15\);

-- Location: LCCOMB_X13_Y8_N2
\Add34~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~66_combout\ = (\Add34~14_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~14_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~66_combout\);

-- Location: FF_X13_Y8_N3
\door_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~66_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(7));

-- Location: LCCOMB_X13_Y8_N22
\Add34~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~16_combout\ = (door_counter(8) & (\Add34~15\ $ (GND))) # (!door_counter(8) & (!\Add34~15\ & VCC))
-- \Add34~17\ = CARRY((door_counter(8) & !\Add34~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(8),
	datad => VCC,
	cin => \Add34~15\,
	combout => \Add34~16_combout\,
	cout => \Add34~17\);

-- Location: LCCOMB_X12_Y8_N18
\Add34~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~70_combout\ = (\Add34~16_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~16_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~70_combout\);

-- Location: FF_X12_Y8_N19
\door_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~70_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(8));

-- Location: LCCOMB_X13_Y8_N24
\Add34~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~18_combout\ = (door_counter(9) & (!\Add34~17\)) # (!door_counter(9) & ((\Add34~17\) # (GND)))
-- \Add34~19\ = CARRY((!\Add34~17\) # (!door_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(9),
	datad => VCC,
	cin => \Add34~17\,
	combout => \Add34~18_combout\,
	cout => \Add34~19\);

-- Location: LCCOMB_X13_Y8_N0
\Add34~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~69_combout\ = (\Add34~18_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~18_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~69_combout\);

-- Location: FF_X13_Y8_N1
\door_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(9));

-- Location: LCCOMB_X13_Y8_N26
\Add34~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~20_combout\ = (door_counter(10) & (\Add34~19\ $ (GND))) # (!door_counter(10) & (!\Add34~19\ & VCC))
-- \Add34~21\ = CARRY((door_counter(10) & !\Add34~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(10),
	datad => VCC,
	cin => \Add34~19\,
	combout => \Add34~20_combout\,
	cout => \Add34~21\);

-- Location: LCCOMB_X12_Y8_N4
\Add34~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~68_combout\ = (\Add34~20_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~20_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~68_combout\);

-- Location: FF_X12_Y8_N5
\door_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~68_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(10));

-- Location: LCCOMB_X13_Y8_N28
\Add34~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~22_combout\ = (door_counter(11) & (!\Add34~21\)) # (!door_counter(11) & ((\Add34~21\) # (GND)))
-- \Add34~23\ = CARRY((!\Add34~21\) # (!door_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(11),
	datad => VCC,
	cin => \Add34~21\,
	combout => \Add34~22_combout\,
	cout => \Add34~23\);

-- Location: LCCOMB_X12_Y8_N10
\Add34~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~67_combout\ = (\Add34~22_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~22_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~67_combout\);

-- Location: FF_X12_Y8_N11
\door_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(11));

-- Location: LCCOMB_X13_Y8_N30
\Add34~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~24_combout\ = (door_counter(12) & (\Add34~23\ $ (GND))) # (!door_counter(12) & (!\Add34~23\ & VCC))
-- \Add34~25\ = CARRY((door_counter(12) & !\Add34~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(12),
	datad => VCC,
	cin => \Add34~23\,
	combout => \Add34~24_combout\,
	cout => \Add34~25\);

-- Location: LCCOMB_X12_Y8_N26
\Add34~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~58_combout\ = (\Add34~24_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~24_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~58_combout\);

-- Location: FF_X12_Y8_N27
\door_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(12));

-- Location: LCCOMB_X13_Y7_N0
\Add34~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~26_combout\ = (door_counter(13) & (!\Add34~25\)) # (!door_counter(13) & ((\Add34~25\) # (GND)))
-- \Add34~27\ = CARRY((!\Add34~25\) # (!door_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(13),
	datad => VCC,
	cin => \Add34~25\,
	combout => \Add34~26_combout\,
	cout => \Add34~27\);

-- Location: LCCOMB_X14_Y7_N0
\Add34~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~57_combout\ = (\Add34~26_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~26_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~57_combout\);

-- Location: FF_X14_Y7_N1
\door_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(13));

-- Location: LCCOMB_X13_Y7_N2
\Add34~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~28_combout\ = (door_counter(14) & (\Add34~27\ $ (GND))) # (!door_counter(14) & (!\Add34~27\ & VCC))
-- \Add34~29\ = CARRY((door_counter(14) & !\Add34~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(14),
	datad => VCC,
	cin => \Add34~27\,
	combout => \Add34~28_combout\,
	cout => \Add34~29\);

-- Location: LCCOMB_X13_Y7_N28
\Add34~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~56_combout\ = (\Add34~28_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~28_combout\,
	datac => \door_counter[20]~9_combout\,
	combout => \Add34~56_combout\);

-- Location: FF_X13_Y7_N29
\door_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(14));

-- Location: LCCOMB_X13_Y7_N4
\Add34~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~30_combout\ = (door_counter(15) & (!\Add34~29\)) # (!door_counter(15) & ((\Add34~29\) # (GND)))
-- \Add34~31\ = CARRY((!\Add34~29\) # (!door_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(15),
	datad => VCC,
	cin => \Add34~29\,
	combout => \Add34~30_combout\,
	cout => \Add34~31\);

-- Location: LCCOMB_X12_Y8_N0
\Add34~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~55_combout\ = (\Add34~30_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~30_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~55_combout\);

-- Location: FF_X12_Y8_N1
\door_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(15));

-- Location: LCCOMB_X13_Y7_N6
\Add34~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~32_combout\ = (door_counter(16) & (\Add34~31\ $ (GND))) # (!door_counter(16) & (!\Add34~31\ & VCC))
-- \Add34~33\ = CARRY((door_counter(16) & !\Add34~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(16),
	datad => VCC,
	cin => \Add34~31\,
	combout => \Add34~32_combout\,
	cout => \Add34~33\);

-- Location: LCCOMB_X14_Y7_N18
\Add34~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~54_combout\ = (\Add34~32_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~32_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~54_combout\);

-- Location: FF_X14_Y7_N19
\door_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(16));

-- Location: LCCOMB_X13_Y7_N8
\Add34~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~34_combout\ = (door_counter(17) & (!\Add34~33\)) # (!door_counter(17) & ((\Add34~33\) # (GND)))
-- \Add34~35\ = CARRY((!\Add34~33\) # (!door_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(17),
	datad => VCC,
	cin => \Add34~33\,
	combout => \Add34~34_combout\,
	cout => \Add34~35\);

-- Location: LCCOMB_X14_Y7_N12
\Add34~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~53_combout\ = (\Add34~34_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~34_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~53_combout\);

-- Location: FF_X14_Y7_N13
\door_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(17));

-- Location: LCCOMB_X13_Y7_N10
\Add34~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~36_combout\ = (door_counter(18) & (\Add34~35\ $ (GND))) # (!door_counter(18) & (!\Add34~35\ & VCC))
-- \Add34~37\ = CARRY((door_counter(18) & !\Add34~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(18),
	datad => VCC,
	cin => \Add34~35\,
	combout => \Add34~36_combout\,
	cout => \Add34~37\);

-- Location: LCCOMB_X13_Y7_N30
\Add34~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~52_combout\ = (\Add34~36_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~36_combout\,
	datac => \door_counter[20]~9_combout\,
	combout => \Add34~52_combout\);

-- Location: FF_X13_Y7_N31
\door_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(18));

-- Location: LCCOMB_X13_Y7_N12
\Add34~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~38_combout\ = (door_counter(19) & (!\Add34~37\)) # (!door_counter(19) & ((\Add34~37\) # (GND)))
-- \Add34~39\ = CARRY((!\Add34~37\) # (!door_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(19),
	datad => VCC,
	cin => \Add34~37\,
	combout => \Add34~38_combout\,
	cout => \Add34~39\);

-- Location: LCCOMB_X14_Y7_N16
\Add34~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~71_combout\ = (\Add34~38_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~38_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~71_combout\);

-- Location: FF_X14_Y7_N17
\door_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(19));

-- Location: LCCOMB_X13_Y7_N14
\Add34~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~40_combout\ = (door_counter(20) & (\Add34~39\ $ (GND))) # (!door_counter(20) & (!\Add34~39\ & VCC))
-- \Add34~41\ = CARRY((door_counter(20) & !\Add34~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(20),
	datad => VCC,
	cin => \Add34~39\,
	combout => \Add34~40_combout\,
	cout => \Add34~41\);

-- Location: LCCOMB_X14_Y7_N10
\Add34~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~75_combout\ = (\Add34~40_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~40_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~75_combout\);

-- Location: FF_X14_Y7_N11
\door_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(20));

-- Location: LCCOMB_X13_Y7_N16
\Add34~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~42_combout\ = (door_counter(21) & (!\Add34~41\)) # (!door_counter(21) & ((\Add34~41\) # (GND)))
-- \Add34~43\ = CARRY((!\Add34~41\) # (!door_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(21),
	datad => VCC,
	cin => \Add34~41\,
	combout => \Add34~42_combout\,
	cout => \Add34~43\);

-- Location: LCCOMB_X14_Y7_N24
\Add34~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~74_combout\ = (\Add34~42_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add34~42_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~74_combout\);

-- Location: FF_X14_Y7_N25
\door_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~74_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(21));

-- Location: LCCOMB_X13_Y7_N18
\Add34~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~44_combout\ = (door_counter(22) & (\Add34~43\ $ (GND))) # (!door_counter(22) & (!\Add34~43\ & VCC))
-- \Add34~45\ = CARRY((door_counter(22) & !\Add34~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(22),
	datad => VCC,
	cin => \Add34~43\,
	combout => \Add34~44_combout\,
	cout => \Add34~45\);

-- Location: LCCOMB_X14_Y7_N26
\Add34~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~73_combout\ = (\Add34~44_combout\ & !\door_counter[20]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add34~44_combout\,
	datad => \door_counter[20]~9_combout\,
	combout => \Add34~73_combout\);

-- Location: FF_X14_Y7_N27
\door_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(22));

-- Location: LCCOMB_X13_Y7_N20
\Add34~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~46_combout\ = (door_counter(23) & (!\Add34~45\)) # (!door_counter(23) & ((\Add34~45\) # (GND)))
-- \Add34~47\ = CARRY((!\Add34~45\) # (!door_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(23),
	datad => VCC,
	cin => \Add34~45\,
	combout => \Add34~46_combout\,
	cout => \Add34~47\);

-- Location: LCCOMB_X13_Y7_N26
\Add34~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~72_combout\ = (!\door_counter[20]~9_combout\ & \Add34~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \door_counter[20]~9_combout\,
	datad => \Add34~46_combout\,
	combout => \Add34~72_combout\);

-- Location: FF_X13_Y7_N27
\door_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add34~72_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_door_counter[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(23));

-- Location: LCCOMB_X14_Y7_N28
\LessThan10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~6_combout\ = (door_counter(22) & (door_counter(21) & (door_counter(23) & door_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(22),
	datab => door_counter(21),
	datac => door_counter(23),
	datad => door_counter(20),
	combout => \LessThan10~6_combout\);

-- Location: LCCOMB_X12_Y8_N12
\LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (door_counter(12) & (door_counter(15) & (door_counter(13) & door_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(12),
	datab => door_counter(15),
	datac => door_counter(13),
	datad => door_counter(14),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X12_Y8_N22
\LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (door_counter(4) & (door_counter(5) & (door_counter(6) & door_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(4),
	datab => door_counter(5),
	datac => door_counter(6),
	datad => door_counter(3),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X12_Y8_N24
\LessThan10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (door_counter(0) & (door_counter(2) & (\LessThan10~1_combout\ & door_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(0),
	datab => door_counter(2),
	datac => \LessThan10~1_combout\,
	datad => door_counter(1),
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X12_Y8_N8
\LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (door_counter(11)) # ((door_counter(10)) # ((door_counter(9)) # (door_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(11),
	datab => door_counter(10),
	datac => door_counter(9),
	datad => door_counter(8),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X12_Y8_N30
\LessThan10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = (\LessThan10~0_combout\ & ((\LessThan10~2_combout\) # ((\LessThan10~3_combout\) # (door_counter(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => \LessThan10~2_combout\,
	datac => \LessThan10~3_combout\,
	datad => door_counter(7),
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X14_Y7_N14
\LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~5_combout\ = (door_counter(18)) # ((door_counter(17) & ((\LessThan10~4_combout\) # (door_counter(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(17),
	datab => door_counter(18),
	datac => \LessThan10~4_combout\,
	datad => door_counter(16),
	combout => \LessThan10~5_combout\);

-- Location: LCCOMB_X14_Y7_N22
\LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~7_combout\ = (door_counter(24)) # ((\LessThan10~6_combout\ & (\LessThan10~5_combout\ & door_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(24),
	datab => \LessThan10~6_combout\,
	datac => \LessThan10~5_combout\,
	datad => door_counter(19),
	combout => \LessThan10~7_combout\);

-- Location: LCCOMB_X13_Y10_N18
\LessThan10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~8_combout\ = (door_counter(25) & \LessThan10~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => door_counter(25),
	datad => \LessThan10~7_combout\,
	combout => \LessThan10~8_combout\);

-- Location: LCCOMB_X13_Y10_N6
\Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\main_state.DOOR_CLOSING~q\ & (((\LessThan10~8_combout\)))) # (!\main_state.DOOR_CLOSING~q\ & (!\Add17~3_combout\ & (!\current_floor[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~3_combout\,
	datab => \current_floor[2]~2_combout\,
	datac => \main_state.DOOR_CLOSING~q\,
	datad => \LessThan10~8_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X13_Y10_N4
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\main_state.DOOR_CLOSING~q\ & ((\Selector17~0_combout\) # ((!\main_state.MOVING_UP~q\ & !\main_state.MOVING_DOWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_UP~q\,
	datab => \main_state.DOOR_CLOSING~q\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X13_Y10_N22
\Selector17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (!\Selector17~2_combout\ & ((\main_state.MOVING_UP~q\ & ((\current_floor[2]~2_combout\))) # (!\main_state.MOVING_UP~q\ & (\Selector17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~1_combout\,
	datab => \Selector17~2_combout\,
	datac => \main_state.MOVING_UP~q\,
	datad => \current_floor[2]~2_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X13_Y10_N20
\Selector17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\Selector22~3_combout\ & ((\Selector17~0_combout\) # ((\main_state.DOOR_OPEN_WAIT~q\ & \Selector22~8_combout\)))) # (!\Selector22~3_combout\ & (\main_state.DOOR_OPEN_WAIT~q\ & (\Selector22~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~3_combout\,
	datab => \main_state.DOOR_OPEN_WAIT~q\,
	datac => \Selector22~8_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~4_combout\);

-- Location: LCCOMB_X17_Y9_N20
\Selector18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (!\Selector22~8_combout\ & !\Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector22~8_combout\,
	datad => \Mux0~2_combout\,
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X16_Y9_N24
\Selector17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = ((\LessThan5~2_combout\) # ((!\main_state.DOOR_OPEN_WAIT~q\ & \LessThan6~1_combout\))) # (!\Selector18~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~4_combout\,
	datab => \main_state.DOOR_OPEN_WAIT~q\,
	datac => \LessThan6~1_combout\,
	datad => \LessThan5~2_combout\,
	combout => \Selector17~5_combout\);

-- Location: LCCOMB_X16_Y9_N10
\Selector17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = (\Selector17~3_combout\) # ((\Selector17~4_combout\) # ((\target_floor[0]~2_combout\ & \Selector17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \target_floor[0]~2_combout\,
	datab => \Selector17~3_combout\,
	datac => \Selector17~4_combout\,
	datad => \Selector17~5_combout\,
	combout => \Selector17~6_combout\);

-- Location: LCCOMB_X16_Y9_N8
\main_state.DOOR_OPEN_WAIT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \main_state.DOOR_OPEN_WAIT~0_combout\ = (\Selector88~0_combout\) # ((\main_state.DOOR_OPEN_WAIT~q\ & !\Selector17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~0_combout\,
	datac => \main_state.DOOR_OPEN_WAIT~q\,
	datad => \Selector17~6_combout\,
	combout => \main_state.DOOR_OPEN_WAIT~0_combout\);

-- Location: FF_X16_Y9_N9
\main_state.DOOR_OPEN_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_state.DOOR_OPEN_WAIT~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.DOOR_OPEN_WAIT~q\);

-- Location: LCCOMB_X16_Y7_N28
\LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (((!wait_counter(21)) # (!wait_counter(20))) # (!wait_counter(22))) # (!wait_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(23),
	datab => wait_counter(22),
	datac => wait_counter(20),
	datad => wait_counter(21),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X16_Y8_N2
\LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (((!wait_counter(0)) # (!wait_counter(1))) # (!wait_counter(3))) # (!wait_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(2),
	datab => wait_counter(3),
	datac => wait_counter(1),
	datad => wait_counter(0),
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X16_Y8_N4
\LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (!wait_counter(10) & (!wait_counter(11) & (!wait_counter(8) & !wait_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(10),
	datab => wait_counter(11),
	datac => wait_counter(8),
	datad => wait_counter(9),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X16_Y8_N0
\LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (((!wait_counter(5)) # (!wait_counter(4))) # (!wait_counter(6))) # (!wait_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(7),
	datab => wait_counter(6),
	datac => wait_counter(4),
	datad => wait_counter(5),
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X17_Y8_N4
\LessThan11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~4_combout\ = (\LessThan11~1_combout\ & (!wait_counter(12) & ((\LessThan11~2_combout\) # (\LessThan11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~2_combout\,
	datab => \LessThan11~1_combout\,
	datac => \LessThan11~3_combout\,
	datad => wait_counter(12),
	combout => \LessThan11~4_combout\);

-- Location: LCCOMB_X17_Y7_N8
\LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~5_combout\ = (((!wait_counter(14)) # (!wait_counter(15))) # (!wait_counter(16))) # (!wait_counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(13),
	datab => wait_counter(16),
	datac => wait_counter(15),
	datad => wait_counter(14),
	combout => \LessThan11~5_combout\);

-- Location: LCCOMB_X17_Y7_N6
\LessThan11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~6_combout\ = ((!wait_counter(17) & ((\LessThan11~4_combout\) # (\LessThan11~5_combout\)))) # (!wait_counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(17),
	datab => \LessThan11~4_combout\,
	datac => \LessThan11~5_combout\,
	datad => wait_counter(18),
	combout => \LessThan11~6_combout\);

-- Location: LCCOMB_X16_Y7_N30
\LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~7_combout\ = (\LessThan11~0_combout\) # (((!wait_counter(19) & \LessThan11~6_combout\)) # (!wait_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(19),
	datab => \LessThan11~0_combout\,
	datac => wait_counter(24),
	datad => \LessThan11~6_combout\,
	combout => \LessThan11~7_combout\);

-- Location: LCCOMB_X16_Y10_N22
\wait_counter[22]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[22]~81_combout\ = ((wait_counter(26) & ((wait_counter(25)) # (!\LessThan11~7_combout\)))) # (!\main_state.DOOR_OPEN_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(26),
	datab => wait_counter(25),
	datac => \main_state.DOOR_OPEN_WAIT~q\,
	datad => \LessThan11~7_combout\,
	combout => \wait_counter[22]~81_combout\);

-- Location: LCCOMB_X13_Y10_N28
\wait_counter[22]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[22]~82_combout\ = ((door_counter(25) & (\LessThan10~7_combout\ & \main_state.DOOR_OPENING~q\))) # (!\wait_counter[22]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(25),
	datab => \LessThan10~7_combout\,
	datac => \main_state.DOOR_OPENING~q\,
	datad => \wait_counter[22]~81_combout\,
	combout => \wait_counter[22]~82_combout\);

-- Location: FF_X16_Y8_N7
\wait_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[0]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(0));

-- Location: LCCOMB_X16_Y8_N8
\wait_counter[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[1]~29_combout\ = (wait_counter(1) & (!\wait_counter[0]~28\)) # (!wait_counter(1) & ((\wait_counter[0]~28\) # (GND)))
-- \wait_counter[1]~30\ = CARRY((!\wait_counter[0]~28\) # (!wait_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(1),
	datad => VCC,
	cin => \wait_counter[0]~28\,
	combout => \wait_counter[1]~29_combout\,
	cout => \wait_counter[1]~30\);

-- Location: FF_X16_Y8_N9
\wait_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[1]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(1));

-- Location: LCCOMB_X16_Y8_N10
\wait_counter[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[2]~31_combout\ = (wait_counter(2) & (\wait_counter[1]~30\ $ (GND))) # (!wait_counter(2) & (!\wait_counter[1]~30\ & VCC))
-- \wait_counter[2]~32\ = CARRY((wait_counter(2) & !\wait_counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(2),
	datad => VCC,
	cin => \wait_counter[1]~30\,
	combout => \wait_counter[2]~31_combout\,
	cout => \wait_counter[2]~32\);

-- Location: FF_X16_Y8_N11
\wait_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[2]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(2));

-- Location: LCCOMB_X16_Y8_N12
\wait_counter[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[3]~33_combout\ = (wait_counter(3) & (!\wait_counter[2]~32\)) # (!wait_counter(3) & ((\wait_counter[2]~32\) # (GND)))
-- \wait_counter[3]~34\ = CARRY((!\wait_counter[2]~32\) # (!wait_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(3),
	datad => VCC,
	cin => \wait_counter[2]~32\,
	combout => \wait_counter[3]~33_combout\,
	cout => \wait_counter[3]~34\);

-- Location: FF_X16_Y8_N13
\wait_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[3]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(3));

-- Location: LCCOMB_X16_Y8_N14
\wait_counter[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[4]~35_combout\ = (wait_counter(4) & (\wait_counter[3]~34\ $ (GND))) # (!wait_counter(4) & (!\wait_counter[3]~34\ & VCC))
-- \wait_counter[4]~36\ = CARRY((wait_counter(4) & !\wait_counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(4),
	datad => VCC,
	cin => \wait_counter[3]~34\,
	combout => \wait_counter[4]~35_combout\,
	cout => \wait_counter[4]~36\);

-- Location: FF_X16_Y8_N15
\wait_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[4]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(4));

-- Location: LCCOMB_X16_Y8_N16
\wait_counter[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[5]~37_combout\ = (wait_counter(5) & (!\wait_counter[4]~36\)) # (!wait_counter(5) & ((\wait_counter[4]~36\) # (GND)))
-- \wait_counter[5]~38\ = CARRY((!\wait_counter[4]~36\) # (!wait_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(5),
	datad => VCC,
	cin => \wait_counter[4]~36\,
	combout => \wait_counter[5]~37_combout\,
	cout => \wait_counter[5]~38\);

-- Location: FF_X16_Y8_N17
\wait_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[5]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(5));

-- Location: LCCOMB_X16_Y8_N18
\wait_counter[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[6]~39_combout\ = (wait_counter(6) & (\wait_counter[5]~38\ $ (GND))) # (!wait_counter(6) & (!\wait_counter[5]~38\ & VCC))
-- \wait_counter[6]~40\ = CARRY((wait_counter(6) & !\wait_counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(6),
	datad => VCC,
	cin => \wait_counter[5]~38\,
	combout => \wait_counter[6]~39_combout\,
	cout => \wait_counter[6]~40\);

-- Location: FF_X16_Y8_N19
\wait_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[6]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(6));

-- Location: LCCOMB_X16_Y8_N20
\wait_counter[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[7]~41_combout\ = (wait_counter(7) & (!\wait_counter[6]~40\)) # (!wait_counter(7) & ((\wait_counter[6]~40\) # (GND)))
-- \wait_counter[7]~42\ = CARRY((!\wait_counter[6]~40\) # (!wait_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(7),
	datad => VCC,
	cin => \wait_counter[6]~40\,
	combout => \wait_counter[7]~41_combout\,
	cout => \wait_counter[7]~42\);

-- Location: FF_X16_Y8_N21
\wait_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[7]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(7));

-- Location: LCCOMB_X16_Y8_N22
\wait_counter[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[8]~43_combout\ = (wait_counter(8) & (\wait_counter[7]~42\ $ (GND))) # (!wait_counter(8) & (!\wait_counter[7]~42\ & VCC))
-- \wait_counter[8]~44\ = CARRY((wait_counter(8) & !\wait_counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(8),
	datad => VCC,
	cin => \wait_counter[7]~42\,
	combout => \wait_counter[8]~43_combout\,
	cout => \wait_counter[8]~44\);

-- Location: FF_X16_Y8_N23
\wait_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[8]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(8));

-- Location: LCCOMB_X16_Y8_N24
\wait_counter[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[9]~45_combout\ = (wait_counter(9) & (!\wait_counter[8]~44\)) # (!wait_counter(9) & ((\wait_counter[8]~44\) # (GND)))
-- \wait_counter[9]~46\ = CARRY((!\wait_counter[8]~44\) # (!wait_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(9),
	datad => VCC,
	cin => \wait_counter[8]~44\,
	combout => \wait_counter[9]~45_combout\,
	cout => \wait_counter[9]~46\);

-- Location: FF_X16_Y8_N25
\wait_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[9]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(9));

-- Location: LCCOMB_X16_Y8_N26
\wait_counter[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[10]~47_combout\ = (wait_counter(10) & (\wait_counter[9]~46\ $ (GND))) # (!wait_counter(10) & (!\wait_counter[9]~46\ & VCC))
-- \wait_counter[10]~48\ = CARRY((wait_counter(10) & !\wait_counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(10),
	datad => VCC,
	cin => \wait_counter[9]~46\,
	combout => \wait_counter[10]~47_combout\,
	cout => \wait_counter[10]~48\);

-- Location: FF_X16_Y8_N27
\wait_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[10]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(10));

-- Location: LCCOMB_X16_Y8_N28
\wait_counter[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[11]~49_combout\ = (wait_counter(11) & (!\wait_counter[10]~48\)) # (!wait_counter(11) & ((\wait_counter[10]~48\) # (GND)))
-- \wait_counter[11]~50\ = CARRY((!\wait_counter[10]~48\) # (!wait_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(11),
	datad => VCC,
	cin => \wait_counter[10]~48\,
	combout => \wait_counter[11]~49_combout\,
	cout => \wait_counter[11]~50\);

-- Location: FF_X16_Y8_N29
\wait_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[11]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(11));

-- Location: LCCOMB_X16_Y8_N30
\wait_counter[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[12]~51_combout\ = (wait_counter(12) & (\wait_counter[11]~50\ $ (GND))) # (!wait_counter(12) & (!\wait_counter[11]~50\ & VCC))
-- \wait_counter[12]~52\ = CARRY((wait_counter(12) & !\wait_counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(12),
	datad => VCC,
	cin => \wait_counter[11]~50\,
	combout => \wait_counter[12]~51_combout\,
	cout => \wait_counter[12]~52\);

-- Location: FF_X16_Y8_N31
\wait_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[12]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(12));

-- Location: LCCOMB_X16_Y7_N0
\wait_counter[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[13]~53_combout\ = (wait_counter(13) & (!\wait_counter[12]~52\)) # (!wait_counter(13) & ((\wait_counter[12]~52\) # (GND)))
-- \wait_counter[13]~54\ = CARRY((!\wait_counter[12]~52\) # (!wait_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(13),
	datad => VCC,
	cin => \wait_counter[12]~52\,
	combout => \wait_counter[13]~53_combout\,
	cout => \wait_counter[13]~54\);

-- Location: FF_X16_Y7_N1
\wait_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[13]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(13));

-- Location: LCCOMB_X16_Y7_N2
\wait_counter[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[14]~55_combout\ = (wait_counter(14) & (\wait_counter[13]~54\ $ (GND))) # (!wait_counter(14) & (!\wait_counter[13]~54\ & VCC))
-- \wait_counter[14]~56\ = CARRY((wait_counter(14) & !\wait_counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(14),
	datad => VCC,
	cin => \wait_counter[13]~54\,
	combout => \wait_counter[14]~55_combout\,
	cout => \wait_counter[14]~56\);

-- Location: FF_X16_Y7_N3
\wait_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[14]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(14));

-- Location: LCCOMB_X16_Y7_N4
\wait_counter[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[15]~57_combout\ = (wait_counter(15) & (!\wait_counter[14]~56\)) # (!wait_counter(15) & ((\wait_counter[14]~56\) # (GND)))
-- \wait_counter[15]~58\ = CARRY((!\wait_counter[14]~56\) # (!wait_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(15),
	datad => VCC,
	cin => \wait_counter[14]~56\,
	combout => \wait_counter[15]~57_combout\,
	cout => \wait_counter[15]~58\);

-- Location: FF_X16_Y7_N5
\wait_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[15]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(15));

-- Location: LCCOMB_X16_Y7_N6
\wait_counter[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[16]~59_combout\ = (wait_counter(16) & (\wait_counter[15]~58\ $ (GND))) # (!wait_counter(16) & (!\wait_counter[15]~58\ & VCC))
-- \wait_counter[16]~60\ = CARRY((wait_counter(16) & !\wait_counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(16),
	datad => VCC,
	cin => \wait_counter[15]~58\,
	combout => \wait_counter[16]~59_combout\,
	cout => \wait_counter[16]~60\);

-- Location: FF_X16_Y7_N7
\wait_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[16]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(16));

-- Location: LCCOMB_X16_Y7_N8
\wait_counter[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[17]~61_combout\ = (wait_counter(17) & (!\wait_counter[16]~60\)) # (!wait_counter(17) & ((\wait_counter[16]~60\) # (GND)))
-- \wait_counter[17]~62\ = CARRY((!\wait_counter[16]~60\) # (!wait_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(17),
	datad => VCC,
	cin => \wait_counter[16]~60\,
	combout => \wait_counter[17]~61_combout\,
	cout => \wait_counter[17]~62\);

-- Location: FF_X16_Y7_N9
\wait_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[17]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(17));

-- Location: LCCOMB_X16_Y7_N10
\wait_counter[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[18]~63_combout\ = (wait_counter(18) & (\wait_counter[17]~62\ $ (GND))) # (!wait_counter(18) & (!\wait_counter[17]~62\ & VCC))
-- \wait_counter[18]~64\ = CARRY((wait_counter(18) & !\wait_counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(18),
	datad => VCC,
	cin => \wait_counter[17]~62\,
	combout => \wait_counter[18]~63_combout\,
	cout => \wait_counter[18]~64\);

-- Location: FF_X16_Y7_N11
\wait_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[18]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(18));

-- Location: LCCOMB_X16_Y7_N12
\wait_counter[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[19]~65_combout\ = (wait_counter(19) & (!\wait_counter[18]~64\)) # (!wait_counter(19) & ((\wait_counter[18]~64\) # (GND)))
-- \wait_counter[19]~66\ = CARRY((!\wait_counter[18]~64\) # (!wait_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(19),
	datad => VCC,
	cin => \wait_counter[18]~64\,
	combout => \wait_counter[19]~65_combout\,
	cout => \wait_counter[19]~66\);

-- Location: FF_X16_Y7_N13
\wait_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[19]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(19));

-- Location: LCCOMB_X16_Y7_N14
\wait_counter[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[20]~67_combout\ = (wait_counter(20) & (\wait_counter[19]~66\ $ (GND))) # (!wait_counter(20) & (!\wait_counter[19]~66\ & VCC))
-- \wait_counter[20]~68\ = CARRY((wait_counter(20) & !\wait_counter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(20),
	datad => VCC,
	cin => \wait_counter[19]~66\,
	combout => \wait_counter[20]~67_combout\,
	cout => \wait_counter[20]~68\);

-- Location: FF_X16_Y7_N15
\wait_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[20]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(20));

-- Location: LCCOMB_X16_Y7_N16
\wait_counter[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[21]~69_combout\ = (wait_counter(21) & (!\wait_counter[20]~68\)) # (!wait_counter(21) & ((\wait_counter[20]~68\) # (GND)))
-- \wait_counter[21]~70\ = CARRY((!\wait_counter[20]~68\) # (!wait_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(21),
	datad => VCC,
	cin => \wait_counter[20]~68\,
	combout => \wait_counter[21]~69_combout\,
	cout => \wait_counter[21]~70\);

-- Location: FF_X16_Y7_N17
\wait_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[21]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(21));

-- Location: LCCOMB_X16_Y7_N18
\wait_counter[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[22]~71_combout\ = (wait_counter(22) & (\wait_counter[21]~70\ $ (GND))) # (!wait_counter(22) & (!\wait_counter[21]~70\ & VCC))
-- \wait_counter[22]~72\ = CARRY((wait_counter(22) & !\wait_counter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(22),
	datad => VCC,
	cin => \wait_counter[21]~70\,
	combout => \wait_counter[22]~71_combout\,
	cout => \wait_counter[22]~72\);

-- Location: FF_X16_Y7_N19
\wait_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[22]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(22));

-- Location: LCCOMB_X16_Y7_N20
\wait_counter[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[23]~73_combout\ = (wait_counter(23) & (!\wait_counter[22]~72\)) # (!wait_counter(23) & ((\wait_counter[22]~72\) # (GND)))
-- \wait_counter[23]~74\ = CARRY((!\wait_counter[22]~72\) # (!wait_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(23),
	datad => VCC,
	cin => \wait_counter[22]~72\,
	combout => \wait_counter[23]~73_combout\,
	cout => \wait_counter[23]~74\);

-- Location: FF_X16_Y7_N21
\wait_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[23]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(23));

-- Location: LCCOMB_X16_Y7_N22
\wait_counter[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[24]~75_combout\ = (wait_counter(24) & (\wait_counter[23]~74\ $ (GND))) # (!wait_counter(24) & (!\wait_counter[23]~74\ & VCC))
-- \wait_counter[24]~76\ = CARRY((wait_counter(24) & !\wait_counter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(24),
	datad => VCC,
	cin => \wait_counter[23]~74\,
	combout => \wait_counter[24]~75_combout\,
	cout => \wait_counter[24]~76\);

-- Location: FF_X16_Y7_N23
\wait_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[24]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(24));

-- Location: LCCOMB_X16_Y7_N24
\wait_counter[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[25]~77_combout\ = (wait_counter(25) & (!\wait_counter[24]~76\)) # (!wait_counter(25) & ((\wait_counter[24]~76\) # (GND)))
-- \wait_counter[25]~78\ = CARRY((!\wait_counter[24]~76\) # (!wait_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wait_counter(25),
	datad => VCC,
	cin => \wait_counter[24]~76\,
	combout => \wait_counter[25]~77_combout\,
	cout => \wait_counter[25]~78\);

-- Location: FF_X16_Y7_N25
\wait_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[25]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(25));

-- Location: LCCOMB_X16_Y7_N26
\wait_counter[26]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wait_counter[26]~79_combout\ = wait_counter(26) $ (!\wait_counter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(26),
	cin => \wait_counter[25]~78\,
	combout => \wait_counter[26]~79_combout\);

-- Location: FF_X16_Y7_N27
\wait_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wait_counter[26]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_main_state.DOOR_OPEN_WAIT~q\,
	ena => \wait_counter[22]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wait_counter(26));

-- Location: LCCOMB_X16_Y10_N4
\Selector22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~8_combout\ = (wait_counter(26) & (\main_state.DOOR_OPEN_WAIT~q\ & ((wait_counter(25)) # (!\LessThan11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_counter(26),
	datab => wait_counter(25),
	datac => \main_state.DOOR_OPEN_WAIT~q\,
	datad => \LessThan11~7_combout\,
	combout => \Selector22~8_combout\);

-- Location: LCCOMB_X13_Y10_N30
\Selector22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~9_combout\ = (\Selector22~8_combout\) # ((\main_state.DOOR_CLOSING~q\ & ((!\LessThan10~7_combout\) # (!door_counter(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(25),
	datab => \Selector22~8_combout\,
	datac => \main_state.DOOR_CLOSING~q\,
	datad => \LessThan10~7_combout\,
	combout => \Selector22~9_combout\);

-- Location: FF_X13_Y10_N31
\main_state.DOOR_CLOSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.DOOR_CLOSING~q\);

-- Location: LCCOMB_X13_Y10_N14
\door_counter[20]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[20]~9_combout\ = (\main_state.DOOR_CLOSING~q\ & (door_counter(25) & ((\LessThan10~7_combout\)))) # (!\main_state.DOOR_CLOSING~q\ & (((!\main_state.DOOR_OPENING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.DOOR_CLOSING~q\,
	datab => door_counter(25),
	datac => \main_state.DOOR_OPENING~q\,
	datad => \LessThan10~7_combout\,
	combout => \door_counter[20]~9_combout\);

-- Location: LCCOMB_X13_Y7_N22
\Add34~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~48_combout\ = (door_counter(24) & (\Add34~47\ $ (GND))) # (!door_counter(24) & (!\Add34~47\ & VCC))
-- \Add34~49\ = CARRY((door_counter(24) & !\Add34~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => door_counter(24),
	datad => VCC,
	cin => \Add34~47\,
	combout => \Add34~48_combout\,
	cout => \Add34~49\);

-- Location: LCCOMB_X14_Y7_N30
\door_counter[24]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[24]~8_combout\ = (\door_counter[20]~6_combout\ & (((door_counter(24))))) # (!\door_counter[20]~6_combout\ & (!\door_counter[20]~9_combout\ & (\Add34~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \door_counter[20]~9_combout\,
	datab => \Add34~48_combout\,
	datac => door_counter(24),
	datad => \door_counter[20]~6_combout\,
	combout => \door_counter[24]~8_combout\);

-- Location: FF_X14_Y7_N31
\door_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \door_counter[24]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(24));

-- Location: LCCOMB_X13_Y7_N24
\Add34~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add34~50_combout\ = door_counter(25) $ (\Add34~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => door_counter(25),
	cin => \Add34~49\,
	combout => \Add34~50_combout\);

-- Location: LCCOMB_X13_Y10_N24
\door_counter[25]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_counter[25]~7_combout\ = (\door_counter[20]~6_combout\ & (((door_counter(25))))) # (!\door_counter[20]~6_combout\ & (\Add34~50_combout\ & (!\door_counter[20]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~50_combout\,
	datab => \door_counter[20]~9_combout\,
	datac => door_counter(25),
	datad => \door_counter[20]~6_combout\,
	combout => \door_counter[25]~7_combout\);

-- Location: FF_X13_Y10_N25
\door_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \door_counter[25]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => door_counter(25));

-- Location: LCCOMB_X13_Y10_N10
\Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (door_counter(25) & (\main_state.DOOR_OPENING~q\ & \LessThan10~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => door_counter(25),
	datac => \main_state.DOOR_OPENING~q\,
	datad => \LessThan10~7_combout\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X16_Y9_N26
\Selector17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~7_combout\ = (\Selector88~0_combout\) # ((!\Selector17~3_combout\ & ((\main_state.IDLE~q\) # (\Selector17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~0_combout\,
	datab => \Selector17~3_combout\,
	datac => \main_state.IDLE~q\,
	datad => \Selector17~6_combout\,
	combout => \Selector17~7_combout\);

-- Location: FF_X16_Y9_N27
\main_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.IDLE~q\);

-- Location: LCCOMB_X11_Y10_N4
\timer_counter[4]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[4]~78_combout\ = (!\main_state.IDLE~q\) # (!\LessThan7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~9_combout\,
	datad => \main_state.IDLE~q\,
	combout => \timer_counter[4]~78_combout\);

-- Location: LCCOMB_X10_Y9_N28
\timer_counter[4]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[4]~79_combout\ = (\Equal0~0_combout\ & (((\LessThan5~2_combout\) # (\LessThan6~1_combout\)))) # (!\Equal0~0_combout\ & (floor_calls(1) & ((\LessThan5~2_combout\) # (\LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => floor_calls(1),
	datac => \LessThan5~2_combout\,
	datad => \LessThan6~1_combout\,
	combout => \timer_counter[4]~79_combout\);

-- Location: LCCOMB_X10_Y9_N30
\timer_counter[4]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[4]~80_combout\ = (!\WideOr2~combout\ & ((\main_state.IDLE~q\) # ((!\Mux0~2_combout\ & \timer_counter[4]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \main_state.IDLE~q\,
	datac => \Mux0~2_combout\,
	datad => \timer_counter[4]~79_combout\,
	combout => \timer_counter[4]~80_combout\);

-- Location: FF_X11_Y9_N3
\timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer_counter[0]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	sload => VCC,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(0));

-- Location: LCCOMB_X10_Y10_N6
\timer_counter[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[1]~30_combout\ = (timer_counter(1) & (!\timer_counter[0]~29\)) # (!timer_counter(1) & ((\timer_counter[0]~29\) # (GND)))
-- \timer_counter[1]~31\ = CARRY((!\timer_counter[0]~29\) # (!timer_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(1),
	datad => VCC,
	cin => \timer_counter[0]~29\,
	combout => \timer_counter[1]~30_combout\,
	cout => \timer_counter[1]~31\);

-- Location: FF_X10_Y10_N7
\timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[1]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(1));

-- Location: LCCOMB_X10_Y10_N8
\timer_counter[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[2]~32_combout\ = (timer_counter(2) & (\timer_counter[1]~31\ $ (GND))) # (!timer_counter(2) & (!\timer_counter[1]~31\ & VCC))
-- \timer_counter[2]~33\ = CARRY((timer_counter(2) & !\timer_counter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(2),
	datad => VCC,
	cin => \timer_counter[1]~31\,
	combout => \timer_counter[2]~32_combout\,
	cout => \timer_counter[2]~33\);

-- Location: FF_X10_Y10_N9
\timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[2]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(2));

-- Location: LCCOMB_X10_Y10_N10
\timer_counter[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[3]~34_combout\ = (timer_counter(3) & (!\timer_counter[2]~33\)) # (!timer_counter(3) & ((\timer_counter[2]~33\) # (GND)))
-- \timer_counter[3]~35\ = CARRY((!\timer_counter[2]~33\) # (!timer_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(3),
	datad => VCC,
	cin => \timer_counter[2]~33\,
	combout => \timer_counter[3]~34_combout\,
	cout => \timer_counter[3]~35\);

-- Location: FF_X10_Y10_N11
\timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[3]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(3));

-- Location: LCCOMB_X10_Y10_N12
\timer_counter[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[4]~36_combout\ = (timer_counter(4) & (\timer_counter[3]~35\ $ (GND))) # (!timer_counter(4) & (!\timer_counter[3]~35\ & VCC))
-- \timer_counter[4]~37\ = CARRY((timer_counter(4) & !\timer_counter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(4),
	datad => VCC,
	cin => \timer_counter[3]~35\,
	combout => \timer_counter[4]~36_combout\,
	cout => \timer_counter[4]~37\);

-- Location: FF_X10_Y10_N13
\timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[4]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(4));

-- Location: LCCOMB_X10_Y10_N14
\timer_counter[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[5]~38_combout\ = (timer_counter(5) & (!\timer_counter[4]~37\)) # (!timer_counter(5) & ((\timer_counter[4]~37\) # (GND)))
-- \timer_counter[5]~39\ = CARRY((!\timer_counter[4]~37\) # (!timer_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(5),
	datad => VCC,
	cin => \timer_counter[4]~37\,
	combout => \timer_counter[5]~38_combout\,
	cout => \timer_counter[5]~39\);

-- Location: FF_X10_Y10_N15
\timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[5]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(5));

-- Location: LCCOMB_X10_Y10_N16
\timer_counter[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[6]~40_combout\ = (timer_counter(6) & (\timer_counter[5]~39\ $ (GND))) # (!timer_counter(6) & (!\timer_counter[5]~39\ & VCC))
-- \timer_counter[6]~41\ = CARRY((timer_counter(6) & !\timer_counter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(6),
	datad => VCC,
	cin => \timer_counter[5]~39\,
	combout => \timer_counter[6]~40_combout\,
	cout => \timer_counter[6]~41\);

-- Location: FF_X10_Y10_N17
\timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[6]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(6));

-- Location: LCCOMB_X10_Y10_N18
\timer_counter[7]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[7]~42_combout\ = (timer_counter(7) & (!\timer_counter[6]~41\)) # (!timer_counter(7) & ((\timer_counter[6]~41\) # (GND)))
-- \timer_counter[7]~43\ = CARRY((!\timer_counter[6]~41\) # (!timer_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(7),
	datad => VCC,
	cin => \timer_counter[6]~41\,
	combout => \timer_counter[7]~42_combout\,
	cout => \timer_counter[7]~43\);

-- Location: FF_X10_Y10_N19
\timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[7]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(7));

-- Location: LCCOMB_X10_Y10_N20
\timer_counter[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[8]~44_combout\ = (timer_counter(8) & (\timer_counter[7]~43\ $ (GND))) # (!timer_counter(8) & (!\timer_counter[7]~43\ & VCC))
-- \timer_counter[8]~45\ = CARRY((timer_counter(8) & !\timer_counter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(8),
	datad => VCC,
	cin => \timer_counter[7]~43\,
	combout => \timer_counter[8]~44_combout\,
	cout => \timer_counter[8]~45\);

-- Location: FF_X10_Y10_N21
\timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[8]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(8));

-- Location: LCCOMB_X10_Y10_N22
\timer_counter[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[9]~46_combout\ = (timer_counter(9) & (!\timer_counter[8]~45\)) # (!timer_counter(9) & ((\timer_counter[8]~45\) # (GND)))
-- \timer_counter[9]~47\ = CARRY((!\timer_counter[8]~45\) # (!timer_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(9),
	datad => VCC,
	cin => \timer_counter[8]~45\,
	combout => \timer_counter[9]~46_combout\,
	cout => \timer_counter[9]~47\);

-- Location: FF_X10_Y10_N23
\timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[9]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(9));

-- Location: LCCOMB_X10_Y10_N24
\timer_counter[10]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[10]~48_combout\ = (timer_counter(10) & (\timer_counter[9]~47\ $ (GND))) # (!timer_counter(10) & (!\timer_counter[9]~47\ & VCC))
-- \timer_counter[10]~49\ = CARRY((timer_counter(10) & !\timer_counter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(10),
	datad => VCC,
	cin => \timer_counter[9]~47\,
	combout => \timer_counter[10]~48_combout\,
	cout => \timer_counter[10]~49\);

-- Location: FF_X10_Y10_N25
\timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[10]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(10));

-- Location: LCCOMB_X10_Y10_N26
\timer_counter[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[11]~50_combout\ = (timer_counter(11) & (!\timer_counter[10]~49\)) # (!timer_counter(11) & ((\timer_counter[10]~49\) # (GND)))
-- \timer_counter[11]~51\ = CARRY((!\timer_counter[10]~49\) # (!timer_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(11),
	datad => VCC,
	cin => \timer_counter[10]~49\,
	combout => \timer_counter[11]~50_combout\,
	cout => \timer_counter[11]~51\);

-- Location: FF_X10_Y10_N27
\timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[11]~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(11));

-- Location: LCCOMB_X10_Y10_N28
\timer_counter[12]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[12]~52_combout\ = (timer_counter(12) & (\timer_counter[11]~51\ $ (GND))) # (!timer_counter(12) & (!\timer_counter[11]~51\ & VCC))
-- \timer_counter[12]~53\ = CARRY((timer_counter(12) & !\timer_counter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(12),
	datad => VCC,
	cin => \timer_counter[11]~51\,
	combout => \timer_counter[12]~52_combout\,
	cout => \timer_counter[12]~53\);

-- Location: FF_X10_Y10_N29
\timer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[12]~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(12));

-- Location: LCCOMB_X10_Y10_N30
\timer_counter[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[13]~54_combout\ = (timer_counter(13) & (!\timer_counter[12]~53\)) # (!timer_counter(13) & ((\timer_counter[12]~53\) # (GND)))
-- \timer_counter[13]~55\ = CARRY((!\timer_counter[12]~53\) # (!timer_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(13),
	datad => VCC,
	cin => \timer_counter[12]~53\,
	combout => \timer_counter[13]~54_combout\,
	cout => \timer_counter[13]~55\);

-- Location: FF_X10_Y10_N31
\timer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[13]~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(13));

-- Location: LCCOMB_X10_Y9_N0
\timer_counter[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[14]~56_combout\ = (timer_counter(14) & (\timer_counter[13]~55\ $ (GND))) # (!timer_counter(14) & (!\timer_counter[13]~55\ & VCC))
-- \timer_counter[14]~57\ = CARRY((timer_counter(14) & !\timer_counter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(14),
	datad => VCC,
	cin => \timer_counter[13]~55\,
	combout => \timer_counter[14]~56_combout\,
	cout => \timer_counter[14]~57\);

-- Location: FF_X10_Y9_N1
\timer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[14]~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(14));

-- Location: LCCOMB_X10_Y9_N2
\timer_counter[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[15]~58_combout\ = (timer_counter(15) & (!\timer_counter[14]~57\)) # (!timer_counter(15) & ((\timer_counter[14]~57\) # (GND)))
-- \timer_counter[15]~59\ = CARRY((!\timer_counter[14]~57\) # (!timer_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(15),
	datad => VCC,
	cin => \timer_counter[14]~57\,
	combout => \timer_counter[15]~58_combout\,
	cout => \timer_counter[15]~59\);

-- Location: FF_X10_Y9_N3
\timer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[15]~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(15));

-- Location: LCCOMB_X10_Y9_N4
\timer_counter[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[16]~60_combout\ = (timer_counter(16) & (\timer_counter[15]~59\ $ (GND))) # (!timer_counter(16) & (!\timer_counter[15]~59\ & VCC))
-- \timer_counter[16]~61\ = CARRY((timer_counter(16) & !\timer_counter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(16),
	datad => VCC,
	cin => \timer_counter[15]~59\,
	combout => \timer_counter[16]~60_combout\,
	cout => \timer_counter[16]~61\);

-- Location: FF_X10_Y9_N5
\timer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[16]~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(16));

-- Location: LCCOMB_X10_Y9_N6
\timer_counter[17]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[17]~62_combout\ = (timer_counter(17) & (!\timer_counter[16]~61\)) # (!timer_counter(17) & ((\timer_counter[16]~61\) # (GND)))
-- \timer_counter[17]~63\ = CARRY((!\timer_counter[16]~61\) # (!timer_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(17),
	datad => VCC,
	cin => \timer_counter[16]~61\,
	combout => \timer_counter[17]~62_combout\,
	cout => \timer_counter[17]~63\);

-- Location: FF_X10_Y9_N7
\timer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[17]~62_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(17));

-- Location: LCCOMB_X10_Y9_N8
\timer_counter[18]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[18]~64_combout\ = (timer_counter(18) & (\timer_counter[17]~63\ $ (GND))) # (!timer_counter(18) & (!\timer_counter[17]~63\ & VCC))
-- \timer_counter[18]~65\ = CARRY((timer_counter(18) & !\timer_counter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(18),
	datad => VCC,
	cin => \timer_counter[17]~63\,
	combout => \timer_counter[18]~64_combout\,
	cout => \timer_counter[18]~65\);

-- Location: FF_X10_Y9_N9
\timer_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[18]~64_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(18));

-- Location: LCCOMB_X10_Y9_N10
\timer_counter[19]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[19]~66_combout\ = (timer_counter(19) & (!\timer_counter[18]~65\)) # (!timer_counter(19) & ((\timer_counter[18]~65\) # (GND)))
-- \timer_counter[19]~67\ = CARRY((!\timer_counter[18]~65\) # (!timer_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(19),
	datad => VCC,
	cin => \timer_counter[18]~65\,
	combout => \timer_counter[19]~66_combout\,
	cout => \timer_counter[19]~67\);

-- Location: FF_X10_Y9_N11
\timer_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[19]~66_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(19));

-- Location: LCCOMB_X10_Y9_N12
\timer_counter[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[20]~68_combout\ = (timer_counter(20) & (\timer_counter[19]~67\ $ (GND))) # (!timer_counter(20) & (!\timer_counter[19]~67\ & VCC))
-- \timer_counter[20]~69\ = CARRY((timer_counter(20) & !\timer_counter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(20),
	datad => VCC,
	cin => \timer_counter[19]~67\,
	combout => \timer_counter[20]~68_combout\,
	cout => \timer_counter[20]~69\);

-- Location: FF_X10_Y9_N13
\timer_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[20]~68_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(20));

-- Location: LCCOMB_X10_Y9_N14
\timer_counter[21]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[21]~70_combout\ = (timer_counter(21) & (!\timer_counter[20]~69\)) # (!timer_counter(21) & ((\timer_counter[20]~69\) # (GND)))
-- \timer_counter[21]~71\ = CARRY((!\timer_counter[20]~69\) # (!timer_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(21),
	datad => VCC,
	cin => \timer_counter[20]~69\,
	combout => \timer_counter[21]~70_combout\,
	cout => \timer_counter[21]~71\);

-- Location: FF_X10_Y9_N15
\timer_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[21]~70_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(21));

-- Location: LCCOMB_X10_Y9_N16
\timer_counter[22]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[22]~72_combout\ = (timer_counter(22) & (\timer_counter[21]~71\ $ (GND))) # (!timer_counter(22) & (!\timer_counter[21]~71\ & VCC))
-- \timer_counter[22]~73\ = CARRY((timer_counter(22) & !\timer_counter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(22),
	datad => VCC,
	cin => \timer_counter[21]~71\,
	combout => \timer_counter[22]~72_combout\,
	cout => \timer_counter[22]~73\);

-- Location: FF_X10_Y9_N17
\timer_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[22]~72_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(22));

-- Location: LCCOMB_X10_Y9_N18
\timer_counter[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[23]~74_combout\ = (timer_counter(23) & (!\timer_counter[22]~73\)) # (!timer_counter(23) & ((\timer_counter[22]~73\) # (GND)))
-- \timer_counter[23]~75\ = CARRY((!\timer_counter[22]~73\) # (!timer_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(23),
	datad => VCC,
	cin => \timer_counter[22]~73\,
	combout => \timer_counter[23]~74_combout\,
	cout => \timer_counter[23]~75\);

-- Location: FF_X10_Y9_N19
\timer_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[23]~74_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(23));

-- Location: LCCOMB_X10_Y10_N2
\LessThan7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~8_combout\ = (((!timer_counter(23)) # (!timer_counter(21))) # (!timer_counter(22))) # (!timer_counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(20),
	datab => timer_counter(22),
	datac => timer_counter(21),
	datad => timer_counter(23),
	combout => \LessThan7~8_combout\);

-- Location: LCCOMB_X10_Y9_N20
\timer_counter[24]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[24]~76_combout\ = (timer_counter(24) & (\timer_counter[23]~75\ $ (GND))) # (!timer_counter(24) & (!\timer_counter[23]~75\ & VCC))
-- \timer_counter[24]~77\ = CARRY((timer_counter(24) & !\timer_counter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(24),
	datad => VCC,
	cin => \timer_counter[23]~75\,
	combout => \timer_counter[24]~76_combout\,
	cout => \timer_counter[24]~77\);

-- Location: FF_X10_Y9_N21
\timer_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[24]~76_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(24));

-- Location: LCCOMB_X10_Y9_N22
\timer_counter[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[25]~81_combout\ = (timer_counter(25) & (!\timer_counter[24]~77\)) # (!timer_counter(25) & ((\timer_counter[24]~77\) # (GND)))
-- \timer_counter[25]~82\ = CARRY((!\timer_counter[24]~77\) # (!timer_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(25),
	datad => VCC,
	cin => \timer_counter[24]~77\,
	combout => \timer_counter[25]~81_combout\,
	cout => \timer_counter[25]~82\);

-- Location: FF_X10_Y9_N23
\timer_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[25]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(25));

-- Location: LCCOMB_X10_Y9_N24
\timer_counter[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[26]~83_combout\ = (timer_counter(26) & (\timer_counter[25]~82\ $ (GND))) # (!timer_counter(26) & (!\timer_counter[25]~82\ & VCC))
-- \timer_counter[26]~84\ = CARRY((timer_counter(26) & !\timer_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(26),
	datad => VCC,
	cin => \timer_counter[25]~82\,
	combout => \timer_counter[26]~83_combout\,
	cout => \timer_counter[26]~84\);

-- Location: FF_X10_Y9_N25
\timer_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[26]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(26));

-- Location: LCCOMB_X9_Y9_N0
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!timer_counter(26) & (!timer_counter(24) & !timer_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(26),
	datac => timer_counter(24),
	datad => timer_counter(25),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X10_Y9_N26
\timer_counter[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_counter[27]~85_combout\ = timer_counter(27) $ (\timer_counter[26]~84\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(27),
	cin => \timer_counter[26]~84\,
	combout => \timer_counter[27]~85_combout\);

-- Location: FF_X10_Y9_N27
\timer_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_counter[27]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \timer_counter[4]~78_combout\,
	ena => \timer_counter[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_counter(27));

-- Location: LCCOMB_X9_Y10_N30
\LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ((!timer_counter(6)) # (!timer_counter(5))) # (!timer_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(4),
	datab => timer_counter(5),
	datad => timer_counter(6),
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X10_Y10_N0
\LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (((!timer_counter(1)) # (!timer_counter(2))) # (!timer_counter(0))) # (!timer_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(3),
	datab => timer_counter(0),
	datac => timer_counter(2),
	datad => timer_counter(1),
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X9_Y10_N28
\LessThan7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = ((!timer_counter(7) & ((\LessThan7~3_combout\) # (\LessThan7~2_combout\)))) # (!timer_counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~3_combout\,
	datab => timer_counter(8),
	datac => \LessThan7~2_combout\,
	datad => timer_counter(7),
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X11_Y10_N0
\LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = (!timer_counter(10) & (!timer_counter(11) & !timer_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_counter(10),
	datac => timer_counter(11),
	datad => timer_counter(9),
	combout => \LessThan7~5_combout\);

-- Location: LCCOMB_X11_Y10_N2
\LessThan7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~6_combout\ = (!timer_counter(13) & (((\LessThan7~4_combout\ & \LessThan7~5_combout\)) # (!timer_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(12),
	datab => timer_counter(13),
	datac => \LessThan7~4_combout\,
	datad => \LessThan7~5_combout\,
	combout => \LessThan7~6_combout\);

-- Location: LCCOMB_X11_Y10_N22
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!timer_counter(16) & (!timer_counter(17) & (!timer_counter(19) & !timer_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(16),
	datab => timer_counter(17),
	datac => timer_counter(19),
	datad => timer_counter(18),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X11_Y10_N6
\LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~7_combout\ = (\LessThan7~1_combout\ & (((\LessThan7~6_combout\) # (!timer_counter(15))) # (!timer_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_counter(14),
	datab => \LessThan7~6_combout\,
	datac => \LessThan7~1_combout\,
	datad => timer_counter(15),
	combout => \LessThan7~7_combout\);

-- Location: LCCOMB_X11_Y10_N28
\LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~9_combout\ = ((\LessThan7~0_combout\ & ((\LessThan7~8_combout\) # (\LessThan7~7_combout\)))) # (!timer_counter(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~8_combout\,
	datab => \LessThan7~0_combout\,
	datac => timer_counter(27),
	datad => \LessThan7~7_combout\,
	combout => \LessThan7~9_combout\);

-- Location: LCCOMB_X12_Y9_N30
\Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (!\LessThan7~9_combout\ & ((\main_state.MOVING_DOWN~q\) # (\main_state.MOVING_UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~9_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \main_state.MOVING_UP~q\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X12_Y9_N6
\Selector22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~7_combout\ = ((\Selector22~2_combout\) # ((\Selector22~3_combout\ & \Selector17~0_combout\))) # (!\Selector22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~3_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector22~6_combout\,
	datad => \Selector22~2_combout\,
	combout => \Selector22~7_combout\);

-- Location: LCCOMB_X12_Y9_N2
\Selector18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~5_combout\ = (!\Mux0~2_combout\ & (!\LessThan5~2_combout\ & (!\Selector22~8_combout\ & \Selector22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \LessThan5~2_combout\,
	datac => \Selector22~8_combout\,
	datad => \Selector22~2_combout\,
	combout => \Selector18~5_combout\);

-- Location: LCCOMB_X12_Y9_N18
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Selector18~5_combout\) # ((!\Selector22~7_combout\ & (!\Selector22~8_combout\ & \main_state.MOVING_DOWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~7_combout\,
	datab => \Selector22~8_combout\,
	datac => \main_state.MOVING_DOWN~q\,
	datad => \Selector18~5_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X12_Y9_N19
\main_state.MOVING_DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.MOVING_DOWN~q\);

-- Location: LCCOMB_X14_Y9_N24
\Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\WideOr2~combout\) # ((!\main_state.IDLE~q\ & ((!\Equal3~1_combout\) # (!\floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~4_combout\,
	datab => \Equal3~1_combout\,
	datac => \WideOr2~combout\,
	datad => \main_state.IDLE~q\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X14_Y9_N10
\Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~1_combout\) # ((\main_state.MOVING_DOWN~q\ & ((!\Equal3~2_combout\) # (!\floor_calls~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~6_combout\,
	datab => \main_state.MOVING_DOWN~q\,
	datac => \Equal3~2_combout\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X14_Y9_N6
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\main_state.MOVING_UP~q\ & (((\LessThan7~9_combout\) # (!\floor_calls~3_combout\)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \main_state.MOVING_UP~q\,
	datac => \LessThan7~9_combout\,
	datad => \floor_calls~3_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X14_Y9_N8
\Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~2_combout\ & ((\elevator_control~2_combout\) # ((floor_calls(2))))) # (!\Selector15~2_combout\ & (\Selector15~0_combout\ & ((\elevator_control~2_combout\) # (floor_calls(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~2_combout\,
	datab => \elevator_control~2_combout\,
	datac => floor_calls(2),
	datad => \Selector15~0_combout\,
	combout => \Selector15~3_combout\);

-- Location: FF_X14_Y9_N9
\floor_calls[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => floor_calls(2));

-- Location: LCCOMB_X10_Y11_N26
\best_score~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \best_score~33_combout\ = (floor_calls(3) & \LessThan2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => floor_calls(3),
	datad => \LessThan2~14_combout\,
	combout => \best_score~33_combout\);

-- Location: LCCOMB_X11_Y11_N26
\next_target~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~0_combout\ = (!\best_score~33_combout\ & (!\best_score~32_combout\ & ((!\LessThan1~14_combout\) # (!floor_calls(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(2),
	datab => \LessThan1~14_combout\,
	datac => \best_score~33_combout\,
	datad => \best_score~32_combout\,
	combout => \next_target~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\next_target~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~6_combout\ = (floor_calls(5) & ((\LessThan4~14_combout\) # ((!\best_score~32_combout\ & \best_score~33_combout\)))) # (!floor_calls(5) & (!\best_score~32_combout\ & (\best_score~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(5),
	datab => \best_score~32_combout\,
	datac => \best_score~33_combout\,
	datad => \LessThan4~14_combout\,
	combout => \next_target~6_combout\);

-- Location: LCCOMB_X12_Y9_N28
\next_target~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~7_combout\ = (\next_target~1_combout\ & (\next_target~0_combout\ & ((!\LessThan4~14_combout\) # (!floor_calls(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(5),
	datab => \next_target~1_combout\,
	datac => \next_target~0_combout\,
	datad => \LessThan4~14_combout\,
	combout => \next_target~7_combout\);

-- Location: LCCOMB_X12_Y9_N22
\next_target~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_target~8_combout\ = (\next_target~7_combout\ & (((!\current_floor[0]~10_combout\)))) # (!\next_target~7_combout\ & (!\next_target~0_combout\ & ((!\next_target~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_target~0_combout\,
	datab => \current_floor[0]~10_combout\,
	datac => \next_target~6_combout\,
	datad => \next_target~7_combout\,
	combout => \next_target~8_combout\);

-- Location: FF_X12_Y9_N23
\target_floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_target~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \target_floor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_floor(0));

-- Location: LCCOMB_X13_Y9_N12
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (target_floor(0) & (\current_floor[0]~10_combout\ & (\current_floor[1]~6_combout\ $ (!target_floor(1))))) # (!target_floor(0) & (!\current_floor[0]~10_combout\ & (\current_floor[1]~6_combout\ $ (target_floor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => target_floor(0),
	datab => \current_floor[1]~6_combout\,
	datac => target_floor(1),
	datad => \current_floor[0]~10_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X13_Y9_N14
\floor_calls~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \floor_calls~6_combout\ = (\Equal2~1_combout\ & (!\LessThan7~9_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datac => \LessThan7~9_combout\,
	datad => \Equal2~0_combout\,
	combout => \floor_calls~6_combout\);

-- Location: LCCOMB_X14_Y9_N0
\Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\WideOr2~combout\) # ((!\main_state.IDLE~q\ & ((!\Equal3~3_combout\) # (!\floor_calls~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~4_combout\,
	datab => \WideOr2~combout\,
	datac => \Equal3~3_combout\,
	datad => \main_state.IDLE~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X14_Y9_N26
\Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\) # ((\main_state.MOVING_DOWN~q\ & ((!\Equal3~4_combout\) # (!\floor_calls~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_calls~6_combout\,
	datab => \main_state.MOVING_DOWN~q\,
	datac => \Equal3~4_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X14_Y9_N18
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\main_state.MOVING_UP~q\ & (((\LessThan7~9_combout\) # (!\floor_calls~3_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \main_state.MOVING_UP~q\,
	datac => \LessThan7~9_combout\,
	datad => \floor_calls~3_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X14_Y7_N8
\Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\ & ((\elevator_control~0_combout\) # ((floor_calls(4))))) # (!\Selector13~2_combout\ & (\Selector13~0_combout\ & ((\elevator_control~0_combout\) # (floor_calls(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~2_combout\,
	datab => \elevator_control~0_combout\,
	datac => floor_calls(4),
	datad => \Selector13~0_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X14_Y7_N9
\floor_calls[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => floor_calls(4));

-- Location: LCCOMB_X16_Y9_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (floor_calls(4)) # ((floor_calls(3)) # ((floor_calls(5)) # (floor_calls(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => floor_calls(4),
	datab => floor_calls(3),
	datac => floor_calls(5),
	datad => floor_calls(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\target_floor[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_floor[0]~2_combout\ = (!\main_state.IDLE~q\ & ((\Equal0~0_combout\) # (floor_calls(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \main_state.IDLE~q\,
	datad => floor_calls(1),
	combout => \target_floor[0]~2_combout\);

-- Location: LCCOMB_X12_Y9_N10
\Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\target_floor[0]~2_combout\ & (!\Mux0~2_combout\ & \LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \target_floor[0]~2_combout\,
	datab => \Mux0~2_combout\,
	datad => \LessThan5~2_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X12_Y9_N0
\Selector18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (!\Selector22~8_combout\ & ((\Selector22~7_combout\ & (\Selector18~2_combout\)) # (!\Selector22~7_combout\ & ((\main_state.MOVING_UP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~2_combout\,
	datab => \Selector22~8_combout\,
	datac => \main_state.MOVING_UP~q\,
	datad => \Selector22~7_combout\,
	combout => \Selector18~3_combout\);

-- Location: FF_X12_Y9_N1
\main_state.MOVING_UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.MOVING_UP~q\);

-- Location: LCCOMB_X11_Y8_N12
\pwm_counter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[0]~20_combout\ = pwm_counter(0) $ (VCC)
-- \pwm_counter[0]~21\ = CARRY(pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(0),
	datad => VCC,
	combout => \pwm_counter[0]~20_combout\,
	cout => \pwm_counter[0]~21\);

-- Location: LCCOMB_X11_Y7_N10
\pwm_counter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[15]~50_combout\ = (pwm_counter(15) & (!\pwm_counter[14]~49\)) # (!pwm_counter(15) & ((\pwm_counter[14]~49\) # (GND)))
-- \pwm_counter[15]~51\ = CARRY((!\pwm_counter[14]~49\) # (!pwm_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(15),
	datad => VCC,
	cin => \pwm_counter[14]~49\,
	combout => \pwm_counter[15]~50_combout\,
	cout => \pwm_counter[15]~51\);

-- Location: LCCOMB_X11_Y7_N12
\pwm_counter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[16]~52_combout\ = (pwm_counter(16) & (\pwm_counter[15]~51\ $ (GND))) # (!pwm_counter(16) & (!\pwm_counter[15]~51\ & VCC))
-- \pwm_counter[16]~53\ = CARRY((pwm_counter(16) & !\pwm_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(16),
	datad => VCC,
	cin => \pwm_counter[15]~51\,
	combout => \pwm_counter[16]~52_combout\,
	cout => \pwm_counter[16]~53\);

-- Location: FF_X11_Y7_N13
\pwm_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[16]~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(16));

-- Location: LCCOMB_X11_Y7_N14
\pwm_counter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[17]~54_combout\ = (pwm_counter(17) & (!\pwm_counter[16]~53\)) # (!pwm_counter(17) & ((\pwm_counter[16]~53\) # (GND)))
-- \pwm_counter[17]~55\ = CARRY((!\pwm_counter[16]~53\) # (!pwm_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(17),
	datad => VCC,
	cin => \pwm_counter[16]~53\,
	combout => \pwm_counter[17]~54_combout\,
	cout => \pwm_counter[17]~55\);

-- Location: FF_X11_Y7_N15
\pwm_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[17]~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(17));

-- Location: LCCOMB_X11_Y7_N16
\pwm_counter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[18]~56_combout\ = (pwm_counter(18) & (\pwm_counter[17]~55\ $ (GND))) # (!pwm_counter(18) & (!\pwm_counter[17]~55\ & VCC))
-- \pwm_counter[18]~57\ = CARRY((pwm_counter(18) & !\pwm_counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(18),
	datad => VCC,
	cin => \pwm_counter[17]~55\,
	combout => \pwm_counter[18]~56_combout\,
	cout => \pwm_counter[18]~57\);

-- Location: FF_X11_Y7_N17
\pwm_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[18]~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(18));

-- Location: LCCOMB_X11_Y7_N18
\pwm_counter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[19]~58_combout\ = \pwm_counter[18]~57\ $ (pwm_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pwm_counter(19),
	cin => \pwm_counter[18]~57\,
	combout => \pwm_counter[19]~58_combout\);

-- Location: FF_X11_Y7_N19
\pwm_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[19]~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(19));

-- Location: LCCOMB_X11_Y7_N20
\LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (((!pwm_counter(18)) # (!pwm_counter(17))) # (!pwm_counter(19))) # (!pwm_counter(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(16),
	datab => pwm_counter(19),
	datac => pwm_counter(17),
	datad => pwm_counter(18),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X11_Y7_N22
\LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (!pwm_counter(13) & (!pwm_counter(10) & (!pwm_counter(12) & !pwm_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(13),
	datab => pwm_counter(10),
	datac => pwm_counter(12),
	datad => pwm_counter(11),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X11_Y8_N10
\LessThan16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~4_combout\ = (!pwm_counter(8) & (!pwm_counter(7) & !pwm_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(8),
	datac => pwm_counter(7),
	datad => pwm_counter(6),
	combout => \LessThan16~4_combout\);

-- Location: LCCOMB_X11_Y8_N6
\LessThan16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~2_combout\ = (((!pwm_counter(3)) # (!pwm_counter(5))) # (!pwm_counter(4))) # (!pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(0),
	datab => pwm_counter(4),
	datac => pwm_counter(5),
	datad => pwm_counter(3),
	combout => \LessThan16~2_combout\);

-- Location: LCCOMB_X11_Y8_N4
\LessThan16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~3_combout\ = ((\LessThan16~2_combout\) # (!pwm_counter(1))) # (!pwm_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datac => pwm_counter(1),
	datad => \LessThan16~2_combout\,
	combout => \LessThan16~3_combout\);

-- Location: LCCOMB_X11_Y7_N24
\LessThan16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~5_combout\ = (\LessThan16~1_combout\ & (((\LessThan16~4_combout\ & \LessThan16~3_combout\)) # (!pwm_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => pwm_counter(9),
	datac => \LessThan16~4_combout\,
	datad => \LessThan16~3_combout\,
	combout => \LessThan16~5_combout\);

-- Location: LCCOMB_X11_Y7_N30
\LessThan16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~6_combout\ = (!\LessThan16~0_combout\ & ((pwm_counter(15)) # ((pwm_counter(14) & !\LessThan16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(15),
	datab => \LessThan16~0_combout\,
	datac => pwm_counter(14),
	datad => \LessThan16~5_combout\,
	combout => \LessThan16~6_combout\);

-- Location: FF_X11_Y8_N13
\pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[0]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(0));

-- Location: LCCOMB_X11_Y8_N14
\pwm_counter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[1]~22_combout\ = (pwm_counter(1) & (!\pwm_counter[0]~21\)) # (!pwm_counter(1) & ((\pwm_counter[0]~21\) # (GND)))
-- \pwm_counter[1]~23\ = CARRY((!\pwm_counter[0]~21\) # (!pwm_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(1),
	datad => VCC,
	cin => \pwm_counter[0]~21\,
	combout => \pwm_counter[1]~22_combout\,
	cout => \pwm_counter[1]~23\);

-- Location: FF_X11_Y8_N15
\pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[1]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(1));

-- Location: LCCOMB_X11_Y8_N16
\pwm_counter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[2]~24_combout\ = (pwm_counter(2) & (\pwm_counter[1]~23\ $ (GND))) # (!pwm_counter(2) & (!\pwm_counter[1]~23\ & VCC))
-- \pwm_counter[2]~25\ = CARRY((pwm_counter(2) & !\pwm_counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datad => VCC,
	cin => \pwm_counter[1]~23\,
	combout => \pwm_counter[2]~24_combout\,
	cout => \pwm_counter[2]~25\);

-- Location: FF_X11_Y8_N17
\pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[2]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(2));

-- Location: LCCOMB_X11_Y8_N18
\pwm_counter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[3]~26_combout\ = (pwm_counter(3) & (!\pwm_counter[2]~25\)) # (!pwm_counter(3) & ((\pwm_counter[2]~25\) # (GND)))
-- \pwm_counter[3]~27\ = CARRY((!\pwm_counter[2]~25\) # (!pwm_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(3),
	datad => VCC,
	cin => \pwm_counter[2]~25\,
	combout => \pwm_counter[3]~26_combout\,
	cout => \pwm_counter[3]~27\);

-- Location: FF_X11_Y8_N19
\pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[3]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(3));

-- Location: LCCOMB_X11_Y8_N20
\pwm_counter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[4]~28_combout\ = (pwm_counter(4) & (\pwm_counter[3]~27\ $ (GND))) # (!pwm_counter(4) & (!\pwm_counter[3]~27\ & VCC))
-- \pwm_counter[4]~29\ = CARRY((pwm_counter(4) & !\pwm_counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datad => VCC,
	cin => \pwm_counter[3]~27\,
	combout => \pwm_counter[4]~28_combout\,
	cout => \pwm_counter[4]~29\);

-- Location: FF_X11_Y8_N21
\pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[4]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(4));

-- Location: LCCOMB_X11_Y8_N22
\pwm_counter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[5]~30_combout\ = (pwm_counter(5) & (!\pwm_counter[4]~29\)) # (!pwm_counter(5) & ((\pwm_counter[4]~29\) # (GND)))
-- \pwm_counter[5]~31\ = CARRY((!\pwm_counter[4]~29\) # (!pwm_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(5),
	datad => VCC,
	cin => \pwm_counter[4]~29\,
	combout => \pwm_counter[5]~30_combout\,
	cout => \pwm_counter[5]~31\);

-- Location: FF_X11_Y8_N23
\pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[5]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(5));

-- Location: LCCOMB_X11_Y8_N24
\pwm_counter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[6]~32_combout\ = (pwm_counter(6) & (\pwm_counter[5]~31\ $ (GND))) # (!pwm_counter(6) & (!\pwm_counter[5]~31\ & VCC))
-- \pwm_counter[6]~33\ = CARRY((pwm_counter(6) & !\pwm_counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(6),
	datad => VCC,
	cin => \pwm_counter[5]~31\,
	combout => \pwm_counter[6]~32_combout\,
	cout => \pwm_counter[6]~33\);

-- Location: FF_X11_Y8_N25
\pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[6]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(6));

-- Location: LCCOMB_X11_Y8_N26
\pwm_counter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[7]~34_combout\ = (pwm_counter(7) & (!\pwm_counter[6]~33\)) # (!pwm_counter(7) & ((\pwm_counter[6]~33\) # (GND)))
-- \pwm_counter[7]~35\ = CARRY((!\pwm_counter[6]~33\) # (!pwm_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(7),
	datad => VCC,
	cin => \pwm_counter[6]~33\,
	combout => \pwm_counter[7]~34_combout\,
	cout => \pwm_counter[7]~35\);

-- Location: FF_X11_Y8_N27
\pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[7]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(7));

-- Location: LCCOMB_X11_Y8_N28
\pwm_counter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[8]~36_combout\ = (pwm_counter(8) & (\pwm_counter[7]~35\ $ (GND))) # (!pwm_counter(8) & (!\pwm_counter[7]~35\ & VCC))
-- \pwm_counter[8]~37\ = CARRY((pwm_counter(8) & !\pwm_counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(8),
	datad => VCC,
	cin => \pwm_counter[7]~35\,
	combout => \pwm_counter[8]~36_combout\,
	cout => \pwm_counter[8]~37\);

-- Location: FF_X11_Y8_N29
\pwm_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[8]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(8));

-- Location: LCCOMB_X11_Y8_N30
\pwm_counter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[9]~38_combout\ = (pwm_counter(9) & (!\pwm_counter[8]~37\)) # (!pwm_counter(9) & ((\pwm_counter[8]~37\) # (GND)))
-- \pwm_counter[9]~39\ = CARRY((!\pwm_counter[8]~37\) # (!pwm_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(9),
	datad => VCC,
	cin => \pwm_counter[8]~37\,
	combout => \pwm_counter[9]~38_combout\,
	cout => \pwm_counter[9]~39\);

-- Location: FF_X11_Y8_N31
\pwm_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[9]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(9));

-- Location: LCCOMB_X11_Y7_N0
\pwm_counter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[10]~40_combout\ = (pwm_counter(10) & (\pwm_counter[9]~39\ $ (GND))) # (!pwm_counter(10) & (!\pwm_counter[9]~39\ & VCC))
-- \pwm_counter[10]~41\ = CARRY((pwm_counter(10) & !\pwm_counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(10),
	datad => VCC,
	cin => \pwm_counter[9]~39\,
	combout => \pwm_counter[10]~40_combout\,
	cout => \pwm_counter[10]~41\);

-- Location: FF_X11_Y7_N1
\pwm_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[10]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(10));

-- Location: LCCOMB_X11_Y7_N2
\pwm_counter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[11]~42_combout\ = (pwm_counter(11) & (!\pwm_counter[10]~41\)) # (!pwm_counter(11) & ((\pwm_counter[10]~41\) # (GND)))
-- \pwm_counter[11]~43\ = CARRY((!\pwm_counter[10]~41\) # (!pwm_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(11),
	datad => VCC,
	cin => \pwm_counter[10]~41\,
	combout => \pwm_counter[11]~42_combout\,
	cout => \pwm_counter[11]~43\);

-- Location: FF_X11_Y7_N3
\pwm_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[11]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(11));

-- Location: LCCOMB_X11_Y7_N4
\pwm_counter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[12]~44_combout\ = (pwm_counter(12) & (\pwm_counter[11]~43\ $ (GND))) # (!pwm_counter(12) & (!\pwm_counter[11]~43\ & VCC))
-- \pwm_counter[12]~45\ = CARRY((pwm_counter(12) & !\pwm_counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(12),
	datad => VCC,
	cin => \pwm_counter[11]~43\,
	combout => \pwm_counter[12]~44_combout\,
	cout => \pwm_counter[12]~45\);

-- Location: FF_X11_Y7_N5
\pwm_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[12]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(12));

-- Location: LCCOMB_X11_Y7_N6
\pwm_counter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[13]~46_combout\ = (pwm_counter(13) & (!\pwm_counter[12]~45\)) # (!pwm_counter(13) & ((\pwm_counter[12]~45\) # (GND)))
-- \pwm_counter[13]~47\ = CARRY((!\pwm_counter[12]~45\) # (!pwm_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(13),
	datad => VCC,
	cin => \pwm_counter[12]~45\,
	combout => \pwm_counter[13]~46_combout\,
	cout => \pwm_counter[13]~47\);

-- Location: FF_X11_Y7_N7
\pwm_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[13]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(13));

-- Location: LCCOMB_X11_Y7_N8
\pwm_counter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_counter[14]~48_combout\ = (pwm_counter(14) & (\pwm_counter[13]~47\ $ (GND))) # (!pwm_counter(14) & (!\pwm_counter[13]~47\ & VCC))
-- \pwm_counter[14]~49\ = CARRY((pwm_counter(14) & !\pwm_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(14),
	datad => VCC,
	cin => \pwm_counter[13]~47\,
	combout => \pwm_counter[14]~48_combout\,
	cout => \pwm_counter[14]~49\);

-- Location: FF_X11_Y7_N9
\pwm_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[14]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(14));

-- Location: FF_X11_Y7_N11
\pwm_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[15]~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(15));

-- Location: LCCOMB_X13_Y10_N8
\Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = ((servo_pwm_width(15) & ((\main_state.MOVING_UP~q\) # (\main_state.MOVING_DOWN~q\)))) # (!\door_counter[20]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_UP~q\,
	datab => \door_counter[20]~2_combout\,
	datac => servo_pwm_width(15),
	datad => \main_state.MOVING_DOWN~q\,
	combout => \Selector1~4_combout\);

-- Location: FF_X13_Y10_N9
\servo_pwm_width[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => servo_pwm_width(15));

-- Location: LCCOMB_X16_Y9_N14
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\main_state.DOOR_OPEN_WAIT~q\ & \main_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_state.DOOR_OPEN_WAIT~q\,
	datad => \main_state.IDLE~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\ & (!\main_state.DOOR_CLOSING~q\ & ((\WideNor0~0_combout\) # (servo_pwm_width(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Selector10~0_combout\,
	datac => servo_pwm_width(4),
	datad => \main_state.DOOR_CLOSING~q\,
	combout => \Selector10~1_combout\);

-- Location: FF_X16_Y9_N5
\servo_pwm_width[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => servo_pwm_width(4));

-- Location: LCCOMB_X12_Y9_N26
\Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector10~0_combout\ & ((servo_pwm_width(13)) # ((!\main_state.MOVING_DOWN~q\ & !\main_state.MOVING_UP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_DOWN~q\,
	datab => \main_state.MOVING_UP~q\,
	datac => servo_pwm_width(13),
	datad => \Selector10~0_combout\,
	combout => \Selector3~4_combout\);

-- Location: FF_X12_Y9_N27
\servo_pwm_width[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => servo_pwm_width(13));

-- Location: LCCOMB_X11_Y8_N0
\LessThan17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~3_combout\ = (pwm_counter(4) & (!pwm_counter(3) & (!servo_pwm_width(13) & !servo_pwm_width(4)))) # (!pwm_counter(4) & (((!pwm_counter(3) & !servo_pwm_width(13))) # (!servo_pwm_width(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(3),
	datab => servo_pwm_width(13),
	datac => pwm_counter(4),
	datad => servo_pwm_width(4),
	combout => \LessThan17~3_combout\);

-- Location: LCCOMB_X16_Y9_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector10~0_combout\ & (!\main_state.DOOR_OPENING~q\ & ((\WideNor0~0_combout\) # (servo_pwm_width(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Selector10~0_combout\,
	datac => servo_pwm_width(10),
	datad => \main_state.DOOR_OPENING~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X16_Y9_N23
\servo_pwm_width[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => servo_pwm_width(10));

-- Location: LCCOMB_X11_Y8_N2
\LessThan17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~4_combout\ = (\LessThan17~3_combout\ & ((!pwm_counter(5)) # (!servo_pwm_width(10)))) # (!\LessThan17~3_combout\ & (!servo_pwm_width(10) & !pwm_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan17~3_combout\,
	datac => servo_pwm_width(10),
	datad => pwm_counter(5),
	combout => \LessThan17~4_combout\);

-- Location: LCCOMB_X11_Y8_N8
\LessThan17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~5_combout\ = (servo_pwm_width(4) & (!pwm_counter(6) & \LessThan17~4_combout\)) # (!servo_pwm_width(4) & ((\LessThan17~4_combout\) # (!pwm_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => servo_pwm_width(4),
	datab => pwm_counter(6),
	datac => \LessThan17~4_combout\,
	combout => \LessThan17~5_combout\);

-- Location: LCCOMB_X12_Y7_N0
\LessThan17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~6_combout\ = (\LessThan17~5_combout\ & ((!pwm_counter(7)) # (!servo_pwm_width(10)))) # (!\LessThan17~5_combout\ & (!servo_pwm_width(10) & !pwm_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~5_combout\,
	datac => servo_pwm_width(10),
	datad => pwm_counter(7),
	combout => \LessThan17~6_combout\);

-- Location: LCCOMB_X12_Y9_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\main_state.DOOR_CLOSING~q\) # ((servo_pwm_width(14) & ((\main_state.MOVING_DOWN~q\) # (\main_state.MOVING_UP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.MOVING_DOWN~q\,
	datab => \main_state.DOOR_CLOSING~q\,
	datac => servo_pwm_width(14),
	datad => \main_state.MOVING_UP~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X12_Y9_N9
\servo_pwm_width[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => servo_pwm_width(14));

-- Location: LCCOMB_X12_Y7_N22
\LessThan17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~7_combout\ = (\LessThan17~6_combout\ & ((servo_pwm_width(14)) # (!pwm_counter(8)))) # (!\LessThan17~6_combout\ & (!pwm_counter(8) & servo_pwm_width(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan17~6_combout\,
	datac => pwm_counter(8),
	datad => servo_pwm_width(14),
	combout => \LessThan17~7_combout\);

-- Location: LCCOMB_X12_Y7_N28
\LessThan17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~8_combout\ = (\LessThan17~7_combout\ & ((servo_pwm_width(15)) # (!pwm_counter(9)))) # (!\LessThan17~7_combout\ & (servo_pwm_width(15) & !pwm_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~7_combout\,
	datab => servo_pwm_width(15),
	datad => pwm_counter(9),
	combout => \LessThan17~8_combout\);

-- Location: LCCOMB_X12_Y7_N10
\LessThan17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~2_combout\ = (!pwm_counter(11) & (!pwm_counter(12) & (pwm_counter(13) $ (servo_pwm_width(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(11),
	datab => pwm_counter(13),
	datac => pwm_counter(12),
	datad => servo_pwm_width(13),
	combout => \LessThan17~2_combout\);

-- Location: LCCOMB_X12_Y7_N2
\LessThan17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~9_combout\ = (\LessThan17~2_combout\ & ((pwm_counter(10) & (\LessThan17~8_combout\ & !servo_pwm_width(10))) # (!pwm_counter(10) & ((\LessThan17~8_combout\) # (!servo_pwm_width(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(10),
	datab => \LessThan17~8_combout\,
	datac => servo_pwm_width(10),
	datad => \LessThan17~2_combout\,
	combout => \LessThan17~9_combout\);

-- Location: LCCOMB_X12_Y7_N8
\LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (!pwm_counter(13) & !servo_pwm_width(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pwm_counter(13),
	datad => servo_pwm_width(13),
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X12_Y7_N12
\LessThan17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~10_combout\ = (pwm_counter(14) & (servo_pwm_width(14) & ((\LessThan17~9_combout\) # (\LessThan17~1_combout\)))) # (!pwm_counter(14) & ((\LessThan17~9_combout\) # ((\LessThan17~1_combout\) # (servo_pwm_width(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(14),
	datab => \LessThan17~9_combout\,
	datac => \LessThan17~1_combout\,
	datad => servo_pwm_width(14),
	combout => \LessThan17~10_combout\);

-- Location: LCCOMB_X12_Y7_N6
\LessThan17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~11_combout\ = (pwm_counter(15) & (servo_pwm_width(15) & \LessThan17~10_combout\)) # (!pwm_counter(15) & ((servo_pwm_width(15)) # (\LessThan17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(15),
	datac => servo_pwm_width(15),
	datad => \LessThan17~10_combout\,
	combout => \LessThan17~11_combout\);

-- Location: LCCOMB_X11_Y7_N28
\LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (!pwm_counter(19) & (!pwm_counter(17) & !pwm_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(19),
	datac => pwm_counter(17),
	datad => pwm_counter(18),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X11_Y7_N26
\LessThan17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~12_combout\ = (\LessThan17~0_combout\ & ((\LessThan17~11_combout\ & ((!pwm_counter(16)) # (!servo_pwm_width(10)))) # (!\LessThan17~11_combout\ & (!servo_pwm_width(10) & !pwm_counter(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~11_combout\,
	datab => servo_pwm_width(10),
	datac => \LessThan17~0_combout\,
	datad => pwm_counter(16),
	combout => \LessThan17~12_combout\);

-- Location: LCCOMB_X13_Y10_N26
\door_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \door_state~0_combout\ = (\LessThan10~8_combout\ & (!\main_state.DOOR_CLOSING~q\ & ((\main_state.DOOR_OPENING~q\) # (\door_state~q\)))) # (!\LessThan10~8_combout\ & (((\door_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.DOOR_CLOSING~q\,
	datab => \main_state.DOOR_OPENING~q\,
	datac => \door_state~q\,
	datad => \LessThan10~8_combout\,
	combout => \door_state~0_combout\);

-- Location: FF_X13_Y10_N27
door_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \door_state~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \door_state~q\);

-- Location: LCCOMB_X10_Y7_N0
\trip_counter[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[0]~8_combout\ = trip_counter(0) $ (VCC)
-- \trip_counter[0]~9\ = CARRY(trip_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trip_counter(0),
	datad => VCC,
	combout => \trip_counter[0]~8_combout\,
	cout => \trip_counter[0]~9\);

-- Location: FF_X10_Y7_N1
\trip_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(0));

-- Location: LCCOMB_X10_Y7_N2
\trip_counter[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[1]~10_combout\ = (trip_counter(1) & (!\trip_counter[0]~9\)) # (!trip_counter(1) & ((\trip_counter[0]~9\) # (GND)))
-- \trip_counter[1]~11\ = CARRY((!\trip_counter[0]~9\) # (!trip_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trip_counter(1),
	datad => VCC,
	cin => \trip_counter[0]~9\,
	combout => \trip_counter[1]~10_combout\,
	cout => \trip_counter[1]~11\);

-- Location: FF_X10_Y7_N3
\trip_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[1]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(1));

-- Location: LCCOMB_X10_Y7_N4
\trip_counter[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[2]~12_combout\ = (trip_counter(2) & (\trip_counter[1]~11\ $ (GND))) # (!trip_counter(2) & (!\trip_counter[1]~11\ & VCC))
-- \trip_counter[2]~13\ = CARRY((trip_counter(2) & !\trip_counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trip_counter(2),
	datad => VCC,
	cin => \trip_counter[1]~11\,
	combout => \trip_counter[2]~12_combout\,
	cout => \trip_counter[2]~13\);

-- Location: FF_X10_Y7_N5
\trip_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[2]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(2));

-- Location: LCCOMB_X10_Y7_N6
\trip_counter[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[3]~14_combout\ = (trip_counter(3) & (!\trip_counter[2]~13\)) # (!trip_counter(3) & ((\trip_counter[2]~13\) # (GND)))
-- \trip_counter[3]~15\ = CARRY((!\trip_counter[2]~13\) # (!trip_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trip_counter(3),
	datad => VCC,
	cin => \trip_counter[2]~13\,
	combout => \trip_counter[3]~14_combout\,
	cout => \trip_counter[3]~15\);

-- Location: FF_X10_Y7_N7
\trip_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[3]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(3));

-- Location: LCCOMB_X10_Y7_N8
\trip_counter[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[4]~16_combout\ = (trip_counter(4) & (\trip_counter[3]~15\ $ (GND))) # (!trip_counter(4) & (!\trip_counter[3]~15\ & VCC))
-- \trip_counter[4]~17\ = CARRY((trip_counter(4) & !\trip_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trip_counter(4),
	datad => VCC,
	cin => \trip_counter[3]~15\,
	combout => \trip_counter[4]~16_combout\,
	cout => \trip_counter[4]~17\);

-- Location: FF_X10_Y7_N9
\trip_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[4]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(4));

-- Location: LCCOMB_X10_Y7_N10
\trip_counter[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[5]~18_combout\ = (trip_counter(5) & (!\trip_counter[4]~17\)) # (!trip_counter(5) & ((\trip_counter[4]~17\) # (GND)))
-- \trip_counter[5]~19\ = CARRY((!\trip_counter[4]~17\) # (!trip_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trip_counter(5),
	datad => VCC,
	cin => \trip_counter[4]~17\,
	combout => \trip_counter[5]~18_combout\,
	cout => \trip_counter[5]~19\);

-- Location: FF_X10_Y7_N11
\trip_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[5]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(5));

-- Location: LCCOMB_X10_Y7_N12
\trip_counter[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[6]~20_combout\ = (trip_counter(6) & (\trip_counter[5]~19\ $ (GND))) # (!trip_counter(6) & (!\trip_counter[5]~19\ & VCC))
-- \trip_counter[6]~21\ = CARRY((trip_counter(6) & !\trip_counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trip_counter(6),
	datad => VCC,
	cin => \trip_counter[5]~19\,
	combout => \trip_counter[6]~20_combout\,
	cout => \trip_counter[6]~21\);

-- Location: FF_X10_Y7_N13
\trip_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[6]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(6));

-- Location: LCCOMB_X10_Y7_N14
\trip_counter[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trip_counter[7]~22_combout\ = trip_counter(7) $ (\trip_counter[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trip_counter(7),
	cin => \trip_counter[6]~21\,
	combout => \trip_counter[7]~22_combout\);

-- Location: FF_X10_Y7_N15
\trip_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trip_counter[7]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Selector22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trip_counter(7));

-- Location: LCCOMB_X14_Y12_N0
\most_popular_floor~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \most_popular_floor~2_combout\ = (\LessThan15~14_combout\) # (\LessThan14~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan15~14_combout\,
	datad => \LessThan14~14_combout\,
	combout => \most_popular_floor~2_combout\);

-- Location: FF_X14_Y12_N1
\most_popular_floor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \most_popular_floor~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => most_popular_floor(2));

-- Location: LCCOMB_X14_Y13_N30
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (most_popular_floor(1) & !most_popular_floor(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => most_popular_floor(1),
	datad => most_popular_floor(2),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X13_Y13_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux8~1_combout\ & (((\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~0_combout\ & ((\floor_usage_counters[4][6]~q\))) # (!\Mux8~0_combout\ & (\floor_usage_counters[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[1][6]~q\,
	datac => \Mux8~0_combout\,
	datad => \floor_usage_counters[4][6]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X13_Y13_N26
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux8~1_combout\ & ((\Mux2~0_combout\ & (\floor_usage_counters[3][6]~q\)) # (!\Mux2~0_combout\ & ((\floor_usage_counters[2][6]~q\))))) # (!\Mux8~1_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[3][6]~q\,
	datac => \floor_usage_counters[2][6]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X12_Y13_N28
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (most_popular_floor(2) & ((most_popular_floor(0) & ((\Mux2~1_combout\))) # (!most_popular_floor(0) & (\floor_usage_counters[5][6]~q\)))) # (!most_popular_floor(2) & (((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][6]~q\,
	datab => most_popular_floor(2),
	datac => most_popular_floor(0),
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X14_Y13_N26
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux8~1_combout\ & ((\floor_usage_counters[2][5]~q\) # ((\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & (((\floor_usage_counters[1][5]~q\ & !\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[2][5]~q\,
	datac => \floor_usage_counters[1][5]~q\,
	datad => \Mux8~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X12_Y13_N26
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\floor_usage_counters[3][5]~q\)) # (!\Mux8~0_combout\))) # (!\Mux3~0_combout\ & (\Mux8~0_combout\ & (\floor_usage_counters[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux8~0_combout\,
	datac => \floor_usage_counters[4][5]~q\,
	datad => \floor_usage_counters[3][5]~q\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X12_Y13_N20
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (most_popular_floor(0) & (((\Mux3~1_combout\)))) # (!most_popular_floor(0) & ((most_popular_floor(2) & (\floor_usage_counters[5][5]~q\)) # (!most_popular_floor(2) & ((\Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => most_popular_floor(0),
	datab => \floor_usage_counters[5][5]~q\,
	datac => \Mux3~1_combout\,
	datad => most_popular_floor(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X13_Y13_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux8~1_combout\ & (((\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~0_combout\ & (\floor_usage_counters[4][4]~q\)) # (!\Mux8~0_combout\ & ((\floor_usage_counters[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[4][4]~q\,
	datac => \Mux8~0_combout\,
	datad => \floor_usage_counters[1][4]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X13_Y13_N2
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux8~1_combout\ & ((\Mux4~0_combout\ & ((\floor_usage_counters[3][4]~q\))) # (!\Mux4~0_combout\ & (\floor_usage_counters[2][4]~q\)))) # (!\Mux8~1_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[2][4]~q\,
	datac => \floor_usage_counters[3][4]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X12_Y13_N30
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (most_popular_floor(0) & (\Mux4~1_combout\)) # (!most_popular_floor(0) & ((most_popular_floor(2) & ((\floor_usage_counters[5][4]~q\))) # (!most_popular_floor(2) & (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \floor_usage_counters[5][4]~q\,
	datac => most_popular_floor(0),
	datad => most_popular_floor(2),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X14_Y12_N30
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux8~1_combout\ & (((\floor_usage_counters[2][3]~q\) # (\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & (\floor_usage_counters[1][3]~q\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][3]~q\,
	datab => \floor_usage_counters[2][3]~q\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X12_Y12_N14
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux8~0_combout\ & ((\Mux5~0_combout\ & ((\floor_usage_counters[3][3]~q\))) # (!\Mux5~0_combout\ & (\floor_usage_counters[4][3]~q\)))) # (!\Mux8~0_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \floor_usage_counters[4][3]~q\,
	datac => \floor_usage_counters[3][3]~q\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X14_Y12_N12
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (most_popular_floor(0) & (\Mux5~1_combout\)) # (!most_popular_floor(0) & ((most_popular_floor(2) & ((\floor_usage_counters[5][3]~q\))) # (!most_popular_floor(2) & (\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => most_popular_floor(0),
	datac => \floor_usage_counters[5][3]~q\,
	datad => most_popular_floor(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X13_Y13_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux8~1_combout\ & (((\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~0_combout\ & (\floor_usage_counters[4][2]~q\)) # (!\Mux8~0_combout\ & ((\floor_usage_counters[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[4][2]~q\,
	datac => \Mux8~0_combout\,
	datad => \floor_usage_counters[1][2]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X13_Y13_N30
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux8~1_combout\ & ((\Mux6~0_combout\ & (\floor_usage_counters[3][2]~q\)) # (!\Mux6~0_combout\ & ((\floor_usage_counters[2][2]~q\))))) # (!\Mux8~1_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][2]~q\,
	datab => \floor_usage_counters[2][2]~q\,
	datac => \Mux8~1_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X12_Y13_N0
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (most_popular_floor(0) & (((\Mux6~1_combout\)))) # (!most_popular_floor(0) & ((most_popular_floor(2) & (\floor_usage_counters[5][2]~q\)) # (!most_popular_floor(2) & ((\Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => most_popular_floor(0),
	datab => \floor_usage_counters[5][2]~q\,
	datac => \Mux6~1_combout\,
	datad => most_popular_floor(2),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X14_Y12_N10
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux8~1_combout\ & ((\floor_usage_counters[2][1]~q\) # ((\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & (((\floor_usage_counters[1][1]~q\ & !\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][1]~q\,
	datab => \floor_usage_counters[1][1]~q\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux8~0_combout\ & ((\Mux7~0_combout\ & (\floor_usage_counters[3][1]~q\)) # (!\Mux7~0_combout\ & ((\floor_usage_counters[4][1]~q\))))) # (!\Mux8~0_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][1]~q\,
	datab => \floor_usage_counters[4][1]~q\,
	datac => \Mux8~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X12_Y13_N18
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (most_popular_floor(0) & (((\Mux7~1_combout\)))) # (!most_popular_floor(0) & ((most_popular_floor(2) & (\floor_usage_counters[5][1]~q\)) # (!most_popular_floor(2) & ((\Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => most_popular_floor(0),
	datab => \floor_usage_counters[5][1]~q\,
	datac => \Mux7~1_combout\,
	datad => most_popular_floor(2),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X14_Y13_N24
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~0_combout\ & (((\Mux8~1_combout\) # (\floor_usage_counters[4][0]~q\)))) # (!\Mux8~0_combout\ & (\floor_usage_counters[1][0]~q\ & (!\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[1][0]~q\,
	datab => \Mux8~0_combout\,
	datac => \Mux8~1_combout\,
	datad => \floor_usage_counters[4][0]~q\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X13_Y13_N22
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~1_combout\ & ((\Mux8~2_combout\ & ((\floor_usage_counters[3][0]~q\))) # (!\Mux8~2_combout\ & (\floor_usage_counters[2][0]~q\)))) # (!\Mux8~1_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \floor_usage_counters[2][0]~q\,
	datac => \floor_usage_counters[3][0]~q\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X14_Y12_N28
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (most_popular_floor(0) & (((\Mux8~3_combout\)))) # (!most_popular_floor(0) & ((most_popular_floor(2) & (\floor_usage_counters[5][0]~q\)) # (!most_popular_floor(2) & ((\Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][0]~q\,
	datab => most_popular_floor(0),
	datac => \Mux8~3_combout\,
	datad => most_popular_floor(2),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X13_Y13_N4
\LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~1_cout\ = CARRY((!\Mux8~4_combout\ & \floor_usage_counters[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \floor_usage_counters[4][0]~q\,
	datad => VCC,
	cout => \LessThan14~1_cout\);

-- Location: LCCOMB_X13_Y13_N6
\LessThan14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~3_cout\ = CARRY((\Mux7~2_combout\ & ((!\LessThan14~1_cout\) # (!\floor_usage_counters[4][1]~q\))) # (!\Mux7~2_combout\ & (!\floor_usage_counters[4][1]~q\ & !\LessThan14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \floor_usage_counters[4][1]~q\,
	datad => VCC,
	cin => \LessThan14~1_cout\,
	cout => \LessThan14~3_cout\);

-- Location: LCCOMB_X13_Y13_N8
\LessThan14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~5_cout\ = CARRY((\Mux6~2_combout\ & (\floor_usage_counters[4][2]~q\ & !\LessThan14~3_cout\)) # (!\Mux6~2_combout\ & ((\floor_usage_counters[4][2]~q\) # (!\LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \floor_usage_counters[4][2]~q\,
	datad => VCC,
	cin => \LessThan14~3_cout\,
	cout => \LessThan14~5_cout\);

-- Location: LCCOMB_X13_Y13_N10
\LessThan14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~7_cout\ = CARRY((\Mux5~2_combout\ & ((!\LessThan14~5_cout\) # (!\floor_usage_counters[4][3]~q\))) # (!\Mux5~2_combout\ & (!\floor_usage_counters[4][3]~q\ & !\LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \floor_usage_counters[4][3]~q\,
	datad => VCC,
	cin => \LessThan14~5_cout\,
	cout => \LessThan14~7_cout\);

-- Location: LCCOMB_X13_Y13_N12
\LessThan14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~9_cout\ = CARRY((\Mux4~2_combout\ & (\floor_usage_counters[4][4]~q\ & !\LessThan14~7_cout\)) # (!\Mux4~2_combout\ & ((\floor_usage_counters[4][4]~q\) # (!\LessThan14~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \floor_usage_counters[4][4]~q\,
	datad => VCC,
	cin => \LessThan14~7_cout\,
	cout => \LessThan14~9_cout\);

-- Location: LCCOMB_X13_Y13_N14
\LessThan14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~11_cout\ = CARRY((\floor_usage_counters[4][5]~q\ & (\Mux3~2_combout\ & !\LessThan14~9_cout\)) # (!\floor_usage_counters[4][5]~q\ & ((\Mux3~2_combout\) # (!\LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][5]~q\,
	datab => \Mux3~2_combout\,
	datad => VCC,
	cin => \LessThan14~9_cout\,
	cout => \LessThan14~11_cout\);

-- Location: LCCOMB_X13_Y13_N16
\LessThan14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~13_cout\ = CARRY((\floor_usage_counters[4][6]~q\ & ((!\LessThan14~11_cout\) # (!\Mux2~2_combout\))) # (!\floor_usage_counters[4][6]~q\ & (!\Mux2~2_combout\ & !\LessThan14~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][6]~q\,
	datab => \Mux2~2_combout\,
	datad => VCC,
	cin => \LessThan14~11_cout\,
	cout => \LessThan14~13_cout\);

-- Location: LCCOMB_X13_Y13_N18
\LessThan14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~14_combout\ = (\floor_usage_counters[4][7]~q\ & ((\LessThan14~13_cout\) # (!\Mux1~2_combout\))) # (!\floor_usage_counters[4][7]~q\ & (\LessThan14~13_cout\ & !\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[4][7]~q\,
	datad => \Mux1~2_combout\,
	cin => \LessThan14~13_cout\,
	combout => \LessThan14~14_combout\);

-- Location: LCCOMB_X12_Y12_N16
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_cout\ = CARRY((\floor_usage_counters[3][0]~q\ & !\Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][0]~q\,
	datab => \Mux8~4_combout\,
	datad => VCC,
	cout => \LessThan13~1_cout\);

-- Location: LCCOMB_X12_Y12_N18
\LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~3_cout\ = CARRY((\floor_usage_counters[3][1]~q\ & (\Mux7~2_combout\ & !\LessThan13~1_cout\)) # (!\floor_usage_counters[3][1]~q\ & ((\Mux7~2_combout\) # (!\LessThan13~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][1]~q\,
	datab => \Mux7~2_combout\,
	datad => VCC,
	cin => \LessThan13~1_cout\,
	cout => \LessThan13~3_cout\);

-- Location: LCCOMB_X12_Y12_N20
\LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~5_cout\ = CARRY((\Mux6~2_combout\ & (\floor_usage_counters[3][2]~q\ & !\LessThan13~3_cout\)) # (!\Mux6~2_combout\ & ((\floor_usage_counters[3][2]~q\) # (!\LessThan13~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \floor_usage_counters[3][2]~q\,
	datad => VCC,
	cin => \LessThan13~3_cout\,
	cout => \LessThan13~5_cout\);

-- Location: LCCOMB_X12_Y12_N22
\LessThan13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~7_cout\ = CARRY((\Mux5~2_combout\ & ((!\LessThan13~5_cout\) # (!\floor_usage_counters[3][3]~q\))) # (!\Mux5~2_combout\ & (!\floor_usage_counters[3][3]~q\ & !\LessThan13~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \floor_usage_counters[3][3]~q\,
	datad => VCC,
	cin => \LessThan13~5_cout\,
	cout => \LessThan13~7_cout\);

-- Location: LCCOMB_X12_Y12_N24
\LessThan13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~9_cout\ = CARRY((\floor_usage_counters[3][4]~q\ & ((!\LessThan13~7_cout\) # (!\Mux4~2_combout\))) # (!\floor_usage_counters[3][4]~q\ & (!\Mux4~2_combout\ & !\LessThan13~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][4]~q\,
	datab => \Mux4~2_combout\,
	datad => VCC,
	cin => \LessThan13~7_cout\,
	cout => \LessThan13~9_cout\);

-- Location: LCCOMB_X12_Y12_N26
\LessThan13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~11_cout\ = CARRY((\Mux3~2_combout\ & ((!\LessThan13~9_cout\) # (!\floor_usage_counters[3][5]~q\))) # (!\Mux3~2_combout\ & (!\floor_usage_counters[3][5]~q\ & !\LessThan13~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \floor_usage_counters[3][5]~q\,
	datad => VCC,
	cin => \LessThan13~9_cout\,
	cout => \LessThan13~11_cout\);

-- Location: LCCOMB_X12_Y12_N28
\LessThan13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~13_cout\ = CARRY((\floor_usage_counters[3][6]~q\ & ((!\LessThan13~11_cout\) # (!\Mux2~2_combout\))) # (!\floor_usage_counters[3][6]~q\ & (!\Mux2~2_combout\ & !\LessThan13~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][6]~q\,
	datab => \Mux2~2_combout\,
	datad => VCC,
	cin => \LessThan13~11_cout\,
	cout => \LessThan13~13_cout\);

-- Location: LCCOMB_X12_Y12_N30
\LessThan13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~14_combout\ = (\Mux1~2_combout\ & (\LessThan13~13_cout\ & \floor_usage_counters[3][7]~q\)) # (!\Mux1~2_combout\ & ((\LessThan13~13_cout\) # (\floor_usage_counters[3][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datad => \floor_usage_counters[3][7]~q\,
	cin => \LessThan13~13_cout\,
	combout => \LessThan13~14_combout\);

-- Location: LCCOMB_X14_Y13_N8
\LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~1_cout\ = CARRY((!\Mux8~4_combout\ & \floor_usage_counters[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \floor_usage_counters[2][0]~q\,
	datad => VCC,
	cout => \LessThan12~1_cout\);

-- Location: LCCOMB_X14_Y13_N10
\LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~3_cout\ = CARRY((\floor_usage_counters[2][1]~q\ & (\Mux7~2_combout\ & !\LessThan12~1_cout\)) # (!\floor_usage_counters[2][1]~q\ & ((\Mux7~2_combout\) # (!\LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][1]~q\,
	datab => \Mux7~2_combout\,
	datad => VCC,
	cin => \LessThan12~1_cout\,
	cout => \LessThan12~3_cout\);

-- Location: LCCOMB_X14_Y13_N12
\LessThan12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~5_cout\ = CARRY((\floor_usage_counters[2][2]~q\ & ((!\LessThan12~3_cout\) # (!\Mux6~2_combout\))) # (!\floor_usage_counters[2][2]~q\ & (!\Mux6~2_combout\ & !\LessThan12~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[2][2]~q\,
	datab => \Mux6~2_combout\,
	datad => VCC,
	cin => \LessThan12~3_cout\,
	cout => \LessThan12~5_cout\);

-- Location: LCCOMB_X14_Y13_N14
\LessThan12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~7_cout\ = CARRY((\Mux5~2_combout\ & ((!\LessThan12~5_cout\) # (!\floor_usage_counters[2][3]~q\))) # (!\Mux5~2_combout\ & (!\floor_usage_counters[2][3]~q\ & !\LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \floor_usage_counters[2][3]~q\,
	datad => VCC,
	cin => \LessThan12~5_cout\,
	cout => \LessThan12~7_cout\);

-- Location: LCCOMB_X14_Y13_N16
\LessThan12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~9_cout\ = CARRY((\Mux4~2_combout\ & (\floor_usage_counters[2][4]~q\ & !\LessThan12~7_cout\)) # (!\Mux4~2_combout\ & ((\floor_usage_counters[2][4]~q\) # (!\LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \floor_usage_counters[2][4]~q\,
	datad => VCC,
	cin => \LessThan12~7_cout\,
	cout => \LessThan12~9_cout\);

-- Location: LCCOMB_X14_Y13_N18
\LessThan12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~11_cout\ = CARRY((\Mux3~2_combout\ & ((!\LessThan12~9_cout\) # (!\floor_usage_counters[2][5]~q\))) # (!\Mux3~2_combout\ & (!\floor_usage_counters[2][5]~q\ & !\LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \floor_usage_counters[2][5]~q\,
	datad => VCC,
	cin => \LessThan12~9_cout\,
	cout => \LessThan12~11_cout\);

-- Location: LCCOMB_X14_Y13_N20
\LessThan12~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~13_cout\ = CARRY((\Mux2~2_combout\ & (\floor_usage_counters[2][6]~q\ & !\LessThan12~11_cout\)) # (!\Mux2~2_combout\ & ((\floor_usage_counters[2][6]~q\) # (!\LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \floor_usage_counters[2][6]~q\,
	datad => VCC,
	cin => \LessThan12~11_cout\,
	cout => \LessThan12~13_cout\);

-- Location: LCCOMB_X14_Y13_N22
\LessThan12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~14_combout\ = (\floor_usage_counters[2][7]~q\ & ((\LessThan12~13_cout\) # (!\Mux1~2_combout\))) # (!\floor_usage_counters[2][7]~q\ & (\LessThan12~13_cout\ & !\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \floor_usage_counters[2][7]~q\,
	datad => \Mux1~2_combout\,
	cin => \LessThan12~13_cout\,
	combout => \LessThan12~14_combout\);

-- Location: LCCOMB_X14_Y12_N6
\most_popular_floor~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \most_popular_floor~1_combout\ = (!\LessThan15~14_combout\ & (!\LessThan14~14_combout\ & ((\LessThan13~14_combout\) # (\LessThan12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~14_combout\,
	datab => \LessThan14~14_combout\,
	datac => \LessThan13~14_combout\,
	datad => \LessThan12~14_combout\,
	combout => \most_popular_floor~1_combout\);

-- Location: FF_X14_Y12_N7
\most_popular_floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \most_popular_floor~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => most_popular_floor(1));

-- Location: LCCOMB_X14_Y13_N28
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (most_popular_floor(2)) # ((!most_popular_floor(0) & most_popular_floor(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => most_popular_floor(0),
	datac => most_popular_floor(1),
	datad => most_popular_floor(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X14_Y13_N4
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux8~1_combout\ & ((\Mux8~0_combout\) # ((\floor_usage_counters[2][7]~q\)))) # (!\Mux8~1_combout\ & (!\Mux8~0_combout\ & ((\floor_usage_counters[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \floor_usage_counters[2][7]~q\,
	datad => \floor_usage_counters[1][7]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X12_Y13_N24
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux8~0_combout\ & ((\Mux1~0_combout\ & (\floor_usage_counters[3][7]~q\)) # (!\Mux1~0_combout\ & ((\floor_usage_counters[4][7]~q\))))) # (!\Mux8~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[3][7]~q\,
	datab => \Mux8~0_combout\,
	datac => \floor_usage_counters[4][7]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X12_Y13_N22
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (most_popular_floor(0) & (\Mux1~1_combout\)) # (!most_popular_floor(0) & ((most_popular_floor(2) & ((\floor_usage_counters[5][7]~q\))) # (!most_popular_floor(2) & (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => most_popular_floor(0),
	datab => \Mux1~1_combout\,
	datac => \floor_usage_counters[5][7]~q\,
	datad => most_popular_floor(2),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X12_Y13_N2
\LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~1_cout\ = CARRY((\floor_usage_counters[5][0]~q\ & !\Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][0]~q\,
	datab => \Mux8~4_combout\,
	datad => VCC,
	cout => \LessThan15~1_cout\);

-- Location: LCCOMB_X12_Y13_N4
\LessThan15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~3_cout\ = CARRY((\Mux7~2_combout\ & ((!\LessThan15~1_cout\) # (!\floor_usage_counters[5][1]~q\))) # (!\Mux7~2_combout\ & (!\floor_usage_counters[5][1]~q\ & !\LessThan15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \floor_usage_counters[5][1]~q\,
	datad => VCC,
	cin => \LessThan15~1_cout\,
	cout => \LessThan15~3_cout\);

-- Location: LCCOMB_X12_Y13_N6
\LessThan15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~5_cout\ = CARRY((\Mux6~2_combout\ & (\floor_usage_counters[5][2]~q\ & !\LessThan15~3_cout\)) # (!\Mux6~2_combout\ & ((\floor_usage_counters[5][2]~q\) # (!\LessThan15~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \floor_usage_counters[5][2]~q\,
	datad => VCC,
	cin => \LessThan15~3_cout\,
	cout => \LessThan15~5_cout\);

-- Location: LCCOMB_X12_Y13_N8
\LessThan15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~7_cout\ = CARRY((\Mux5~2_combout\ & ((!\LessThan15~5_cout\) # (!\floor_usage_counters[5][3]~q\))) # (!\Mux5~2_combout\ & (!\floor_usage_counters[5][3]~q\ & !\LessThan15~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \floor_usage_counters[5][3]~q\,
	datad => VCC,
	cin => \LessThan15~5_cout\,
	cout => \LessThan15~7_cout\);

-- Location: LCCOMB_X12_Y13_N10
\LessThan15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~9_cout\ = CARRY((\Mux4~2_combout\ & (\floor_usage_counters[5][4]~q\ & !\LessThan15~7_cout\)) # (!\Mux4~2_combout\ & ((\floor_usage_counters[5][4]~q\) # (!\LessThan15~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \floor_usage_counters[5][4]~q\,
	datad => VCC,
	cin => \LessThan15~7_cout\,
	cout => \LessThan15~9_cout\);

-- Location: LCCOMB_X12_Y13_N12
\LessThan15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~11_cout\ = CARRY((\Mux3~2_combout\ & ((!\LessThan15~9_cout\) # (!\floor_usage_counters[5][5]~q\))) # (!\Mux3~2_combout\ & (!\floor_usage_counters[5][5]~q\ & !\LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \floor_usage_counters[5][5]~q\,
	datad => VCC,
	cin => \LessThan15~9_cout\,
	cout => \LessThan15~11_cout\);

-- Location: LCCOMB_X12_Y13_N14
\LessThan15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~13_cout\ = CARRY((\floor_usage_counters[5][6]~q\ & ((!\LessThan15~11_cout\) # (!\Mux2~2_combout\))) # (!\floor_usage_counters[5][6]~q\ & (!\Mux2~2_combout\ & !\LessThan15~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \floor_usage_counters[5][6]~q\,
	datab => \Mux2~2_combout\,
	datad => VCC,
	cin => \LessThan15~11_cout\,
	cout => \LessThan15~13_cout\);

-- Location: LCCOMB_X12_Y13_N16
\LessThan15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~14_combout\ = (\Mux1~2_combout\ & (\floor_usage_counters[5][7]~q\ & \LessThan15~13_cout\)) # (!\Mux1~2_combout\ & ((\floor_usage_counters[5][7]~q\) # (\LessThan15~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \floor_usage_counters[5][7]~q\,
	cin => \LessThan15~13_cout\,
	combout => \LessThan15~14_combout\);

-- Location: LCCOMB_X14_Y12_N4
\most_popular_floor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \most_popular_floor~0_combout\ = (!\LessThan15~14_combout\ & ((\LessThan14~14_combout\) # ((!\LessThan13~14_combout\ & \LessThan12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~14_combout\,
	datab => \LessThan14~14_combout\,
	datac => \LessThan13~14_combout\,
	datad => \LessThan12~14_combout\,
	combout => \most_popular_floor~0_combout\);

-- Location: FF_X14_Y12_N5
\most_popular_floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \most_popular_floor~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => most_popular_floor(0));

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

ww_total_trips(0) <= \total_trips[0]~output_o\;

ww_total_trips(1) <= \total_trips[1]~output_o\;

ww_total_trips(2) <= \total_trips[2]~output_o\;

ww_total_trips(3) <= \total_trips[3]~output_o\;

ww_total_trips(4) <= \total_trips[4]~output_o\;

ww_total_trips(5) <= \total_trips[5]~output_o\;

ww_total_trips(6) <= \total_trips[6]~output_o\;

ww_total_trips(7) <= \total_trips[7]~output_o\;

ww_most_used_floor(0) <= \most_used_floor[0]~output_o\;

ww_most_used_floor(1) <= \most_used_floor[1]~output_o\;

ww_most_used_floor(2) <= \most_used_floor[2]~output_o\;
END structure;


