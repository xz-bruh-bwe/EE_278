-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 15:53:40 2024
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \FSM_onehot_rstate_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q0_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdata_reg[2]\ : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    int_a_read : in STD_LOGIC;
    \rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_b_read : in STD_LOGIC;
    \rdata_reg[9]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_ap_ready : in STD_LOGIC;
    interrupt : in STD_LOGIC;
    \q1_reg[0]_0\ : in STD_LOGIC;
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    \q1_reg[0]_1\ : in STD_LOGIC;
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[0]_0\ : in STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_reg_0_15_28_28_i_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    int_a_address1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    address0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram is
  signal \^fsm_onehot_rstate_reg[1]\ : STD_LOGIC;
  signal int_a_ce1 : STD_LOGIC;
  signal p_0_in0_out : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal q0 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal q00 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal q1 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \q10__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_0 : label is 320;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_0 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_0 : label is 9;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_15_10_10 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_10_10 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_10_10 : label is 9;
  attribute ram_offset of mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_15_11_11 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_11_11 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_11_11 : label is 9;
  attribute ram_offset of mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_15_12_12 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_12 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_12 : label is 9;
  attribute ram_offset of mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_15_13_13 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_13_13 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_13_13 : label is 9;
  attribute ram_offset of mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_15_14_14 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_14 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_14 : label is 9;
  attribute ram_offset of mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_15_15_15 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_15_15 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_15_15 : label is 9;
  attribute ram_offset of mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_15_16_16 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_16_16 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_16_16 : label is 9;
  attribute ram_offset of mem_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_15_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_15_17_17 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_17_17 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_17_17 : label is 9;
  attribute ram_offset of mem_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_15_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_15_18_18 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_18 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_18 : label is 9;
  attribute ram_offset of mem_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_15_19_19 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_19_19 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_19_19 : label is 9;
  attribute ram_offset of mem_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_15_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_15_1_1 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_1_1 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_1_1 : label is 9;
  attribute ram_offset of mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_15_20_20 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_20_20 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_20_20 : label is 9;
  attribute ram_offset of mem_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_15_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_15_21_21 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_21_21 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_21_21 : label is 9;
  attribute ram_offset of mem_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_15_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_15_22_22 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_22_22 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_22_22 : label is 9;
  attribute ram_offset of mem_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_15_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_15_23_23 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_23_23 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_23_23 : label is 9;
  attribute ram_offset of mem_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_15_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_15_24_24 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_24 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_24 : label is 9;
  attribute ram_offset of mem_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_15_25_25 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_25_25 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_25_25 : label is 9;
  attribute ram_offset of mem_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_15_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_15_26_26 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_26_26 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_26_26 : label is 9;
  attribute ram_offset of mem_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_15_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_15_27_27 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_27_27 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_27_27 : label is 9;
  attribute ram_offset of mem_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_15_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_15_28_28 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_28 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_28 : label is 9;
  attribute ram_offset of mem_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_15_29_29 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_29_29 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_29_29 : label is 9;
  attribute ram_offset of mem_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_15_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_15_2_2 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_2_2 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_2_2 : label is 9;
  attribute ram_offset of mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_15_30_30 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_30 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_30 : label is 9;
  attribute ram_offset of mem_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_15_31_31 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_31_31 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_31_31 : label is 9;
  attribute ram_offset of mem_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_15_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_15_3_3 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_3_3 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_3_3 : label is 9;
  attribute ram_offset of mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_15_4_4 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_4_4 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_4_4 : label is 9;
  attribute ram_offset of mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_15_5_5 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_5_5 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_5_5 : label is 9;
  attribute ram_offset of mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_15_6_6 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_6 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_6 : label is 9;
  attribute ram_offset of mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_15_7_7 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_7_7 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_7_7 : label is 9;
  attribute ram_offset of mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_15_8_8 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_8_8 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_8_8 : label is 9;
  attribute ram_offset of mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_15_9_9 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_9_9 : label is "AXI_LITE_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_9_9 : label is 9;
  attribute ram_offset of mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_15_9_9 : label is 9;
begin
  \FSM_onehot_rstate_reg[1]\ <= \^fsm_onehot_rstate_reg[1]\;
mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(0),
      DPO => q00(0),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(0),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
\mem_reg_0_15_0_0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(0),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => p_0_in0_out(0)
    );
mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(10),
      DPO => q00(10),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(10),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(11),
      DPO => q00(11),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(11),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(12),
      DPO => q00(12),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(12),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(13),
      DPO => q00(13),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(13),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(14),
      DPO => q00(14),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(14),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(15),
      DPO => q00(15),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(15),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(16),
      DPO => q00(16),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(16),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
\mem_reg_0_15_16_16_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(2),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => p_0_in0_out(16)
    );
mem_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(17),
      DPO => q00(17),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(17),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(18),
      DPO => q00(18),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(18),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(19),
      DPO => q00(19),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(19),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(1),
      DPO => q00(1),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(1),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(20),
      DPO => q00(20),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(20),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(21),
      DPO => q00(21),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(21),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(22),
      DPO => q00(22),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(22),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(23),
      DPO => q00(23),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(23),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(24),
      DPO => q00(24),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(24),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_24_24_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(24),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(24)
    );
\mem_reg_0_15_24_24_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(3),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => p_0_in0_out(24)
    );
mem_reg_0_15_24_24_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \q1_reg[0]_1\,
      I1 => s_axi_AXI_LITE_ARVALID,
      O => \^fsm_onehot_rstate_reg[1]\
    );
mem_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(25),
      DPO => q00(25),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(25),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_25_25_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(25),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(25)
    );
mem_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(26),
      DPO => q00(26),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(26),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_26_26_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(26),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(26)
    );
mem_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(27),
      DPO => q00(27),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(27),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_27_27_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(27),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(27)
    );
mem_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(28),
      DPO => q00(28),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(28),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_28_28_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(28),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(28)
    );
mem_reg_0_15_28_28_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(31),
      I1 => mem_reg_0_15_28_28_i_2(0),
      O => S(0)
    );
mem_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(29),
      DPO => q00(29),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(29),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_29_29_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(29),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(29)
    );
mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(2),
      DPO => q00(2),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(2),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(30),
      DPO => q00(30),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(30),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_30_30_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(30),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(30)
    );
mem_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => p_1_in(31),
      DPO => q00(31),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(31),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
\mem_reg_0_15_31_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(31),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \^fsm_onehot_rstate_reg[1]\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => p_1_in(31)
    );
mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(3),
      DPO => q00(3),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(3),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(4),
      DPO => q00(4),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(4),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(5),
      DPO => q00(5),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(5),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(6),
      DPO => q00(6),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(6),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(7),
      DPO => q00(7),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(7),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(8),
      DPO => q00(8),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(8),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
\mem_reg_0_15_8_8_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(1),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => p_0_in0_out(8)
    );
mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(9),
      DPO => q00(9),
      DPRA0 => address0(0),
      DPRA1 => address0(1),
      DPRA2 => address0(2),
      DPRA3 => address0(3),
      DPRA4 => '0',
      SPO => \q10__0\(9),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(0),
      Q => \q0_reg[30]_0\(0),
      R => '0'
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(10),
      Q => \q0_reg[30]_0\(10),
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(11),
      Q => \q0_reg[30]_0\(11),
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(12),
      Q => \q0_reg[30]_0\(12),
      R => '0'
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(13),
      Q => \q0_reg[30]_0\(13),
      R => '0'
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(14),
      Q => \q0_reg[30]_0\(14),
      R => '0'
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(15),
      Q => \q0_reg[30]_0\(15),
      R => '0'
    );
\q0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(16),
      Q => \q0_reg[30]_0\(16),
      R => '0'
    );
\q0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(17),
      Q => \q0_reg[30]_0\(17),
      R => '0'
    );
\q0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(18),
      Q => \q0_reg[30]_0\(18),
      R => '0'
    );
\q0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(19),
      Q => \q0_reg[30]_0\(19),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(1),
      Q => \q0_reg[30]_0\(1),
      R => '0'
    );
\q0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(20),
      Q => \q0_reg[30]_0\(20),
      R => '0'
    );
\q0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(21),
      Q => \q0_reg[30]_0\(21),
      R => '0'
    );
\q0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(22),
      Q => \q0_reg[30]_0\(22),
      R => '0'
    );
\q0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(23),
      Q => \q0_reg[30]_0\(23),
      R => '0'
    );
\q0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(24),
      Q => \q0_reg[30]_0\(24),
      R => '0'
    );
\q0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(25),
      Q => \q0_reg[30]_0\(25),
      R => '0'
    );
\q0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(26),
      Q => \q0_reg[30]_0\(26),
      R => '0'
    );
\q0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(27),
      Q => \q0_reg[30]_0\(27),
      R => '0'
    );
\q0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(28),
      Q => \q0_reg[30]_0\(28),
      R => '0'
    );
\q0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(29),
      Q => \q0_reg[30]_0\(29),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(2),
      Q => \q0_reg[30]_0\(2),
      R => '0'
    );
\q0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(30),
      Q => \q0_reg[30]_0\(30),
      R => '0'
    );
