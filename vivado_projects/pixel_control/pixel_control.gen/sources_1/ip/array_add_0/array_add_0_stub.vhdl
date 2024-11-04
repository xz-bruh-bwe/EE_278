-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Oct 31 21:55:45 2024
-- Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.gen/sources_1/ip/array_add_0/array_add_0_stub.vhdl
-- Design      : array_add_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg225-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array_add_0 is
  Port ( 
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

end array_add_0;

architecture stub of array_add_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a_ce0,a_ce1,b_ce0,b_ce1,result_ce0,result_we0,result_ce1,result_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0[3:0],a_q0[31:0],a_address1[3:0],a_q1[31:0],b_address0[3:0],b_q0[31:0],b_address1[3:0],b_q1[31:0],result_address0[3:0],result_d0[31:0],result_address1[3:0],result_d1[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "array_add,Vivado 2023.1";
begin
end;
