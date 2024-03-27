-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/18/2024 13:37:54"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Control IS
    PORT (
	clk : IN std_logic;
	mlck : IN std_logic;
	enable : IN std_logic;
	statusC : IN std_logic;
	statusZ : IN std_logic;
	INST : IN std_logic_vector(31 DOWNTO 0);
	A_MUX : OUT std_logic;
	B_MUX : OUT std_logic;
	IM_MUX1 : OUT std_logic;
	REG_Mux : OUT std_logic;
	IM_MUX2 : OUT std_logic_vector(1 DOWNTO 0);
	DATA_Mux : OUT std_logic_vector(1 DOWNTO 0);
	ALU_op : OUT std_logic_vector(2 DOWNTO 0);
	inc_PC : OUT std_logic;
	ld_PC : OUT std_logic;
	clr_IR : OUT std_logic;
	ld_IR : OUT std_logic;
	clr_A : OUT std_logic;
	clr_B : OUT std_logic;
	clr_C : OUT std_logic;
	clr_Z : OUT std_logic;
	ld_A : OUT std_logic;
	ld_B : OUT std_logic;
	ld_C : OUT std_logic;
	ld_Z : OUT std_logic;
	T : OUT std_logic_vector(2 DOWNTO 0);
	wen : OUT std_logic;
	en : OUT std_logic
	);
END Control;