\q0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(31),
      Q => q0(31),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(3),
      Q => \q0_reg[30]_0\(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(4),
      Q => \q0_reg[30]_0\(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(5),
      Q => \q0_reg[30]_0\(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(6),
      Q => \q0_reg[30]_0\(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(7),
      Q => \q0_reg[30]_0\(7),
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(8),
      Q => \q0_reg[30]_0\(8),
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q00(9),
      Q => \q0_reg[30]_0\(9),
      R => '0'
    );
\q1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q1_reg[0]_0\,
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \q1_reg[0]_1\,
      O => int_a_ce1
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(0),
      Q => Q(0),
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(10),
      Q => Q(6),
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(11),
      Q => Q(7),
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(12),
      Q => Q(8),
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(13),
      Q => Q(9),
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(14),
      Q => Q(10),
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(15),
      Q => Q(11),
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(16),
      Q => Q(12),
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(17),
      Q => Q(13),
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(18),
      Q => Q(14),
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(19),
      Q => Q(15),
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(1),
      Q => Q(1),
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(20),
      Q => Q(16),
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(21),
      Q => Q(17),
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(22),
      Q => Q(18),
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(23),
      Q => Q(19),
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(24),
      Q => Q(20),
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(25),
      Q => Q(21),
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(26),
      Q => Q(22),
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(27),
      Q => Q(23),
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(28),
      Q => Q(24),
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(29),
      Q => Q(25),
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(2),
      Q => q1(2),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(30),
      Q => Q(26),
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(31),
      Q => Q(27),
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(3),
      Q => q1(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(4),
      Q => Q(2),
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(5),
      Q => Q(3),
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(6),
      Q => Q(4),
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(7),
      Q => q1(7),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(8),
      Q => Q(5),
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(9),
      Q => q1(9),
      R => '0'
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(1),
      I1 => s_axi_AXI_LITE_ARADDR(0),
      I2 => \rdata_reg[2]\,
      I3 => p_0_in_0(0),
      I4 => \rdata[2]_i_2_n_0\,
      O => D(0)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88800000000"
    )
        port map (
      I0 => q1(2),
      I1 => int_a_read,
      I2 => \rdata_reg[9]\(0),
      I3 => int_b_read,
      I4 => \rdata_reg[9]_0\(0),
      I5 => \^fsm_onehot_rstate_reg[1]\,
      O => \rdata[2]_i_2_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(1),
      I1 => s_axi_AXI_LITE_ARADDR(0),
      I2 => \rdata_reg[2]\,
      I3 => int_ap_ready,
      I4 => \rdata[3]_i_2_n_0\,
      O => D(1)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88800000000"
    )
        port map (
      I0 => q1(3),
      I1 => int_a_read,
      I2 => \rdata_reg[9]\(1),
      I3 => int_b_read,
      I4 => \rdata_reg[9]_0\(1),
      I5 => \^fsm_onehot_rstate_reg[1]\,
      O => \rdata[3]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(1),
      I1 => s_axi_AXI_LITE_ARADDR(0),
      I2 => \rdata_reg[2]\,
      I3 => p_0_in_0(1),
      I4 => \rdata[7]_i_2_n_0\,
      O => D(2)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88800000000"
    )
        port map (
      I0 => q1(7),
      I1 => int_a_read,
      I2 => \rdata_reg[9]\(2),
      I3 => int_b_read,
      I4 => \rdata_reg[9]_0\(2),
      I5 => \^fsm_onehot_rstate_reg[1]\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(1),
      I1 => s_axi_AXI_LITE_ARADDR(0),
      I2 => \rdata_reg[2]\,
      I3 => interrupt,
      I4 => \rdata[9]_i_3_n_0\,
      O => D(3)
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88800000000"
    )
        port map (
      I0 => q1(9),
      I1 => int_a_read,
      I2 => \rdata_reg[9]\(3),
      I3 => int_b_read,
      I4 => \rdata_reg[9]_0\(3),
      I5 => \^fsm_onehot_rstate_reg[1]\,
      O => \rdata[9]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram_0 is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[8]\ : out STD_LOGIC;
    \q1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q1_reg[0]_0\ : in STD_LOGIC;
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    \q1_reg[0]_1\ : in STD_LOGIC;
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[0]_0\ : in STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q0_reg[31]_1\ : in STD_LOGIC;
    \q1_reg[24]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_start : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0_15_28_28_i_2_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    ap_clk : in STD_LOGIC;
    int_a_address1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram_0 : entity is "array_add_AXI_LITE_s_axi_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^address0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ap_cs_fsm_reg[5]\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[8]\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal int_b_ce1 : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_10__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_11__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_0_0_i_12_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_1__1_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_1__1_n_1\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_1__1_n_2\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_1__1_n_3\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_7__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_8__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_9__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_1_n_1 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_1_n_2 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_1_n_3 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_3_n_0 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_12_12_i_5_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_16_16_i_1__1_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_16_16_i_1__1_n_1\ : STD_LOGIC;
  signal \mem_reg_0_15_16_16_i_1__1_n_2\ : STD_LOGIC;
  signal \mem_reg_0_15_16_16_i_1__1_n_3\ : STD_LOGIC;
  signal mem_reg_0_15_16_16_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_16_16_i_3_n_0 : STD_LOGIC;
  signal mem_reg_0_15_16_16_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_16_16_i_5_n_0 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_1_n_1 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_1_n_2 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_1_n_3 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_3_n_0 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_20_20_i_5_n_0 : STD_LOGIC;
  signal mem_reg_0_15_24_24_i_1_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_1\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_2\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_3\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_4\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_5\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_6\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_2__1_n_7\ : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_3__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_24_24_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_24_24_i_5_n_0 : STD_LOGIC;
  signal mem_reg_0_15_24_24_i_6_n_0 : STD_LOGIC;
  signal mem_reg_0_15_25_25_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_26_26_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_27_27_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_1 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_2 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_3 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_4 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_5 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_6 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_2_n_7 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_5_n_0 : STD_LOGIC;
  signal mem_reg_0_15_28_28_i_6_n_0 : STD_LOGIC;
  signal mem_reg_0_15_29_29_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_30_30_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_31_31_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_1_n_1 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_1_n_2 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_1_n_3 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_3_n_0 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_4_4_i_5_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_8_8_i_1__1_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_8_8_i_1__1_n_1\ : STD_LOGIC;
  signal \mem_reg_0_15_8_8_i_1__1_n_2\ : STD_LOGIC;
  signal \mem_reg_0_15_8_8_i_1__1_n_3\ : STD_LOGIC;
  signal mem_reg_0_15_8_8_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_15_8_8_i_3_n_0 : STD_LOGIC;
  signal mem_reg_0_15_8_8_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_15_8_8_i_5_n_0 : STD_LOGIC;
  signal \p_0_in0_out__0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \q00__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q0[31]_i_2_n_0\ : STD_LOGIC;
  signal \q0_reg_n_0_[0]\ : STD_LOGIC;
  signal \q0_reg_n_0_[10]\ : STD_LOGIC;
  signal \q0_reg_n_0_[11]\ : STD_LOGIC;
  signal \q0_reg_n_0_[12]\ : STD_LOGIC;
  signal \q0_reg_n_0_[13]\ : STD_LOGIC;
  signal \q0_reg_n_0_[14]\ : STD_LOGIC;
  signal \q0_reg_n_0_[15]\ : STD_LOGIC;
  signal \q0_reg_n_0_[16]\ : STD_LOGIC;
  signal \q0_reg_n_0_[17]\ : STD_LOGIC;
  signal \q0_reg_n_0_[18]\ : STD_LOGIC;
  signal \q0_reg_n_0_[19]\ : STD_LOGIC;
  signal \q0_reg_n_0_[1]\ : STD_LOGIC;
  signal \q0_reg_n_0_[20]\ : STD_LOGIC;
  signal \q0_reg_n_0_[21]\ : STD_LOGIC;
  signal \q0_reg_n_0_[22]\ : STD_LOGIC;
  signal \q0_reg_n_0_[23]\ : STD_LOGIC;
  signal \q0_reg_n_0_[24]\ : STD_LOGIC;
  signal \q0_reg_n_0_[25]\ : STD_LOGIC;
  signal \q0_reg_n_0_[26]\ : STD_LOGIC;
  signal \q0_reg_n_0_[27]\ : STD_LOGIC;
  signal \q0_reg_n_0_[28]\ : STD_LOGIC;
  signal \q0_reg_n_0_[29]\ : STD_LOGIC;
  signal \q0_reg_n_0_[2]\ : STD_LOGIC;
  signal \q0_reg_n_0_[30]\ : STD_LOGIC;
  signal \q0_reg_n_0_[3]\ : STD_LOGIC;
  signal \q0_reg_n_0_[4]\ : STD_LOGIC;
  signal \q0_reg_n_0_[5]\ : STD_LOGIC;
  signal \q0_reg_n_0_[6]\ : STD_LOGIC;
  signal \q0_reg_n_0_[7]\ : STD_LOGIC;
  signal \q0_reg_n_0_[8]\ : STD_LOGIC;
  signal \q0_reg_n_0_[9]\ : STD_LOGIC;
  signal \q10__1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_15_28_28_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_0 : label is 320;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_0 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_0 : label is 9;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_0 : label is 0;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_reg_0_15_0_0_i_11__0\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mem_reg_0_15_0_0_i_1__1\ : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_10_10 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_10_10 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_10_10 : label is 9;
  attribute ram_offset of mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_15_11_11 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_11_11 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_11_11 : label is 9;
  attribute ram_offset of mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_15_12_12 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_12 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_12 : label is 9;
  attribute ram_offset of mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_12 : label is 12;
  attribute ADDER_THRESHOLD of mem_reg_0_15_12_12_i_1 : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_13_13 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_13_13 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_13_13 : label is 9;
  attribute ram_offset of mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_15_14_14 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_14 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_14 : label is 9;
  attribute ram_offset of mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_15_15_15 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_15_15 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_15_15 : label is 9;
  attribute ram_offset of mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_15_16_16 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_16_16 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_16_16 : label is 9;
  attribute ram_offset of mem_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_15_16_16 : label is 16;
  attribute ADDER_THRESHOLD of \mem_reg_0_15_16_16_i_1__1\ : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_17_17 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_17_17 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_17_17 : label is 9;
  attribute ram_offset of mem_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_15_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_15_18_18 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_18 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_18 : label is 9;
  attribute ram_offset of mem_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_15_19_19 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_19_19 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_19_19 : label is 9;
  attribute ram_offset of mem_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_15_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_15_1_1 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_1_1 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_1_1 : label is 9;
  attribute ram_offset of mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_15_20_20 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_20_20 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_20_20 : label is 9;
  attribute ram_offset of mem_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_15_20_20 : label is 20;
  attribute ADDER_THRESHOLD of mem_reg_0_15_20_20_i_1 : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_21_21 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_21_21 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_21_21 : label is 9;
  attribute ram_offset of mem_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_15_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_15_22_22 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_22_22 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_22_22 : label is 9;
  attribute ram_offset of mem_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_15_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_15_23_23 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_23_23 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_23_23 : label is 9;
  attribute ram_offset of mem_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_15_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_15_24_24 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_24 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_24 : label is 9;
  attribute ram_offset of mem_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_24 : label is 24;
  attribute ADDER_THRESHOLD of \mem_reg_0_15_24_24_i_2__1\ : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_25_25 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_25_25 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_25_25 : label is 9;
  attribute ram_offset of mem_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_15_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_15_26_26 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_26_26 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_26_26 : label is 9;
  attribute ram_offset of mem_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_15_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_15_27_27 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_27_27 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_27_27 : label is 9;
  attribute ram_offset of mem_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_15_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_15_28_28 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_28 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_28 : label is 9;
  attribute ram_offset of mem_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_28 : label is 28;
  attribute ADDER_THRESHOLD of mem_reg_0_15_28_28_i_2 : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_29_29 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_29_29 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_29_29 : label is 9;
  attribute ram_offset of mem_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_15_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_15_2_2 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_2_2 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_2_2 : label is 9;
  attribute ram_offset of mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_15_30_30 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_30 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_30 : label is 9;
  attribute ram_offset of mem_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_15_31_31 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_31_31 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_31_31 : label is 9;
  attribute ram_offset of mem_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_15_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_15_3_3 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_3_3 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_3_3 : label is 9;
  attribute ram_offset of mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_15_4_4 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_4_4 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_4_4 : label is 9;
  attribute ram_offset of mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_15_4_4 : label is 4;
  attribute ADDER_THRESHOLD of mem_reg_0_15_4_4_i_1 : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_5_5 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_5_5 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_5_5 : label is 9;
  attribute ram_offset of mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_15_6_6 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_6 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_6 : label is 9;
  attribute ram_offset of mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_15_7_7 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_7_7 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_7_7 : label is 9;
  attribute ram_offset of mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_15_8_8 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_8_8 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_8_8 : label is 9;
  attribute ram_offset of mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_15_8_8 : label is 8;
  attribute ADDER_THRESHOLD of \mem_reg_0_15_8_8_i_1__1\ : label is 35;
  attribute RTL_RAM_BITS of mem_reg_0_15_9_9 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_9_9 : label is "AXI_LITE_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_9_9 : label is 9;
  attribute ram_offset of mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_15_9_9 : label is 9;
  attribute SOFT_HLUTNM of \q0[31]_i_3\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
  address0(3 downto 0) <= \^address0\(3 downto 0);
  \ap_CS_fsm_reg[5]\ <= \^ap_cs_fsm_reg[5]\;
  \ap_CS_fsm_reg[8]\ <= \^ap_cs_fsm_reg[8]\;
  ap_enable_reg_pp0_iter0 <= \^ap_enable_reg_pp0_iter0\;
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => \^ap_enable_reg_pp0_iter0\
    );
mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(0),
      DPO => \q00__0\(0),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(0),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(0),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_0_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mem_reg_0_15_0_0_i_12_n_0,
      I1 => Q(8),
      O => \^ap_cs_fsm_reg[8]\
    );
\mem_reg_0_15_0_0_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[0]\,
      I1 => mem_reg_0_15_28_28_i_2_0(0),
      O => \mem_reg_0_15_0_0_i_10__0_n_0\
    );
\mem_reg_0_15_0_0_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \mem_reg_0_15_0_0_i_11__0_n_0\
    );
mem_reg_0_15_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0F04"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(4),
      I4 => Q(6),
      I5 => Q(7),
      O => mem_reg_0_15_0_0_i_12_n_0
    );
\mem_reg_0_15_0_0_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_reg_0_15_0_0_i_1__1_n_0\,
      CO(2) => \mem_reg_0_15_0_0_i_1__1_n_1\,
      CO(1) => \mem_reg_0_15_0_0_i_1__1_n_2\,
      CO(0) => \mem_reg_0_15_0_0_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[3]\,
      DI(2) => \q0_reg_n_0_[2]\,
      DI(1) => \q0_reg_n_0_[1]\,
      DI(0) => \q0_reg_n_0_[0]\,
      O(3 downto 0) => p_1_in(3 downto 0),
      S(3) => \mem_reg_0_15_0_0_i_7__0_n_0\,
      S(2) => \mem_reg_0_15_0_0_i_8__0_n_0\,
      S(1) => \mem_reg_0_15_0_0_i_9__0_n_0\,
      S(0) => \mem_reg_0_15_0_0_i_10__0_n_0\
    );
\mem_reg_0_15_0_0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[8]\,
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(7),
      I5 => Q(9),
      O => \^address0\(0)
    );
mem_reg_0_15_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00001110"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^address0\(3),
      I5 => \mem_reg_0_15_0_0_i_11__0_n_0\,
      O => \^address0\(1)
    );
\mem_reg_0_15_0_0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[3]\,
      I1 => mem_reg_0_15_28_28_i_2_0(3),
      O => \mem_reg_0_15_0_0_i_7__0_n_0\
    );
mem_reg_0_15_0_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(8),
      I5 => Q(9),
      O => \^address0\(2)
    );
\mem_reg_0_15_0_0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[2]\,
      I1 => mem_reg_0_15_28_28_i_2_0(2),
      O => \mem_reg_0_15_0_0_i_8__0_n_0\
    );
mem_reg_0_15_0_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      O => \^address0\(3)
    );
\mem_reg_0_15_0_0_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[1]\,
      I1 => mem_reg_0_15_28_28_i_2_0(1),
      O => \mem_reg_0_15_0_0_i_9__0_n_0\
    );
mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(10),
      DPO => \q00__0\(10),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(10),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(11),
      DPO => \q00__0\(11),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(11),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(12),
      DPO => \q00__0\(12),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(12),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_12_12_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_reg_0_15_8_8_i_1__1_n_0\,
      CO(3) => mem_reg_0_15_12_12_i_1_n_0,
      CO(2) => mem_reg_0_15_12_12_i_1_n_1,
      CO(1) => mem_reg_0_15_12_12_i_1_n_2,
      CO(0) => mem_reg_0_15_12_12_i_1_n_3,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[15]\,
      DI(2) => \q0_reg_n_0_[14]\,
      DI(1) => \q0_reg_n_0_[13]\,
      DI(0) => \q0_reg_n_0_[12]\,
      O(3 downto 0) => p_1_in(15 downto 12),
      S(3) => mem_reg_0_15_12_12_i_2_n_0,
      S(2) => mem_reg_0_15_12_12_i_3_n_0,
      S(1) => mem_reg_0_15_12_12_i_4_n_0,
      S(0) => mem_reg_0_15_12_12_i_5_n_0
    );
