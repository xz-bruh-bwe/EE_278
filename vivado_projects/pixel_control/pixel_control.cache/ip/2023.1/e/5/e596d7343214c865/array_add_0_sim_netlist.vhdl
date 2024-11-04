-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Oct 31 21:55:44 2024
-- Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ array_add_0_sim_netlist.vhdl
-- Design      : array_add_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg225-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_ce0 : out STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_ce1 : out STD_LOGIC;
    a_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_ce0 : out STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_ce1 : out STD_LOGIC;
    b_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    result_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    result_ce0 : out STD_LOGIC;
    result_we0 : out STD_LOGIC;
    result_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    result_ce1 : out STD_LOGIC;
    result_we1 : out STD_LOGIC;
    result_d1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "5'b00001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "5'b00010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "5'b00100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "5'b01000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "5'b10000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add is
  signal \<const0>\ : STD_LOGIC;
  signal \^a_address0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^a_ce0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal b_ce1_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^result_address0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \result_address1[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^result_ce0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[0]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[12]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[16]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[20]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[24]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[28]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[4]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d0[8]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[0]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[12]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[16]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[20]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[24]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[28]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[4]_INST_0_n_3\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_n_0\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_n_1\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_n_2\ : STD_LOGIC;
  signal \result_d1[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_result_d0[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_d1[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \b_address1[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b_address1[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of b_ce1_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of b_ce1_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_address1[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_address1[1]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \result_d0[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[16]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[20]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[24]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[28]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d0[8]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[16]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[20]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[24]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[28]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_d1[8]_INST_0\ : label is 35;
  attribute SOFT_HLUTNM of result_we1_INST_0 : label is "soft_lutpair0";
begin
  a_address0(3 downto 1) <= \^a_address0\(3 downto 1);
  a_address0(0) <= \<const0>\;
  a_address1(3 downto 1) <= \^a_address0\(3 downto 1);
  a_address1(0) <= \<const0>\;
  a_ce0 <= \^a_ce0\;
  a_ce1 <= \^a_ce0\;
  ap_done <= \^result_address0\(3);
  b_address0(3 downto 1) <= \^a_address0\(3 downto 1);
  b_address0(0) <= \<const0>\;
  b_address1(3 downto 1) <= \^a_address0\(3 downto 1);
  b_address1(0) <= \<const0>\;
  b_ce0 <= \^a_ce0\;
  b_ce1 <= \^a_ce0\;
  result_address0(3 downto 1) <= \^result_address0\(3 downto 1);
  result_address0(0) <= \<const0>\;
  result_address1(3 downto 1) <= \^result_address0\(3 downto 1);
  result_address1(0) <= \<const0>\;
  result_ce0 <= \^result_ce0\;
  result_ce1 <= \^result_ce0\;
  result_we0 <= \^result_ce0\;
  result_we1 <= \^result_ce0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \^a_address0\(3),
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23222222"
    )
        port map (
      I0 => ap_start,
      I1 => b_ce1_INST_0_i_1_n_0,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => ap_enable_reg_pp0_iter1,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage1,
      Q => ap_CS_fsm_pp0_stage2,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage2,
      Q => ap_CS_fsm_pp0_stage3,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage3,
      Q => \^a_address0\(3),
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => ap_enable_reg_pp0_iter0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => ap_rst
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000505544005000"
    )
        port map (
      I0 => ap_rst,
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => \^a_address0\(3),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \^a_address0\(3),
      O => ap_ready
    );
\b_address1[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => ap_CS_fsm_pp0_stage2,
      I3 => \^a_address0\(3),
      O => \^a_address0\(1)
    );
\b_address1[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => \^a_address0\(3),
      O => \^a_address0\(2)
    );
b_ce1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => ap_start,
      I1 => b_ce1_INST_0_i_1_n_0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      O => \^a_ce0\
    );
b_ce1_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage2,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => \^a_address0\(3),
      I3 => ap_CS_fsm_pp0_stage3,
      O => b_ce1_INST_0_i_1_n_0
    );
\result_address1[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \^a_address0\(3),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => ap_CS_fsm_pp0_stage3,
      I3 => \result_address1[1]_INST_0_i_1_n_0\,
      O => \^result_address0\(1)
    );
\result_address1[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter0_reg,
      O => \result_address1[1]_INST_0_i_1_n_0\
    );
\result_address1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0EEE000E000E0"
    )
        port map (
      I0 => \^a_address0\(3),
      I1 => ap_CS_fsm_pp0_stage3,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_start,
      O => \^result_address0\(2)
    );
\result_address1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      O => \^result_address0\(3)
    );
\result_d0[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_d0[0]_INST_0_n_0\,
      CO(2) => \result_d0[0]_INST_0_n_1\,
      CO(1) => \result_d0[0]_INST_0_n_2\,
      CO(0) => \result_d0[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(3 downto 0),
      O(3 downto 0) => result_d0(3 downto 0),
      S(3) => \result_d0[0]_INST_0_i_1_n_0\,
      S(2) => \result_d0[0]_INST_0_i_2_n_0\,
      S(1) => \result_d0[0]_INST_0_i_3_n_0\,
      S(0) => \result_d0[0]_INST_0_i_4_n_0\
    );
\result_d0[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(3),
      I1 => a_q0(3),
      O => \result_d0[0]_INST_0_i_1_n_0\
    );
\result_d0[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(2),
      I1 => a_q0(2),
      O => \result_d0[0]_INST_0_i_2_n_0\
    );
\result_d0[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(1),
      I1 => a_q0(1),
      O => \result_d0[0]_INST_0_i_3_n_0\
    );
\result_d0[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(0),
      I1 => a_q0(0),
      O => \result_d0[0]_INST_0_i_4_n_0\
    );
\result_d0[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[8]_INST_0_n_0\,
      CO(3) => \result_d0[12]_INST_0_n_0\,
      CO(2) => \result_d0[12]_INST_0_n_1\,
      CO(1) => \result_d0[12]_INST_0_n_2\,
      CO(0) => \result_d0[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(15 downto 12),
      O(3 downto 0) => result_d0(15 downto 12),
      S(3) => \result_d0[12]_INST_0_i_1_n_0\,
      S(2) => \result_d0[12]_INST_0_i_2_n_0\,
      S(1) => \result_d0[12]_INST_0_i_3_n_0\,
      S(0) => \result_d0[12]_INST_0_i_4_n_0\
    );
\result_d0[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(15),
      I1 => a_q0(15),
      O => \result_d0[12]_INST_0_i_1_n_0\
    );
\result_d0[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(14),
      I1 => a_q0(14),
      O => \result_d0[12]_INST_0_i_2_n_0\
    );
\result_d0[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(13),
      I1 => a_q0(13),
      O => \result_d0[12]_INST_0_i_3_n_0\
    );
\result_d0[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(12),
      I1 => a_q0(12),
      O => \result_d0[12]_INST_0_i_4_n_0\
    );
\result_d0[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[12]_INST_0_n_0\,
      CO(3) => \result_d0[16]_INST_0_n_0\,
      CO(2) => \result_d0[16]_INST_0_n_1\,
      CO(1) => \result_d0[16]_INST_0_n_2\,
      CO(0) => \result_d0[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(19 downto 16),
      O(3 downto 0) => result_d0(19 downto 16),
      S(3) => \result_d0[16]_INST_0_i_1_n_0\,
      S(2) => \result_d0[16]_INST_0_i_2_n_0\,
      S(1) => \result_d0[16]_INST_0_i_3_n_0\,
      S(0) => \result_d0[16]_INST_0_i_4_n_0\
    );
\result_d0[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(19),
      I1 => a_q0(19),
      O => \result_d0[16]_INST_0_i_1_n_0\
    );
\result_d0[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(18),
      I1 => a_q0(18),
      O => \result_d0[16]_INST_0_i_2_n_0\
    );
\result_d0[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(17),
      I1 => a_q0(17),
      O => \result_d0[16]_INST_0_i_3_n_0\
    );
\result_d0[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(16),
      I1 => a_q0(16),
      O => \result_d0[16]_INST_0_i_4_n_0\
    );
\result_d0[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[16]_INST_0_n_0\,
      CO(3) => \result_d0[20]_INST_0_n_0\,
      CO(2) => \result_d0[20]_INST_0_n_1\,
      CO(1) => \result_d0[20]_INST_0_n_2\,
      CO(0) => \result_d0[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(23 downto 20),
      O(3 downto 0) => result_d0(23 downto 20),
      S(3) => \result_d0[20]_INST_0_i_1_n_0\,
      S(2) => \result_d0[20]_INST_0_i_2_n_0\,
      S(1) => \result_d0[20]_INST_0_i_3_n_0\,
      S(0) => \result_d0[20]_INST_0_i_4_n_0\
    );
\result_d0[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(23),
      I1 => a_q0(23),
      O => \result_d0[20]_INST_0_i_1_n_0\
    );
\result_d0[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(22),
      I1 => a_q0(22),
      O => \result_d0[20]_INST_0_i_2_n_0\
    );
\result_d0[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(21),
      I1 => a_q0(21),
      O => \result_d0[20]_INST_0_i_3_n_0\
    );
\result_d0[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(20),
      I1 => a_q0(20),
      O => \result_d0[20]_INST_0_i_4_n_0\
    );
\result_d0[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[20]_INST_0_n_0\,
      CO(3) => \result_d0[24]_INST_0_n_0\,
      CO(2) => \result_d0[24]_INST_0_n_1\,
      CO(1) => \result_d0[24]_INST_0_n_2\,
      CO(0) => \result_d0[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(27 downto 24),
      O(3 downto 0) => result_d0(27 downto 24),
      S(3) => \result_d0[24]_INST_0_i_1_n_0\,
      S(2) => \result_d0[24]_INST_0_i_2_n_0\,
      S(1) => \result_d0[24]_INST_0_i_3_n_0\,
      S(0) => \result_d0[24]_INST_0_i_4_n_0\
    );
\result_d0[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(27),
      I1 => a_q0(27),
      O => \result_d0[24]_INST_0_i_1_n_0\
    );
\result_d0[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(26),
      I1 => a_q0(26),
      O => \result_d0[24]_INST_0_i_2_n_0\
    );
\result_d0[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(25),
      I1 => a_q0(25),
      O => \result_d0[24]_INST_0_i_3_n_0\
    );
\result_d0[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(24),
      I1 => a_q0(24),
      O => \result_d0[24]_INST_0_i_4_n_0\
    );
\result_d0[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[24]_INST_0_n_0\,
      CO(3) => \NLW_result_d0[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \result_d0[28]_INST_0_n_1\,
      CO(1) => \result_d0[28]_INST_0_n_2\,
      CO(0) => \result_d0[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => b_q0(30 downto 28),
      O(3 downto 0) => result_d0(31 downto 28),
      S(3) => \result_d0[28]_INST_0_i_1_n_0\,
      S(2) => \result_d0[28]_INST_0_i_2_n_0\,
      S(1) => \result_d0[28]_INST_0_i_3_n_0\,
      S(0) => \result_d0[28]_INST_0_i_4_n_0\
    );
\result_d0[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(31),
      I1 => a_q0(31),
      O => \result_d0[28]_INST_0_i_1_n_0\
    );
\result_d0[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(30),
      I1 => a_q0(30),
      O => \result_d0[28]_INST_0_i_2_n_0\
    );
\result_d0[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(29),
      I1 => a_q0(29),
      O => \result_d0[28]_INST_0_i_3_n_0\
    );
\result_d0[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(28),
      I1 => a_q0(28),
      O => \result_d0[28]_INST_0_i_4_n_0\
    );
\result_d0[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[0]_INST_0_n_0\,
      CO(3) => \result_d0[4]_INST_0_n_0\,
      CO(2) => \result_d0[4]_INST_0_n_1\,
      CO(1) => \result_d0[4]_INST_0_n_2\,
      CO(0) => \result_d0[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(7 downto 4),
      O(3 downto 0) => result_d0(7 downto 4),
      S(3) => \result_d0[4]_INST_0_i_1_n_0\,
      S(2) => \result_d0[4]_INST_0_i_2_n_0\,
      S(1) => \result_d0[4]_INST_0_i_3_n_0\,
      S(0) => \result_d0[4]_INST_0_i_4_n_0\
    );
\result_d0[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(7),
      I1 => a_q0(7),
      O => \result_d0[4]_INST_0_i_1_n_0\
    );
\result_d0[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(6),
      I1 => a_q0(6),
      O => \result_d0[4]_INST_0_i_2_n_0\
    );
\result_d0[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(5),
      I1 => a_q0(5),
      O => \result_d0[4]_INST_0_i_3_n_0\
    );
\result_d0[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(4),
      I1 => a_q0(4),
      O => \result_d0[4]_INST_0_i_4_n_0\
    );
\result_d0[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d0[4]_INST_0_n_0\,
      CO(3) => \result_d0[8]_INST_0_n_0\,
      CO(2) => \result_d0[8]_INST_0_n_1\,
      CO(1) => \result_d0[8]_INST_0_n_2\,
      CO(0) => \result_d0[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q0(11 downto 8),
      O(3 downto 0) => result_d0(11 downto 8),
      S(3) => \result_d0[8]_INST_0_i_1_n_0\,
      S(2) => \result_d0[8]_INST_0_i_2_n_0\,
      S(1) => \result_d0[8]_INST_0_i_3_n_0\,
      S(0) => \result_d0[8]_INST_0_i_4_n_0\
    );
\result_d0[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(11),
      I1 => a_q0(11),
      O => \result_d0[8]_INST_0_i_1_n_0\
    );
\result_d0[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(10),
      I1 => a_q0(10),
      O => \result_d0[8]_INST_0_i_2_n_0\
    );
\result_d0[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(9),
      I1 => a_q0(9),
      O => \result_d0[8]_INST_0_i_3_n_0\
    );
\result_d0[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q0(8),
      I1 => a_q0(8),
      O => \result_d0[8]_INST_0_i_4_n_0\
    );
\result_d1[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_d1[0]_INST_0_n_0\,
      CO(2) => \result_d1[0]_INST_0_n_1\,
      CO(1) => \result_d1[0]_INST_0_n_2\,
      CO(0) => \result_d1[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(3 downto 0),
      O(3 downto 0) => result_d1(3 downto 0),
      S(3) => \result_d1[0]_INST_0_i_1_n_0\,
      S(2) => \result_d1[0]_INST_0_i_2_n_0\,
      S(1) => \result_d1[0]_INST_0_i_3_n_0\,
      S(0) => \result_d1[0]_INST_0_i_4_n_0\
    );
\result_d1[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(3),
      I1 => a_q1(3),
      O => \result_d1[0]_INST_0_i_1_n_0\
    );
\result_d1[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(2),
      I1 => a_q1(2),
      O => \result_d1[0]_INST_0_i_2_n_0\
    );
\result_d1[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(1),
      I1 => a_q1(1),
      O => \result_d1[0]_INST_0_i_3_n_0\
    );
\result_d1[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(0),
      I1 => a_q1(0),
      O => \result_d1[0]_INST_0_i_4_n_0\
    );
\result_d1[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[8]_INST_0_n_0\,
      CO(3) => \result_d1[12]_INST_0_n_0\,
      CO(2) => \result_d1[12]_INST_0_n_1\,
      CO(1) => \result_d1[12]_INST_0_n_2\,
      CO(0) => \result_d1[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(15 downto 12),
      O(3 downto 0) => result_d1(15 downto 12),
      S(3) => \result_d1[12]_INST_0_i_1_n_0\,
      S(2) => \result_d1[12]_INST_0_i_2_n_0\,
      S(1) => \result_d1[12]_INST_0_i_3_n_0\,
      S(0) => \result_d1[12]_INST_0_i_4_n_0\
    );
\result_d1[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(15),
      I1 => a_q1(15),
      O => \result_d1[12]_INST_0_i_1_n_0\
    );
\result_d1[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(14),
      I1 => a_q1(14),
      O => \result_d1[12]_INST_0_i_2_n_0\
    );
\result_d1[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(13),
      I1 => a_q1(13),
      O => \result_d1[12]_INST_0_i_3_n_0\
    );
\result_d1[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(12),
      I1 => a_q1(12),
      O => \result_d1[12]_INST_0_i_4_n_0\
    );
\result_d1[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[12]_INST_0_n_0\,
      CO(3) => \result_d1[16]_INST_0_n_0\,
      CO(2) => \result_d1[16]_INST_0_n_1\,
      CO(1) => \result_d1[16]_INST_0_n_2\,
      CO(0) => \result_d1[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(19 downto 16),
      O(3 downto 0) => result_d1(19 downto 16),
      S(3) => \result_d1[16]_INST_0_i_1_n_0\,
      S(2) => \result_d1[16]_INST_0_i_2_n_0\,
      S(1) => \result_d1[16]_INST_0_i_3_n_0\,
      S(0) => \result_d1[16]_INST_0_i_4_n_0\
    );
\result_d1[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(19),
      I1 => a_q1(19),
      O => \result_d1[16]_INST_0_i_1_n_0\
    );
\result_d1[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(18),
      I1 => a_q1(18),
      O => \result_d1[16]_INST_0_i_2_n_0\
    );
\result_d1[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(17),
      I1 => a_q1(17),
      O => \result_d1[16]_INST_0_i_3_n_0\
    );
\result_d1[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(16),
      I1 => a_q1(16),
      O => \result_d1[16]_INST_0_i_4_n_0\
    );
\result_d1[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[16]_INST_0_n_0\,
      CO(3) => \result_d1[20]_INST_0_n_0\,
      CO(2) => \result_d1[20]_INST_0_n_1\,
      CO(1) => \result_d1[20]_INST_0_n_2\,
      CO(0) => \result_d1[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(23 downto 20),
      O(3 downto 0) => result_d1(23 downto 20),
      S(3) => \result_d1[20]_INST_0_i_1_n_0\,
      S(2) => \result_d1[20]_INST_0_i_2_n_0\,
      S(1) => \result_d1[20]_INST_0_i_3_n_0\,
      S(0) => \result_d1[20]_INST_0_i_4_n_0\
    );
\result_d1[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(23),
      I1 => a_q1(23),
      O => \result_d1[20]_INST_0_i_1_n_0\
    );
\result_d1[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(22),
      I1 => a_q1(22),
      O => \result_d1[20]_INST_0_i_2_n_0\
    );
\result_d1[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(21),
      I1 => a_q1(21),
      O => \result_d1[20]_INST_0_i_3_n_0\
    );
\result_d1[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(20),
      I1 => a_q1(20),
      O => \result_d1[20]_INST_0_i_4_n_0\
    );
\result_d1[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[20]_INST_0_n_0\,
      CO(3) => \result_d1[24]_INST_0_n_0\,
      CO(2) => \result_d1[24]_INST_0_n_1\,
      CO(1) => \result_d1[24]_INST_0_n_2\,
      CO(0) => \result_d1[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(27 downto 24),
      O(3 downto 0) => result_d1(27 downto 24),
      S(3) => \result_d1[24]_INST_0_i_1_n_0\,
      S(2) => \result_d1[24]_INST_0_i_2_n_0\,
      S(1) => \result_d1[24]_INST_0_i_3_n_0\,
      S(0) => \result_d1[24]_INST_0_i_4_n_0\
    );
\result_d1[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(27),
      I1 => a_q1(27),
      O => \result_d1[24]_INST_0_i_1_n_0\
    );
\result_d1[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(26),
      I1 => a_q1(26),
      O => \result_d1[24]_INST_0_i_2_n_0\
    );
\result_d1[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(25),
      I1 => a_q1(25),
      O => \result_d1[24]_INST_0_i_3_n_0\
    );
\result_d1[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(24),
      I1 => a_q1(24),
      O => \result_d1[24]_INST_0_i_4_n_0\
    );
\result_d1[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[24]_INST_0_n_0\,
      CO(3) => \NLW_result_d1[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \result_d1[28]_INST_0_n_1\,
      CO(1) => \result_d1[28]_INST_0_n_2\,
      CO(0) => \result_d1[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => b_q1(30 downto 28),
      O(3 downto 0) => result_d1(31 downto 28),
      S(3) => \result_d1[28]_INST_0_i_1_n_0\,
      S(2) => \result_d1[28]_INST_0_i_2_n_0\,
      S(1) => \result_d1[28]_INST_0_i_3_n_0\,
      S(0) => \result_d1[28]_INST_0_i_4_n_0\
    );
\result_d1[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(31),
      I1 => a_q1(31),
      O => \result_d1[28]_INST_0_i_1_n_0\
    );
\result_d1[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(30),
      I1 => a_q1(30),
      O => \result_d1[28]_INST_0_i_2_n_0\
    );
\result_d1[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(29),
      I1 => a_q1(29),
      O => \result_d1[28]_INST_0_i_3_n_0\
    );
\result_d1[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(28),
      I1 => a_q1(28),
      O => \result_d1[28]_INST_0_i_4_n_0\
    );
\result_d1[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[0]_INST_0_n_0\,
      CO(3) => \result_d1[4]_INST_0_n_0\,
      CO(2) => \result_d1[4]_INST_0_n_1\,
      CO(1) => \result_d1[4]_INST_0_n_2\,
      CO(0) => \result_d1[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(7 downto 4),
      O(3 downto 0) => result_d1(7 downto 4),
      S(3) => \result_d1[4]_INST_0_i_1_n_0\,
      S(2) => \result_d1[4]_INST_0_i_2_n_0\,
      S(1) => \result_d1[4]_INST_0_i_3_n_0\,
      S(0) => \result_d1[4]_INST_0_i_4_n_0\
    );
\result_d1[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(7),
      I1 => a_q1(7),
      O => \result_d1[4]_INST_0_i_1_n_0\
    );
\result_d1[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(6),
      I1 => a_q1(6),
      O => \result_d1[4]_INST_0_i_2_n_0\
    );
\result_d1[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(5),
      I1 => a_q1(5),
      O => \result_d1[4]_INST_0_i_3_n_0\
    );
\result_d1[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(4),
      I1 => a_q1(4),
      O => \result_d1[4]_INST_0_i_4_n_0\
    );
\result_d1[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_d1[4]_INST_0_n_0\,
      CO(3) => \result_d1[8]_INST_0_n_0\,
      CO(2) => \result_d1[8]_INST_0_n_1\,
      CO(1) => \result_d1[8]_INST_0_n_2\,
      CO(0) => \result_d1[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_q1(11 downto 8),
      O(3 downto 0) => result_d1(11 downto 8),
      S(3) => \result_d1[8]_INST_0_i_1_n_0\,
      S(2) => \result_d1[8]_INST_0_i_2_n_0\,
      S(1) => \result_d1[8]_INST_0_i_3_n_0\,
      S(0) => \result_d1[8]_INST_0_i_4_n_0\
    );
\result_d1[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(11),
      I1 => a_q1(11),
      O => \result_d1[8]_INST_0_i_1_n_0\
    );
\result_d1[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(10),
      I1 => a_q1(10),
      O => \result_d1[8]_INST_0_i_2_n_0\
    );
\result_d1[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(9),
      I1 => a_q1(9),
      O => \result_d1[8]_INST_0_i_3_n_0\
    );
\result_d1[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_q1(8),
      I1 => a_q1(8),
      O => \result_d1[8]_INST_0_i_4_n_0\
    );
result_we1_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC0A0C0"
    )
        port map (
      I0 => ap_start,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => b_ce1_INST_0_i_1_n_0,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1,
      O => \^result_ce0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a_ce0 : out STD_LOGIC;
    a_ce1 : out STD_LOGIC;
    b_ce0 : out STD_LOGIC;
    b_ce1 : out STD_LOGIC;
    result_ce0 : out STD_LOGIC;
    result_we0 : out STD_LOGIC;
    result_ce1 : out STD_LOGIC;
    result_we1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    result_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    result_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    result_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    result_d1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "array_add_0,array_add,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "array_add,Vivado 2023.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^a_address0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^a_address1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^b_address0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^b_address1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^result_address0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^result_address1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_inst_a_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_a_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_result_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_result_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "5'b00001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of inst : label is "5'b00010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of inst : label is "5'b00100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of inst : label is "5'b01000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of inst : label is "5'b10000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a_address0 : signal is "xilinx.com:signal:data:1.0 a_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_address0 : signal is "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_address1 : signal is "xilinx.com:signal:data:1.0 a_address1 DATA";
  attribute X_INTERFACE_PARAMETER of a_address1 : signal is "XIL_INTERFACENAME a_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q0 : signal is "xilinx.com:signal:data:1.0 a_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_q0 : signal is "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q1 : signal is "xilinx.com:signal:data:1.0 a_q1 DATA";
  attribute X_INTERFACE_PARAMETER of a_q1 : signal is "XIL_INTERFACENAME a_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address0 : signal is "xilinx.com:signal:data:1.0 b_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_address0 : signal is "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address1 : signal is "xilinx.com:signal:data:1.0 b_address1 DATA";
  attribute X_INTERFACE_PARAMETER of b_address1 : signal is "XIL_INTERFACENAME b_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q0 : signal is "xilinx.com:signal:data:1.0 b_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_q0 : signal is "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q1 : signal is "xilinx.com:signal:data:1.0 b_q1 DATA";
  attribute X_INTERFACE_PARAMETER of b_q1 : signal is "XIL_INTERFACENAME b_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of result_address0 : signal is "xilinx.com:signal:data:1.0 result_address0 DATA";
  attribute X_INTERFACE_PARAMETER of result_address0 : signal is "XIL_INTERFACENAME result_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of result_address1 : signal is "xilinx.com:signal:data:1.0 result_address1 DATA";
  attribute X_INTERFACE_PARAMETER of result_address1 : signal is "XIL_INTERFACENAME result_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of result_d0 : signal is "xilinx.com:signal:data:1.0 result_d0 DATA";
  attribute X_INTERFACE_PARAMETER of result_d0 : signal is "XIL_INTERFACENAME result_d0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of result_d1 : signal is "xilinx.com:signal:data:1.0 result_d1 DATA";
  attribute X_INTERFACE_PARAMETER of result_d1 : signal is "XIL_INTERFACENAME result_d1, LAYERED_METADATA undef";
begin
  a_address0(3 downto 1) <= \^a_address0\(3 downto 1);
  a_address0(0) <= \<const1>\;
  a_address1(3 downto 1) <= \^a_address1\(3 downto 1);
  a_address1(0) <= \<const0>\;
  b_address0(3 downto 1) <= \^b_address0\(3 downto 1);
  b_address0(0) <= \<const1>\;
  b_address1(3 downto 1) <= \^b_address1\(3 downto 1);
  b_address1(0) <= \<const0>\;
  result_address0(3 downto 1) <= \^result_address0\(3 downto 1);
  result_address0(0) <= \<const1>\;
  result_address1(3 downto 1) <= \^result_address1\(3 downto 1);
  result_address1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add
     port map (
      a_address0(3 downto 1) => \^a_address0\(3 downto 1),
      a_address0(0) => NLW_inst_a_address0_UNCONNECTED(0),
      a_address1(3 downto 1) => \^a_address1\(3 downto 1),
      a_address1(0) => NLW_inst_a_address1_UNCONNECTED(0),
      a_ce0 => a_ce0,
      a_ce1 => a_ce1,
      a_q0(31 downto 0) => a_q0(31 downto 0),
      a_q1(31 downto 0) => a_q1(31 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address0(3 downto 1) => \^b_address0\(3 downto 1),
      b_address0(0) => NLW_inst_b_address0_UNCONNECTED(0),
      b_address1(3 downto 1) => \^b_address1\(3 downto 1),
      b_address1(0) => NLW_inst_b_address1_UNCONNECTED(0),
      b_ce0 => b_ce0,
      b_ce1 => b_ce1,
      b_q0(31 downto 0) => b_q0(31 downto 0),
      b_q1(31 downto 0) => b_q1(31 downto 0),
      result_address0(3 downto 1) => \^result_address0\(3 downto 1),
      result_address0(0) => NLW_inst_result_address0_UNCONNECTED(0),
      result_address1(3 downto 1) => \^result_address1\(3 downto 1),
      result_address1(0) => NLW_inst_result_address1_UNCONNECTED(0),
      result_ce0 => result_ce0,
      result_ce1 => result_ce1,
      result_d0(31 downto 0) => result_d0(31 downto 0),
      result_d1(31 downto 0) => result_d1(31 downto 0),
      result_we0 => result_we0,
      result_we1 => result_we1
    );
end STRUCTURE;
