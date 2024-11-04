// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct 31 21:55:44 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ array_add_0_stub.v
// Design      : array_add_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "array_add,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a_ce0, a_ce1, b_ce0, b_ce1, result_ce0, result_we0, 
  result_ce1, result_we1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, a_address0, a_q0, 
  a_address1, a_q1, b_address0, b_q0, b_address1, b_q1, result_address0, result_d0, 
  result_address1, result_d1)
/* synthesis syn_black_box black_box_pad_pin="a_ce0,a_ce1,b_ce0,b_ce1,result_ce0,result_we0,result_ce1,result_we1,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0[3:0],a_q0[31:0],a_address1[3:0],a_q1[31:0],b_address0[3:0],b_q0[31:0],b_address1[3:0],b_q1[31:0],result_address0[3:0],result_d0[31:0],result_address1[3:0],result_d1[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output a_ce0;
  output a_ce1;
  output b_ce0;
  output b_ce1;
  output result_ce0;
  output result_we0;
  output result_ce1;
  output result_we1;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [3:0]a_address0;
  input [31:0]a_q0;
  output [3:0]a_address1;
  input [31:0]a_q1;
  output [3:0]b_address0;
  input [31:0]b_q0;
  output [3:0]b_address1;
  input [31:0]b_q1;
  output [3:0]result_address0;
  output [31:0]result_d0;
  output [3:0]result_address1;
  output [31:0]result_d1;
endmodule