mem_reg_0_15_12_12_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[15]\,
      I1 => mem_reg_0_15_28_28_i_2_0(15),
      O => mem_reg_0_15_12_12_i_2_n_0
    );
mem_reg_0_15_12_12_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[14]\,
      I1 => mem_reg_0_15_28_28_i_2_0(14),
      O => mem_reg_0_15_12_12_i_3_n_0
    );
mem_reg_0_15_12_12_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[13]\,
      I1 => mem_reg_0_15_28_28_i_2_0(13),
      O => mem_reg_0_15_12_12_i_4_n_0
    );
mem_reg_0_15_12_12_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[12]\,
      I1 => mem_reg_0_15_28_28_i_2_0(12),
      O => mem_reg_0_15_12_12_i_5_n_0
    );
mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(13),
      DPO => \q00__0\(13),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(13),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(14),
      DPO => \q00__0\(14),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(14),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(15),
      DPO => \q00__0\(15),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(15),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(16),
      DPO => \q00__0\(16),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(16),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_16_16_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(2),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => \p_0_in0_out__0\(16)
    );
\mem_reg_0_15_16_16_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => mem_reg_0_15_12_12_i_1_n_0,
      CO(3) => \mem_reg_0_15_16_16_i_1__1_n_0\,
      CO(2) => \mem_reg_0_15_16_16_i_1__1_n_1\,
      CO(1) => \mem_reg_0_15_16_16_i_1__1_n_2\,
      CO(0) => \mem_reg_0_15_16_16_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[19]\,
      DI(2) => \q0_reg_n_0_[18]\,
      DI(1) => \q0_reg_n_0_[17]\,
      DI(0) => \q0_reg_n_0_[16]\,
      O(3 downto 0) => p_1_in(19 downto 16),
      S(3) => mem_reg_0_15_16_16_i_2_n_0,
      S(2) => mem_reg_0_15_16_16_i_3_n_0,
      S(1) => mem_reg_0_15_16_16_i_4_n_0,
      S(0) => mem_reg_0_15_16_16_i_5_n_0
    );
mem_reg_0_15_16_16_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[19]\,
      I1 => mem_reg_0_15_28_28_i_2_0(19),
      O => mem_reg_0_15_16_16_i_2_n_0
    );
mem_reg_0_15_16_16_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[18]\,
      I1 => mem_reg_0_15_28_28_i_2_0(18),
      O => mem_reg_0_15_16_16_i_3_n_0
    );
mem_reg_0_15_16_16_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[17]\,
      I1 => mem_reg_0_15_28_28_i_2_0(17),
      O => mem_reg_0_15_16_16_i_4_n_0
    );
mem_reg_0_15_16_16_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[16]\,
      I1 => mem_reg_0_15_28_28_i_2_0(16),
      O => mem_reg_0_15_16_16_i_5_n_0
    );
mem_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(17),
      DPO => \q00__0\(17),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(17),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(18),
      DPO => \q00__0\(18),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(18),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(19),
      DPO => \q00__0\(19),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(19),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(1),
      DPO => \q00__0\(1),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(1),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(20),
      DPO => \q00__0\(20),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(20),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_20_20_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_reg_0_15_16_16_i_1__1_n_0\,
      CO(3) => mem_reg_0_15_20_20_i_1_n_0,
      CO(2) => mem_reg_0_15_20_20_i_1_n_1,
      CO(1) => mem_reg_0_15_20_20_i_1_n_2,
      CO(0) => mem_reg_0_15_20_20_i_1_n_3,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[23]\,
      DI(2) => \q0_reg_n_0_[22]\,
      DI(1) => \q0_reg_n_0_[21]\,
      DI(0) => \q0_reg_n_0_[20]\,
      O(3 downto 0) => p_1_in(23 downto 20),
      S(3) => mem_reg_0_15_20_20_i_2_n_0,
      S(2) => mem_reg_0_15_20_20_i_3_n_0,
      S(1) => mem_reg_0_15_20_20_i_4_n_0,
      S(0) => mem_reg_0_15_20_20_i_5_n_0
    );
mem_reg_0_15_20_20_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[23]\,
      I1 => mem_reg_0_15_28_28_i_2_0(23),
      O => mem_reg_0_15_20_20_i_2_n_0
    );
mem_reg_0_15_20_20_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[22]\,
      I1 => mem_reg_0_15_28_28_i_2_0(22),
      O => mem_reg_0_15_20_20_i_3_n_0
    );
mem_reg_0_15_20_20_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[21]\,
      I1 => mem_reg_0_15_28_28_i_2_0(21),
      O => mem_reg_0_15_20_20_i_4_n_0
    );
mem_reg_0_15_20_20_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[20]\,
      I1 => mem_reg_0_15_28_28_i_2_0(20),
      O => mem_reg_0_15_20_20_i_5_n_0
    );
mem_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(21),
      DPO => \q00__0\(21),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(21),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(22),
      DPO => \q00__0\(22),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(22),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(23),
      DPO => \q00__0\(23),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(23),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_24_24_i_1_n_0,
      DPO => \q00__0\(24),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(24),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_24_24_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(24),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_24_24_i_1_n_0
    );
\mem_reg_0_15_24_24_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_reg_0_15_24_24_i_2__1_n_7\,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(24)
    );
mem_reg_0_15_24_24_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(3),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_24_24_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => mem_reg_0_15_20_20_i_1_n_0,
      CO(3) => \mem_reg_0_15_24_24_i_2__1_n_0\,
      CO(2) => \mem_reg_0_15_24_24_i_2__1_n_1\,
      CO(1) => \mem_reg_0_15_24_24_i_2__1_n_2\,
      CO(0) => \mem_reg_0_15_24_24_i_2__1_n_3\,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[27]\,
      DI(2) => \q0_reg_n_0_[26]\,
      DI(1) => \q0_reg_n_0_[25]\,
      DI(0) => \q0_reg_n_0_[24]\,
      O(3) => \mem_reg_0_15_24_24_i_2__1_n_4\,
      O(2) => \mem_reg_0_15_24_24_i_2__1_n_5\,
      O(1) => \mem_reg_0_15_24_24_i_2__1_n_6\,
      O(0) => \mem_reg_0_15_24_24_i_2__1_n_7\,
      S(3) => \mem_reg_0_15_24_24_i_3__0_n_0\,
      S(2) => mem_reg_0_15_24_24_i_4_n_0,
      S(1) => mem_reg_0_15_24_24_i_5_n_0,
      S(0) => mem_reg_0_15_24_24_i_6_n_0
    );
\mem_reg_0_15_24_24_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[27]\,
      I1 => mem_reg_0_15_28_28_i_2_0(27),
      O => \mem_reg_0_15_24_24_i_3__0_n_0\
    );
mem_reg_0_15_24_24_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[26]\,
      I1 => mem_reg_0_15_28_28_i_2_0(26),
      O => mem_reg_0_15_24_24_i_4_n_0
    );
mem_reg_0_15_24_24_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[25]\,
      I1 => mem_reg_0_15_28_28_i_2_0(25),
      O => mem_reg_0_15_24_24_i_5_n_0
    );
mem_reg_0_15_24_24_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[24]\,
      I1 => mem_reg_0_15_28_28_i_2_0(24),
      O => mem_reg_0_15_24_24_i_6_n_0
    );
mem_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_25_25_i_1_n_0,
      DPO => \q00__0\(25),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(25),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_25_25_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(25),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_25_25_i_1_n_0
    );
\mem_reg_0_15_25_25_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_reg_0_15_24_24_i_2__1_n_6\,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(25)
    );
mem_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_26_26_i_1_n_0,
      DPO => \q00__0\(26),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(26),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_26_26_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(26),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_26_26_i_1_n_0
    );
\mem_reg_0_15_26_26_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_reg_0_15_24_24_i_2__1_n_5\,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(26)
    );
mem_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_27_27_i_1_n_0,
      DPO => \q00__0\(27),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(27),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_27_27_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(27),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_27_27_i_1_n_0
    );
\mem_reg_0_15_27_27_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_reg_0_15_24_24_i_2__1_n_4\,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(27)
    );
mem_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_28_28_i_1_n_0,
      DPO => \q00__0\(28),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(28),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_28_28_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(28),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_28_28_i_1_n_0
    );
\mem_reg_0_15_28_28_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_reg_0_15_28_28_i_2_n_7,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(28)
    );
mem_reg_0_15_28_28_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_reg_0_15_24_24_i_2__1_n_0\,
      CO(3) => NLW_mem_reg_0_15_28_28_i_2_CO_UNCONNECTED(3),
      CO(2) => mem_reg_0_15_28_28_i_2_n_1,
      CO(1) => mem_reg_0_15_28_28_i_2_n_2,
      CO(0) => mem_reg_0_15_28_28_i_2_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \q0_reg_n_0_[30]\,
      DI(1) => \q0_reg_n_0_[29]\,
      DI(0) => \q0_reg_n_0_[28]\,
      O(3) => mem_reg_0_15_28_28_i_2_n_4,
      O(2) => mem_reg_0_15_28_28_i_2_n_5,
      O(1) => mem_reg_0_15_28_28_i_2_n_6,
      O(0) => mem_reg_0_15_28_28_i_2_n_7,
      S(3) => S(0),
      S(2) => mem_reg_0_15_28_28_i_4_n_0,
      S(1) => mem_reg_0_15_28_28_i_5_n_0,
      S(0) => mem_reg_0_15_28_28_i_6_n_0
    );
mem_reg_0_15_28_28_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[30]\,
      I1 => mem_reg_0_15_28_28_i_2_0(30),
      O => mem_reg_0_15_28_28_i_4_n_0
    );
mem_reg_0_15_28_28_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[29]\,
      I1 => mem_reg_0_15_28_28_i_2_0(29),
      O => mem_reg_0_15_28_28_i_5_n_0
    );
mem_reg_0_15_28_28_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[28]\,
      I1 => mem_reg_0_15_28_28_i_2_0(28),
      O => mem_reg_0_15_28_28_i_6_n_0
    );
mem_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_29_29_i_1_n_0,
      DPO => \q00__0\(29),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(29),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_29_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(29),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_29_29_i_1_n_0
    );
\mem_reg_0_15_29_29_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_reg_0_15_28_28_i_2_n_6,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(29)
    );
mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(2),
      DPO => \q00__0\(2),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(2),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_30_30_i_1_n_0,
      DPO => \q00__0\(30),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(30),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_30_30_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(30),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_30_30_i_1_n_0
    );
\mem_reg_0_15_30_30_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_reg_0_15_28_28_i_2_n_5,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(30)
    );
mem_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => mem_reg_0_15_31_31_i_1_n_0,
      DPO => \q00__0\(31),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(31),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_31_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(31),
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => \q0_reg[0]_0\,
      I3 => \q0_reg[31]_1\,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WSTRB(3),
      O => mem_reg_0_15_31_31_i_1_n_0
    );
\mem_reg_0_15_31_31_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_reg_0_15_28_28_i_2_n_4,
      I1 => \q1_reg[24]_0\,
      O => p_1_in(31)
    );
mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(3),
      DPO => \q00__0\(3),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(3),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(4),
      DPO => \q00__0\(4),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(4),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_4_4_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_reg_0_15_0_0_i_1__1_n_0\,
      CO(3) => mem_reg_0_15_4_4_i_1_n_0,
      CO(2) => mem_reg_0_15_4_4_i_1_n_1,
      CO(1) => mem_reg_0_15_4_4_i_1_n_2,
      CO(0) => mem_reg_0_15_4_4_i_1_n_3,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[7]\,
      DI(2) => \q0_reg_n_0_[6]\,
      DI(1) => \q0_reg_n_0_[5]\,
      DI(0) => \q0_reg_n_0_[4]\,
      O(3 downto 0) => p_1_in(7 downto 4),
      S(3) => mem_reg_0_15_4_4_i_2_n_0,
      S(2) => mem_reg_0_15_4_4_i_3_n_0,
      S(1) => mem_reg_0_15_4_4_i_4_n_0,
      S(0) => mem_reg_0_15_4_4_i_5_n_0
    );
mem_reg_0_15_4_4_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[7]\,
      I1 => mem_reg_0_15_28_28_i_2_0(7),
      O => mem_reg_0_15_4_4_i_2_n_0
    );
mem_reg_0_15_4_4_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[6]\,
      I1 => mem_reg_0_15_28_28_i_2_0(6),
      O => mem_reg_0_15_4_4_i_3_n_0
    );
mem_reg_0_15_4_4_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[5]\,
      I1 => mem_reg_0_15_28_28_i_2_0(5),
      O => mem_reg_0_15_4_4_i_4_n_0
    );