-- Design Ports Information
-- mlck	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[1]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[2]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[3]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[7]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[11]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[13]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[15]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[17]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[18]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[19]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[20]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[21]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[22]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[23]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_MUX	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_MUX	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX1	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_Mux	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IM_MUX2[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_Mux[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_op[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_PC	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_PC	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_IR	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_IR	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_A	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_B	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_C	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_Z	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_A	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_B	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_C	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_Z	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[28]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[29]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[30]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[31]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[24]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[27]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[26]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST[25]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusC	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statusZ	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control IS
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
SIGNAL ww_mlck : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_statusC : std_logic;
SIGNAL ww_statusZ : std_logic;
SIGNAL ww_INST : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_A_MUX : std_logic;
SIGNAL ww_B_MUX : std_logic;
SIGNAL ww_IM_MUX1 : std_logic;
SIGNAL ww_REG_Mux : std_logic;
SIGNAL ww_IM_MUX2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_inc_PC : std_logic;
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_clr_IR : std_logic;
SIGNAL ww_ld_IR : std_logic;
SIGNAL ww_clr_A : std_logic;
SIGNAL ww_clr_B : std_logic;
SIGNAL ww_clr_C : std_logic;
SIGNAL ww_clr_Z : std_logic;
SIGNAL ww_ld_A : std_logic;
SIGNAL ww_ld_B : std_logic;
SIGNAL ww_ld_C : std_logic;
SIGNAL ww_ld_Z : std_logic;
SIGNAL ww_T : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL \IM_MUX1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inc_PC~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IM_MUX2[1]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_Mux[1]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wen~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mlck~input_o\ : std_logic;
SIGNAL \INST[0]~input_o\ : std_logic;
SIGNAL \INST[1]~input_o\ : std_logic;
SIGNAL \INST[2]~input_o\ : std_logic;
SIGNAL \INST[3]~input_o\ : std_logic;
SIGNAL \INST[4]~input_o\ : std_logic;
SIGNAL \INST[5]~input_o\ : std_logic;
SIGNAL \INST[6]~input_o\ : std_logic;
SIGNAL \INST[7]~input_o\ : std_logic;
SIGNAL \INST[8]~input_o\ : std_logic;
SIGNAL \INST[9]~input_o\ : std_logic;
SIGNAL \INST[10]~input_o\ : std_logic;
SIGNAL \INST[11]~input_o\ : std_logic;
SIGNAL \INST[12]~input_o\ : std_logic;
SIGNAL \INST[13]~input_o\ : std_logic;
SIGNAL \INST[14]~input_o\ : std_logic;
SIGNAL \INST[15]~input_o\ : std_logic;
SIGNAL \INST[16]~input_o\ : std_logic;
SIGNAL \INST[17]~input_o\ : std_logic;
SIGNAL \INST[18]~input_o\ : std_logic;
SIGNAL \INST[19]~input_o\ : std_logic;
SIGNAL \INST[20]~input_o\ : std_logic;
SIGNAL \INST[21]~input_o\ : std_logic;
SIGNAL \INST[22]~input_o\ : std_logic;
SIGNAL \INST[23]~input_o\ : std_logic;
SIGNAL \A_MUX~output_o\ : std_logic;
SIGNAL \B_MUX~output_o\ : std_logic;
SIGNAL \IM_MUX1~output_o\ : std_logic;
SIGNAL \REG_Mux~output_o\ : std_logic;
SIGNAL \IM_MUX2[0]~output_o\ : std_logic;
SIGNAL \IM_MUX2[1]~output_o\ : std_logic;
SIGNAL \DATA_Mux[0]~output_o\ : std_logic;
SIGNAL \DATA_Mux[1]~output_o\ : std_logic;
SIGNAL \ALU_op[0]~output_o\ : std_logic;
SIGNAL \ALU_op[1]~output_o\ : std_logic;
SIGNAL \ALU_op[2]~output_o\ : std_logic;
SIGNAL \inc_PC~output_o\ : std_logic;
SIGNAL \ld_PC~output_o\ : std_logic;
SIGNAL \clr_IR~output_o\ : std_logic;
SIGNAL \ld_IR~output_o\ : std_logic;
SIGNAL \clr_A~output_o\ : std_logic;
SIGNAL \clr_B~output_o\ : std_logic;
SIGNAL \clr_C~output_o\ : std_logic;
SIGNAL \clr_Z~output_o\ : std_logic;
SIGNAL \ld_A~output_o\ : std_logic;
SIGNAL \ld_B~output_o\ : std_logic;
SIGNAL \ld_C~output_o\ : std_logic;
SIGNAL \ld_Z~output_o\ : std_logic;
SIGNAL \T[0]~output_o\ : std_logic;
SIGNAL \T[1]~output_o\ : std_logic;
SIGNAL \T[2]~output_o\ : std_logic;
SIGNAL \wen~output_o\ : std_logic;
SIGNAL \en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.state_2~q\ : std_logic;
SIGNAL \present_state.state_0~0_combout\ : std_logic;
SIGNAL \present_state.state_0~q\ : std_logic;
SIGNAL \present_state.state_1~0_combout\ : std_logic;
SIGNAL \present_state.state_1~q\ : std_logic;
SIGNAL \INST[28]~input_o\ : std_logic;
SIGNAL \INST[31]~input_o\ : std_logic;
SIGNAL \INST[30]~input_o\ : std_logic;
SIGNAL \INST[29]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \A_MUX~0_combout\ : std_logic;
SIGNAL \inc_PC~9_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \INST[26]~input_o\ : std_logic;
SIGNAL \INST[25]~input_o\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \INST[27]~input_o\ : std_logic;
SIGNAL \INST[24]~input_o\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \ld_A~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~5_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~6_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~7_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \inc_PC~10_combout\ : std_logic;
SIGNAL \A_MUX~3_combout\ : std_logic;
SIGNAL \A_MUX~4_combout\ : std_logic;
SIGNAL \A_MUX~1_combout\ : std_logic;
SIGNAL \A_MUX~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \inc_PC~19_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~0_combout\ : std_logic;
SIGNAL \A_MUX~5_combout\ : std_logic;
SIGNAL \A_MUX~6_combout\ : std_logic;
SIGNAL \A_MUX$latch~combout\ : std_logic;
SIGNAL \IM_MUX2[1]~4_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~11_combout\ : std_logic;
SIGNAL \IM_MUX2[0]~10_combout\ : std_logic;
SIGNAL \ld_A~1_combout\ : std_logic;
SIGNAL \IM_MUX1~0_combout\ : std_logic;
SIGNAL \IM_MUX1~0clkctrl_outclk\ : std_logic;
SIGNAL \IM_MUX1$latch~combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \REG_Mux~0_combout\ : std_logic;
SIGNAL \REG_Mux$latch~combout\ : std_logic;
SIGNAL \IM_MUX2[0]~8_combout\ : std_logic;
SIGNAL \inc_PC~11_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~9_combout\ : std_logic;
SIGNAL \IM_MUX2[1]~9clkctrl_outclk\ : std_logic;
SIGNAL \IM_MUX2[0]$latch~combout\ : std_logic;
SIGNAL \IM_MUX2[1]$latch~combout\ : std_logic;
SIGNAL \wen~0_combout\ : std_logic;
SIGNAL \DATA_Mux[0]~1_combout\ : std_logic;
SIGNAL \DATA_Mux[0]~2_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~3_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~4_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~5_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~6_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~6clkctrl_outclk\ : std_logic;
SIGNAL \DATA_Mux[0]$latch~combout\ : std_logic;
SIGNAL \DATA_Mux[1]~8_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~7_combout\ : std_logic;
SIGNAL \DATA_Mux[1]~9_combout\ : std_logic;
SIGNAL \DATA_Mux[1]$latch~combout\ : std_logic;
SIGNAL \ALU_op[0]~0_combout\ : std_logic;
SIGNAL \ALU_op[0]~1_combout\ : std_logic;
SIGNAL \ALU_op[0]$latch~combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \ALU_op[1]~2_combout\ : std_logic;
SIGNAL \ALU_op[1]~3_combout\ : std_logic;
SIGNAL \ALU_op[1]$latch~combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \ALU_op[2]~4_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \ALU_op[2]~5_combout\ : std_logic;
SIGNAL \ALU_op[2]~6_combout\ : std_logic;
SIGNAL \ALU_op[2]$latch~combout\ : std_logic;
SIGNAL \inc_PC~4_combout\ : std_logic;
SIGNAL \inc_PC~20_combout\ : std_logic;
SIGNAL \inc_PC~12_combout\ : std_logic;
SIGNAL \inc_PC~13_combout\ : std_logic;
SIGNAL \inc_PC~14_combout\ : std_logic;
SIGNAL \statusZ~input_o\ : std_logic;
SIGNAL \statusC~input_o\ : std_logic;
SIGNAL \inc_PC~15_combout\ : std_logic;
SIGNAL \inc_PC~16_combout\ : std_logic;
SIGNAL \inc_PC~17_combout\ : std_logic;
SIGNAL \inc_PC~17clkctrl_outclk\ : std_logic;
SIGNAL \inc_PC$latch~combout\ : std_logic;
SIGNAL \inc_PC~18_combout\ : std_logic;
SIGNAL \ld_PC~0_combout\ : std_logic;
SIGNAL \ld_PC$latch~combout\ : std_logic;
SIGNAL \ld_IR$latch~combout\ : std_logic;
SIGNAL \clr_A~0_combout\ : std_logic;
SIGNAL \clr_A$latch~combout\ : std_logic;
SIGNAL \clr_B~1_combout\ : std_logic;
SIGNAL \clr_B~0_combout\ : std_logic;
SIGNAL \clr_B~2_combout\ : std_logic;
SIGNAL \clr_B$latch~combout\ : std_logic;
SIGNAL \clr_C~0_combout\ : std_logic;
SIGNAL \clr_C$latch~combout\ : std_logic;
SIGNAL \clr_Z~2_combout\ : std_logic;
SIGNAL \clr_Z$latch~combout\ : std_logic;
SIGNAL \ld_A~2_combout\ : std_logic;
SIGNAL \ld_A~3_combout\ : std_logic;
SIGNAL \ld_A~4_combout\ : std_logic;
SIGNAL \ld_A$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \ld_B~0_combout\ : std_logic;
SIGNAL \ld_B$latch~combout\ : std_logic;
SIGNAL \ld_C~0_combout\ : std_logic;
SIGNAL \ld_C$latch~combout\ : std_logic;
SIGNAL \wen~1_combout\ : std_logic;
SIGNAL \wen~2_combout\ : std_logic;
SIGNAL \wen~2clkctrl_outclk\ : std_logic;
SIGNAL \wen$latch~combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \en$latch~combout\ : std_logic;
SIGNAL \ALT_INV_present_state.state_0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mlck <= mlck;
ww_enable <= enable;
ww_statusC <= statusC;
ww_statusZ <= statusZ;
ww_INST <= INST;
A_MUX <= ww_A_MUX;
B_MUX <= ww_B_MUX;
IM_MUX1 <= ww_IM_MUX1;
REG_Mux <= ww_REG_Mux;
IM_MUX2 <= ww_IM_MUX2;
DATA_Mux <= ww_DATA_Mux;
ALU_op <= ww_ALU_op;
inc_PC <= ww_inc_PC;
ld_PC <= ww_ld_PC;
clr_IR <= ww_clr_IR;
ld_IR <= ww_ld_IR;
clr_A <= ww_clr_A;
clr_B <= ww_clr_B;
clr_C <= ww_clr_C;
clr_Z <= ww_clr_Z;
ld_A <= ww_ld_A;
ld_B <= ww_ld_B;
ld_C <= ww_ld_C;
ld_Z <= ww_ld_Z;
T <= ww_T;
wen <= ww_wen;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IM_MUX1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IM_MUX1~0_combout\);

\inc_PC~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inc_PC~17_combout\);

\IM_MUX2[1]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IM_MUX2[1]~9_combout\);

\DATA_Mux[1]~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DATA_Mux[1]~6_combout\);

\wen~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wen~2_combout\);

\enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \enable~input_o\);
\ALT_INV_present_state.state_0~q\ <= NOT \present_state.state_0~q\;

