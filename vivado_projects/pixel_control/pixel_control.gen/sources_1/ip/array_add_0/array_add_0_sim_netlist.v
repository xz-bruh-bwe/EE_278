// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct 31 21:55:45 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.gen/sources_1/ip/array_add_0/array_add_0_sim_netlist.v
// Design      : array_add_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "array_add_0,array_add,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "array_add,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module array_add_0
   (a_ce0,
    a_ce1,
    b_ce0,
    b_ce1,
    result_ce0,
    result_we0,
    result_ce1,
    result_we1,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_q0,
    a_address1,
    a_q1,
    b_address0,
    b_q0,
    b_address1,
    b_q1,
    result_address0,
    result_d0,
    result_address1,
    result_d1);
  output a_ce0;
  output a_ce1;
  output b_ce0;
  output b_ce1;
  output result_ce0;
  output result_we0;
  output result_ce1;
  output result_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [3:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [31:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address1, LAYERED_METADATA undef" *) output [3:0]a_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q1, LAYERED_METADATA undef" *) input [31:0]a_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [3:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [31:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address1, LAYERED_METADATA undef" *) output [3:0]b_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q1, LAYERED_METADATA undef" *) input [31:0]b_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result_address0, LAYERED_METADATA undef" *) output [3:0]result_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result_d0, LAYERED_METADATA undef" *) output [31:0]result_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result_address1, LAYERED_METADATA undef" *) output [3:0]result_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result_d1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result_d1, LAYERED_METADATA undef" *) output [31:0]result_d1;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:1]\^a_address0 ;
  wire [3:1]\^a_address1 ;
  wire a_ce0;
  wire a_ce1;
  wire [31:0]a_q0;
  wire [31:0]a_q1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [3:1]\^b_address0 ;
  wire [3:1]\^b_address1 ;
  wire b_ce0;
  wire b_ce1;
  wire [31:0]b_q0;
  wire [31:0]b_q1;
  wire [3:1]\^result_address0 ;
  wire [3:1]\^result_address1 ;
  wire result_ce0;
  wire result_ce1;
  wire [31:0]result_d0;
  wire [31:0]result_d1;
  wire result_we0;
  wire result_we1;
  wire [0:0]NLW_inst_a_address0_UNCONNECTED;
  wire [0:0]NLW_inst_a_address1_UNCONNECTED;
  wire [0:0]NLW_inst_b_address0_UNCONNECTED;
  wire [0:0]NLW_inst_b_address1_UNCONNECTED;
  wire [0:0]NLW_inst_result_address0_UNCONNECTED;
  wire [0:0]NLW_inst_result_address1_UNCONNECTED;

  assign a_address0[3:1] = \^a_address0 [3:1];
  assign a_address0[0] = \<const1> ;
  assign a_address1[3:1] = \^a_address1 [3:1];
  assign a_address1[0] = \<const0> ;
  assign b_address0[3:1] = \^b_address0 [3:1];
  assign b_address0[0] = \<const1> ;
  assign b_address1[3:1] = \^b_address1 [3:1];
  assign b_address1[0] = \<const0> ;
  assign result_address0[3:1] = \^result_address0 [3:1];
  assign result_address0[0] = \<const1> ;
  assign result_address1[3:1] = \^result_address1 [3:1];
  assign result_address1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "5'b00001" *) 
  (* ap_ST_fsm_pp0_stage1 = "5'b00010" *) 
  (* ap_ST_fsm_pp0_stage2 = "5'b00100" *) 
  (* ap_ST_fsm_pp0_stage3 = "5'b01000" *) 
  (* ap_ST_fsm_pp0_stage4 = "5'b10000" *) 
  array_add_0_array_add inst
       (.a_address0({\^a_address0 ,NLW_inst_a_address0_UNCONNECTED[0]}),
        .a_address1({\^a_address1 ,NLW_inst_a_address1_UNCONNECTED[0]}),
        .a_ce0(a_ce0),
        .a_ce1(a_ce1),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address0({\^b_address0 ,NLW_inst_b_address0_UNCONNECTED[0]}),
        .b_address1({\^b_address1 ,NLW_inst_b_address1_UNCONNECTED[0]}),
        .b_ce0(b_ce0),
        .b_ce1(b_ce1),
        .b_q0(b_q0),
        .b_q1(b_q1),
        .result_address0({\^result_address0 ,NLW_inst_result_address0_UNCONNECTED[0]}),
        .result_address1({\^result_address1 ,NLW_inst_result_address1_UNCONNECTED[0]}),
        .result_ce0(result_ce0),
        .result_ce1(result_ce1),
        .result_d0(result_d0),
        .result_d1(result_d1),
        .result_we0(result_we0),
        .result_we1(result_we1));