mem_reg_0_15_4_4_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[4]\,
      I1 => mem_reg_0_15_28_28_i_2_0(4),
      O => mem_reg_0_15_4_4_i_5_n_0
    );
mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(5),
      DPO => \q00__0\(5),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(5),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(6),
      DPO => \q00__0\(6),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(6),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(7),
      DPO => \q00__0\(7),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(7),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(8),
      DPO => \q00__0\(8),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(8),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(1),
      I1 => \q1_reg[0]_0\,
      I2 => \q1_reg[0]_1\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \q0_reg[0]_0\,
      I5 => s_axi_AXI_LITE_WVALID,
      O => \p_0_in0_out__0\(8)
    );
\mem_reg_0_15_8_8_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => mem_reg_0_15_4_4_i_1_n_0,
      CO(3) => \mem_reg_0_15_8_8_i_1__1_n_0\,
      CO(2) => \mem_reg_0_15_8_8_i_1__1_n_1\,
      CO(1) => \mem_reg_0_15_8_8_i_1__1_n_2\,
      CO(0) => \mem_reg_0_15_8_8_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \q0_reg_n_0_[11]\,
      DI(2) => \q0_reg_n_0_[10]\,
      DI(1) => \q0_reg_n_0_[9]\,
      DI(0) => \q0_reg_n_0_[8]\,
      O(3 downto 0) => p_1_in(11 downto 8),
      S(3) => mem_reg_0_15_8_8_i_2_n_0,
      S(2) => mem_reg_0_15_8_8_i_3_n_0,
      S(1) => mem_reg_0_15_8_8_i_4_n_0,
      S(0) => mem_reg_0_15_8_8_i_5_n_0
    );
mem_reg_0_15_8_8_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[11]\,
      I1 => mem_reg_0_15_28_28_i_2_0(11),
      O => mem_reg_0_15_8_8_i_2_n_0
    );
mem_reg_0_15_8_8_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[10]\,
      I1 => mem_reg_0_15_28_28_i_2_0(10),
      O => mem_reg_0_15_8_8_i_3_n_0
    );
mem_reg_0_15_8_8_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[9]\,
      I1 => mem_reg_0_15_28_28_i_2_0(9),
      O => mem_reg_0_15_8_8_i_4_n_0
    );
mem_reg_0_15_8_8_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q0_reg_n_0_[8]\,
      I1 => mem_reg_0_15_28_28_i_2_0(8),
      O => mem_reg_0_15_8_8_i_5_n_0
    );
mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_AXI_LITE_WDATA(9),
      DPO => \q00__0\(9),
      DPRA0 => \^address0\(0),
      DPRA1 => \^address0\(1),
      DPRA2 => \^address0\(2),
      DPRA3 => \^address0\(3),
      DPRA4 => '0',
      SPO => \q10__1\(9),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
\q0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE2C0"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(9),
      I4 => \q0[31]_i_2_n_0\,
      O => \^e\(0)
    );
\q0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter0\,
      I1 => \^ap_cs_fsm_reg[5]\,
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(1),
      O => \q0[31]_i_2_n_0\
    );
\q0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(8),
      O => \^ap_cs_fsm_reg[5]\
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(0),
      Q => \q0_reg_n_0_[0]\,
      R => '0'
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(10),
      Q => \q0_reg_n_0_[10]\,
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(11),
      Q => \q0_reg_n_0_[11]\,
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(12),
      Q => \q0_reg_n_0_[12]\,
      R => '0'
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(13),
      Q => \q0_reg_n_0_[13]\,
      R => '0'
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(14),
      Q => \q0_reg_n_0_[14]\,
      R => '0'
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(15),
      Q => \q0_reg_n_0_[15]\,
      R => '0'
    );
\q0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(16),
      Q => \q0_reg_n_0_[16]\,
      R => '0'
    );
\q0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(17),
      Q => \q0_reg_n_0_[17]\,
      R => '0'
    );
\q0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(18),
      Q => \q0_reg_n_0_[18]\,
      R => '0'
    );
\q0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(19),
      Q => \q0_reg_n_0_[19]\,
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(1),
      Q => \q0_reg_n_0_[1]\,
      R => '0'
    );
\q0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(20),
      Q => \q0_reg_n_0_[20]\,
      R => '0'
    );
\q0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(21),
      Q => \q0_reg_n_0_[21]\,
      R => '0'
    );
\q0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(22),
      Q => \q0_reg_n_0_[22]\,
      R => '0'
    );
\q0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(23),
      Q => \q0_reg_n_0_[23]\,
      R => '0'
    );
\q0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(24),
      Q => \q0_reg_n_0_[24]\,
      R => '0'
    );
\q0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(25),
      Q => \q0_reg_n_0_[25]\,
      R => '0'
    );
\q0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(26),
      Q => \q0_reg_n_0_[26]\,
      R => '0'
    );
\q0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(27),
      Q => \q0_reg_n_0_[27]\,
      R => '0'
    );
\q0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(28),
      Q => \q0_reg_n_0_[28]\,
      R => '0'
    );
\q0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(29),
      Q => \q0_reg_n_0_[29]\,
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(2),
      Q => \q0_reg_n_0_[2]\,
      R => '0'
    );
\q0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(30),
      Q => \q0_reg_n_0_[30]\,
      R => '0'
    );
\q0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(31),
      Q => \q0_reg[31]_0\(0),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(3),
      Q => \q0_reg_n_0_[3]\,
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(4),
      Q => \q0_reg_n_0_[4]\,
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(5),
      Q => \q0_reg_n_0_[5]\,
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(6),
      Q => \q0_reg_n_0_[6]\,
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(7),
      Q => \q0_reg_n_0_[7]\,
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(8),
      Q => \q0_reg_n_0_[8]\,
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \q00__0\(9),
      Q => \q0_reg_n_0_[9]\,
      R => '0'
    );
\q1[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q1_reg[0]_0\,
      I1 => s_axi_AXI_LITE_WVALID,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \q1_reg[0]_1\,
      O => int_b_ce1
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(0),
      Q => \q1_reg[31]_0\(0),
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(10),
      Q => \q1_reg[31]_0\(10),
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(11),
      Q => \q1_reg[31]_0\(11),
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(12),
      Q => \q1_reg[31]_0\(12),
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(13),
      Q => \q1_reg[31]_0\(13),
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(14),
      Q => \q1_reg[31]_0\(14),
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(15),
      Q => \q1_reg[31]_0\(15),
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(16),
      Q => \q1_reg[31]_0\(16),
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(17),
      Q => \q1_reg[31]_0\(17),
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(18),
      Q => \q1_reg[31]_0\(18),
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(19),
      Q => \q1_reg[31]_0\(19),
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(1),
      Q => \q1_reg[31]_0\(1),
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(20),
      Q => \q1_reg[31]_0\(20),
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(21),
      Q => \q1_reg[31]_0\(21),
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(22),
      Q => \q1_reg[31]_0\(22),
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(23),
      Q => \q1_reg[31]_0\(23),
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(24),
      Q => \q1_reg[31]_0\(24),
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(25),
      Q => \q1_reg[31]_0\(25),
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(26),
      Q => \q1_reg[31]_0\(26),
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(27),
      Q => \q1_reg[31]_0\(27),
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(28),
      Q => \q1_reg[31]_0\(28),
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(29),
      Q => \q1_reg[31]_0\(29),
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(2),
      Q => \q1_reg[31]_0\(2),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(30),
      Q => \q1_reg[31]_0\(30),
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(31),
      Q => \q1_reg[31]_0\(31),
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(3),
      Q => \q1_reg[31]_0\(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(4),
      Q => \q1_reg[31]_0\(4),
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(5),
      Q => \q1_reg[31]_0\(5),
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(6),
      Q => \q1_reg[31]_0\(6),
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(7),
      Q => \q1_reg[31]_0\(7),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(8),
      Q => \q1_reg[31]_0\(8),
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => \q10__1\(9),
      Q => \q1_reg[31]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram__parameterized0\ is
  port (
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q1_reg[4]_0\ : out STD_LOGIC;
    \q1_reg[5]_0\ : out STD_LOGIC;
    \q1_reg[6]_0\ : out STD_LOGIC;
    \q1_reg[8]_0\ : out STD_LOGIC;
    \q1_reg[10]_0\ : out STD_LOGIC;
    \q1_reg[11]_0\ : out STD_LOGIC;
    \q1_reg[12]_0\ : out STD_LOGIC;
    \q1_reg[13]_0\ : out STD_LOGIC;
    \q1_reg[14]_0\ : out STD_LOGIC;
    \q1_reg[15]_0\ : out STD_LOGIC;
    \q1_reg[16]_0\ : out STD_LOGIC;
    \q1_reg[17]_0\ : out STD_LOGIC;
    \q1_reg[18]_0\ : out STD_LOGIC;
    \q1_reg[19]_0\ : out STD_LOGIC;
    \q1_reg[20]_0\ : out STD_LOGIC;
    \q1_reg[21]_0\ : out STD_LOGIC;
    \q1_reg[22]_0\ : out STD_LOGIC;
    \q1_reg[23]_0\ : out STD_LOGIC;
    \q1_reg[24]_0\ : out STD_LOGIC;
    \q1_reg[25]_0\ : out STD_LOGIC;
    \q1_reg[26]_0\ : out STD_LOGIC;
    \q1_reg[27]_0\ : out STD_LOGIC;
    \q1_reg[28]_0\ : out STD_LOGIC;
    \q1_reg[29]_0\ : out STD_LOGIC;
    \q1_reg[30]_0\ : out STD_LOGIC;
    \q1_reg[31]_0\ : out STD_LOGIC;
    int_a_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[9]\ : out STD_LOGIC;
    \q1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \rdata_reg[0]\ : in STD_LOGIC;
    \rdata_reg[0]_0\ : in STD_LOGIC;
    \q1_reg[0]_0\ : in STD_LOGIC;
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    int_b_read : in STD_LOGIC;
    \rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    int_a_read : in STD_LOGIC;
    \rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \rdata_reg[1]\ : in STD_LOGIC;
    \q1_reg[31]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q1_reg[0]_1\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \mem_reg_0_15_31_31_i_1__1\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram__parameterized0\ : entity is "array_add_AXI_LITE_s_axi_ram";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram__parameterized0\ is
  signal \^ap_cs_fsm_reg[4]\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[9]\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal \^int_a_address1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg_0_15_0_0_i_12__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_0_0_i_13_n_0 : STD_LOGIC;
  signal mem_reg_0_15_0_0_i_14_n_0 : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_3__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_4__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_0_0_i_5__0_n_0\ : STD_LOGIC;
  signal mem_reg_0_15_0_0_i_6_n_0 : STD_LOGIC;
  signal q10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q1_reg_n_0_[0]\ : STD_LOGIC;
  signal \q1_reg_n_0_[10]\ : STD_LOGIC;
  signal \q1_reg_n_0_[11]\ : STD_LOGIC;
  signal \q1_reg_n_0_[12]\ : STD_LOGIC;
  signal \q1_reg_n_0_[13]\ : STD_LOGIC;
  signal \q1_reg_n_0_[14]\ : STD_LOGIC;
  signal \q1_reg_n_0_[15]\ : STD_LOGIC;
  signal \q1_reg_n_0_[16]\ : STD_LOGIC;
  signal \q1_reg_n_0_[17]\ : STD_LOGIC;
  signal \q1_reg_n_0_[18]\ : STD_LOGIC;
  signal \q1_reg_n_0_[19]\ : STD_LOGIC;
  signal \q1_reg_n_0_[1]\ : STD_LOGIC;
  signal \q1_reg_n_0_[20]\ : STD_LOGIC;
  signal \q1_reg_n_0_[21]\ : STD_LOGIC;
  signal \q1_reg_n_0_[22]\ : STD_LOGIC;
  signal \q1_reg_n_0_[23]\ : STD_LOGIC;
  signal \q1_reg_n_0_[24]\ : STD_LOGIC;
  signal \q1_reg_n_0_[25]\ : STD_LOGIC;
  signal \q1_reg_n_0_[26]\ : STD_LOGIC;
  signal \q1_reg_n_0_[27]\ : STD_LOGIC;
  signal \q1_reg_n_0_[28]\ : STD_LOGIC;
  signal \q1_reg_n_0_[29]\ : STD_LOGIC;
  signal \q1_reg_n_0_[30]\ : STD_LOGIC;
  signal \q1_reg_n_0_[31]\ : STD_LOGIC;
  signal \q1_reg_n_0_[4]\ : STD_LOGIC;
  signal \q1_reg_n_0_[5]\ : STD_LOGIC;
  signal \q1_reg_n_0_[6]\ : STD_LOGIC;
  signal \q1_reg_n_0_[8]\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal result_ce0 : STD_LOGIC;
  signal NLW_mem_reg_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_10_10_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_11_11_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_12_12_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_13_13_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_14_14_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_16_16_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_17_17_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_18_18_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_19_19_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_1_1_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_20_20_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_21_21_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_22_22_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_23_23_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_24_24_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_25_25_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_26_26_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_27_27_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_28_28_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_29_29_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_2_2_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_3_3_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_4_4_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_5_5_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_8_8_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_9_9_SPO_UNCONNECTED : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_0 : label is 320;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_0 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_0 : label is 9;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_0 : label is 0;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mem_reg_0_15_0_0_i_13 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mem_reg_0_15_0_0_i_14 : label is "soft_lutpair1";
  attribute RTL_RAM_BITS of mem_reg_0_15_10_10 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_10_10 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_10_10 : label is 9;
  attribute ram_offset of mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_15_11_11 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_11_11 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_11_11 : label is 9;
  attribute ram_offset of mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_15_12_12 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_12 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_12 : label is 9;
  attribute ram_offset of mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_15_13_13 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_13_13 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_13_13 : label is 9;
  attribute ram_offset of mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_15_14_14 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_14 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_14 : label is 9;
  attribute ram_offset of mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_15_15_15 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_15_15 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_15_15 : label is 9;
  attribute ram_offset of mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_15_16_16 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_16_16 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_16_16 : label is 9;
  attribute ram_offset of mem_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_15_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_15_17_17 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_17_17 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_17_17 : label is 9;
  attribute ram_offset of mem_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_15_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_15_18_18 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_18 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_18 : label is 9;
  attribute ram_offset of mem_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_15_19_19 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_19_19 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_19_19 : label is 9;
  attribute ram_offset of mem_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_15_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_15_1_1 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_1_1 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_1_1 : label is 9;
  attribute ram_offset of mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_15_20_20 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_20_20 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_20_20 : label is 9;
  attribute ram_offset of mem_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_15_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_15_21_21 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_21_21 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_21_21 : label is 9;
  attribute ram_offset of mem_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_15_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_15_22_22 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_22_22 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_22_22 : label is 9;
  attribute ram_offset of mem_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_15_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_15_23_23 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_23_23 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_23_23 : label is 9;
  attribute ram_offset of mem_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_15_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_15_24_24 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_24 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_24 : label is 9;
  attribute ram_offset of mem_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_15_25_25 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_25_25 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_25_25 : label is 9;
  attribute ram_offset of mem_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_15_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_15_26_26 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_26_26 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_26_26 : label is 9;
  attribute ram_offset of mem_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_15_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_15_27_27 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_27_27 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_27_27 : label is 9;
  attribute ram_offset of mem_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_15_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_15_28_28 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_28 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_28 : label is 9;
  attribute ram_offset of mem_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_15_29_29 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_29_29 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_29_29 : label is 9;
  attribute ram_offset of mem_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_15_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_15_2_2 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_2_2 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_2_2 : label is 9;
  attribute ram_offset of mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_15_30_30 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_30 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_30 : label is 9;
  attribute ram_offset of mem_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_15_31_31 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_31_31 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_31_31 : label is 9;
  attribute ram_offset of mem_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_15_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_15_3_3 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_3_3 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_3_3 : label is 9;
  attribute ram_offset of mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_15_4_4 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_4_4 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_4_4 : label is 9;
  attribute ram_offset of mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_15_5_5 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_5_5 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_5_5 : label is 9;
  attribute ram_offset of mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_15_6_6 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_6 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_6 : label is 9;
  attribute ram_offset of mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_15_7_7 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_7_7 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_7_7 : label is 9;
  attribute ram_offset of mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_15_8_8 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_8_8 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_8_8 : label is 9;
  attribute ram_offset of mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_15_9_9 : label is 320;
  attribute RTL_RAM_NAME of mem_reg_0_15_9_9 : label is "AXI_LITE_s_axi_U/int_result/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_9_9 : label is 9;
  attribute ram_offset of mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_15_9_9 : label is 9;
begin
  \ap_CS_fsm_reg[4]\ <= \^ap_cs_fsm_reg[4]\;
  \ap_CS_fsm_reg[9]\ <= \^ap_cs_fsm_reg[9]\;
  int_a_address1(3 downto 0) <= \^int_a_address1\(3 downto 0);
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      O => \^ap_cs_fsm_reg[4]\
    );
mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(0),
      DPO => q10(0),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_0_0_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555555"
    )
        port map (
      I0 => mem_reg_0_15_0_0_i_14_n_0,
      I1 => Q(9),
      I2 => Q(1),
      I3 => \^ap_cs_fsm_reg[4]\,
      I4 => \mem_reg_0_15_31_31_i_1__1\,
      I5 => ap_enable_reg_pp0_iter0,
      O => \^ap_cs_fsm_reg[9]\
    );
\mem_reg_0_15_0_0_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF1"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(6),
      I3 => Q(5),
      I4 => Q(7),
      I5 => Q(8),
      O => \mem_reg_0_15_0_0_i_12__0_n_0\
    );