-- Location: IOOBUF_X89_Y0_N2
\A_MUX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_MUX$latch~combout\,
	devoe => ww_devoe,
	o => \A_MUX~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\B_MUX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B_MUX~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\IM_MUX1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX1$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX1~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\REG_Mux~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_Mux$latch~combout\,
	devoe => ww_devoe,
	o => \REG_Mux~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\IM_MUX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\IM_MUX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IM_MUX2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \IM_MUX2[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\DATA_Mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\DATA_Mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_Mux[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATA_Mux[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ALU_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\ALU_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ALU_op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_op[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_op[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\inc_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inc_PC$latch~combout\,
	devoe => ww_devoe,
	o => \inc_PC~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ld_PC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_PC$latch~combout\,
	devoe => ww_devoe,
	o => \ld_PC~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\clr_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clr_IR~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ld_IR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_IR$latch~combout\,
	devoe => ww_devoe,
	o => \ld_IR~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\clr_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_A$latch~combout\,
	devoe => ww_devoe,
	o => \clr_A~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\clr_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_B$latch~combout\,
	devoe => ww_devoe,
	o => \clr_B~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\clr_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_C$latch~combout\,
	devoe => ww_devoe,
	o => \clr_C~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\clr_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clr_Z$latch~combout\,
	devoe => ww_devoe,
	o => \clr_Z~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\ld_A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_A$latch~combout\,
	devoe => ww_devoe,
	o => \ld_A~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\ld_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_B$latch~combout\,
	devoe => ww_devoe,
	o => \ld_B~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\ld_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C$latch~combout\,
	devoe => ww_devoe,
	o => \ld_C~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\ld_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ld_C$latch~combout\,
	devoe => ww_devoe,
	o => \ld_Z~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\T[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_present_state.state_0~q\,
	devoe => ww_devoe,
	o => \T[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\T[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.state_1~q\,
	devoe => ww_devoe,
	o => \T[1]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\T[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.state_2~q\,
	devoe => ww_devoe,
	o => \T[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\wen~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wen$latch~combout\,
	devoe => ww_devoe,
	o => \wen~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en$latch~combout\,
	devoe => ww_devoe,
	o => \en~output_o\);

-- Location: IOIBUF_X87_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: CLKCTRL_G19
\enable~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \enable~inputclkctrl_outclk\);

-- Location: FF_X86_Y1_N9
\present_state.state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \present_state.state_1~q\,
	clrn => \enable~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_2~q\);

-- Location: LCCOMB_X86_Y1_N18
\present_state.state_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_0~0_combout\ = !\present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.state_2~q\,
	combout => \present_state.state_0~0_combout\);

-- Location: FF_X86_Y1_N19
\present_state.state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.state_0~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_0~q\);

-- Location: LCCOMB_X86_Y1_N14
\present_state.state_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.state_1~0_combout\ = !\present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.state_0~q\,
	combout => \present_state.state_1~0_combout\);

-- Location: FF_X86_Y1_N15
\present_state.state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.state_1~0_combout\,
	clrn => \enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.state_1~q\);

-- Location: IOIBUF_X85_Y0_N15
\INST[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(28),
	o => \INST[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\INST[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(31),
	o => \INST[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\INST[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(30),
	o => \INST[30]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\INST[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(29),
	o => \INST[29]~input_o\);

-- Location: LCCOMB_X86_Y1_N6
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\INST[28]~input_o\ & (!\INST[31]~input_o\ & (!\INST[30]~input_o\ & !\INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X86_Y1_N16
\A_MUX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~0_combout\ = (!\present_state.state_1~q\ & \Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datac => \Equal7~0_combout\,
	combout => \A_MUX~0_combout\);

-- Location: LCCOMB_X85_Y1_N12
\inc_PC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~9_combout\ = (\INST[30]~input_o\) # (((\INST[28]~input_o\ & \INST[31]~input_o\)) # (!\INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \inc_PC~9_combout\);

-- Location: LCCOMB_X85_Y1_N26
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\INST[28]~input_o\ & (!\INST[30]~input_o\ & (\INST[31]~input_o\ & !\INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X79_Y0_N15
\INST[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(26),
	o => \INST[26]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\INST[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(25),
	o => \INST[25]~input_o\);

-- Location: LCCOMB_X84_Y1_N20
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & \INST[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[28]~input_o\,
	combout => \Equal9~1_combout\);

-- Location: IOIBUF_X83_Y0_N22
\INST[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(27),
	o => \INST[27]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\INST[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(24),
	o => \INST[24]~input_o\);

-- Location: LCCOMB_X83_Y1_N26
\Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Equal9~1_combout\ & (\INST[27]~input_o\ & (\INST[24]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \INST[27]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X82_Y1_N14
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\INST[31]~input_o\ & (\INST[30]~input_o\ & (\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X82_Y1_N12
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!\INST[27]~input_o\ & (\Equal9~0_combout\ & !\INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\ld_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~0_combout\ = ((\INST[25]~input_o\ & (!\Equal9~2_combout\)) # (!\INST[25]~input_o\ & ((!\Equal11~0_combout\)))) # (!\INST[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \Equal9~2_combout\,
	datad => \Equal11~0_combout\,
	combout => \ld_A~0_combout\);

-- Location: LCCOMB_X84_Y1_N14
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & (!\INST[28]~input_o\ & !\INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X81_Y1_N8
\IM_MUX2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~5_combout\ = (\INST[26]~input_o\ $ (\INST[27]~input_o\)) # (!\INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \IM_MUX2[1]~5_combout\);

-- Location: LCCOMB_X82_Y1_N6
\IM_MUX2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~6_combout\ = (\IM_MUX2[1]~5_combout\) # ((\INST[27]~input_o\ $ (!\INST[24]~input_o\)) # (!\Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datab => \IM_MUX2[1]~5_combout\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \IM_MUX2[1]~6_combout\);

-- Location: LCCOMB_X82_Y1_N16
\IM_MUX2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~7_combout\ = (\IM_MUX2[1]~6_combout\ & ((\INST[26]~input_o\) # (!\Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~6_combout\,
	datab => \INST[26]~input_o\,
	datad => \Equal11~0_combout\,
	combout => \IM_MUX2[0]~7_combout\);

-- Location: LCCOMB_X82_Y1_N10
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!\INST[27]~input_o\ & (\Equal9~0_combout\ & \INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X83_Y1_N20
\inc_PC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~10_combout\ = (\INST[26]~input_o\ & ((\INST[25]~input_o\) # ((!\Equal9~2_combout\)))) # (!\INST[26]~input_o\ & (!\Equal9~2_combout\ & ((\INST[25]~input_o\) # (!\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \Equal9~2_combout\,
	datad => \Equal13~0_combout\,
	combout => \inc_PC~10_combout\);

-- Location: LCCOMB_X83_Y1_N12
\A_MUX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~3_combout\ = (\ld_A~0_combout\ & (!\Equal8~0_combout\ & (\IM_MUX2[0]~7_combout\ & \inc_PC~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \IM_MUX2[0]~7_combout\,
	datad => \inc_PC~10_combout\,
	combout => \A_MUX~3_combout\);

-- Location: LCCOMB_X85_Y1_N28
\A_MUX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~4_combout\ = (\Equal3~0_combout\) # ((\inc_PC~9_combout\ & ((\Equal7~0_combout\) # (!\A_MUX~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~9_combout\,
	datab => \Equal3~0_combout\,
	datac => \A_MUX~3_combout\,
	datad => \Equal7~0_combout\,
	combout => \A_MUX~4_combout\);

-- Location: LCCOMB_X86_Y1_N22
\A_MUX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~1_combout\ = (\INST[28]~input_o\ & (\INST[31]~input_o\ & (!\INST[30]~input_o\ & \present_state.state_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \present_state.state_1~q\,
	combout => \A_MUX~1_combout\);

-- Location: LCCOMB_X86_Y1_N4
\A_MUX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~2_combout\ = (\enable~input_o\ & (!\INST[29]~input_o\ & (\A_MUX~1_combout\ & \present_state.state_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \INST[29]~input_o\,
	datac => \A_MUX~1_combout\,
	datad => \present_state.state_0~q\,
	combout => \A_MUX~2_combout\);

-- Location: LCCOMB_X86_Y1_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\INST[28]~input_o\ & (!\INST[31]~input_o\ & (\INST[30]~input_o\ & !\INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X86_Y1_N24
\inc_PC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~19_combout\ = (\INST[28]~input_o\) # ((\INST[31]~input_o\ & ((\INST[30]~input_o\) # (\INST[29]~input_o\))) # (!\INST[31]~input_o\ & ((!\INST[29]~input_o\) # (!\INST[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \inc_PC~19_combout\);

-- Location: LCCOMB_X86_Y1_N26
\DATA_Mux[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~0_combout\ = (\enable~input_o\ & (\present_state.state_2~q\ & (!\Equal0~0_combout\ & \inc_PC~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \present_state.state_2~q\,
	datac => \Equal0~0_combout\,
	datad => \inc_PC~19_combout\,
	combout => \DATA_Mux[1]~0_combout\);

-- Location: LCCOMB_X86_Y1_N2
\A_MUX~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~5_combout\ = (!\present_state.state_1~q\ & \present_state.state_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.state_1~q\,
	datad => \present_state.state_0~q\,
	combout => \A_MUX~5_combout\);

-- Location: LCCOMB_X86_Y1_N20
\A_MUX~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX~6_combout\ = (\A_MUX~2_combout\) # ((\A_MUX~4_combout\ & (\DATA_Mux[1]~0_combout\ & \A_MUX~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~4_combout\,
	datab => \A_MUX~2_combout\,
	datac => \DATA_Mux[1]~0_combout\,
	datad => \A_MUX~5_combout\,
	combout => \A_MUX~6_combout\);

-- Location: LCCOMB_X86_Y1_N28
\A_MUX$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_MUX$latch~combout\ = (\A_MUX~6_combout\ & ((\A_MUX~0_combout\))) # (!\A_MUX~6_combout\ & (\A_MUX$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_MUX$latch~combout\,
	datac => \A_MUX~0_combout\,
	datad => \A_MUX~6_combout\,
	combout => \A_MUX$latch~combout\);

-- Location: LCCOMB_X84_Y1_N12
\IM_MUX2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~4_combout\ = (\INST[30]~input_o\ & ((\INST[31]~input_o\) # (\INST[28]~input_o\ $ (!\INST[29]~input_o\)))) # (!\INST[30]~input_o\ & (\INST[28]~input_o\ & (\INST[31]~input_o\ $ (!\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \IM_MUX2[1]~4_combout\);

-- Location: LCCOMB_X84_Y1_N10
\IM_MUX2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~11_combout\ = (\present_state.state_2~q\ & \IM_MUX2[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.state_2~q\,
	datad => \IM_MUX2[1]~4_combout\,
	combout => \IM_MUX2[1]~11_combout\);

-- Location: LCCOMB_X83_Y1_N6
\IM_MUX2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~10_combout\ = (\INST[26]~input_o\) # ((\INST[27]~input_o\) # ((\INST[24]~input_o\) # (!\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[24]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \IM_MUX2[0]~10_combout\);

-- Location: LCCOMB_X83_Y1_N24
\ld_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~1_combout\ = (\IM_MUX2[0]~10_combout\ & (\ld_A~0_combout\ & (\IM_MUX2[1]~6_combout\ & \inc_PC~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~10_combout\,
	datab => \ld_A~0_combout\,
	datac => \IM_MUX2[1]~6_combout\,
	datad => \inc_PC~10_combout\,
	combout => \ld_A~1_combout\);

-- Location: LCCOMB_X84_Y1_N0
\IM_MUX1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1~0_combout\ = (\IM_MUX2[1]~11_combout\ & (\enable~input_o\ & ((\Equal8~0_combout\) # (!\ld_A~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~11_combout\,
	datab => \Equal8~0_combout\,
	datac => \enable~input_o\,
	datad => \ld_A~1_combout\,
	combout => \IM_MUX1~0_combout\);

-- Location: CLKCTRL_G18
\IM_MUX1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IM_MUX1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IM_MUX1~0clkctrl_outclk\);

-- Location: LCCOMB_X72_Y1_N28
\IM_MUX1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX1$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\Equal8~0_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\IM_MUX1$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \IM_MUX1$latch~combout\,
	combout => \IM_MUX1$latch~combout\);

-- Location: LCCOMB_X85_Y1_N22
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\INST[29]~input_o\ & (!\INST[28]~input_o\ & (!\INST[31]~input_o\ & !\INST[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[29]~input_o\,
	datab => \INST[28]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[30]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X85_Y1_N2
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\INST[30]~input_o\ & (!\INST[31]~input_o\ & \INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X85_Y1_N20
\REG_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux~0_combout\ = (\enable~input_o\ & (\present_state.state_0~q\ & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \present_state.state_0~q\,
	datad => \Equal5~1_combout\,
	combout => \REG_Mux~0_combout\);

-- Location: LCCOMB_X85_Y1_N8
\REG_Mux$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_Mux$latch~combout\ = (\REG_Mux~0_combout\ & (!\Equal5~0_combout\)) # (!\REG_Mux~0_combout\ & ((\REG_Mux$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \REG_Mux$latch~combout\,
	datad => \REG_Mux~0_combout\,
	combout => \REG_Mux$latch~combout\);

-- Location: LCCOMB_X82_Y1_N30
\IM_MUX2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]~8_combout\ = (\Equal9~2_combout\ & ((\INST[26]~input_o\ & (\IM_MUX2[0]~7_combout\)) # (!\INST[26]~input_o\ & ((!\INST[25]~input_o\))))) # (!\Equal9~2_combout\ & (((\IM_MUX2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => \INST[26]~input_o\,
	datac => \IM_MUX2[0]~7_combout\,
	datad => \INST[25]~input_o\,
	combout => \IM_MUX2[0]~8_combout\);

-- Location: LCCOMB_X83_Y1_N8
\inc_PC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~11_combout\ = (\IM_MUX2[0]~10_combout\ & (\IM_MUX2[1]~6_combout\ & \inc_PC~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~10_combout\,
	datac => \IM_MUX2[1]~6_combout\,
	datad => \inc_PC~10_combout\,
	combout => \inc_PC~11_combout\);

-- Location: LCCOMB_X84_Y1_N24
\IM_MUX2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]~9_combout\ = (!\inc_PC~11_combout\ & (\enable~input_o\ & (!\Equal8~0_combout\ & \IM_MUX2[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~11_combout\,
	datab => \enable~input_o\,
	datac => \Equal8~0_combout\,
	datad => \IM_MUX2[1]~11_combout\,
	combout => \IM_MUX2[1]~9_combout\);

-- Location: CLKCTRL_G17
\IM_MUX2[1]~9clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IM_MUX2[1]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IM_MUX2[1]~9clkctrl_outclk\);

-- Location: LCCOMB_X81_Y1_N26
\IM_MUX2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[0]$latch~combout\ = (GLOBAL(\IM_MUX2[1]~9clkctrl_outclk\) & (\IM_MUX2[0]~8_combout\)) # (!GLOBAL(\IM_MUX2[1]~9clkctrl_outclk\) & ((\IM_MUX2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~8_combout\,
	datac => \IM_MUX2[0]$latch~combout\,
	datad => \IM_MUX2[1]~9clkctrl_outclk\,
	combout => \IM_MUX2[0]$latch~combout\);

-- Location: LCCOMB_X74_Y1_N20
\IM_MUX2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM_MUX2[1]$latch~combout\ = (GLOBAL(\IM_MUX2[1]~9clkctrl_outclk\) & (!\IM_MUX2[1]~6_combout\)) # (!GLOBAL(\IM_MUX2[1]~9clkctrl_outclk\) & ((\IM_MUX2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[1]~6_combout\,
	datab => \IM_MUX2[1]$latch~combout\,
	datad => \IM_MUX2[1]~9clkctrl_outclk\,
	combout => \IM_MUX2[1]$latch~combout\);

-- Location: LCCOMB_X85_Y1_N0
\wen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~0_combout\ = (\INST[30]~input_o\) # ((\INST[28]~input_o\ $ (!\INST[29]~input_o\)) # (!\INST[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \wen~0_combout\);

-- Location: LCCOMB_X85_Y1_N18
\DATA_Mux[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]~1_combout\ = (\INST[31]~input_o\) # ((\INST[30]~input_o\) # (!\INST[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \DATA_Mux[0]~1_combout\);

-- Location: LCCOMB_X85_Y1_N24
\DATA_Mux[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]~2_combout\ = (\present_state.state_0~q\ & ((\present_state.state_1~q\ & ((\DATA_Mux[0]~1_combout\))) # (!\present_state.state_1~q\ & (!\wen~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wen~0_combout\,
	datab => \present_state.state_1~q\,
	datac => \present_state.state_0~q\,
	datad => \DATA_Mux[0]~1_combout\,
	combout => \DATA_Mux[0]~2_combout\);

-- Location: LCCOMB_X86_Y1_N0
\DATA_Mux[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~3_combout\ = (!\INST[30]~input_o\ & (\INST[29]~input_o\ $ (((\INST[28]~input_o\ & \INST[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[30]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \DATA_Mux[1]~3_combout\);

-- Location: LCCOMB_X86_Y1_N12
\DATA_Mux[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~4_combout\ = (\enable~input_o\ & (((\present_state.state_1~q\ & \DATA_Mux[1]~3_combout\)) # (!\present_state.state_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \present_state.state_0~q\,
	datac => \present_state.state_1~q\,
	datad => \DATA_Mux[1]~3_combout\,
	combout => \DATA_Mux[1]~4_combout\);

-- Location: LCCOMB_X85_Y1_N30
\DATA_Mux[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~5_combout\ = ((\Equal3~0_combout\) # ((!\A_MUX~3_combout\ & !\Equal7~0_combout\))) # (!\inc_PC~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~9_combout\,
	datab => \Equal3~0_combout\,
	datac => \A_MUX~3_combout\,
	datad => \Equal7~0_combout\,
	combout => \DATA_Mux[1]~5_combout\);

-- Location: LCCOMB_X86_Y1_N10
\DATA_Mux[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~6_combout\ = (\DATA_Mux[1]~4_combout\) # ((!\present_state.state_1~q\ & (\DATA_Mux[1]~0_combout\ & \DATA_Mux[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~4_combout\,
	datab => \present_state.state_1~q\,
	datac => \DATA_Mux[1]~0_combout\,
	datad => \DATA_Mux[1]~5_combout\,
	combout => \DATA_Mux[1]~6_combout\);

-- Location: CLKCTRL_G15
\DATA_Mux[1]~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DATA_Mux[1]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DATA_Mux[1]~6clkctrl_outclk\);

-- Location: LCCOMB_X84_Y1_N22
\DATA_Mux[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[0]$latch~combout\ = (GLOBAL(\DATA_Mux[1]~6clkctrl_outclk\) & ((\DATA_Mux[0]~2_combout\))) # (!GLOBAL(\DATA_Mux[1]~6clkctrl_outclk\) & (\DATA_Mux[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[0]$latch~combout\,
	datac => \DATA_Mux[0]~2_combout\,
	datad => \DATA_Mux[1]~6clkctrl_outclk\,
	combout => \DATA_Mux[0]$latch~combout\);

-- Location: LCCOMB_X84_Y1_N8
\DATA_Mux[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~8_combout\ = (\INST[30]~input_o\ & (\INST[29]~input_o\ & (\INST[28]~input_o\ & !\INST[31]~input_o\))) # (!\INST[30]~input_o\ & (\INST[29]~input_o\ $ (((\INST[28]~input_o\ & \INST[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[29]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[31]~input_o\,
	combout => \DATA_Mux[1]~8_combout\);

-- Location: LCCOMB_X84_Y1_N6
\DATA_Mux[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~7_combout\ = (\INST[24]~input_o\) # ((\INST[27]~input_o\) # ((\INST[26]~input_o\) # (!\INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[27]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[25]~input_o\,
	combout => \DATA_Mux[1]~7_combout\);

-- Location: LCCOMB_X84_Y1_N2
\DATA_Mux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]~9_combout\ = (\present_state.state_2~q\ & (((\DATA_Mux[1]~7_combout\ & \INST[30]~input_o\)) # (!\DATA_Mux[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_Mux[1]~8_combout\,
	datab => \present_state.state_2~q\,
	datac => \DATA_Mux[1]~7_combout\,
	datad => \INST[30]~input_o\,
	combout => \DATA_Mux[1]~9_combout\);

-- Location: LCCOMB_X80_Y1_N28
\DATA_Mux[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_Mux[1]$latch~combout\ = (GLOBAL(\DATA_Mux[1]~6clkctrl_outclk\) & ((\DATA_Mux[1]~9_combout\))) # (!GLOBAL(\DATA_Mux[1]~6clkctrl_outclk\) & (\DATA_Mux[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_Mux[1]$latch~combout\,
	datac => \DATA_Mux[1]~9_combout\,
	datad => \DATA_Mux[1]~6clkctrl_outclk\,
	combout => \DATA_Mux[1]$latch~combout\);

-- Location: LCCOMB_X81_Y1_N6
\ALU_op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]~0_combout\ = (\INST[24]~input_o\ & (((\INST[26]~input_o\)))) # (!\INST[24]~input_o\ & (\INST[27]~input_o\ $ (((\INST[25]~input_o\ & \INST[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[24]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \INST[27]~input_o\,
	combout => \ALU_op[0]~0_combout\);

-- Location: LCCOMB_X81_Y1_N20
\ALU_op[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]~1_combout\ = (\ALU_op[0]~0_combout\) # (!\Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_op[0]~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \ALU_op[0]~1_combout\);

-- Location: LCCOMB_X81_Y1_N0
\ALU_op[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[0]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[0]~1_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[0]~1_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \ALU_op[0]$latch~combout\,
	combout => \ALU_op[0]$latch~combout\);

-- Location: LCCOMB_X81_Y1_N18
\Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (!\INST[26]~input_o\ & !\INST[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST[26]~input_o\,
	datad => \INST[25]~input_o\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X82_Y1_N20
\ALU_op[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]~2_combout\ = (!\Equal8~0_combout\ & ((\INST[26]~input_o\) # ((\INST[25]~input_o\) # (!\Equal9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \INST[26]~input_o\,
	datac => \Equal9~2_combout\,
	datad => \INST[25]~input_o\,
	combout => \ALU_op[1]~2_combout\);

-- Location: LCCOMB_X81_Y1_N4
\ALU_op[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]~3_combout\ = (\ALU_op[1]~2_combout\ & (((\Equal9~3_combout\ & \Equal13~0_combout\)) # (!\IM_MUX2[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM_MUX2[0]~7_combout\,
	datab => \Equal9~3_combout\,
	datac => \ALU_op[1]~2_combout\,
	datad => \Equal13~0_combout\,
	combout => \ALU_op[1]~3_combout\);

-- Location: LCCOMB_X81_Y1_N10
\ALU_op[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[1]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[1]~3_combout\)) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[1]~3_combout\,
	datac => \IM_MUX1~0clkctrl_outclk\,
	datad => \ALU_op[1]$latch~combout\,
	combout => \ALU_op[1]$latch~combout\);

-- Location: LCCOMB_X82_Y1_N18
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\INST[27]~input_o\ & (\Equal9~0_combout\ & !\INST[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X82_Y1_N22
\ALU_op[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~4_combout\ = (\INST[25]~input_o\ & ((\INST[26]~input_o\ & ((\Equal10~0_combout\))) # (!\INST[26]~input_o\ & (\Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \INST[25]~input_o\,
	datac => \Equal11~0_combout\,
	datad => \Equal10~0_combout\,
	combout => \ALU_op[2]~4_combout\);

-- Location: LCCOMB_X81_Y1_N14
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!\INST[27]~input_o\ & (\Equal9~3_combout\ & (\Equal9~0_combout\ & !\INST[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datab => \Equal9~3_combout\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X82_Y1_N0
\ALU_op[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~5_combout\ = (!\Equal8~0_combout\ & ((\INST[26]~input_o\) # ((!\INST[25]~input_o\) # (!\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \INST[26]~input_o\,
	datac => \Equal13~0_combout\,
	datad => \INST[25]~input_o\,
	combout => \ALU_op[2]~5_combout\);

-- Location: LCCOMB_X82_Y1_N26
\ALU_op[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]~6_combout\ = (\ALU_op[2]~4_combout\) # ((\inc_PC~10_combout\ & (!\Equal11~1_combout\ & \ALU_op[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_op[2]~4_combout\,
	datab => \inc_PC~10_combout\,
	datac => \Equal11~1_combout\,
	datad => \ALU_op[2]~5_combout\,
	combout => \ALU_op[2]~6_combout\);

-- Location: LCCOMB_X82_Y1_N28
\ALU_op[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_op[2]$latch~combout\ = (GLOBAL(\IM_MUX1~0clkctrl_outclk\) & ((\ALU_op[2]~6_combout\))) # (!GLOBAL(\IM_MUX1~0clkctrl_outclk\) & (\ALU_op[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_op[2]$latch~combout\,
	datac => \ALU_op[2]~6_combout\,
	datad => \IM_MUX1~0clkctrl_outclk\,
	combout => \ALU_op[2]$latch~combout\);

-- Location: LCCOMB_X85_Y1_N14
\inc_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~4_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & (\INST[29]~input_o\ $ (\INST[28]~input_o\)))) # (!\INST[30]~input_o\ & (!\INST[29]~input_o\ & (\INST[31]~input_o\ & !\INST[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[29]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[31]~input_o\,
	datad => \INST[28]~input_o\,
	combout => \inc_PC~4_combout\);

-- Location: LCCOMB_X85_Y1_N4
\inc_PC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~20_combout\ = (\present_state.state_1~q\ & (\present_state.state_0~q\ & ((\inc_PC~4_combout\) # (!\present_state.state_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \present_state.state_0~q\,
	datac => \inc_PC~4_combout\,
	datad => \present_state.state_2~q\,
	combout => \inc_PC~20_combout\);

-- Location: LCCOMB_X82_Y1_N24
\inc_PC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~12_combout\ = ((!\Equal13~0_combout\ & ((!\Equal11~0_combout\) # (!\INST[25]~input_o\)))) # (!\INST[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \INST[26]~input_o\,
	datac => \INST[25]~input_o\,
	datad => \Equal11~0_combout\,
	combout => \inc_PC~12_combout\);

-- Location: LCCOMB_X83_Y1_N30
\inc_PC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~13_combout\ = (\inc_PC~12_combout\ & (\IM_MUX2[1]~11_combout\ & ((!\Equal10~0_combout\) # (!\Equal9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~3_combout\,
	datab => \inc_PC~12_combout\,
	datac => \IM_MUX2[1]~11_combout\,
	datad => \Equal10~0_combout\,
	combout => \inc_PC~13_combout\);

-- Location: LCCOMB_X83_Y1_N4
\inc_PC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~14_combout\ = (\inc_PC~20_combout\) # ((\inc_PC~13_combout\ & (\ld_A~1_combout\ & !\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~20_combout\,
	datab => \inc_PC~13_combout\,
	datac => \ld_A~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \inc_PC~14_combout\);

-- Location: IOIBUF_X74_Y0_N22
\statusZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusZ,
	o => \statusZ~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\statusC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statusC,
	o => \statusC~input_o\);

-- Location: LCCOMB_X81_Y1_N24
\inc_PC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~15_combout\ = (\INST[26]~input_o\ & (((\statusC~input_o\ & !\INST[25]~input_o\)))) # (!\INST[26]~input_o\ & (\statusZ~input_o\ & ((\INST[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statusZ~input_o\,
	datab => \INST[26]~input_o\,
	datac => \statusC~input_o\,
	datad => \INST[25]~input_o\,
	combout => \inc_PC~15_combout\);

-- Location: LCCOMB_X82_Y1_N4
\inc_PC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~16_combout\ = (\INST[27]~input_o\ & (\inc_PC~15_combout\ & (\Equal9~0_combout\ & !\INST[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[27]~input_o\,
	datab => \inc_PC~15_combout\,
	datac => \Equal9~0_combout\,
	datad => \INST[24]~input_o\,
	combout => \inc_PC~16_combout\);

-- Location: LCCOMB_X83_Y1_N22
\inc_PC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~17_combout\ = (\enable~input_o\ & ((\inc_PC~16_combout\) # ((!\A_MUX~3_combout\) # (!\inc_PC~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inc_PC~16_combout\,
	datac => \inc_PC~13_combout\,
	datad => \A_MUX~3_combout\,
	combout => \inc_PC~17_combout\);

-- Location: CLKCTRL_G16
\inc_PC~17clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inc_PC~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inc_PC~17clkctrl_outclk\);

-- Location: LCCOMB_X83_Y1_N14
\inc_PC$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (\inc_PC~14_combout\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\inc_PC$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inc_PC~14_combout\,
	datac => \inc_PC$latch~combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \inc_PC$latch~combout\);

-- Location: LCCOMB_X85_Y1_N6
\inc_PC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inc_PC~18_combout\ = (\present_state.state_0~q\ & (((\Equal0~0_combout\) # (!\present_state.state_2~q\)) # (!\inc_PC~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~19_combout\,
	datab => \present_state.state_2~q\,
	datac => \Equal0~0_combout\,
	datad => \present_state.state_0~q\,
	combout => \inc_PC~18_combout\);

-- Location: LCCOMB_X83_Y1_N28
\ld_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC~0_combout\ = (\inc_PC~18_combout\) # ((!\Equal8~0_combout\ & (\ld_A~1_combout\ & \inc_PC~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~18_combout\,
	datab => \Equal8~0_combout\,
	datac => \ld_A~1_combout\,
	datad => \inc_PC~13_combout\,
	combout => \ld_PC~0_combout\);

-- Location: LCCOMB_X83_Y1_N0
\ld_PC$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_PC$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\ld_PC~0_combout\))) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & (\ld_PC$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_PC$latch~combout\,
	datac => \ld_PC~0_combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \ld_PC$latch~combout\);

-- Location: LCCOMB_X68_Y1_N28
\ld_IR$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_IR$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (!\present_state.state_0~q\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\ld_IR$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_0~q\,
	datac => \inc_PC~17clkctrl_outclk\,
	datad => \ld_IR$latch~combout\,
	combout => \ld_IR$latch~combout\);

-- Location: LCCOMB_X81_Y1_N30
\clr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A~0_combout\ = (\Equal13~0_combout\ & (!\INST[25]~input_o\ & (\INST[26]~input_o\ & \present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \INST[25]~input_o\,
	datac => \INST[26]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \clr_A~0_combout\);

-- Location: LCCOMB_X81_Y1_N12
\clr_A$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_A$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\clr_A~0_combout\))) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & (\clr_A$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_A$latch~combout\,
	datac => \clr_A~0_combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \clr_A$latch~combout\);

-- Location: LCCOMB_X84_Y1_N4
\clr_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~1_combout\ = (!\INST[24]~input_o\ & (\INST[26]~input_o\ & (!\INST[27]~input_o\ & \INST[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[24]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \INST[27]~input_o\,
	datad => \INST[25]~input_o\,
	combout => \clr_B~1_combout\);

-- Location: LCCOMB_X84_Y1_N18
\clr_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~0_combout\ = (\INST[30]~input_o\ & (!\INST[31]~input_o\ & (\INST[28]~input_o\ $ (!\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[30]~input_o\,
	datab => \INST[31]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \clr_B~0_combout\);

-- Location: LCCOMB_X84_Y1_N16
\clr_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B~2_combout\ = (\present_state.state_2~q\ & (\clr_B~0_combout\ & ((\clr_B~1_combout\) # (!\INST[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[29]~input_o\,
	datab => \clr_B~1_combout\,
	datac => \present_state.state_2~q\,
	datad => \clr_B~0_combout\,
	combout => \clr_B~2_combout\);

-- Location: LCCOMB_X84_Y1_N26
\clr_B$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_B$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\clr_B~2_combout\))) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & (\clr_B$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_B$latch~combout\,
	datac => \clr_B~2_combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \clr_B$latch~combout\);

-- Location: LCCOMB_X81_Y1_N16
\clr_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_C~0_combout\ = (\INST[26]~input_o\ & (\Equal13~0_combout\ & (\INST[25]~input_o\ & \present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[26]~input_o\,
	datab => \Equal13~0_combout\,
	datac => \INST[25]~input_o\,
	datad => \present_state.state_2~q\,
	combout => \clr_C~0_combout\);

-- Location: LCCOMB_X80_Y1_N10
\clr_C$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_C$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (\clr_C~0_combout\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\clr_C$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_PC~17clkctrl_outclk\,
	datab => \clr_C~0_combout\,
	datad => \clr_C$latch~combout\,
	combout => \clr_C$latch~combout\);

-- Location: LCCOMB_X81_Y1_N28
\clr_Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z~2_combout\ = (!\INST[25]~input_o\ & (!\INST[26]~input_o\ & (\Equal10~0_combout\ & \present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[25]~input_o\,
	datab => \INST[26]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \present_state.state_2~q\,
	combout => \clr_Z~2_combout\);

-- Location: LCCOMB_X81_Y1_N2
\clr_Z$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_Z$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (\clr_Z~2_combout\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\clr_Z$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_Z~2_combout\,
	datab => \clr_Z$latch~combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \clr_Z$latch~combout\);

-- Location: LCCOMB_X82_Y1_N2
\ld_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~2_combout\ = (\INST[28]~input_o\ & (!\INST[30]~input_o\ & (\present_state.state_1~q\ & \INST[31]~input_o\))) # (!\INST[28]~input_o\ & (((!\present_state.state_1~q\ & !\INST[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[28]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \present_state.state_1~q\,
	datad => \INST[31]~input_o\,
	combout => \ld_A~2_combout\);

-- Location: LCCOMB_X83_Y1_N10
\ld_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~3_combout\ = (\A_MUX~5_combout\ & ((\Equal3~0_combout\) # ((\Equal9~0_combout\ & !\ld_A~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_MUX~5_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \ld_A~1_combout\,
	combout => \ld_A~3_combout\);

-- Location: LCCOMB_X83_Y1_N16
\ld_A~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A~4_combout\ = (\ld_A~3_combout\) # ((\ld_A~2_combout\ & (!\INST[29]~input_o\ & \present_state.state_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~2_combout\,
	datab => \INST[29]~input_o\,
	datac => \present_state.state_0~q\,
	datad => \ld_A~3_combout\,
	combout => \ld_A~4_combout\);

-- Location: LCCOMB_X83_Y1_N18
\ld_A$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_A$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (\ld_A~4_combout\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\ld_A$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_A~4_combout\,
	datab => \ld_A$latch~combout\,
	datad => \inc_PC~17clkctrl_outclk\,
	combout => \ld_A$latch~combout\);

-- Location: LCCOMB_X82_Y1_N8
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\INST[31]~input_o\ & (!\INST[30]~input_o\ & (!\INST[28]~input_o\ & \INST[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST[31]~input_o\,
	datab => \INST[30]~input_o\,
	datac => \INST[28]~input_o\,
	datad => \INST[29]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X81_Y1_N22
\ld_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B~0_combout\ = (\Equal4~0_combout\ & \present_state.state_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \present_state.state_0~q\,
	combout => \ld_B~0_combout\);

-- Location: LCCOMB_X77_Y1_N28
\ld_B$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_B$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & (\ld_B~0_combout\)) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\ld_B$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_B~0_combout\,
	datac => \inc_PC~17clkctrl_outclk\,
	datad => \ld_B$latch~combout\,
	combout => \ld_B$latch~combout\);

-- Location: LCCOMB_X84_Y1_N28
\ld_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_C~0_combout\ = (!\Equal8~0_combout\ & (\IM_MUX2[1]~11_combout\ & !\ld_A~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \IM_MUX2[1]~11_combout\,
	datad => \ld_A~1_combout\,
	combout => \ld_C~0_combout\);

-- Location: LCCOMB_X84_Y1_N30
\ld_C$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ld_C$latch~combout\ = (GLOBAL(\inc_PC~17clkctrl_outclk\) & ((\ld_C~0_combout\))) # (!GLOBAL(\inc_PC~17clkctrl_outclk\) & (\ld_C$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_C$latch~combout\,
	datac => \inc_PC~17clkctrl_outclk\,
	datad => \ld_C~0_combout\,
	combout => \ld_C$latch~combout\);

-- Location: LCCOMB_X85_Y1_N16
\wen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~1_combout\ = (\present_state.state_0~q\ & ((\present_state.state_1~q\ & ((\Equal5~1_combout\))) # (!\present_state.state_1~q\ & (\wen~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wen~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \present_state.state_1~q\,
	datad => \present_state.state_0~q\,
	combout => \wen~1_combout\);

-- Location: LCCOMB_X86_Y1_N8
\wen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen~2_combout\ = (\enable~input_o\ & ((\DATA_Mux[1]~3_combout\) # (!\present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \present_state.state_2~q\,
	datad => \DATA_Mux[1]~3_combout\,
	combout => \wen~2_combout\);

-- Location: CLKCTRL_G5
\wen~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wen~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wen~2clkctrl_outclk\);

-- Location: LCCOMB_X89_Y1_N8
\wen$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \wen$latch~combout\ = (GLOBAL(\wen~2clkctrl_outclk\) & (\wen~1_combout\)) # (!GLOBAL(\wen~2clkctrl_outclk\) & ((\wen$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wen~1_combout\,
	datac => \wen$latch~combout\,
	datad => \wen~2clkctrl_outclk\,
	combout => \wen$latch~combout\);

-- Location: LCCOMB_X85_Y1_N10
\en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\present_state.state_0~q\ & (((\Equal3~0_combout\) # (!\inc_PC~9_combout\)) # (!\present_state.state_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.state_1~q\,
	datab => \inc_PC~9_combout\,
	datac => \present_state.state_0~q\,
	datad => \Equal3~0_combout\,
	combout => \en~0_combout\);

-- Location: LCCOMB_X92_Y1_N8
\en$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \en$latch~combout\ = (GLOBAL(\wen~2clkctrl_outclk\) & (\en~0_combout\)) # (!GLOBAL(\wen~2clkctrl_outclk\) & ((\en$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~0_combout\,
	datac => \en$latch~combout\,
	datad => \wen~2clkctrl_outclk\,
	combout => \en$latch~combout\);

-- Location: IOIBUF_X23_Y0_N22
\mlck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mlck,
	o => \mlck~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\INST[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(0),
	o => \INST[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\INST[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(1),
	o => \INST[1]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\INST[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(2),
	o => \INST[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\INST[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(3),
	o => \INST[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\INST[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(4),
	o => \INST[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\INST[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(5),
	o => \INST[5]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\INST[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(6),
	o => \INST[6]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\INST[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(7),
	o => \INST[7]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\INST[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(8),
	o => \INST[8]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\INST[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(9),
	o => \INST[9]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\INST[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(10),
	o => \INST[10]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\INST[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(11),
	o => \INST[11]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\INST[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(12),
	o => \INST[12]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\INST[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(13),
	o => \INST[13]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\INST[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(14),
	o => \INST[14]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\INST[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(15),
	o => \INST[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\INST[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(16),
	o => \INST[16]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\INST[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(17),
	o => \INST[17]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\INST[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(18),
	o => \INST[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\INST[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(19),
	o => \INST[19]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\INST[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(20),
	o => \INST[20]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\INST[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(21),
	o => \INST[21]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\INST[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(22),
	o => \INST[22]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\INST[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INST(23),
	o => \INST[23]~input_o\);

ww_A_MUX <= \A_MUX~output_o\;

ww_B_MUX <= \B_MUX~output_o\;

ww_IM_MUX1 <= \IM_MUX1~output_o\;

ww_REG_Mux <= \REG_Mux~output_o\;

ww_IM_MUX2(0) <= \IM_MUX2[0]~output_o\;

ww_IM_MUX2(1) <= \IM_MUX2[1]~output_o\;

ww_DATA_Mux(0) <= \DATA_Mux[0]~output_o\;

ww_DATA_Mux(1) <= \DATA_Mux[1]~output_o\;

ww_ALU_op(0) <= \ALU_op[0]~output_o\;

ww_ALU_op(1) <= \ALU_op[1]~output_o\;

ww_ALU_op(2) <= \ALU_op[2]~output_o\;

ww_inc_PC <= \inc_PC~output_o\;

ww_ld_PC <= \ld_PC~output_o\;

ww_clr_IR <= \clr_IR~output_o\;

ww_ld_IR <= \ld_IR~output_o\;

ww_clr_A <= \clr_A~output_o\;

ww_clr_B <= \clr_B~output_o\;

ww_clr_C <= \clr_C~output_o\;

ww_clr_Z <= \clr_Z~output_o\;

ww_ld_A <= \ld_A~output_o\;

ww_ld_B <= \ld_B~output_o\;

ww_ld_C <= \ld_C~output_o\;

ww_ld_Z <= \ld_Z~output_o\;

ww_T(0) <= \T[0]~output_o\;

ww_T(1) <= \T[1]~output_o\;

ww_T(2) <= \T[2]~output_o\;

ww_wen <= \wen~output_o\;

ww_en <= \en~output_o\;
END structure;