endmodule

(* ORIG_REF_NAME = "array_add" *) (* ap_ST_fsm_pp0_stage0 = "5'b00001" *) (* ap_ST_fsm_pp0_stage1 = "5'b00010" *) 
(* ap_ST_fsm_pp0_stage2 = "5'b00100" *) (* ap_ST_fsm_pp0_stage3 = "5'b01000" *) (* ap_ST_fsm_pp0_stage4 = "5'b10000" *) 
(* hls_module = "yes" *) 
module array_add_0_array_add
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_ce0,
    a_q0,
    a_address1,
    a_ce1,
    a_q1,
    b_address0,
    b_ce0,
    b_q0,
    b_address1,
    b_ce1,
    b_q1,
    result_address0,
    result_ce0,
    result_we0,
    result_d0,
    result_address1,
    result_ce1,
    result_we1,
    result_d1);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [3:0]a_address0;
  output a_ce0;
  input [31:0]a_q0;
  output [3:0]a_address1;
  output a_ce1;
  input [31:0]a_q1;
  output [3:0]b_address0;
  output b_ce0;
  input [31:0]b_q0;
  output [3:0]b_address1;
  output b_ce1;
  input [31:0]b_q1;
  output [3:0]result_address0;
  output result_ce0;
  output result_we0;
  output [31:0]result_d0;
  output [3:0]result_address1;
  output result_ce1;
  output result_we1;
  output [31:0]result_d1;

  wire \<const0> ;
  wire [3:1]\^a_address0 ;
  wire a_ce0;
  wire [31:0]a_q0;
  wire [31:0]a_q1;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire b_ce1_INST_0_i_1_n_0;
  wire [31:0]b_q0;
  wire [31:0]b_q1;
  wire [3:1]\^result_address0 ;
  wire \result_address1[1]_INST_0_i_1_n_0 ;
  wire result_ce0;
  wire [31:0]result_d0;
  wire \result_d0[0]_INST_0_i_1_n_0 ;
  wire \result_d0[0]_INST_0_i_2_n_0 ;
  wire \result_d0[0]_INST_0_i_3_n_0 ;
  wire \result_d0[0]_INST_0_i_4_n_0 ;
  wire \result_d0[0]_INST_0_n_0 ;
  wire \result_d0[0]_INST_0_n_1 ;
  wire \result_d0[0]_INST_0_n_2 ;
  wire \result_d0[0]_INST_0_n_3 ;
  wire \result_d0[12]_INST_0_i_1_n_0 ;
  wire \result_d0[12]_INST_0_i_2_n_0 ;
  wire \result_d0[12]_INST_0_i_3_n_0 ;
  wire \result_d0[12]_INST_0_i_4_n_0 ;
  wire \result_d0[12]_INST_0_n_0 ;
  wire \result_d0[12]_INST_0_n_1 ;
  wire \result_d0[12]_INST_0_n_2 ;
  wire \result_d0[12]_INST_0_n_3 ;
  wire \result_d0[16]_INST_0_i_1_n_0 ;
  wire \result_d0[16]_INST_0_i_2_n_0 ;
  wire \result_d0[16]_INST_0_i_3_n_0 ;
  wire \result_d0[16]_INST_0_i_4_n_0 ;
  wire \result_d0[16]_INST_0_n_0 ;
  wire \result_d0[16]_INST_0_n_1 ;
  wire \result_d0[16]_INST_0_n_2 ;
  wire \result_d0[16]_INST_0_n_3 ;
  wire \result_d0[20]_INST_0_i_1_n_0 ;
  wire \result_d0[20]_INST_0_i_2_n_0 ;
  wire \result_d0[20]_INST_0_i_3_n_0 ;
  wire \result_d0[20]_INST_0_i_4_n_0 ;
  wire \result_d0[20]_INST_0_n_0 ;
  wire \result_d0[20]_INST_0_n_1 ;
  wire \result_d0[20]_INST_0_n_2 ;
  wire \result_d0[20]_INST_0_n_3 ;
  wire \result_d0[24]_INST_0_i_1_n_0 ;
  wire \result_d0[24]_INST_0_i_2_n_0 ;
  wire \result_d0[24]_INST_0_i_3_n_0 ;
  wire \result_d0[24]_INST_0_i_4_n_0 ;
  wire \result_d0[24]_INST_0_n_0 ;
  wire \result_d0[24]_INST_0_n_1 ;
  wire \result_d0[24]_INST_0_n_2 ;
  wire \result_d0[24]_INST_0_n_3 ;
  wire \result_d0[28]_INST_0_i_1_n_0 ;
  wire \result_d0[28]_INST_0_i_2_n_0 ;
  wire \result_d0[28]_INST_0_i_3_n_0 ;
  wire \result_d0[28]_INST_0_i_4_n_0 ;
  wire \result_d0[28]_INST_0_n_1 ;
  wire \result_d0[28]_INST_0_n_2 ;
  wire \result_d0[28]_INST_0_n_3 ;
  wire \result_d0[4]_INST_0_i_1_n_0 ;
  wire \result_d0[4]_INST_0_i_2_n_0 ;
  wire \result_d0[4]_INST_0_i_3_n_0 ;
  wire \result_d0[4]_INST_0_i_4_n_0 ;
  wire \result_d0[4]_INST_0_n_0 ;
  wire \result_d0[4]_INST_0_n_1 ;
  wire \result_d0[4]_INST_0_n_2 ;
  wire \result_d0[4]_INST_0_n_3 ;
  wire \result_d0[8]_INST_0_i_1_n_0 ;
  wire \result_d0[8]_INST_0_i_2_n_0 ;
  wire \result_d0[8]_INST_0_i_3_n_0 ;
  wire \result_d0[8]_INST_0_i_4_n_0 ;
  wire \result_d0[8]_INST_0_n_0 ;
  wire \result_d0[8]_INST_0_n_1 ;
  wire \result_d0[8]_INST_0_n_2 ;
  wire \result_d0[8]_INST_0_n_3 ;
  wire [31:0]result_d1;
  wire \result_d1[0]_INST_0_i_1_n_0 ;
  wire \result_d1[0]_INST_0_i_2_n_0 ;
  wire \result_d1[0]_INST_0_i_3_n_0 ;
  wire \result_d1[0]_INST_0_i_4_n_0 ;
  wire \result_d1[0]_INST_0_n_0 ;
  wire \result_d1[0]_INST_0_n_1 ;
  wire \result_d1[0]_INST_0_n_2 ;
  wire \result_d1[0]_INST_0_n_3 ;
  wire \result_d1[12]_INST_0_i_1_n_0 ;
  wire \result_d1[12]_INST_0_i_2_n_0 ;
  wire \result_d1[12]_INST_0_i_3_n_0 ;
  wire \result_d1[12]_INST_0_i_4_n_0 ;
  wire \result_d1[12]_INST_0_n_0 ;
  wire \result_d1[12]_INST_0_n_1 ;
  wire \result_d1[12]_INST_0_n_2 ;
  wire \result_d1[12]_INST_0_n_3 ;
  wire \result_d1[16]_INST_0_i_1_n_0 ;
  wire \result_d1[16]_INST_0_i_2_n_0 ;
  wire \result_d1[16]_INST_0_i_3_n_0 ;
  wire \result_d1[16]_INST_0_i_4_n_0 ;
  wire \result_d1[16]_INST_0_n_0 ;
  wire \result_d1[16]_INST_0_n_1 ;
  wire \result_d1[16]_INST_0_n_2 ;
  wire \result_d1[16]_INST_0_n_3 ;
  wire \result_d1[20]_INST_0_i_1_n_0 ;
  wire \result_d1[20]_INST_0_i_2_n_0 ;
  wire \result_d1[20]_INST_0_i_3_n_0 ;
  wire \result_d1[20]_INST_0_i_4_n_0 ;
  wire \result_d1[20]_INST_0_n_0 ;
  wire \result_d1[20]_INST_0_n_1 ;
  wire \result_d1[20]_INST_0_n_2 ;
  wire \result_d1[20]_INST_0_n_3 ;
  wire \result_d1[24]_INST_0_i_1_n_0 ;
  wire \result_d1[24]_INST_0_i_2_n_0 ;
  wire \result_d1[24]_INST_0_i_3_n_0 ;
  wire \result_d1[24]_INST_0_i_4_n_0 ;
  wire \result_d1[24]_INST_0_n_0 ;
  wire \result_d1[24]_INST_0_n_1 ;
  wire \result_d1[24]_INST_0_n_2 ;
  wire \result_d1[24]_INST_0_n_3 ;
  wire \result_d1[28]_INST_0_i_1_n_0 ;
  wire \result_d1[28]_INST_0_i_2_n_0 ;
  wire \result_d1[28]_INST_0_i_3_n_0 ;
  wire \result_d1[28]_INST_0_i_4_n_0 ;
  wire \result_d1[28]_INST_0_n_1 ;
  wire \result_d1[28]_INST_0_n_2 ;
  wire \result_d1[28]_INST_0_n_3 ;
  wire \result_d1[4]_INST_0_i_1_n_0 ;
  wire \result_d1[4]_INST_0_i_2_n_0 ;
  wire \result_d1[4]_INST_0_i_3_n_0 ;
  wire \result_d1[4]_INST_0_i_4_n_0 ;
  wire \result_d1[4]_INST_0_n_0 ;
  wire \result_d1[4]_INST_0_n_1 ;
  wire \result_d1[4]_INST_0_n_2 ;
  wire \result_d1[4]_INST_0_n_3 ;
  wire \result_d1[8]_INST_0_i_1_n_0 ;
  wire \result_d1[8]_INST_0_i_2_n_0 ;
  wire \result_d1[8]_INST_0_i_3_n_0 ;
  wire \result_d1[8]_INST_0_i_4_n_0 ;
  wire \result_d1[8]_INST_0_n_0 ;
  wire \result_d1[8]_INST_0_n_1 ;
  wire \result_d1[8]_INST_0_n_2 ;
  wire \result_d1[8]_INST_0_n_3 ;
  wire [3:3]\NLW_result_d0[28]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_d1[28]_INST_0_CO_UNCONNECTED ;

  assign a_address0[3:1] = \^a_address0 [3:1];
  assign a_address0[0] = \<const0> ;
  assign a_address1[3:1] = \^a_address0 [3:1];
  assign a_address1[0] = \<const0> ;
  assign a_ce1 = a_ce0;
  assign ap_done = \^result_address0 [3];
  assign b_address0[3:1] = \^a_address0 [3:1];
  assign b_address0[0] = \<const0> ;
  assign b_address1[3:1] = \^a_address0 [3:1];
  assign b_address1[0] = \<const0> ;
  assign b_ce0 = a_ce0;
  assign b_ce1 = a_ce0;
  assign result_address0[3:1] = \^result_address0 [3:1];
  assign result_address0[0] = \<const0> ;
  assign result_address1[3:1] = \^result_address0 [3:1];
  assign result_address1[0] = \<const0> ;
  assign result_ce1 = result_ce0;
  assign result_we0 = result_ce0;
  assign result_we1 = result_ce0;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\^a_address0 [3]),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h23222222)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(b_ce1_INST_0_i_1_n_0),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(ap_enable_reg_pp0_iter1),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage2),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage3),
        .Q(\^a_address0 [3]),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h0000505544005000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\^a_address0 [3]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    ap_ready_INST_0
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\^a_address0 [3]),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \b_address1[1]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(\^a_address0 [3]),
        .O(\^a_address0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \b_address1[2]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(\^a_address0 [3]),
        .O(\^a_address0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    b_ce1_INST_0
       (.I0(ap_start),
        .I1(b_ce1_INST_0_i_1_n_0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(a_ce0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    b_ce1_INST_0_i_1
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(\^a_address0 [3]),
        .I3(ap_CS_fsm_pp0_stage3),
        .O(b_ce1_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    \result_address1[1]_INST_0 
       (.I0(\^a_address0 [3]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(\result_address1[1]_INST_0_i_1_n_0 ),
        .O(\^result_address0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \result_address1[1]_INST_0_i_1 
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .O(\result_address1[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E0EEE000E000E0)) 
    \result_address1[2]_INST_0 
       (.I0(\^a_address0 [3]),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_start),
        .O(\^result_address0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_address1[3]_INST_0 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\^result_address0 [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[0]_INST_0 
       (.CI(1'b0),
        .CO({\result_d0[0]_INST_0_n_0 ,\result_d0[0]_INST_0_n_1 ,\result_d0[0]_INST_0_n_2 ,\result_d0[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[3:0]),
        .O(result_d0[3:0]),
        .S({\result_d0[0]_INST_0_i_1_n_0 ,\result_d0[0]_INST_0_i_2_n_0 ,\result_d0[0]_INST_0_i_3_n_0 ,\result_d0[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[0]_INST_0_i_1 
       (.I0(b_q0[3]),
        .I1(a_q0[3]),
        .O(\result_d0[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[0]_INST_0_i_2 
       (.I0(b_q0[2]),
        .I1(a_q0[2]),
        .O(\result_d0[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[0]_INST_0_i_3 
       (.I0(b_q0[1]),
        .I1(a_q0[1]),
        .O(\result_d0[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[0]_INST_0_i_4 
       (.I0(b_q0[0]),
        .I1(a_q0[0]),
        .O(\result_d0[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[12]_INST_0 
       (.CI(\result_d0[8]_INST_0_n_0 ),
        .CO({\result_d0[12]_INST_0_n_0 ,\result_d0[12]_INST_0_n_1 ,\result_d0[12]_INST_0_n_2 ,\result_d0[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[15:12]),
        .O(result_d0[15:12]),
        .S({\result_d0[12]_INST_0_i_1_n_0 ,\result_d0[12]_INST_0_i_2_n_0 ,\result_d0[12]_INST_0_i_3_n_0 ,\result_d0[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[12]_INST_0_i_1 
       (.I0(b_q0[15]),
        .I1(a_q0[15]),
        .O(\result_d0[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[12]_INST_0_i_2 
       (.I0(b_q0[14]),
        .I1(a_q0[14]),
        .O(\result_d0[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[12]_INST_0_i_3 
       (.I0(b_q0[13]),
        .I1(a_q0[13]),
        .O(\result_d0[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[12]_INST_0_i_4 
       (.I0(b_q0[12]),
        .I1(a_q0[12]),
        .O(\result_d0[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[16]_INST_0 
       (.CI(\result_d0[12]_INST_0_n_0 ),
        .CO({\result_d0[16]_INST_0_n_0 ,\result_d0[16]_INST_0_n_1 ,\result_d0[16]_INST_0_n_2 ,\result_d0[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[19:16]),
        .O(result_d0[19:16]),
        .S({\result_d0[16]_INST_0_i_1_n_0 ,\result_d0[16]_INST_0_i_2_n_0 ,\result_d0[16]_INST_0_i_3_n_0 ,\result_d0[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[16]_INST_0_i_1 
       (.I0(b_q0[19]),
        .I1(a_q0[19]),
        .O(\result_d0[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[16]_INST_0_i_2 
       (.I0(b_q0[18]),
        .I1(a_q0[18]),
        .O(\result_d0[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[16]_INST_0_i_3 
       (.I0(b_q0[17]),
        .I1(a_q0[17]),
        .O(\result_d0[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[16]_INST_0_i_4 
       (.I0(b_q0[16]),
        .I1(a_q0[16]),
        .O(\result_d0[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[20]_INST_0 
       (.CI(\result_d0[16]_INST_0_n_0 ),
        .CO({\result_d0[20]_INST_0_n_0 ,\result_d0[20]_INST_0_n_1 ,\result_d0[20]_INST_0_n_2 ,\result_d0[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[23:20]),
        .O(result_d0[23:20]),
        .S({\result_d0[20]_INST_0_i_1_n_0 ,\result_d0[20]_INST_0_i_2_n_0 ,\result_d0[20]_INST_0_i_3_n_0 ,\result_d0[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[20]_INST_0_i_1 
       (.I0(b_q0[23]),
        .I1(a_q0[23]),
        .O(\result_d0[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[20]_INST_0_i_2 
       (.I0(b_q0[22]),
        .I1(a_q0[22]),
        .O(\result_d0[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[20]_INST_0_i_3 
       (.I0(b_q0[21]),
        .I1(a_q0[21]),
        .O(\result_d0[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[20]_INST_0_i_4 
       (.I0(b_q0[20]),
        .I1(a_q0[20]),
        .O(\result_d0[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[24]_INST_0 
       (.CI(\result_d0[20]_INST_0_n_0 ),
        .CO({\result_d0[24]_INST_0_n_0 ,\result_d0[24]_INST_0_n_1 ,\result_d0[24]_INST_0_n_2 ,\result_d0[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[27:24]),
        .O(result_d0[27:24]),
        .S({\result_d0[24]_INST_0_i_1_n_0 ,\result_d0[24]_INST_0_i_2_n_0 ,\result_d0[24]_INST_0_i_3_n_0 ,\result_d0[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[24]_INST_0_i_1 
       (.I0(b_q0[27]),
        .I1(a_q0[27]),
        .O(\result_d0[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[24]_INST_0_i_2 
       (.I0(b_q0[26]),
        .I1(a_q0[26]),
        .O(\result_d0[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[24]_INST_0_i_3 
       (.I0(b_q0[25]),
        .I1(a_q0[25]),
        .O(\result_d0[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[24]_INST_0_i_4 
       (.I0(b_q0[24]),
        .I1(a_q0[24]),
        .O(\result_d0[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[28]_INST_0 
       (.CI(\result_d0[24]_INST_0_n_0 ),
        .CO({\NLW_result_d0[28]_INST_0_CO_UNCONNECTED [3],\result_d0[28]_INST_0_n_1 ,\result_d0[28]_INST_0_n_2 ,\result_d0[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b_q0[30:28]}),
        .O(result_d0[31:28]),
        .S({\result_d0[28]_INST_0_i_1_n_0 ,\result_d0[28]_INST_0_i_2_n_0 ,\result_d0[28]_INST_0_i_3_n_0 ,\result_d0[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[28]_INST_0_i_1 
       (.I0(b_q0[31]),
        .I1(a_q0[31]),
        .O(\result_d0[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[28]_INST_0_i_2 
       (.I0(b_q0[30]),
        .I1(a_q0[30]),
        .O(\result_d0[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[28]_INST_0_i_3 
       (.I0(b_q0[29]),
        .I1(a_q0[29]),
        .O(\result_d0[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[28]_INST_0_i_4 
       (.I0(b_q0[28]),
        .I1(a_q0[28]),
        .O(\result_d0[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[4]_INST_0 
       (.CI(\result_d0[0]_INST_0_n_0 ),
        .CO({\result_d0[4]_INST_0_n_0 ,\result_d0[4]_INST_0_n_1 ,\result_d0[4]_INST_0_n_2 ,\result_d0[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[7:4]),
        .O(result_d0[7:4]),
        .S({\result_d0[4]_INST_0_i_1_n_0 ,\result_d0[4]_INST_0_i_2_n_0 ,\result_d0[4]_INST_0_i_3_n_0 ,\result_d0[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[4]_INST_0_i_1 
       (.I0(b_q0[7]),
        .I1(a_q0[7]),
        .O(\result_d0[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[4]_INST_0_i_2 
       (.I0(b_q0[6]),
        .I1(a_q0[6]),
        .O(\result_d0[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[4]_INST_0_i_3 
       (.I0(b_q0[5]),
        .I1(a_q0[5]),
        .O(\result_d0[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[4]_INST_0_i_4 
       (.I0(b_q0[4]),
        .I1(a_q0[4]),
        .O(\result_d0[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d0[8]_INST_0 
       (.CI(\result_d0[4]_INST_0_n_0 ),
        .CO({\result_d0[8]_INST_0_n_0 ,\result_d0[8]_INST_0_n_1 ,\result_d0[8]_INST_0_n_2 ,\result_d0[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q0[11:8]),
        .O(result_d0[11:8]),
        .S({\result_d0[8]_INST_0_i_1_n_0 ,\result_d0[8]_INST_0_i_2_n_0 ,\result_d0[8]_INST_0_i_3_n_0 ,\result_d0[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[8]_INST_0_i_1 
       (.I0(b_q0[11]),
        .I1(a_q0[11]),
        .O(\result_d0[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[8]_INST_0_i_2 
       (.I0(b_q0[10]),
        .I1(a_q0[10]),
        .O(\result_d0[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[8]_INST_0_i_3 
       (.I0(b_q0[9]),
        .I1(a_q0[9]),
        .O(\result_d0[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d0[8]_INST_0_i_4 
       (.I0(b_q0[8]),
        .I1(a_q0[8]),
        .O(\result_d0[8]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[0]_INST_0 
       (.CI(1'b0),
        .CO({\result_d1[0]_INST_0_n_0 ,\result_d1[0]_INST_0_n_1 ,\result_d1[0]_INST_0_n_2 ,\result_d1[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[3:0]),
        .O(result_d1[3:0]),
        .S({\result_d1[0]_INST_0_i_1_n_0 ,\result_d1[0]_INST_0_i_2_n_0 ,\result_d1[0]_INST_0_i_3_n_0 ,\result_d1[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[0]_INST_0_i_1 
       (.I0(b_q1[3]),
        .I1(a_q1[3]),
        .O(\result_d1[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[0]_INST_0_i_2 
       (.I0(b_q1[2]),
        .I1(a_q1[2]),
        .O(\result_d1[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[0]_INST_0_i_3 
       (.I0(b_q1[1]),
        .I1(a_q1[1]),
        .O(\result_d1[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[0]_INST_0_i_4 
       (.I0(b_q1[0]),
        .I1(a_q1[0]),
        .O(\result_d1[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[12]_INST_0 
       (.CI(\result_d1[8]_INST_0_n_0 ),
        .CO({\result_d1[12]_INST_0_n_0 ,\result_d1[12]_INST_0_n_1 ,\result_d1[12]_INST_0_n_2 ,\result_d1[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[15:12]),
        .O(result_d1[15:12]),
        .S({\result_d1[12]_INST_0_i_1_n_0 ,\result_d1[12]_INST_0_i_2_n_0 ,\result_d1[12]_INST_0_i_3_n_0 ,\result_d1[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[12]_INST_0_i_1 
       (.I0(b_q1[15]),
        .I1(a_q1[15]),
        .O(\result_d1[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[12]_INST_0_i_2 
       (.I0(b_q1[14]),
        .I1(a_q1[14]),
        .O(\result_d1[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[12]_INST_0_i_3 
       (.I0(b_q1[13]),
        .I1(a_q1[13]),
        .O(\result_d1[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[12]_INST_0_i_4 
       (.I0(b_q1[12]),
        .I1(a_q1[12]),
        .O(\result_d1[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[16]_INST_0 
       (.CI(\result_d1[12]_INST_0_n_0 ),
        .CO({\result_d1[16]_INST_0_n_0 ,\result_d1[16]_INST_0_n_1 ,\result_d1[16]_INST_0_n_2 ,\result_d1[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[19:16]),
        .O(result_d1[19:16]),
        .S({\result_d1[16]_INST_0_i_1_n_0 ,\result_d1[16]_INST_0_i_2_n_0 ,\result_d1[16]_INST_0_i_3_n_0 ,\result_d1[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[16]_INST_0_i_1 
       (.I0(b_q1[19]),
        .I1(a_q1[19]),
        .O(\result_d1[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[16]_INST_0_i_2 
       (.I0(b_q1[18]),
        .I1(a_q1[18]),
        .O(\result_d1[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[16]_INST_0_i_3 
       (.I0(b_q1[17]),
        .I1(a_q1[17]),
        .O(\result_d1[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[16]_INST_0_i_4 
       (.I0(b_q1[16]),
        .I1(a_q1[16]),
        .O(\result_d1[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[20]_INST_0 
       (.CI(\result_d1[16]_INST_0_n_0 ),
        .CO({\result_d1[20]_INST_0_n_0 ,\result_d1[20]_INST_0_n_1 ,\result_d1[20]_INST_0_n_2 ,\result_d1[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[23:20]),
        .O(result_d1[23:20]),
        .S({\result_d1[20]_INST_0_i_1_n_0 ,\result_d1[20]_INST_0_i_2_n_0 ,\result_d1[20]_INST_0_i_3_n_0 ,\result_d1[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[20]_INST_0_i_1 
       (.I0(b_q1[23]),
        .I1(a_q1[23]),
        .O(\result_d1[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[20]_INST_0_i_2 
       (.I0(b_q1[22]),
        .I1(a_q1[22]),
        .O(\result_d1[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[20]_INST_0_i_3 
       (.I0(b_q1[21]),
        .I1(a_q1[21]),
        .O(\result_d1[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[20]_INST_0_i_4 
       (.I0(b_q1[20]),
        .I1(a_q1[20]),
        .O(\result_d1[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[24]_INST_0 
       (.CI(\result_d1[20]_INST_0_n_0 ),
        .CO({\result_d1[24]_INST_0_n_0 ,\result_d1[24]_INST_0_n_1 ,\result_d1[24]_INST_0_n_2 ,\result_d1[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[27:24]),
        .O(result_d1[27:24]),
        .S({\result_d1[24]_INST_0_i_1_n_0 ,\result_d1[24]_INST_0_i_2_n_0 ,\result_d1[24]_INST_0_i_3_n_0 ,\result_d1[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[24]_INST_0_i_1 
       (.I0(b_q1[27]),
        .I1(a_q1[27]),
        .O(\result_d1[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[24]_INST_0_i_2 
       (.I0(b_q1[26]),
        .I1(a_q1[26]),
        .O(\result_d1[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[24]_INST_0_i_3 
       (.I0(b_q1[25]),
        .I1(a_q1[25]),
        .O(\result_d1[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[24]_INST_0_i_4 
       (.I0(b_q1[24]),
        .I1(a_q1[24]),
        .O(\result_d1[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[28]_INST_0 
       (.CI(\result_d1[24]_INST_0_n_0 ),
        .CO({\NLW_result_d1[28]_INST_0_CO_UNCONNECTED [3],\result_d1[28]_INST_0_n_1 ,\result_d1[28]_INST_0_n_2 ,\result_d1[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b_q1[30:28]}),
        .O(result_d1[31:28]),
        .S({\result_d1[28]_INST_0_i_1_n_0 ,\result_d1[28]_INST_0_i_2_n_0 ,\result_d1[28]_INST_0_i_3_n_0 ,\result_d1[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[28]_INST_0_i_1 
       (.I0(b_q1[31]),
        .I1(a_q1[31]),
        .O(\result_d1[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[28]_INST_0_i_2 
       (.I0(b_q1[30]),
        .I1(a_q1[30]),
        .O(\result_d1[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[28]_INST_0_i_3 
       (.I0(b_q1[29]),
        .I1(a_q1[29]),
        .O(\result_d1[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[28]_INST_0_i_4 
       (.I0(b_q1[28]),
        .I1(a_q1[28]),
        .O(\result_d1[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[4]_INST_0 
       (.CI(\result_d1[0]_INST_0_n_0 ),
        .CO({\result_d1[4]_INST_0_n_0 ,\result_d1[4]_INST_0_n_1 ,\result_d1[4]_INST_0_n_2 ,\result_d1[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[7:4]),
        .O(result_d1[7:4]),
        .S({\result_d1[4]_INST_0_i_1_n_0 ,\result_d1[4]_INST_0_i_2_n_0 ,\result_d1[4]_INST_0_i_3_n_0 ,\result_d1[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[4]_INST_0_i_1 
       (.I0(b_q1[7]),
        .I1(a_q1[7]),
        .O(\result_d1[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[4]_INST_0_i_2 
       (.I0(b_q1[6]),
        .I1(a_q1[6]),
        .O(\result_d1[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[4]_INST_0_i_3 
       (.I0(b_q1[5]),
        .I1(a_q1[5]),
        .O(\result_d1[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[4]_INST_0_i_4 
       (.I0(b_q1[4]),
        .I1(a_q1[4]),
        .O(\result_d1[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_d1[8]_INST_0 
       (.CI(\result_d1[4]_INST_0_n_0 ),
        .CO({\result_d1[8]_INST_0_n_0 ,\result_d1[8]_INST_0_n_1 ,\result_d1[8]_INST_0_n_2 ,\result_d1[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b_q1[11:8]),
        .O(result_d1[11:8]),
        .S({\result_d1[8]_INST_0_i_1_n_0 ,\result_d1[8]_INST_0_i_2_n_0 ,\result_d1[8]_INST_0_i_3_n_0 ,\result_d1[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[8]_INST_0_i_1 
       (.I0(b_q1[11]),
        .I1(a_q1[11]),
        .O(\result_d1[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[8]_INST_0_i_2 
       (.I0(b_q1[10]),
        .I1(a_q1[10]),
        .O(\result_d1[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[8]_INST_0_i_3 
       (.I0(b_q1[9]),
        .I1(a_q1[9]),
        .O(\result_d1[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_d1[8]_INST_0_i_4 
       (.I0(b_q1[8]),
        .I1(a_q1[8]),
        .O(\result_d1[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFC0A0C0)) 
    result_we1_INST_0
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(b_ce1_INST_0_i_1_n_0),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .O(result_ce0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