mem_reg_0_15_0_0_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11500050"
    )
        port map (
      I0 => Q(9),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(0),
      I4 => ap_start,
      O => mem_reg_0_15_0_0_i_13_n_0
    );
mem_reg_0_15_0_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => mem_reg_0_15_0_0_i_14_n_0
    );
mem_reg_0_15_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \q1_reg[31]_1\(0),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => s_axi_AXI_LITE_ARADDR(0),
      O => \^int_a_address1\(0)
    );
\mem_reg_0_15_0_0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[9]\,
      O => result_ce0
    );
mem_reg_0_15_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \q1_reg[31]_1\(1),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => s_axi_AXI_LITE_ARADDR(1),
      O => \^int_a_address1\(1)
    );
\mem_reg_0_15_0_0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A000880088"
    )
        port map (
      I0 => \q1_reg[0]_1\,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_start,
      I3 => Q(9),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => Q(0),
      O => \mem_reg_0_15_0_0_i_3__0_n_0\
    );
mem_reg_0_15_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \q1_reg[31]_1\(2),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => s_axi_AXI_LITE_ARADDR(2),
      O => \^int_a_address1\(2)
    );
\mem_reg_0_15_0_0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000030B8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(9),
      I5 => \mem_reg_0_15_0_0_i_12__0_n_0\,
      O => \mem_reg_0_15_0_0_i_4__0_n_0\
    );
mem_reg_0_15_0_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \q1_reg[31]_1\(3),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => s_axi_AXI_LITE_ARADDR(3),
      O => \^int_a_address1\(3)
    );
\mem_reg_0_15_0_0_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      I4 => mem_reg_0_15_0_0_i_13_n_0,
      O => \mem_reg_0_15_0_0_i_5__0_n_0\
    );
mem_reg_0_15_0_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAD88888"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_start,
      I4 => Q(9),
      O => mem_reg_0_15_0_0_i_6_n_0
    );
mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(10),
      DPO => q10(10),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_10_10_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(11),
      DPO => q10(11),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_11_11_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(12),
      DPO => q10(12),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_12_12_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(13),
      DPO => q10(13),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_13_13_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(14),
      DPO => q10(14),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_14_14_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(15),
      DPO => q10(15),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_15_15_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(16),
      DPO => q10(16),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_16_16_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(17),
      DPO => q10(17),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_17_17_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(18),
      DPO => q10(18),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_18_18_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(19),
      DPO => q10(19),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_19_19_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(1),
      DPO => q10(1),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_1_1_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(20),
      DPO => q10(20),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_20_20_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(21),
      DPO => q10(21),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_21_21_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(22),
      DPO => q10(22),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_22_22_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(23),
      DPO => q10(23),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_23_23_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(24),
      DPO => q10(24),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_24_24_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(25),
      DPO => q10(25),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_25_25_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(26),
      DPO => q10(26),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_26_26_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(27),
      DPO => q10(27),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_27_27_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(28),
      DPO => q10(28),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_28_28_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(29),
      DPO => q10(29),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_29_29_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(2),
      DPO => q10(2),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_2_2_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(30),
      DPO => q10(30),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_30_30_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(31),
      DPO => q10(31),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_31_31_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(3),
      DPO => q10(3),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_3_3_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(4),
      DPO => q10(4),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_4_4_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(5),
      DPO => q10(5),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_5_5_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(6),
      DPO => q10(6),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_6_6_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(7),
      DPO => q10(7),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_7_7_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(8),
      DPO => q10(8),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_8_8_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \mem_reg_0_15_0_0_i_3__0_n_0\,
      A1 => \mem_reg_0_15_0_0_i_4__0_n_0\,
      A2 => \mem_reg_0_15_0_0_i_5__0_n_0\,
      A3 => mem_reg_0_15_0_0_i_6_n_0,
      A4 => '0',
      D => p_1_in(9),
      DPO => q10(9),
      DPRA0 => \^int_a_address1\(0),
      DPRA1 => \^int_a_address1\(1),
      DPRA2 => \^int_a_address1\(2),
      DPRA3 => \^int_a_address1\(3),
      DPRA4 => '0',
      SPO => NLW_mem_reg_0_15_9_9_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => result_ce0
    );
\q1[31]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARVALID,
      I1 => \q1_reg[0]_0\,
      O => ar_hs
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(0),
      Q => \q1_reg_n_0_[0]\,
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(10),
      Q => \q1_reg_n_0_[10]\,
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(11),
      Q => \q1_reg_n_0_[11]\,
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(12),
      Q => \q1_reg_n_0_[12]\,
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(13),
      Q => \q1_reg_n_0_[13]\,
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(14),
      Q => \q1_reg_n_0_[14]\,
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(15),
      Q => \q1_reg_n_0_[15]\,
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(16),
      Q => \q1_reg_n_0_[16]\,
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(17),
      Q => \q1_reg_n_0_[17]\,
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(18),
      Q => \q1_reg_n_0_[18]\,
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(19),
      Q => \q1_reg_n_0_[19]\,
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(1),
      Q => \q1_reg_n_0_[1]\,
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(20),
      Q => \q1_reg_n_0_[20]\,
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(21),
      Q => \q1_reg_n_0_[21]\,
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(22),
      Q => \q1_reg_n_0_[22]\,
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(23),
      Q => \q1_reg_n_0_[23]\,
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(24),
      Q => \q1_reg_n_0_[24]\,
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(25),
      Q => \q1_reg_n_0_[25]\,
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(26),
      Q => \q1_reg_n_0_[26]\,
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(27),
      Q => \q1_reg_n_0_[27]\,
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(28),
      Q => \q1_reg_n_0_[28]\,
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(29),
      Q => \q1_reg_n_0_[29]\,
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(2),
      Q => \q1_reg[9]_0\(0),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(30),
      Q => \q1_reg_n_0_[30]\,
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(31),
      Q => \q1_reg_n_0_[31]\,
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(3),
      Q => \q1_reg[9]_0\(1),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(4),
      Q => \q1_reg_n_0_[4]\,
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(5),
      Q => \q1_reg_n_0_[5]\,
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(6),
      Q => \q1_reg_n_0_[6]\,
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(7),
      Q => \q1_reg[9]_0\(2),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(8),
      Q => \q1_reg_n_0_[8]\,
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => q10(9),
      Q => \q1_reg[9]_0\(3),
      R => '0'
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4444"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => \rdata_reg[0]_0\,
      I2 => \q1_reg[0]_0\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \rdata[0]_i_3_n_0\,
      O => D(0)
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[0]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(0),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(0),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[10]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(6),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(6),
      O => \q1_reg[10]_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[11]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(7),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(7),
      O => \q1_reg[11]_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[12]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(8),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(8),
      O => \q1_reg[12]_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[13]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(9),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(9),
      O => \q1_reg[13]_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[14]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(10),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(10),
      O => \q1_reg[14]_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[15]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(11),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(11),
      O => \q1_reg[15]_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[16]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(12),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(12),
      O => \q1_reg[16]_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[17]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(13),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(13),
      O => \q1_reg[17]_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[18]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(14),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(14),
      O => \q1_reg[18]_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[19]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(15),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(15),
      O => \q1_reg[19]_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4444"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => \rdata_reg[1]\,
      I2 => \q1_reg[0]_0\,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \rdata[1]_i_3_n_0\,
      O => D(1)
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[1]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(1),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(1),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[20]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(16),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(16),
      O => \q1_reg[20]_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[21]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(17),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(17),
      O => \q1_reg[21]_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[22]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(18),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(18),
      O => \q1_reg[22]_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[23]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(19),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(19),
      O => \q1_reg[23]_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[24]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(20),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(20),
      O => \q1_reg[24]_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[25]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(21),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(21),
      O => \q1_reg[25]_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[26]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(22),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(22),
      O => \q1_reg[26]_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[27]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(23),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(23),
      O => \q1_reg[27]_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[28]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(24),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(24),
      O => \q1_reg[28]_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[29]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(25),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(25),
      O => \q1_reg[29]_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[30]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(26),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(26),
      O => \q1_reg[30]_0\
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[31]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(27),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(27),
      O => \q1_reg[31]_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[4]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(2),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(2),
      O => \q1_reg[4]_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[5]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(3),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(3),
      O => \q1_reg[5]_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[6]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(4),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(4),
      O => \q1_reg[6]_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \q1_reg_n_0_[8]\,
      I1 => int_b_read,
      I2 => \rdata_reg[31]\(5),
      I3 => int_a_read,
      I4 => \rdata_reg[31]_0\(5),
      O => \q1_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_AXI_LITE_BVALID : out STD_LOGIC;
    s_axi_AXI_LITE_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n_0 : out STD_LOGIC;
    s_axi_AXI_LITE_RVALID : out STD_LOGIC;
    s_axi_AXI_LITE_WREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_AWVALID : in STD_LOGIC;
    s_axi_AXI_LITE_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    s_axi_AXI_LITE_BREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_AXI_LITE_RREADY : in STD_LOGIC;
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[2]\ : STD_LOGIC;
  signal a_ce0 : STD_LOGIC;
  signal address0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ap_CS_fsm[1]_i_3_n_0\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal ap_ready : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal int_a_address1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_a_n_0 : STD_LOGIC;
  signal int_a_n_1 : STD_LOGIC;
  signal int_a_n_2 : STD_LOGIC;
  signal int_a_n_3 : STD_LOGIC;
  signal int_a_n_32 : STD_LOGIC;
  signal int_a_n_33 : STD_LOGIC;
  signal int_a_read : STD_LOGIC;
  signal int_a_read0 : STD_LOGIC;
  signal int_a_write_i_1_n_0 : STD_LOGIC;
  signal int_a_write_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_ap_start_i_4_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_b_n_0 : STD_LOGIC;
  signal int_b_n_1 : STD_LOGIC;
  signal int_b_n_10 : STD_LOGIC;
  signal int_b_n_11 : STD_LOGIC;
  signal int_b_n_12 : STD_LOGIC;
  signal int_b_n_13 : STD_LOGIC;
  signal int_b_n_14 : STD_LOGIC;
  signal int_b_n_15 : STD_LOGIC;
  signal int_b_n_16 : STD_LOGIC;
  signal int_b_n_17 : STD_LOGIC;
  signal int_b_n_18 : STD_LOGIC;
  signal int_b_n_19 : STD_LOGIC;
  signal int_b_n_2 : STD_LOGIC;
  signal int_b_n_20 : STD_LOGIC;
  signal int_b_n_21 : STD_LOGIC;
  signal int_b_n_22 : STD_LOGIC;
  signal int_b_n_23 : STD_LOGIC;
  signal int_b_n_3 : STD_LOGIC;
  signal int_b_n_34 : STD_LOGIC;
  signal int_b_n_39 : STD_LOGIC;
  signal int_b_n_4 : STD_LOGIC;
  signal int_b_n_40 : STD_LOGIC;
  signal int_b_n_41 : STD_LOGIC;
  signal int_b_n_42 : STD_LOGIC;
  signal int_b_n_43 : STD_LOGIC;
  signal int_b_n_44 : STD_LOGIC;
  signal int_b_n_45 : STD_LOGIC;
  signal int_b_n_46 : STD_LOGIC;
  signal int_b_n_47 : STD_LOGIC;
  signal int_b_n_48 : STD_LOGIC;
  signal int_b_n_49 : STD_LOGIC;
  signal int_b_n_5 : STD_LOGIC;
  signal int_b_n_50 : STD_LOGIC;
  signal int_b_n_51 : STD_LOGIC;
  signal int_b_n_52 : STD_LOGIC;
  signal int_b_n_53 : STD_LOGIC;
  signal int_b_n_54 : STD_LOGIC;
  signal int_b_n_55 : STD_LOGIC;
  signal int_b_n_56 : STD_LOGIC;
  signal int_b_n_57 : STD_LOGIC;
  signal int_b_n_58 : STD_LOGIC;
  signal int_b_n_59 : STD_LOGIC;
  signal int_b_n_6 : STD_LOGIC;
  signal int_b_n_60 : STD_LOGIC;
  signal int_b_n_61 : STD_LOGIC;
  signal int_b_n_62 : STD_LOGIC;
  signal int_b_n_63 : STD_LOGIC;
  signal int_b_n_64 : STD_LOGIC;
  signal int_b_n_65 : STD_LOGIC;
  signal int_b_n_66 : STD_LOGIC;
  signal int_b_n_67 : STD_LOGIC;
  signal int_b_n_68 : STD_LOGIC;
  signal int_b_n_69 : STD_LOGIC;
  signal int_b_n_7 : STD_LOGIC;
  signal int_b_n_70 : STD_LOGIC;
  signal int_b_n_71 : STD_LOGIC;
  signal int_b_n_72 : STD_LOGIC;
  signal int_b_n_8 : STD_LOGIC;
  signal int_b_n_9 : STD_LOGIC;
  signal int_b_read : STD_LOGIC;
  signal int_b_read0 : STD_LOGIC;
  signal int_b_write_i_1_n_0 : STD_LOGIC;
  signal int_b_write_i_2_n_0 : STD_LOGIC;
  signal int_b_write_reg_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr : STD_LOGIC;
  signal int_isr8_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_result_n_0 : STD_LOGIC;
  signal int_result_n_1 : STD_LOGIC;
  signal int_result_n_10 : STD_LOGIC;
  signal int_result_n_11 : STD_LOGIC;
  signal int_result_n_12 : STD_LOGIC;
  signal int_result_n_13 : STD_LOGIC;
  signal int_result_n_14 : STD_LOGIC;
  signal int_result_n_15 : STD_LOGIC;
  signal int_result_n_16 : STD_LOGIC;
  signal int_result_n_17 : STD_LOGIC;
  signal int_result_n_18 : STD_LOGIC;
  signal int_result_n_19 : STD_LOGIC;
  signal int_result_n_2 : STD_LOGIC;
  signal int_result_n_20 : STD_LOGIC;
  signal int_result_n_21 : STD_LOGIC;
  signal int_result_n_22 : STD_LOGIC;
  signal int_result_n_23 : STD_LOGIC;
  signal int_result_n_24 : STD_LOGIC;
  signal int_result_n_25 : STD_LOGIC;
  signal int_result_n_26 : STD_LOGIC;
  signal int_result_n_27 : STD_LOGIC;
  signal int_result_n_28 : STD_LOGIC;
  signal int_result_n_3 : STD_LOGIC;
  signal int_result_n_33 : STD_LOGIC;
  signal int_result_n_34 : STD_LOGIC;
  signal int_result_n_35 : STD_LOGIC;
  signal int_result_n_36 : STD_LOGIC;
  signal int_result_n_37 : STD_LOGIC;
  signal int_result_n_4 : STD_LOGIC;
  signal int_result_n_5 : STD_LOGIC;
  signal int_result_n_6 : STD_LOGIC;
  signal int_result_n_7 : STD_LOGIC;
  signal int_result_n_8 : STD_LOGIC;
  signal int_result_n_9 : STD_LOGIC;
  signal int_result_read : STD_LOGIC;
  signal int_result_read0 : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal q0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal q1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axi_axi_lite_bvalid\ : STD_LOGIC;
  signal task_ap_done : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_2\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of int_a_read_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of int_ap_ready_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_b_read_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_b_write_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_isr[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_result_read_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_axi_AXI_LITE_RVALID_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_axi_AXI_LITE_WREADY_INST_0 : label is "soft_lutpair5";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  ap_enable_reg_pp0_iter0 <= \^ap_enable_reg_pp0_iter0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  interrupt <= \^interrupt\;
  s_axi_AXI_LITE_BVALID <= \^s_axi_axi_lite_bvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444477777777"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \FSM_onehot_rstate[1]_i_2_n_0\,
      I3 => int_result_read,
      I4 => s_axi_AXI_LITE_RREADY,
      I5 => \FSM_onehot_rstate_reg_n_0_[2]\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_a_read,
      I1 => int_b_read,
      O => \FSM_onehot_rstate[1]_i_2_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA2AAA2AAA2"
    )
        port map (
      I0 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I1 => s_axi_AXI_LITE_RREADY,
      I2 => int_result_read,
      I3 => \FSM_onehot_rstate[1]_i_2_n_0\,
      I4 => s_axi_AXI_LITE_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \FSM_onehot_rstate_reg_n_0_[2]\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF353035"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => s_axi_AXI_LITE_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_axi_lite_bvalid\,
      I4 => s_axi_AXI_LITE_BREADY,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80F080F080F0"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_ARVALID,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_AXI_LITE_WVALID,
      I4 => s_axi_AXI_LITE_AWVALID,
      I5 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F444F444F444"
    )
        port map (
      I0 => s_axi_AXI_LITE_BREADY,
      I1 => \^s_axi_axi_lite_bvalid\,
      I2 => s_axi_AXI_LITE_WVALID,
      I3 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I4 => s_axi_AXI_LITE_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg_n_0_[2]\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_axi_lite_bvalid\,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => Q(9),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404040404040"
    )
        port map (
      I0 => int_result_n_0,
      I1 => \ap_CS_fsm[1]_i_3_n_0\,
      I2 => ap_start,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_enable_reg_pp0_iter0_reg,
      O => D(1)
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      I2 => Q(5),
      I3 => Q(1),
      I4 => Q(6),
      I5 => Q(7),
      O => \ap_CS_fsm[1]_i_3_n_0\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008800A0AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(9),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => Q(0),
      O => ap_rst_n_0
    );
auto_restart_status_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => ap_start,
      I4 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_a: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram
     port map (
      D(3) => int_a_n_0,
      D(2) => int_a_n_1,
      D(1) => int_a_n_2,
      D(0) => int_a_n_3,
      E(0) => a_ce0,
      \FSM_onehot_rstate_reg[1]\ => int_a_n_32,
      Q(27 downto 6) => q1(31 downto 10),
      Q(5) => q1(8),
      Q(4 downto 2) => q1(6 downto 4),
      Q(1 downto 0) => q1(1 downto 0),
      S(0) => int_a_n_33,
      address0(3 downto 0) => address0(3 downto 0),
      ap_clk => ap_clk,
      int_a_address1(3 downto 0) => int_a_address1(3 downto 0),
      int_a_read => int_a_read,
      int_ap_ready => int_ap_ready,
      int_b_read => int_b_read,
      interrupt => \^interrupt\,
      mem_reg_0_15_28_28_i_2(0) => int_b_n_72,
      p_0_in_0(1) => p_0_in_0(7),
      p_0_in_0(0) => p_0_in_0(2),
      \q0_reg[0]_0\ => \FSM_onehot_wstate_reg_n_0_[2]\,
      \q0_reg[30]_0\(30 downto 0) => q0(30 downto 0),
      \q1_reg[0]_0\ => int_a_write_reg_n_0,
      \q1_reg[0]_1\ => \^fsm_onehot_rstate_reg[1]_0\,
      \rdata_reg[2]\ => \rdata[9]_i_2_n_0\,
      \rdata_reg[9]\(3) => int_b_n_62,
      \rdata_reg[9]\(2) => int_b_n_64,
      \rdata_reg[9]\(1) => int_b_n_68,
      \rdata_reg[9]\(0) => int_b_n_69,
      \rdata_reg[9]_0\(3) => int_result_n_34,
      \rdata_reg[9]_0\(2) => int_result_n_35,
      \rdata_reg[9]_0\(1) => int_result_n_36,
      \rdata_reg[9]_0\(0) => int_result_n_37,
      s_axi_AXI_LITE_ARADDR(1 downto 0) => s_axi_AXI_LITE_ARADDR(3 downto 2),
      s_axi_AXI_LITE_ARVALID => s_axi_AXI_LITE_ARVALID,
      s_axi_AXI_LITE_WDATA(31 downto 0) => s_axi_AXI_LITE_WDATA(31 downto 0),
      s_axi_AXI_LITE_WSTRB(3 downto 0) => s_axi_AXI_LITE_WSTRB(3 downto 0),
      s_axi_AXI_LITE_WVALID => s_axi_AXI_LITE_WVALID
    );
int_a_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(7),
      I1 => s_axi_AXI_LITE_ARADDR(6),
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_a_read0
    );
int_a_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_a_read0,
      Q => int_a_read,
      R => \^ap_rst_n_inv\
    );
int_a_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008000800080"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_AWVALID,
      I2 => s_axi_AXI_LITE_AWADDR(6),
      I3 => s_axi_AXI_LITE_AWADDR(7),
      I4 => int_b_write_i_2_n_0,
      I5 => int_a_write_reg_n_0,
      O => int_a_write_i_1_n_0
    );
int_a_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_a_write_i_1_n_0,
      Q => int_a_write_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_0_in_0(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF444444444"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => ap_ready,
      I2 => \rdata[9]_i_2_n_0\,
      I3 => s_axi_AXI_LITE_ARADDR(2),
      I4 => s_axi_AXI_LITE_ARADDR(3),
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(9),
      O => ap_ready
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0B8B0F0"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => Q(9),
      I2 => ap_start,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => int_ap_start5_out,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(0),
      I1 => s_axi_AXI_LITE_WSTRB(0),
      I2 => int_ap_start_i_3_n_0,
      I3 => int_ap_start_i_4_n_0,
      I4 => \p_0_in__0\(0),
      I5 => \p_0_in__0\(1),
      O => int_ap_start5_out
    );
int_ap_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFEFFFEFFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[6]\,
      I1 => \p_0_in__0\(2),
      I2 => s_axi_AXI_LITE_WVALID,
      I3 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I4 => s_axi_AXI_LITE_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \p_0_in__0\(3),
      I1 => \waddr_reg_n_0_[1]\,
      I2 => \waddr_reg_n_0_[7]\,
      I3 => \waddr_reg_n_0_[0]\,
      O => int_ap_start_i_4_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(7),
      I1 => \p_0_in__0\(1),
      I2 => \p_0_in__0\(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => p_0_in_0(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_0_in_0(7),
      R => \^ap_rst_n_inv\
    );
int_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram_0
     port map (
      E(0) => a_ce0,
      Q(9 downto 0) => Q(9 downto 0),
      S(0) => int_a_n_33,
      address0(3 downto 0) => address0(3 downto 0),
      \ap_CS_fsm_reg[5]\ => int_b_n_34,
      \ap_CS_fsm_reg[8]\ => int_b_n_39,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => \^ap_enable_reg_pp0_iter0\,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_start => ap_start,
      int_a_address1(3 downto 0) => int_a_address1(3 downto 0),
      mem_reg_0_15_28_28_i_2_0(30 downto 0) => q0(30 downto 0),
      p_1_in(31) => int_b_n_0,
      p_1_in(30) => int_b_n_1,
      p_1_in(29) => int_b_n_2,
      p_1_in(28) => int_b_n_3,
      p_1_in(27) => int_b_n_4,
      p_1_in(26) => int_b_n_5,
      p_1_in(25) => int_b_n_6,
      p_1_in(24) => int_b_n_7,
      p_1_in(23) => int_b_n_8,
      p_1_in(22) => int_b_n_9,
      p_1_in(21) => int_b_n_10,
      p_1_in(20) => int_b_n_11,
      p_1_in(19) => int_b_n_12,
      p_1_in(18) => int_b_n_13,
      p_1_in(17) => int_b_n_14,
      p_1_in(16) => int_b_n_15,
      p_1_in(15) => int_b_n_16,
      p_1_in(14) => int_b_n_17,
      p_1_in(13) => int_b_n_18,
      p_1_in(12) => int_b_n_19,
      p_1_in(11) => int_b_n_20,
      p_1_in(10) => int_b_n_21,
      p_1_in(9) => int_b_n_22,
      p_1_in(8) => int_b_n_23,
      p_1_in(7 downto 0) => p_0_in(7 downto 0),
      \q0_reg[0]_0\ => \FSM_onehot_wstate_reg_n_0_[2]\,
      \q0_reg[31]_0\(0) => int_b_n_72,
      \q0_reg[31]_1\ => int_a_n_32,
      \q1_reg[0]_0\ => int_b_write_reg_n_0,
      \q1_reg[0]_1\ => \^fsm_onehot_rstate_reg[1]_0\,
      \q1_reg[24]_0\ => int_result_n_33,
      \q1_reg[31]_0\(31) => int_b_n_40,
      \q1_reg[31]_0\(30) => int_b_n_41,
      \q1_reg[31]_0\(29) => int_b_n_42,
      \q1_reg[31]_0\(28) => int_b_n_43,
      \q1_reg[31]_0\(27) => int_b_n_44,
      \q1_reg[31]_0\(26) => int_b_n_45,
      \q1_reg[31]_0\(25) => int_b_n_46,
      \q1_reg[31]_0\(24) => int_b_n_47,
      \q1_reg[31]_0\(23) => int_b_n_48,
      \q1_reg[31]_0\(22) => int_b_n_49,
      \q1_reg[31]_0\(21) => int_b_n_50,
      \q1_reg[31]_0\(20) => int_b_n_51,
      \q1_reg[31]_0\(19) => int_b_n_52,
      \q1_reg[31]_0\(18) => int_b_n_53,
      \q1_reg[31]_0\(17) => int_b_n_54,
      \q1_reg[31]_0\(16) => int_b_n_55,
      \q1_reg[31]_0\(15) => int_b_n_56,
      \q1_reg[31]_0\(14) => int_b_n_57,
      \q1_reg[31]_0\(13) => int_b_n_58,
      \q1_reg[31]_0\(12) => int_b_n_59,
      \q1_reg[31]_0\(11) => int_b_n_60,
      \q1_reg[31]_0\(10) => int_b_n_61,
      \q1_reg[31]_0\(9) => int_b_n_62,
      \q1_reg[31]_0\(8) => int_b_n_63,
      \q1_reg[31]_0\(7) => int_b_n_64,
      \q1_reg[31]_0\(6) => int_b_n_65,
      \q1_reg[31]_0\(5) => int_b_n_66,
      \q1_reg[31]_0\(4) => int_b_n_67,
      \q1_reg[31]_0\(3) => int_b_n_68,
      \q1_reg[31]_0\(2) => int_b_n_69,
      \q1_reg[31]_0\(1) => int_b_n_70,
      \q1_reg[31]_0\(0) => int_b_n_71,
      s_axi_AXI_LITE_ARVALID => s_axi_AXI_LITE_ARVALID,
      s_axi_AXI_LITE_WDATA(31 downto 0) => s_axi_AXI_LITE_WDATA(31 downto 0),
      s_axi_AXI_LITE_WSTRB(3 downto 0) => s_axi_AXI_LITE_WSTRB(3 downto 0),
      s_axi_AXI_LITE_WVALID => s_axi_AXI_LITE_WVALID
    );
int_b_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(6),
      I1 => s_axi_AXI_LITE_ARADDR(7),
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_b_read0
    );
int_b_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_b_read0,
      Q => int_b_read,
      R => \^ap_rst_n_inv\
    );
int_b_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008000800080"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_AWVALID,
      I2 => s_axi_AXI_LITE_AWADDR(7),
      I3 => s_axi_AXI_LITE_AWADDR(6),
      I4 => int_b_write_i_2_n_0,
      I5 => int_b_write_reg_n_0,
      O => int_b_write_i_1_n_0
    );
int_b_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_ARVALID,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_AXI_LITE_WVALID,
      O => int_b_write_i_2_n_0
    );
int_b_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_b_write_i_1_n_0,
      Q => int_b_write_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(0),
      I1 => \p_0_in__0\(1),
      I2 => \p_0_in__0\(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(0),
      I1 => \p_0_in__0\(0),
      I2 => \p_0_in__0\(1),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(1),
      I1 => \p_0_in__0\(0),
      I2 => \p_0_in__0\(1),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[1]\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s_axi_AXI_LITE_WSTRB(0),
      I1 => int_ap_start_i_3_n_0,
      I2 => \p_0_in__0\(3),
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[7]\,
      I5 => \waddr_reg_n_0_[0]\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(1),
      I4 => int_isr8_out,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      O => int_isr8_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_AXI_LITE_WDATA(1),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(1),
      I4 => int_isr,
      I5 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \int_ier_reg_n_0_[1]\,
      I1 => Q(9),
      I2 => ap_start,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter0_reg,
      O => int_isr
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_result: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi_ram__parameterized0\
     port map (
      D(1) => int_result_n_1,
      D(0) => int_result_n_2,
      Q(9 downto 0) => Q(9 downto 0),
      \ap_CS_fsm_reg[4]\ => int_result_n_0,
      \ap_CS_fsm_reg[9]\ => int_result_n_33,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => \^ap_enable_reg_pp0_iter0\,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      int_a_address1(3 downto 0) => int_a_address1(3 downto 0),
      int_a_read => int_a_read,
      int_b_read => int_b_read,
      \mem_reg_0_15_31_31_i_1__1\ => int_b_n_34,
      p_1_in(31) => int_b_n_0,
      p_1_in(30) => int_b_n_1,
      p_1_in(29) => int_b_n_2,
      p_1_in(28) => int_b_n_3,
      p_1_in(27) => int_b_n_4,
      p_1_in(26) => int_b_n_5,
      p_1_in(25) => int_b_n_6,
      p_1_in(24) => int_b_n_7,
      p_1_in(23) => int_b_n_8,
      p_1_in(22) => int_b_n_9,
      p_1_in(21) => int_b_n_10,
      p_1_in(20) => int_b_n_11,
      p_1_in(19) => int_b_n_12,
      p_1_in(18) => int_b_n_13,
      p_1_in(17) => int_b_n_14,
      p_1_in(16) => int_b_n_15,
      p_1_in(15) => int_b_n_16,
      p_1_in(14) => int_b_n_17,
      p_1_in(13) => int_b_n_18,
      p_1_in(12) => int_b_n_19,
      p_1_in(11) => int_b_n_20,
      p_1_in(10) => int_b_n_21,
      p_1_in(9) => int_b_n_22,
      p_1_in(8) => int_b_n_23,
      p_1_in(7 downto 0) => p_0_in(7 downto 0),
      \q1_reg[0]_0\ => \^fsm_onehot_rstate_reg[1]_0\,
      \q1_reg[0]_1\ => int_b_n_39,
      \q1_reg[10]_0\ => int_result_n_7,
      \q1_reg[11]_0\ => int_result_n_8,
      \q1_reg[12]_0\ => int_result_n_9,
      \q1_reg[13]_0\ => int_result_n_10,
      \q1_reg[14]_0\ => int_result_n_11,
      \q1_reg[15]_0\ => int_result_n_12,
      \q1_reg[16]_0\ => int_result_n_13,
      \q1_reg[17]_0\ => int_result_n_14,
      \q1_reg[18]_0\ => int_result_n_15,
      \q1_reg[19]_0\ => int_result_n_16,
      \q1_reg[20]_0\ => int_result_n_17,
      \q1_reg[21]_0\ => int_result_n_18,
      \q1_reg[22]_0\ => int_result_n_19,
      \q1_reg[23]_0\ => int_result_n_20,
      \q1_reg[24]_0\ => int_result_n_21,
      \q1_reg[25]_0\ => int_result_n_22,
      \q1_reg[26]_0\ => int_result_n_23,
      \q1_reg[27]_0\ => int_result_n_24,
      \q1_reg[28]_0\ => int_result_n_25,
      \q1_reg[29]_0\ => int_result_n_26,
      \q1_reg[30]_0\ => int_result_n_27,
      \q1_reg[31]_0\ => int_result_n_28,
      \q1_reg[31]_1\(3 downto 0) => \p_0_in__0\(3 downto 0),
      \q1_reg[4]_0\ => int_result_n_3,
      \q1_reg[5]_0\ => int_result_n_4,
      \q1_reg[6]_0\ => int_result_n_5,
      \q1_reg[8]_0\ => int_result_n_6,
      \q1_reg[9]_0\(3) => int_result_n_34,
      \q1_reg[9]_0\(2) => int_result_n_35,
      \q1_reg[9]_0\(1) => int_result_n_36,
      \q1_reg[9]_0\(0) => int_result_n_37,
      \rdata_reg[0]\ => \rdata[9]_i_2_n_0\,
      \rdata_reg[0]_0\ => \rdata[0]_i_2_n_0\,
      \rdata_reg[1]\ => \rdata[1]_i_2_n_0\,
      \rdata_reg[31]\(27) => int_b_n_40,
      \rdata_reg[31]\(26) => int_b_n_41,
      \rdata_reg[31]\(25) => int_b_n_42,
      \rdata_reg[31]\(24) => int_b_n_43,
      \rdata_reg[31]\(23) => int_b_n_44,
      \rdata_reg[31]\(22) => int_b_n_45,
      \rdata_reg[31]\(21) => int_b_n_46,
      \rdata_reg[31]\(20) => int_b_n_47,
      \rdata_reg[31]\(19) => int_b_n_48,
      \rdata_reg[31]\(18) => int_b_n_49,
      \rdata_reg[31]\(17) => int_b_n_50,
      \rdata_reg[31]\(16) => int_b_n_51,
      \rdata_reg[31]\(15) => int_b_n_52,
      \rdata_reg[31]\(14) => int_b_n_53,
      \rdata_reg[31]\(13) => int_b_n_54,
      \rdata_reg[31]\(12) => int_b_n_55,
      \rdata_reg[31]\(11) => int_b_n_56,
      \rdata_reg[31]\(10) => int_b_n_57,
      \rdata_reg[31]\(9) => int_b_n_58,
      \rdata_reg[31]\(8) => int_b_n_59,
      \rdata_reg[31]\(7) => int_b_n_60,
      \rdata_reg[31]\(6) => int_b_n_61,
      \rdata_reg[31]\(5) => int_b_n_63,
      \rdata_reg[31]\(4) => int_b_n_65,
      \rdata_reg[31]\(3) => int_b_n_66,
      \rdata_reg[31]\(2) => int_b_n_67,
      \rdata_reg[31]\(1) => int_b_n_70,
      \rdata_reg[31]\(0) => int_b_n_71,
      \rdata_reg[31]_0\(27 downto 6) => q1(31 downto 10),
      \rdata_reg[31]_0\(5) => q1(8),
      \rdata_reg[31]_0\(4 downto 2) => q1(6 downto 4),
      \rdata_reg[31]_0\(1 downto 0) => q1(1 downto 0),
      s_axi_AXI_LITE_ARADDR(3 downto 0) => s_axi_AXI_LITE_ARADDR(5 downto 2),
      s_axi_AXI_LITE_ARVALID => s_axi_AXI_LITE_ARVALID
    );
int_result_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(7),
      I1 => s_axi_AXI_LITE_ARADDR(6),
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_result_read0
    );
int_result_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_result_read0,
      Q => int_result_read,
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => task_ap_done,
      I1 => \rdata[9]_i_2_n_0\,
      I2 => s_axi_AXI_LITE_ARADDR(2),
      I3 => s_axi_AXI_LITE_ARADDR(3),
      I4 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F001000"
    )
        port map (
      I0 => ap_start,
      I1 => p_0_in_0(2),
      I2 => auto_restart_status_reg_n_0,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      O => task_ap_done
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => s_axi_AXI_LITE_ARADDR(3),
      I3 => ap_start,
      I4 => s_axi_AXI_LITE_ARADDR(2),
      I5 => int_gie_reg_n_0,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => \int_ier_reg_n_0_[1]\,
      I2 => s_axi_AXI_LITE_ARADDR(2),
      I3 => s_axi_AXI_LITE_ARADDR(3),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => int_result_read,
      I1 => int_a_read,
      I2 => int_b_read,
      I3 => s_axi_AXI_LITE_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[31]_i_2_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(4),
      I1 => s_axi_AXI_LITE_ARADDR(5),
      I2 => s_axi_AXI_LITE_ARADDR(0),
      I3 => s_axi_AXI_LITE_ARADDR(1),
      I4 => \rdata[9]_i_4_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_axi_AXI_LITE_ARADDR(7),
      I1 => s_axi_AXI_LITE_ARADDR(6),
      I2 => s_axi_AXI_LITE_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[9]_i_4_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_2,
      Q => s_axi_AXI_LITE_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_7,
      Q => s_axi_AXI_LITE_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_8,
      Q => s_axi_AXI_LITE_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_9,
      Q => s_axi_AXI_LITE_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_10,
      Q => s_axi_AXI_LITE_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_11,
      Q => s_axi_AXI_LITE_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_12,
      Q => s_axi_AXI_LITE_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_13,
      Q => s_axi_AXI_LITE_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_14,
      Q => s_axi_AXI_LITE_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_15,
      Q => s_axi_AXI_LITE_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_16,
      Q => s_axi_AXI_LITE_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_1,
      Q => s_axi_AXI_LITE_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_17,
      Q => s_axi_AXI_LITE_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_18,
      Q => s_axi_AXI_LITE_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_19,
      Q => s_axi_AXI_LITE_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_20,
      Q => s_axi_AXI_LITE_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_21,
      Q => s_axi_AXI_LITE_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_22,
      Q => s_axi_AXI_LITE_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_23,
      Q => s_axi_AXI_LITE_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_24,
      Q => s_axi_AXI_LITE_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_25,
      Q => s_axi_AXI_LITE_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_26,
      Q => s_axi_AXI_LITE_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_a_n_3,
      Q => s_axi_AXI_LITE_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_27,
      Q => s_axi_AXI_LITE_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_28,
      Q => s_axi_AXI_LITE_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_a_n_2,
      Q => s_axi_AXI_LITE_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_3,
      Q => s_axi_AXI_LITE_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_4,
      Q => s_axi_AXI_LITE_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_5,
      Q => s_axi_AXI_LITE_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_a_n_1,
      Q => s_axi_AXI_LITE_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_result_n_6,
      Q => s_axi_AXI_LITE_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_a_n_0,
      Q => s_axi_AXI_LITE_RDATA(9),
      R => '0'
    );
s_axi_AXI_LITE_RVALID_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I1 => int_result_read,
      I2 => int_a_read,
      I3 => int_b_read,
      O => s_axi_AXI_LITE_RVALID
    );
s_axi_AXI_LITE_WREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_ARVALID,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      O => s_axi_AXI_LITE_WREADY
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_AXI_LITE_AWVALID,
      O => aw_hs
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(2),
      Q => \p_0_in__0\(0),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(3),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(4),
      Q => \p_0_in__0\(2),
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(5),
      Q => \p_0_in__0\(3),
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(6),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_AXI_LITE_AWADDR(7),
      Q => \waddr_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_AXI_LITE_AWVALID : in STD_LOGIC;
    s_axi_AXI_LITE_AWREADY : out STD_LOGIC;
    s_axi_AXI_LITE_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_WREADY : out STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARREADY : out STD_LOGIC;
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_RVALID : out STD_LOGIC;
    s_axi_AXI_LITE_RREADY : in STD_LOGIC;
    s_axi_AXI_LITE_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_LITE_BVALID : out STD_LOGIC;
    s_axi_AXI_LITE_BREADY : in STD_LOGIC;
    s_axi_AXI_LITE_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is 8;
  attribute C_S_AXI_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is 32;
  attribute C_S_AXI_AXI_LITE_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0000100000";
  attribute ap_ST_fsm_pp0_stage6 : string;
  attribute ap_ST_fsm_pp0_stage6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0001000000";
  attribute ap_ST_fsm_pp0_stage7 : string;
  attribute ap_ST_fsm_pp0_stage7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0010000000";
  attribute ap_ST_fsm_pp0_stage8 : string;
  attribute ap_ST_fsm_pp0_stage8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b0100000000";
  attribute ap_ST_fsm_pp0_stage9 : string;
  attribute ap_ST_fsm_pp0_stage9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "10'b1000000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_s_axi_U_n_37 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage5 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage6 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage7 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage8 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage9 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
begin
  s_axi_AXI_LITE_BRESP(1) <= \<const0>\;
  s_axi_AXI_LITE_BRESP(0) <= \<const0>\;
  s_axi_AXI_LITE_RRESP(1) <= \<const0>\;
  s_axi_AXI_LITE_RRESP(0) <= \<const0>\;
AXI_LITE_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add_AXI_LITE_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_AXI_LITE_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_AXI_LITE_AWREADY,
      Q(9) => ap_CS_fsm_pp0_stage9,
      Q(8) => ap_CS_fsm_pp0_stage8,
      Q(7) => ap_CS_fsm_pp0_stage7,
      Q(6) => ap_CS_fsm_pp0_stage6,
      Q(5) => ap_CS_fsm_pp0_stage5,
      Q(4) => ap_CS_fsm_pp0_stage4,
      Q(3) => ap_CS_fsm_pp0_stage3,
      Q(2) => ap_CS_fsm_pp0_stage2,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => AXI_LITE_s_axi_U_n_37,
      ap_rst_n_inv => ap_rst_n_inv,
      interrupt => interrupt,
      s_axi_AXI_LITE_ARADDR(7 downto 0) => s_axi_AXI_LITE_ARADDR(7 downto 0),
      s_axi_AXI_LITE_ARVALID => s_axi_AXI_LITE_ARVALID,
      s_axi_AXI_LITE_AWADDR(7 downto 0) => s_axi_AXI_LITE_AWADDR(7 downto 0),
      s_axi_AXI_LITE_AWVALID => s_axi_AXI_LITE_AWVALID,
      s_axi_AXI_LITE_BREADY => s_axi_AXI_LITE_BREADY,
      s_axi_AXI_LITE_BVALID => s_axi_AXI_LITE_BVALID,
      s_axi_AXI_LITE_RDATA(31 downto 0) => s_axi_AXI_LITE_RDATA(31 downto 0),
      s_axi_AXI_LITE_RREADY => s_axi_AXI_LITE_RREADY,
      s_axi_AXI_LITE_RVALID => s_axi_AXI_LITE_RVALID,
      s_axi_AXI_LITE_WDATA(31 downto 0) => s_axi_AXI_LITE_WDATA(31 downto 0),
      s_axi_AXI_LITE_WREADY => s_axi_AXI_LITE_WREADY,
      s_axi_AXI_LITE_WSTRB(3 downto 0) => s_axi_AXI_LITE_WSTRB(3 downto 0),
      s_axi_AXI_LITE_WVALID => s_axi_AXI_LITE_WVALID
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
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
      S => ap_rst_n_inv
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
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage3,
      Q => ap_CS_fsm_pp0_stage4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage4,
      Q => ap_CS_fsm_pp0_stage5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage5,
      Q => ap_CS_fsm_pp0_stage6,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage6,
      Q => ap_CS_fsm_pp0_stage7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage7,
      Q => ap_CS_fsm_pp0_stage8,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_pp0_stage8,
      Q => ap_CS_fsm_pp0_stage9,
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AXI_LITE_s_axi_U_n_37,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_AXI_LITE_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_AWVALID : in STD_LOGIC;
    s_axi_AXI_LITE_AWREADY : out STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_WREADY : out STD_LOGIC;
    s_axi_AXI_LITE_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_LITE_BVALID : out STD_LOGIC;
    s_axi_AXI_LITE_BREADY : in STD_LOGIC;
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARREADY : out STD_LOGIC;
    s_axi_AXI_LITE_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_LITE_RVALID : out STD_LOGIC;
    s_axi_AXI_LITE_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
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
  signal NLW_inst_s_axi_AXI_LITE_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_AXI_LITE_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_ADDR_WIDTH of inst : label is 8;
  attribute C_S_AXI_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_AXI_LITE_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXI_LITE_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "10'b0000000001";
  attribute ap_ST_fsm_pp0_stage1 : string;
  attribute ap_ST_fsm_pp0_stage1 of inst : label is "10'b0000000010";
  attribute ap_ST_fsm_pp0_stage2 : string;
  attribute ap_ST_fsm_pp0_stage2 of inst : label is "10'b0000000100";
  attribute ap_ST_fsm_pp0_stage3 : string;
  attribute ap_ST_fsm_pp0_stage3 of inst : label is "10'b0000001000";
  attribute ap_ST_fsm_pp0_stage4 : string;
  attribute ap_ST_fsm_pp0_stage4 of inst : label is "10'b0000010000";
  attribute ap_ST_fsm_pp0_stage5 : string;
  attribute ap_ST_fsm_pp0_stage5 of inst : label is "10'b0000100000";
  attribute ap_ST_fsm_pp0_stage6 : string;
  attribute ap_ST_fsm_pp0_stage6 of inst : label is "10'b0001000000";
  attribute ap_ST_fsm_pp0_stage7 : string;
  attribute ap_ST_fsm_pp0_stage7 of inst : label is "10'b0010000000";
  attribute ap_ST_fsm_pp0_stage8 : string;
  attribute ap_ST_fsm_pp0_stage8 of inst : label is "10'b0100000000";
  attribute ap_ST_fsm_pp0_stage9 : string;
  attribute ap_ST_fsm_pp0_stage9 of inst : label is "10'b1000000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXI_LITE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARREADY";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARVALID";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWREADY";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWVALID";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BREADY";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BVALID";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_AXI_LITE_RREADY : signal is "XIL_INTERFACENAME s_axi_AXI_LITE, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RVALID";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WREADY";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WVALID";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARADDR";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWADDR";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BRESP";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RDATA";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RRESP";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WDATA";
  attribute X_INTERFACE_INFO of s_axi_AXI_LITE_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WSTRB";
begin
  s_axi_AXI_LITE_BRESP(1) <= \<const0>\;
  s_axi_AXI_LITE_BRESP(0) <= \<const0>\;
  s_axi_AXI_LITE_RRESP(1) <= \<const0>\;
  s_axi_AXI_LITE_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_AXI_LITE_ARADDR(7 downto 0) => s_axi_AXI_LITE_ARADDR(7 downto 0),
      s_axi_AXI_LITE_ARREADY => s_axi_AXI_LITE_ARREADY,
      s_axi_AXI_LITE_ARVALID => s_axi_AXI_LITE_ARVALID,
      s_axi_AXI_LITE_AWADDR(7 downto 0) => s_axi_AXI_LITE_AWADDR(7 downto 0),
      s_axi_AXI_LITE_AWREADY => s_axi_AXI_LITE_AWREADY,
      s_axi_AXI_LITE_AWVALID => s_axi_AXI_LITE_AWVALID,
      s_axi_AXI_LITE_BREADY => s_axi_AXI_LITE_BREADY,
      s_axi_AXI_LITE_BRESP(1 downto 0) => NLW_inst_s_axi_AXI_LITE_BRESP_UNCONNECTED(1 downto 0),
      s_axi_AXI_LITE_BVALID => s_axi_AXI_LITE_BVALID,
      s_axi_AXI_LITE_RDATA(31 downto 0) => s_axi_AXI_LITE_RDATA(31 downto 0),
      s_axi_AXI_LITE_RREADY => s_axi_AXI_LITE_RREADY,
      s_axi_AXI_LITE_RRESP(1 downto 0) => NLW_inst_s_axi_AXI_LITE_RRESP_UNCONNECTED(1 downto 0),
      s_axi_AXI_LITE_RVALID => s_axi_AXI_LITE_RVALID,
      s_axi_AXI_LITE_WDATA(31 downto 0) => s_axi_AXI_LITE_WDATA(31 downto 0),
      s_axi_AXI_LITE_WREADY => s_axi_AXI_LITE_WREADY,
      s_axi_AXI_LITE_WSTRB(3 downto 0) => s_axi_AXI_LITE_WSTRB(3 downto 0),
      s_axi_AXI_LITE_WVALID => s_axi_AXI_LITE_WVALID
    );
end STRUCTURE;
