// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct  3 23:54:06 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fir_TOP_0_sim_netlist.v
// Design      : fir_TOP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_FIR_IO_ADDR_WIDTH = "4" *) (* C_S_AXI_FIR_IO_DATA_WIDTH = "32" *) 
(* C_S_AXI_FIR_IO_WSTRB_WIDTH = "4" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP
   (ap_clk,
    ap_rst_n,
    y,
    y_ap_vld,
    x,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_AWADDR,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY,
    s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  output [31:0]y;
  output y_ap_vld;
  input [31:0]x;
  input s_axi_fir_io_AWVALID;
  output s_axi_fir_io_AWREADY;
  input [3:0]s_axi_fir_io_AWADDR;
  input s_axi_fir_io_WVALID;
  output s_axi_fir_io_WREADY;
  input [31:0]s_axi_fir_io_WDATA;
  input [3:0]s_axi_fir_io_WSTRB;
  input s_axi_fir_io_ARVALID;
  output s_axi_fir_io_ARREADY;
  input [3:0]s_axi_fir_io_ARADDR;
  output s_axi_fir_io_RVALID;
  input s_axi_fir_io_RREADY;
  output [31:0]s_axi_fir_io_RDATA;
  output [1:0]s_axi_fir_io_RRESP;
  output s_axi_fir_io_BVALID;
  input s_axi_fir_io_BREADY;
  output [1:0]s_axi_fir_io_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \acc_fu_66[0]_i_2_n_0 ;
  wire \acc_fu_66[12]_i_2_n_0 ;
  wire \acc_fu_66[12]_i_3_n_0 ;
  wire \acc_fu_66[12]_i_4_n_0 ;
  wire \acc_fu_66[12]_i_5_n_0 ;
  wire \acc_fu_66[16]_i_2_n_0 ;
  wire \acc_fu_66[16]_i_3_n_0 ;
  wire \acc_fu_66[16]_i_4_n_0 ;
  wire \acc_fu_66[16]_i_5_n_0 ;
  wire \acc_fu_66[20]_i_2_n_0 ;
  wire \acc_fu_66[20]_i_3_n_0 ;
  wire \acc_fu_66[20]_i_4_n_0 ;
  wire \acc_fu_66[20]_i_5_n_0 ;
  wire \acc_fu_66[24]_i_2_n_0 ;
  wire \acc_fu_66[24]_i_3_n_0 ;
  wire \acc_fu_66[24]_i_4_n_0 ;
  wire \acc_fu_66[24]_i_5_n_0 ;
  wire \acc_fu_66[28]_i_2_n_0 ;
  wire \acc_fu_66[28]_i_3_n_0 ;
  wire \acc_fu_66[28]_i_4_n_0 ;
  wire \acc_fu_66[28]_i_5_n_0 ;
  wire \acc_fu_66[4]_i_2_n_0 ;
  wire \acc_fu_66[4]_i_3_n_0 ;
  wire \acc_fu_66[4]_i_4_n_0 ;
  wire \acc_fu_66[4]_i_5_n_0 ;
  wire \acc_fu_66[8]_i_2_n_0 ;
  wire \acc_fu_66[8]_i_3_n_0 ;
  wire \acc_fu_66[8]_i_4_n_0 ;
  wire \acc_fu_66[8]_i_5_n_0 ;
  wire [31:0]acc_fu_66_reg;
  wire \acc_fu_66_reg[12]_i_1_n_0 ;
  wire \acc_fu_66_reg[12]_i_1_n_1 ;
  wire \acc_fu_66_reg[12]_i_1_n_2 ;
  wire \acc_fu_66_reg[12]_i_1_n_3 ;
  wire \acc_fu_66_reg[12]_i_1_n_4 ;
  wire \acc_fu_66_reg[12]_i_1_n_5 ;
  wire \acc_fu_66_reg[12]_i_1_n_6 ;
  wire \acc_fu_66_reg[12]_i_1_n_7 ;
  wire \acc_fu_66_reg[16]_i_1_n_0 ;
  wire \acc_fu_66_reg[16]_i_1_n_1 ;
  wire \acc_fu_66_reg[16]_i_1_n_2 ;
  wire \acc_fu_66_reg[16]_i_1_n_3 ;
  wire \acc_fu_66_reg[16]_i_1_n_4 ;
  wire \acc_fu_66_reg[16]_i_1_n_5 ;
  wire \acc_fu_66_reg[16]_i_1_n_6 ;
  wire \acc_fu_66_reg[16]_i_1_n_7 ;
  wire \acc_fu_66_reg[20]_i_1_n_0 ;
  wire \acc_fu_66_reg[20]_i_1_n_1 ;
  wire \acc_fu_66_reg[20]_i_1_n_2 ;
  wire \acc_fu_66_reg[20]_i_1_n_3 ;
  wire \acc_fu_66_reg[20]_i_1_n_4 ;
  wire \acc_fu_66_reg[20]_i_1_n_5 ;
  wire \acc_fu_66_reg[20]_i_1_n_6 ;
  wire \acc_fu_66_reg[20]_i_1_n_7 ;
  wire \acc_fu_66_reg[24]_i_1_n_0 ;
  wire \acc_fu_66_reg[24]_i_1_n_1 ;
  wire \acc_fu_66_reg[24]_i_1_n_2 ;
  wire \acc_fu_66_reg[24]_i_1_n_3 ;
  wire \acc_fu_66_reg[24]_i_1_n_4 ;
  wire \acc_fu_66_reg[24]_i_1_n_5 ;
  wire \acc_fu_66_reg[24]_i_1_n_6 ;
  wire \acc_fu_66_reg[24]_i_1_n_7 ;
  wire \acc_fu_66_reg[28]_i_1_n_1 ;
  wire \acc_fu_66_reg[28]_i_1_n_2 ;
  wire \acc_fu_66_reg[28]_i_1_n_3 ;
  wire \acc_fu_66_reg[28]_i_1_n_4 ;
  wire \acc_fu_66_reg[28]_i_1_n_5 ;
  wire \acc_fu_66_reg[28]_i_1_n_6 ;
  wire \acc_fu_66_reg[28]_i_1_n_7 ;
  wire \acc_fu_66_reg[4]_i_1_n_0 ;
  wire \acc_fu_66_reg[4]_i_1_n_1 ;
  wire \acc_fu_66_reg[4]_i_1_n_2 ;
  wire \acc_fu_66_reg[4]_i_1_n_3 ;
  wire \acc_fu_66_reg[4]_i_1_n_4 ;
  wire \acc_fu_66_reg[4]_i_1_n_5 ;
  wire \acc_fu_66_reg[4]_i_1_n_6 ;
  wire \acc_fu_66_reg[4]_i_1_n_7 ;
  wire \acc_fu_66_reg[8]_i_1_n_0 ;
  wire \acc_fu_66_reg[8]_i_1_n_1 ;
  wire \acc_fu_66_reg[8]_i_1_n_2 ;
  wire \acc_fu_66_reg[8]_i_1_n_3 ;
  wire \acc_fu_66_reg[8]_i_1_n_4 ;
  wire \acc_fu_66_reg[8]_i_1_n_5 ;
  wire \acc_fu_66_reg[8]_i_1_n_6 ;
  wire \acc_fu_66_reg[8]_i_1_n_7 ;
  wire ap_clk;
  wire ap_condition_185;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [31:0]buff0_reg__0;
  wire fir_io_s_axi_U_n_13;
  wire fir_io_s_axi_U_n_14;
  wire fir_io_s_axi_U_n_15;
  wire fir_io_s_axi_U_n_16;
  wire fir_io_s_axi_U_n_2;
  wire fir_io_s_axi_U_n_3;
  wire fir_io_s_axi_U_n_4;
  wire fir_io_s_axi_U_n_8;
  wire fir_io_s_axi_U_n_9;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_11;
  wire flow_control_loop_pipe_U_n_12;
  wire flow_control_loop_pipe_U_n_13;
  wire flow_control_loop_pipe_U_n_14;
  wire flow_control_loop_pipe_U_n_15;
  wire flow_control_loop_pipe_U_n_2;
  wire flow_control_loop_pipe_U_n_3;
  wire flow_control_loop_pipe_U_n_6;
  wire flow_control_loop_pipe_U_n_7;
  wire flow_control_loop_pipe_U_n_8;
  wire flow_control_loop_pipe_U_n_9;
  wire \i_cast1_reg_226_reg_n_0_[0] ;
  wire \i_cast1_reg_226_reg_n_0_[1] ;
  wire \i_cast1_reg_226_reg_n_0_[2] ;
  wire \i_cast1_reg_226_reg_n_0_[3] ;
  wire i_fu_62;
  wire \i_fu_62_reg_n_0_[0] ;
  wire \i_fu_62_reg_n_0_[1] ;
  wire \i_fu_62_reg_n_0_[2] ;
  wire \i_fu_62_reg_n_0_[3] ;
  wire \i_fu_62_reg_n_0_[4] ;
  wire icmp_ln16_reg_231;
  wire icmp_ln16_reg_231_pp0_iter1_reg;
  wire icmp_ln16_reg_231_pp0_iter2_reg;
  wire icmp_ln16_reg_231_pp0_iter3_reg;
  wire interrupt;
  wire [31:0]mul_ln21_reg_260;
  wire p_0_in;
  wire [3:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [3:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [9:0]\^s_axi_fir_io_RDATA ;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [31:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [3:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire shift_reg_ce1;
  wire [31:0]shift_reg_q1;
  wire shift_reg_we0;
  wire shift_reg_we1;
  wire tmp_fu_141_p3;
  wire tmp_fu_141_p35_in;
  wire \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire [31:0]x;
  wire [31:0]y;
  wire \y[0]_INST_0_i_1_n_0 ;
  wire \y[0]_INST_0_i_2_n_0 ;
  wire \y[0]_INST_0_i_3_n_0 ;
  wire \y[0]_INST_0_i_4_n_0 ;
  wire \y[0]_INST_0_n_0 ;
  wire \y[0]_INST_0_n_1 ;
  wire \y[0]_INST_0_n_2 ;
  wire \y[0]_INST_0_n_3 ;
  wire \y[0]_INST_0_n_4 ;
  wire \y[0]_INST_0_n_5 ;
  wire \y[0]_INST_0_n_6 ;
  wire \y[12]_INST_0_i_1_n_0 ;
  wire \y[12]_INST_0_i_2_n_0 ;
  wire \y[12]_INST_0_i_3_n_0 ;
  wire \y[12]_INST_0_i_4_n_0 ;
  wire \y[12]_INST_0_n_0 ;
  wire \y[12]_INST_0_n_1 ;
  wire \y[12]_INST_0_n_2 ;
  wire \y[12]_INST_0_n_3 ;
  wire \y[16]_INST_0_i_1_n_0 ;
  wire \y[16]_INST_0_i_2_n_0 ;
  wire \y[16]_INST_0_i_3_n_0 ;
  wire \y[16]_INST_0_i_4_n_0 ;
  wire \y[16]_INST_0_n_0 ;
  wire \y[16]_INST_0_n_1 ;
  wire \y[16]_INST_0_n_2 ;
  wire \y[16]_INST_0_n_3 ;
  wire \y[1]_INST_0_i_1_n_0 ;
  wire \y[1]_INST_0_i_2_n_0 ;
  wire \y[1]_INST_0_i_3_n_0 ;
  wire \y[1]_INST_0_i_4_n_0 ;
  wire \y[1]_INST_0_n_0 ;
  wire \y[1]_INST_0_n_1 ;
  wire \y[1]_INST_0_n_2 ;
  wire \y[1]_INST_0_n_3 ;
  wire \y[20]_INST_0_i_1_n_0 ;
  wire \y[20]_INST_0_i_2_n_0 ;
  wire \y[20]_INST_0_i_3_n_0 ;
  wire \y[20]_INST_0_i_4_n_0 ;
  wire \y[20]_INST_0_n_0 ;
  wire \y[20]_INST_0_n_1 ;
  wire \y[20]_INST_0_n_2 ;
  wire \y[20]_INST_0_n_3 ;
  wire \y[24]_INST_0_i_1_n_0 ;
  wire \y[24]_INST_0_i_2_n_0 ;
  wire \y[24]_INST_0_i_3_n_0 ;
  wire \y[24]_INST_0_i_4_n_0 ;
  wire \y[24]_INST_0_n_0 ;
  wire \y[24]_INST_0_n_1 ;
  wire \y[24]_INST_0_n_2 ;
  wire \y[24]_INST_0_n_3 ;
  wire \y[28]_INST_0_i_1_n_0 ;
  wire \y[28]_INST_0_i_2_n_0 ;
  wire \y[28]_INST_0_i_3_n_0 ;
  wire \y[28]_INST_0_i_4_n_0 ;
  wire \y[28]_INST_0_n_1 ;
  wire \y[28]_INST_0_n_2 ;
  wire \y[28]_INST_0_n_3 ;
  wire \y[4]_INST_0_i_1_n_0 ;
  wire \y[4]_INST_0_i_2_n_0 ;
  wire \y[4]_INST_0_i_3_n_0 ;
  wire \y[4]_INST_0_i_4_n_0 ;
  wire \y[4]_INST_0_n_0 ;
  wire \y[4]_INST_0_n_1 ;
  wire \y[4]_INST_0_n_2 ;
  wire \y[4]_INST_0_n_3 ;
  wire \y[8]_INST_0_i_1_n_0 ;
  wire \y[8]_INST_0_i_2_n_0 ;
  wire \y[8]_INST_0_i_3_n_0 ;
  wire \y[8]_INST_0_i_4_n_0 ;
  wire \y[8]_INST_0_n_0 ;
  wire \y[8]_INST_0_n_1 ;
  wire \y[8]_INST_0_n_2 ;
  wire \y[8]_INST_0_n_3 ;
  wire y_ap_vld;
  wire [3:3]\NLW_acc_fu_66_reg[28]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_y[1]_INST_0_O_UNCONNECTED ;
  wire [3:3]\NLW_y[28]_INST_0_CO_UNCONNECTED ;

  assign s_axi_fir_io_BRESP[1] = \<const0> ;
  assign s_axi_fir_io_BRESP[0] = \<const0> ;
  assign s_axi_fir_io_RDATA[31] = \<const0> ;
  assign s_axi_fir_io_RDATA[30] = \<const0> ;
  assign s_axi_fir_io_RDATA[29] = \<const0> ;
  assign s_axi_fir_io_RDATA[28] = \<const0> ;
  assign s_axi_fir_io_RDATA[27] = \<const0> ;
  assign s_axi_fir_io_RDATA[26] = \<const0> ;
  assign s_axi_fir_io_RDATA[25] = \<const0> ;
  assign s_axi_fir_io_RDATA[24] = \<const0> ;
  assign s_axi_fir_io_RDATA[23] = \<const0> ;
  assign s_axi_fir_io_RDATA[22] = \<const0> ;
  assign s_axi_fir_io_RDATA[21] = \<const0> ;
  assign s_axi_fir_io_RDATA[20] = \<const0> ;
  assign s_axi_fir_io_RDATA[19] = \<const0> ;
  assign s_axi_fir_io_RDATA[18] = \<const0> ;
  assign s_axi_fir_io_RDATA[17] = \<const0> ;
  assign s_axi_fir_io_RDATA[16] = \<const0> ;
  assign s_axi_fir_io_RDATA[15] = \<const0> ;
  assign s_axi_fir_io_RDATA[14] = \<const0> ;
  assign s_axi_fir_io_RDATA[13] = \<const0> ;
  assign s_axi_fir_io_RDATA[12] = \<const0> ;
  assign s_axi_fir_io_RDATA[11] = \<const0> ;
  assign s_axi_fir_io_RDATA[10] = \<const0> ;
  assign s_axi_fir_io_RDATA[9] = \^s_axi_fir_io_RDATA [9];
  assign s_axi_fir_io_RDATA[8] = \<const0> ;
  assign s_axi_fir_io_RDATA[7] = \^s_axi_fir_io_RDATA [7];
  assign s_axi_fir_io_RDATA[6] = \<const0> ;
  assign s_axi_fir_io_RDATA[5] = \<const0> ;
  assign s_axi_fir_io_RDATA[4] = \<const0> ;
  assign s_axi_fir_io_RDATA[3:0] = \^s_axi_fir_io_RDATA [3:0];
  assign s_axi_fir_io_RRESP[1] = \<const0> ;
  assign s_axi_fir_io_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[0]_i_2 
       (.I0(mul_ln21_reg_260[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[0]),
        .O(\acc_fu_66[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[12]_i_2 
       (.I0(mul_ln21_reg_260[15]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[15]),
        .O(\acc_fu_66[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[12]_i_3 
       (.I0(mul_ln21_reg_260[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[14]),
        .O(\acc_fu_66[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[12]_i_4 
       (.I0(mul_ln21_reg_260[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[13]),
        .O(\acc_fu_66[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[12]_i_5 
       (.I0(mul_ln21_reg_260[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[12]),
        .O(\acc_fu_66[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[16]_i_2 
       (.I0(mul_ln21_reg_260[19]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[19]),
        .O(\acc_fu_66[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[16]_i_3 
       (.I0(mul_ln21_reg_260[18]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[18]),
        .O(\acc_fu_66[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[16]_i_4 
       (.I0(mul_ln21_reg_260[17]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[17]),
        .O(\acc_fu_66[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[16]_i_5 
       (.I0(mul_ln21_reg_260[16]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[16]),
        .O(\acc_fu_66[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[20]_i_2 
       (.I0(mul_ln21_reg_260[23]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[23]),
        .O(\acc_fu_66[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[20]_i_3 
       (.I0(mul_ln21_reg_260[22]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[22]),
        .O(\acc_fu_66[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[20]_i_4 
       (.I0(mul_ln21_reg_260[21]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[21]),
        .O(\acc_fu_66[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[20]_i_5 
       (.I0(mul_ln21_reg_260[20]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[20]),
        .O(\acc_fu_66[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[24]_i_2 
       (.I0(mul_ln21_reg_260[27]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[27]),
        .O(\acc_fu_66[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[24]_i_3 
       (.I0(mul_ln21_reg_260[26]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[26]),
        .O(\acc_fu_66[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[24]_i_4 
       (.I0(mul_ln21_reg_260[25]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[25]),
        .O(\acc_fu_66[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[24]_i_5 
       (.I0(mul_ln21_reg_260[24]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[24]),
        .O(\acc_fu_66[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[28]_i_2 
       (.I0(mul_ln21_reg_260[31]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[31]),
        .O(\acc_fu_66[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[28]_i_3 
       (.I0(mul_ln21_reg_260[30]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[30]),
        .O(\acc_fu_66[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[28]_i_4 
       (.I0(mul_ln21_reg_260[29]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[29]),
        .O(\acc_fu_66[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[28]_i_5 
       (.I0(mul_ln21_reg_260[28]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[28]),
        .O(\acc_fu_66[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[4]_i_2 
       (.I0(mul_ln21_reg_260[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[7]),
        .O(\acc_fu_66[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[4]_i_3 
       (.I0(mul_ln21_reg_260[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[6]),
        .O(\acc_fu_66[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[4]_i_4 
       (.I0(mul_ln21_reg_260[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[5]),
        .O(\acc_fu_66[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[4]_i_5 
       (.I0(mul_ln21_reg_260[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[4]),
        .O(\acc_fu_66[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[8]_i_2 
       (.I0(mul_ln21_reg_260[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[11]),
        .O(\acc_fu_66[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[8]_i_3 
       (.I0(mul_ln21_reg_260[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[10]),
        .O(\acc_fu_66[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[8]_i_4 
       (.I0(mul_ln21_reg_260[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[9]),
        .O(\acc_fu_66[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \acc_fu_66[8]_i_5 
       (.I0(mul_ln21_reg_260[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[8]),
        .O(\acc_fu_66[8]_i_5_n_0 ));
  FDRE \acc_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66[0]_i_2_n_0 ),
        .Q(acc_fu_66_reg[0]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[8]_i_1_n_5 ),
        .Q(acc_fu_66_reg[10]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[8]_i_1_n_4 ),
        .Q(acc_fu_66_reg[11]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[12]_i_1_n_7 ),
        .Q(acc_fu_66_reg[12]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[12]_i_1 
       (.CI(\acc_fu_66_reg[8]_i_1_n_0 ),
        .CO({\acc_fu_66_reg[12]_i_1_n_0 ,\acc_fu_66_reg[12]_i_1_n_1 ,\acc_fu_66_reg[12]_i_1_n_2 ,\acc_fu_66_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[15:12]),
        .O({\acc_fu_66_reg[12]_i_1_n_4 ,\acc_fu_66_reg[12]_i_1_n_5 ,\acc_fu_66_reg[12]_i_1_n_6 ,\acc_fu_66_reg[12]_i_1_n_7 }),
        .S({\acc_fu_66[12]_i_2_n_0 ,\acc_fu_66[12]_i_3_n_0 ,\acc_fu_66[12]_i_4_n_0 ,\acc_fu_66[12]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[12]_i_1_n_6 ),
        .Q(acc_fu_66_reg[13]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[12]_i_1_n_5 ),
        .Q(acc_fu_66_reg[14]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[12]_i_1_n_4 ),
        .Q(acc_fu_66_reg[15]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[16]_i_1_n_7 ),
        .Q(acc_fu_66_reg[16]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[16]_i_1 
       (.CI(\acc_fu_66_reg[12]_i_1_n_0 ),
        .CO({\acc_fu_66_reg[16]_i_1_n_0 ,\acc_fu_66_reg[16]_i_1_n_1 ,\acc_fu_66_reg[16]_i_1_n_2 ,\acc_fu_66_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[19:16]),
        .O({\acc_fu_66_reg[16]_i_1_n_4 ,\acc_fu_66_reg[16]_i_1_n_5 ,\acc_fu_66_reg[16]_i_1_n_6 ,\acc_fu_66_reg[16]_i_1_n_7 }),
        .S({\acc_fu_66[16]_i_2_n_0 ,\acc_fu_66[16]_i_3_n_0 ,\acc_fu_66[16]_i_4_n_0 ,\acc_fu_66[16]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[16]_i_1_n_6 ),
        .Q(acc_fu_66_reg[17]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[16]_i_1_n_5 ),
        .Q(acc_fu_66_reg[18]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[16]_i_1_n_4 ),
        .Q(acc_fu_66_reg[19]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y[0]_INST_0_n_6 ),
        .Q(acc_fu_66_reg[1]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[20]_i_1_n_7 ),
        .Q(acc_fu_66_reg[20]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[20]_i_1 
       (.CI(\acc_fu_66_reg[16]_i_1_n_0 ),
        .CO({\acc_fu_66_reg[20]_i_1_n_0 ,\acc_fu_66_reg[20]_i_1_n_1 ,\acc_fu_66_reg[20]_i_1_n_2 ,\acc_fu_66_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[23:20]),
        .O({\acc_fu_66_reg[20]_i_1_n_4 ,\acc_fu_66_reg[20]_i_1_n_5 ,\acc_fu_66_reg[20]_i_1_n_6 ,\acc_fu_66_reg[20]_i_1_n_7 }),
        .S({\acc_fu_66[20]_i_2_n_0 ,\acc_fu_66[20]_i_3_n_0 ,\acc_fu_66[20]_i_4_n_0 ,\acc_fu_66[20]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[20]_i_1_n_6 ),
        .Q(acc_fu_66_reg[21]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[20]_i_1_n_5 ),
        .Q(acc_fu_66_reg[22]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[20]_i_1_n_4 ),
        .Q(acc_fu_66_reg[23]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[24]_i_1_n_7 ),
        .Q(acc_fu_66_reg[24]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[24]_i_1 
       (.CI(\acc_fu_66_reg[20]_i_1_n_0 ),
        .CO({\acc_fu_66_reg[24]_i_1_n_0 ,\acc_fu_66_reg[24]_i_1_n_1 ,\acc_fu_66_reg[24]_i_1_n_2 ,\acc_fu_66_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[27:24]),
        .O({\acc_fu_66_reg[24]_i_1_n_4 ,\acc_fu_66_reg[24]_i_1_n_5 ,\acc_fu_66_reg[24]_i_1_n_6 ,\acc_fu_66_reg[24]_i_1_n_7 }),
        .S({\acc_fu_66[24]_i_2_n_0 ,\acc_fu_66[24]_i_3_n_0 ,\acc_fu_66[24]_i_4_n_0 ,\acc_fu_66[24]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[24]_i_1_n_6 ),
        .Q(acc_fu_66_reg[25]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[24]_i_1_n_5 ),
        .Q(acc_fu_66_reg[26]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[24]_i_1_n_4 ),
        .Q(acc_fu_66_reg[27]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[28]_i_1_n_7 ),
        .Q(acc_fu_66_reg[28]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[28]_i_1 
       (.CI(\acc_fu_66_reg[24]_i_1_n_0 ),
        .CO({\NLW_acc_fu_66_reg[28]_i_1_CO_UNCONNECTED [3],\acc_fu_66_reg[28]_i_1_n_1 ,\acc_fu_66_reg[28]_i_1_n_2 ,\acc_fu_66_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,acc_fu_66_reg[30:28]}),
        .O({\acc_fu_66_reg[28]_i_1_n_4 ,\acc_fu_66_reg[28]_i_1_n_5 ,\acc_fu_66_reg[28]_i_1_n_6 ,\acc_fu_66_reg[28]_i_1_n_7 }),
        .S({\acc_fu_66[28]_i_2_n_0 ,\acc_fu_66[28]_i_3_n_0 ,\acc_fu_66[28]_i_4_n_0 ,\acc_fu_66[28]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[28]_i_1_n_6 ),
        .Q(acc_fu_66_reg[29]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y[0]_INST_0_n_5 ),
        .Q(acc_fu_66_reg[2]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[28]_i_1_n_5 ),
        .Q(acc_fu_66_reg[30]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[28]_i_1_n_4 ),
        .Q(acc_fu_66_reg[31]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y[0]_INST_0_n_4 ),
        .Q(acc_fu_66_reg[3]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[4]_i_1_n_7 ),
        .Q(acc_fu_66_reg[4]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[4]_i_1 
       (.CI(\y[0]_INST_0_n_0 ),
        .CO({\acc_fu_66_reg[4]_i_1_n_0 ,\acc_fu_66_reg[4]_i_1_n_1 ,\acc_fu_66_reg[4]_i_1_n_2 ,\acc_fu_66_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[7:4]),
        .O({\acc_fu_66_reg[4]_i_1_n_4 ,\acc_fu_66_reg[4]_i_1_n_5 ,\acc_fu_66_reg[4]_i_1_n_6 ,\acc_fu_66_reg[4]_i_1_n_7 }),
        .S({\acc_fu_66[4]_i_2_n_0 ,\acc_fu_66[4]_i_3_n_0 ,\acc_fu_66[4]_i_4_n_0 ,\acc_fu_66[4]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[4]_i_1_n_6 ),
        .Q(acc_fu_66_reg[5]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[4]_i_1_n_5 ),
        .Q(acc_fu_66_reg[6]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[4]_i_1_n_4 ),
        .Q(acc_fu_66_reg[7]),
        .R(ap_condition_185));
  FDRE \acc_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[8]_i_1_n_7 ),
        .Q(acc_fu_66_reg[8]),
        .R(ap_condition_185));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_fu_66_reg[8]_i_1 
       (.CI(\acc_fu_66_reg[4]_i_1_n_0 ),
        .CO({\acc_fu_66_reg[8]_i_1_n_0 ,\acc_fu_66_reg[8]_i_1_n_1 ,\acc_fu_66_reg[8]_i_1_n_2 ,\acc_fu_66_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[11:8]),
        .O({\acc_fu_66_reg[8]_i_1_n_4 ,\acc_fu_66_reg[8]_i_1_n_5 ,\acc_fu_66_reg[8]_i_1_n_6 ,\acc_fu_66_reg[8]_i_1_n_7 }),
        .S({\acc_fu_66[8]_i_2_n_0 ,\acc_fu_66[8]_i_3_n_0 ,\acc_fu_66[8]_i_4_n_0 ,\acc_fu_66[8]_i_5_n_0 }));
  FDRE \acc_fu_66_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\acc_fu_66_reg[8]_i_1_n_6 ),
        .Q(acc_fu_66_reg[9]),
        .R(ap_condition_185));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(fir_io_s_axi_U_n_9),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2" *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_loop_exit_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_fir_io_s_axi fir_io_s_axi_U
       (.B({fir_io_s_axi_U_n_2,fir_io_s_axi_U_n_3,fir_io_s_axi_U_n_4}),
        .D({fir_io_s_axi_U_n_13,fir_io_s_axi_U_n_14,fir_io_s_axi_U_n_15,fir_io_s_axi_U_n_16}),
        .E(i_fu_62),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_fir_io_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_fir_io_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_fir_io_WREADY),
        .Q({\i_fu_62_reg_n_0_[4] ,\i_fu_62_reg_n_0_[3] ,\i_fu_62_reg_n_0_[2] ,\i_fu_62_reg_n_0_[1] ,\i_fu_62_reg_n_0_[0] }),
        .WEA(shift_reg_we1),
        .WEBWE(ap_enable_reg_pp0_iter1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(fir_io_s_axi_U_n_8),
        .ap_rst_n_1(fir_io_s_axi_U_n_9),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .interrupt(interrupt),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA({\^s_axi_fir_io_RDATA [9],\^s_axi_fir_io_RDATA [7],\^s_axi_fir_io_RDATA [3:0]}),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA({s_axi_fir_io_WDATA[7],s_axi_fir_io_WDATA[1:0]}),
        .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB[0]),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID),
        .shift_reg_ce1(shift_reg_ce1),
        .tmp_fu_141_p35_in(tmp_fu_141_p35_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_flow_control_loop_pipe flow_control_loop_pipe_U
       (.ADDRARDADDR({flow_control_loop_pipe_U_n_6,flow_control_loop_pipe_U_n_7,flow_control_loop_pipe_U_n_8,flow_control_loop_pipe_U_n_9}),
        .B({flow_control_loop_pipe_U_n_1,flow_control_loop_pipe_U_n_2,flow_control_loop_pipe_U_n_3}),
        .D({flow_control_loop_pipe_U_n_11,flow_control_loop_pipe_U_n_12,flow_control_loop_pipe_U_n_13,flow_control_loop_pipe_U_n_14,flow_control_loop_pipe_U_n_15}),
        .E(tmp_fu_141_p3),
        .Q({\i_fu_62_reg_n_0_[4] ,\i_fu_62_reg_n_0_[3] ,\i_fu_62_reg_n_0_[2] ,\i_fu_62_reg_n_0_[1] ,\i_fu_62_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_condition_185(ap_condition_185),
        .ap_loop_exit_ready(ap_loop_exit_ready),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0(fir_io_s_axi_U_n_8),
        .ap_start(ap_start));
  FDRE \i_cast1_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(tmp_fu_141_p3),
        .D(fir_io_s_axi_U_n_16),
        .Q(\i_cast1_reg_226_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_cast1_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(tmp_fu_141_p3),
        .D(fir_io_s_axi_U_n_15),
        .Q(\i_cast1_reg_226_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_cast1_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(tmp_fu_141_p3),
        .D(fir_io_s_axi_U_n_14),
        .Q(\i_cast1_reg_226_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_cast1_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(tmp_fu_141_p3),
        .D(fir_io_s_axi_U_n_13),
        .Q(\i_cast1_reg_226_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_15),
        .Q(\i_fu_62_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_14),
        .Q(\i_fu_62_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_13),
        .Q(\i_fu_62_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_12),
        .Q(\i_fu_62_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_11),
        .Q(\i_fu_62_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \icmp_ln16_reg_231_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln16_reg_231),
        .Q(icmp_ln16_reg_231_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln16_reg_231_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln16_reg_231_pp0_iter1_reg),
        .Q(icmp_ln16_reg_231_pp0_iter2_reg),
        .R(1'b0));
  FDRE \icmp_ln16_reg_231_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln16_reg_231_pp0_iter2_reg),
        .Q(icmp_ln16_reg_231_pp0_iter3_reg),
        .R(1'b0));
  FDRE \icmp_ln16_reg_231_reg[0] 
       (.C(ap_clk),
        .CE(tmp_fu_141_p3),
        .D(flow_control_loop_pipe_U_n_11),
        .Q(icmp_ln16_reg_231),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_mul_7s_32s_32_2_1 mul_7s_32s_32_2_1_U1
       (.B({flow_control_loop_pipe_U_n_1,flow_control_loop_pipe_U_n_2,fir_io_s_axi_U_n_2,fir_io_s_axi_U_n_3,flow_control_loop_pipe_U_n_3,fir_io_s_axi_U_n_4}),
        .D(buff0_reg__0),
        .DOADO(shift_reg_q1),
        .WEBWE(ap_enable_reg_pp0_iter1),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .icmp_ln16_reg_231(icmp_ln16_reg_231),
        .shift_reg_we0(shift_reg_we0));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_ln21_reg_260[31]_i_1 
       (.I0(icmp_ln16_reg_231_pp0_iter2_reg),
        .O(p_0_in));
  FDRE \mul_ln21_reg_260_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[0]),
        .Q(mul_ln21_reg_260[0]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[10]),
        .Q(mul_ln21_reg_260[10]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[11]),
        .Q(mul_ln21_reg_260[11]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[12]),
        .Q(mul_ln21_reg_260[12]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[13]),
        .Q(mul_ln21_reg_260[13]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[14]),
        .Q(mul_ln21_reg_260[14]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[15]),
        .Q(mul_ln21_reg_260[15]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[16]),
        .Q(mul_ln21_reg_260[16]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[17]),
        .Q(mul_ln21_reg_260[17]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[18]),
        .Q(mul_ln21_reg_260[18]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[19]),
        .Q(mul_ln21_reg_260[19]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[1]),
        .Q(mul_ln21_reg_260[1]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[20]),
        .Q(mul_ln21_reg_260[20]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[21]),
        .Q(mul_ln21_reg_260[21]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[22]),
        .Q(mul_ln21_reg_260[22]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[23]),
        .Q(mul_ln21_reg_260[23]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[24]),
        .Q(mul_ln21_reg_260[24]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[25]),
        .Q(mul_ln21_reg_260[25]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[26]),
        .Q(mul_ln21_reg_260[26]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[27]),
        .Q(mul_ln21_reg_260[27]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[28]),
        .Q(mul_ln21_reg_260[28]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[29]),
        .Q(mul_ln21_reg_260[29]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[2]),
        .Q(mul_ln21_reg_260[2]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[30]),
        .Q(mul_ln21_reg_260[30]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[31]),
        .Q(mul_ln21_reg_260[31]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[3]),
        .Q(mul_ln21_reg_260[3]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[4]),
        .Q(mul_ln21_reg_260[4]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[5]),
        .Q(mul_ln21_reg_260[5]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[6]),
        .Q(mul_ln21_reg_260[6]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[7]),
        .Q(mul_ln21_reg_260[7]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[8]),
        .Q(mul_ln21_reg_260[8]),
        .R(1'b0));
  FDRE \mul_ln21_reg_260_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(buff0_reg__0[9]),
        .Q(mul_ln21_reg_260[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_shift_reg_RAM_AUTO_1R1W shift_reg_U
       (.ADDRARDADDR({flow_control_loop_pipe_U_n_6,flow_control_loop_pipe_U_n_7,flow_control_loop_pipe_U_n_8,flow_control_loop_pipe_U_n_9}),
        .DOADO(shift_reg_q1),
        .Q({\i_cast1_reg_226_reg_n_0_[3] ,\i_cast1_reg_226_reg_n_0_[2] ,\i_cast1_reg_226_reg_n_0_[1] ,\i_cast1_reg_226_reg_n_0_[0] }),
        .WEA(shift_reg_we1),
        .WEBWE(ap_enable_reg_pp0_iter1),
        .ap_clk(ap_clk),
        .shift_reg_ce1(shift_reg_ce1),
        .shift_reg_we0(shift_reg_we0),
        .x(x));
  (* srl_bus_name = "inst/\\tmp_reg_222_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(tmp_fu_141_p35_in),
        .Q(\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  FDRE \tmp_reg_222_pp0_iter2_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(y_ap_vld),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \y[0]_INST_0 
       (.CI(1'b0),
        .CO({\y[0]_INST_0_n_0 ,\y[0]_INST_0_n_1 ,\y[0]_INST_0_n_2 ,\y[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[3:0]),
        .O({\y[0]_INST_0_n_4 ,\y[0]_INST_0_n_5 ,\y[0]_INST_0_n_6 ,y[0]}),
        .S({\y[0]_INST_0_i_1_n_0 ,\y[0]_INST_0_i_2_n_0 ,\y[0]_INST_0_i_3_n_0 ,\y[0]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[0]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[3]),
        .O(\y[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[0]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[2]),
        .O(\y[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[0]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[1]),
        .O(\y[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[0]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[0]),
        .O(\y[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[12]_INST_0 
       (.CI(\y[8]_INST_0_n_0 ),
        .CO({\y[12]_INST_0_n_0 ,\y[12]_INST_0_n_1 ,\y[12]_INST_0_n_2 ,\y[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[15:12]),
        .O(y[15:12]),
        .S({\y[12]_INST_0_i_1_n_0 ,\y[12]_INST_0_i_2_n_0 ,\y[12]_INST_0_i_3_n_0 ,\y[12]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[12]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[15]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[15]),
        .O(\y[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[12]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[14]),
        .O(\y[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[12]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[13]),
        .O(\y[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[12]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[12]),
        .O(\y[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[16]_INST_0 
       (.CI(\y[12]_INST_0_n_0 ),
        .CO({\y[16]_INST_0_n_0 ,\y[16]_INST_0_n_1 ,\y[16]_INST_0_n_2 ,\y[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[19:16]),
        .O(y[19:16]),
        .S({\y[16]_INST_0_i_1_n_0 ,\y[16]_INST_0_i_2_n_0 ,\y[16]_INST_0_i_3_n_0 ,\y[16]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[16]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[19]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[19]),
        .O(\y[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[16]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[18]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[18]),
        .O(\y[16]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[16]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[17]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[17]),
        .O(\y[16]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[16]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[16]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[16]),
        .O(\y[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[1]_INST_0 
       (.CI(1'b0),
        .CO({\y[1]_INST_0_n_0 ,\y[1]_INST_0_n_1 ,\y[1]_INST_0_n_2 ,\y[1]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[3:0]),
        .O({y[3:1],\NLW_y[1]_INST_0_O_UNCONNECTED [0]}),
        .S({\y[1]_INST_0_i_1_n_0 ,\y[1]_INST_0_i_2_n_0 ,\y[1]_INST_0_i_3_n_0 ,\y[1]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[1]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[3]),
        .O(\y[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[1]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[2]),
        .O(\y[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[1]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[1]),
        .O(\y[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[1]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[0]),
        .O(\y[1]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[20]_INST_0 
       (.CI(\y[16]_INST_0_n_0 ),
        .CO({\y[20]_INST_0_n_0 ,\y[20]_INST_0_n_1 ,\y[20]_INST_0_n_2 ,\y[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[23:20]),
        .O(y[23:20]),
        .S({\y[20]_INST_0_i_1_n_0 ,\y[20]_INST_0_i_2_n_0 ,\y[20]_INST_0_i_3_n_0 ,\y[20]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[20]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[23]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[23]),
        .O(\y[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[20]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[22]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[22]),
        .O(\y[20]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[20]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[21]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[21]),
        .O(\y[20]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[20]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[20]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[20]),
        .O(\y[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[24]_INST_0 
       (.CI(\y[20]_INST_0_n_0 ),
        .CO({\y[24]_INST_0_n_0 ,\y[24]_INST_0_n_1 ,\y[24]_INST_0_n_2 ,\y[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[27:24]),
        .O(y[27:24]),
        .S({\y[24]_INST_0_i_1_n_0 ,\y[24]_INST_0_i_2_n_0 ,\y[24]_INST_0_i_3_n_0 ,\y[24]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[24]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[27]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[27]),
        .O(\y[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[24]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[26]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[26]),
        .O(\y[24]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[24]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[25]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[25]),
        .O(\y[24]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[24]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[24]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[24]),
        .O(\y[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[28]_INST_0 
       (.CI(\y[24]_INST_0_n_0 ),
        .CO({\NLW_y[28]_INST_0_CO_UNCONNECTED [3],\y[28]_INST_0_n_1 ,\y[28]_INST_0_n_2 ,\y[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,acc_fu_66_reg[30:28]}),
        .O(y[31:28]),
        .S({\y[28]_INST_0_i_1_n_0 ,\y[28]_INST_0_i_2_n_0 ,\y[28]_INST_0_i_3_n_0 ,\y[28]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[28]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[31]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[31]),
        .O(\y[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[28]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[30]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[30]),
        .O(\y[28]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[28]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[29]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[29]),
        .O(\y[28]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[28]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[28]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[28]),
        .O(\y[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[4]_INST_0 
       (.CI(\y[1]_INST_0_n_0 ),
        .CO({\y[4]_INST_0_n_0 ,\y[4]_INST_0_n_1 ,\y[4]_INST_0_n_2 ,\y[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[7:4]),
        .O(y[7:4]),
        .S({\y[4]_INST_0_i_1_n_0 ,\y[4]_INST_0_i_2_n_0 ,\y[4]_INST_0_i_3_n_0 ,\y[4]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[4]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[7]),
        .O(\y[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[4]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[6]),
        .O(\y[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[4]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[5]),
        .O(\y[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[4]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[4]),
        .O(\y[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y[8]_INST_0 
       (.CI(\y[4]_INST_0_n_0 ),
        .CO({\y[8]_INST_0_n_0 ,\y[8]_INST_0_n_1 ,\y[8]_INST_0_n_2 ,\y[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(acc_fu_66_reg[11:8]),
        .O(y[11:8]),
        .S({\y[8]_INST_0_i_1_n_0 ,\y[8]_INST_0_i_2_n_0 ,\y[8]_INST_0_i_3_n_0 ,\y[8]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[8]_INST_0_i_1 
       (.I0(mul_ln21_reg_260[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[11]),
        .O(\y[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[8]_INST_0_i_2 
       (.I0(mul_ln21_reg_260[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[10]),
        .O(\y[8]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[8]_INST_0_i_3 
       (.I0(mul_ln21_reg_260[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[9]),
        .O(\y[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \y[8]_INST_0_i_4 
       (.I0(mul_ln21_reg_260[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(icmp_ln16_reg_231_pp0_iter3_reg),
        .I3(acc_fu_66_reg[8]),
        .O(\y[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "fir_TOP_0,fir_TOP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "fir_TOP,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (y_ap_vld,
    s_axi_fir_io_AWADDR,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_BRESP,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP,
    s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    y,
    x);
  output y_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR" *) input [3:0]s_axi_fir_io_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID" *) input s_axi_fir_io_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY" *) output s_axi_fir_io_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA" *) input [31:0]s_axi_fir_io_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB" *) input [3:0]s_axi_fir_io_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID" *) input s_axi_fir_io_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY" *) output s_axi_fir_io_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP" *) output [1:0]s_axi_fir_io_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID" *) output s_axi_fir_io_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY" *) input s_axi_fir_io_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR" *) input [3:0]s_axi_fir_io_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID" *) input s_axi_fir_io_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY" *) output s_axi_fir_io_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA" *) output [31:0]s_axi_fir_io_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP" *) output [1:0]s_axi_fir_io_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID" *) output s_axi_fir_io_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_fir_io, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_fir_io_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 y DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME y, LAYERED_METADATA undef" *) output [31:0]y;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 x DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME x, LAYERED_METADATA undef" *) input [31:0]x;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [3:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [9:0]\^s_axi_fir_io_RDATA ;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [31:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [3:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire [31:0]x;
  wire [31:0]y;
  wire y_ap_vld;
  wire [1:0]NLW_inst_s_axi_fir_io_BRESP_UNCONNECTED;
  wire [31:4]NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_fir_io_RRESP_UNCONNECTED;

  assign s_axi_fir_io_BRESP[1] = \<const0> ;
  assign s_axi_fir_io_BRESP[0] = \<const0> ;
  assign s_axi_fir_io_RDATA[31] = \<const0> ;
  assign s_axi_fir_io_RDATA[30] = \<const0> ;
  assign s_axi_fir_io_RDATA[29] = \<const0> ;
  assign s_axi_fir_io_RDATA[28] = \<const0> ;
  assign s_axi_fir_io_RDATA[27] = \<const0> ;
  assign s_axi_fir_io_RDATA[26] = \<const0> ;
  assign s_axi_fir_io_RDATA[25] = \<const0> ;
  assign s_axi_fir_io_RDATA[24] = \<const0> ;
  assign s_axi_fir_io_RDATA[23] = \<const0> ;
  assign s_axi_fir_io_RDATA[22] = \<const0> ;
  assign s_axi_fir_io_RDATA[21] = \<const0> ;
  assign s_axi_fir_io_RDATA[20] = \<const0> ;
  assign s_axi_fir_io_RDATA[19] = \<const0> ;
  assign s_axi_fir_io_RDATA[18] = \<const0> ;
  assign s_axi_fir_io_RDATA[17] = \<const0> ;
  assign s_axi_fir_io_RDATA[16] = \<const0> ;
  assign s_axi_fir_io_RDATA[15] = \<const0> ;
  assign s_axi_fir_io_RDATA[14] = \<const0> ;
  assign s_axi_fir_io_RDATA[13] = \<const0> ;
  assign s_axi_fir_io_RDATA[12] = \<const0> ;
  assign s_axi_fir_io_RDATA[11] = \<const0> ;
  assign s_axi_fir_io_RDATA[10] = \<const0> ;
  assign s_axi_fir_io_RDATA[9] = \^s_axi_fir_io_RDATA [9];
  assign s_axi_fir_io_RDATA[8] = \<const0> ;
  assign s_axi_fir_io_RDATA[7] = \^s_axi_fir_io_RDATA [7];
  assign s_axi_fir_io_RDATA[6] = \<const0> ;
  assign s_axi_fir_io_RDATA[5] = \<const0> ;
  assign s_axi_fir_io_RDATA[4] = \<const0> ;
  assign s_axi_fir_io_RDATA[3:0] = \^s_axi_fir_io_RDATA [3:0];
  assign s_axi_fir_io_RRESP[1] = \<const0> ;
  assign s_axi_fir_io_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_FIR_IO_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_FIR_IO_DATA_WIDTH = "32" *) 
  (* C_S_AXI_FIR_IO_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
        .s_axi_fir_io_ARREADY(s_axi_fir_io_ARREADY),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
        .s_axi_fir_io_AWREADY(s_axi_fir_io_AWREADY),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BRESP(NLW_inst_s_axi_fir_io_BRESP_UNCONNECTED[1:0]),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA({NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED[31:10],\^s_axi_fir_io_RDATA }),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RRESP(NLW_inst_s_axi_fir_io_RRESP_UNCONNECTED[1:0]),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_fir_io_WDATA[7],1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_fir_io_WDATA[1:0]}),
        .s_axi_fir_io_WREADY(s_axi_fir_io_WREADY),
        .s_axi_fir_io_WSTRB({1'b0,1'b0,1'b0,s_axi_fir_io_WSTRB[0]}),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID),
        .x(x),
        .y(y),
        .y_ap_vld(y_ap_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_fir_io_s_axi
   (ap_rst_n_inv,
    interrupt,
    B,
    ap_start,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_rst_n_0,
    ap_rst_n_1,
    WEA,
    E,
    tmp_fu_141_p35_in,
    D,
    s_axi_fir_io_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_fir_io_RVALID,
    shift_reg_ce1,
    s_axi_fir_io_RDATA,
    ap_clk,
    Q,
    ap_loop_init,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter3,
    WEBWE,
    ap_enable_reg_pp0_iter4,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter3_reg,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_RREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_AWADDR);
  output ap_rst_n_inv;
  output interrupt;
  output [2:0]B;
  output ap_start;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [0:0]WEA;
  output [0:0]E;
  output tmp_fu_141_p35_in;
  output [3:0]D;
  output s_axi_fir_io_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_fir_io_RVALID;
  output shift_reg_ce1;
  output [5:0]s_axi_fir_io_RDATA;
  input ap_clk;
  input [4:0]Q;
  input ap_loop_init;
  input [3:0]s_axi_fir_io_ARADDR;
  input s_axi_fir_io_ARVALID;
  input [0:0]s_axi_fir_io_WSTRB;
  input s_axi_fir_io_WVALID;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter3;
  input [0:0]WEBWE;
  input ap_enable_reg_pp0_iter4;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input s_axi_fir_io_BREADY;
  input s_axi_fir_io_AWVALID;
  input s_axi_fir_io_RREADY;
  input [2:0]s_axi_fir_io_WDATA;
  input [3:0]s_axi_fir_io_AWADDR;

  wire [2:0]B;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [4:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_2_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr;
  wire int_isr8_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done0__2;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire [7:2]p_0_in;
  wire p_0_in__0;
  wire ram_reg_i_8_n_0;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [3:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARVALID;
  wire [3:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [5:0]s_axi_fir_io_RDATA;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [2:0]s_axi_fir_io_WDATA;
  wire [0:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire shift_reg_ce1;
  wire tmp_fu_141_p35_in;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_fir_io_ARVALID),
        .I2(s_axi_fir_io_RREADY),
        .I3(s_axi_fir_io_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_fir_io_RREADY),
        .I1(s_axi_fir_io_RVALID),
        .I2(s_axi_fir_io_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_fir_io_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_fir_io_AWVALID),
        .I3(s_axi_fir_io_BREADY),
        .I4(s_axi_fir_io_BVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_fir_io_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_fir_io_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_fir_io_BREADY),
        .I1(s_axi_fir_io_BVALID),
        .I2(s_axi_fir_io_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_fir_io_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA020)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(Q[4]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .O(ap_rst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5FD5)) 
    ap_loop_init_i_1
       (.I0(ap_rst_n),
        .I1(Q[4]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .O(ap_rst_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_0_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \i_cast1_reg_226[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \i_cast1_reg_226[1]_i_1 
       (.I0(Q[1]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \i_cast1_reg_226[2]_i_1 
       (.I0(Q[2]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \i_cast1_reg_226[3]_i_1 
       (.I0(Q[3]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \i_fu_62[4]_i_1 
       (.I0(Q[4]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    int_ap_idle_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(WEBWE),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter4),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_ap_ready_i_1
       (.I0(p_0_in[7]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(Q[4]),
        .I4(int_task_ap_done0__2),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFB0B0B0B0B0B0B0)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(tmp_fu_141_p35_in),
        .I2(ap_start),
        .I3(int_ap_start_i_2_n_0),
        .I4(int_ap_start_i_3_n_0),
        .I5(s_axi_fir_io_WDATA[0]),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .O(int_ap_start_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    int_ap_start_i_3
       (.I0(s_axi_fir_io_WSTRB),
        .I1(s_axi_fir_io_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[1] ),
        .O(int_ap_start_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_fir_io_WDATA[2]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(p_0_in__0),
        .O(\int_ier[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in__0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr8_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[0]_i_2 
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(\int_ier_reg_n_0_[0] ),
        .O(int_isr8_out));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \int_isr[1]_i_2 
       (.I0(Q[4]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(p_0_in__0),
        .O(int_isr));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_0_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__2),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    int_task_ap_done_i_2
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(s_axi_fir_io_ARADDR[0]),
        .I2(s_axi_fir_io_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_fir_io_ARADDR[3]),
        .I5(s_axi_fir_io_ARADDR[2]),
        .O(int_task_ap_done0__2));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hC4)) 
    ram_reg_i_1
       (.I0(Q[4]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(shift_reg_ce1));
  LUT5 #(
    .INIT(32'h00000100)) 
    ram_reg_i_7
       (.I0(ram_reg_i_8_n_0),
        .I1(Q[3]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .I4(Q[4]),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    ram_reg_i_8
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(Q[0]),
        .O(ram_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h10FFFFFF10000000)) 
    \rdata[0]_i_1 
       (.I0(s_axi_fir_io_ARADDR[0]),
        .I1(s_axi_fir_io_ARADDR[1]),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(s_axi_fir_io_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_fir_io_RDATA[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_fir_io_ARADDR[3]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(ap_start),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10FFFFFF10000000)) 
    \rdata[1]_i_1 
       (.I0(s_axi_fir_io_ARADDR[0]),
        .I1(s_axi_fir_io_ARADDR[1]),
        .I2(\rdata[1]_i_2_n_0 ),
        .I3(s_axi_fir_io_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_fir_io_RDATA[1]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata[1]_i_2 
       (.I0(int_task_ap_done),
        .I1(p_0_in__0),
        .I2(s_axi_fir_io_ARADDR[2]),
        .I3(s_axi_fir_io_ARADDR[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \rdata[9]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_fir_io_ARVALID),
        .I2(s_axi_fir_io_ARADDR[2]),
        .I3(s_axi_fir_io_ARADDR[3]),
        .I4(s_axi_fir_io_ARADDR[0]),
        .I5(s_axi_fir_io_ARADDR[1]),
        .O(\rdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_2 
       (.I0(s_axi_fir_io_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_fir_io_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_fir_io_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(p_0_in[2]),
        .Q(s_axi_fir_io_RDATA[2]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_ap_ready),
        .Q(s_axi_fir_io_RDATA[3]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(p_0_in[7]),
        .Q(s_axi_fir_io_RDATA[4]),
        .R(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(interrupt),
        .Q(s_axi_fir_io_RDATA[5]),
        .R(\rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00F6F6F6)) 
    tmp_product_i_4
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(ap_start),
        .I4(ap_loop_init),
        .I5(Q[0]),
        .O(B[2]));
  LUT5 #(
    .INIT(32'h02220AAA)) 
    tmp_product_i_5
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(Q[1]),
        .O(B[1]));
  LUT6 #(
    .INIT(64'h00F2F2F200060606)) 
    tmp_product_i_7
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(ap_start),
        .I4(ap_loop_init),
        .I5(Q[0]),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(Q[4]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(tmp_fu_141_p35_in));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_fir_io_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_fir_io_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_flow_control_loop_pipe
   (ap_loop_init,
    B,
    ap_loop_exit_ready,
    E,
    ADDRARDADDR,
    ap_condition_185,
    D,
    ap_loop_init_reg_0,
    ap_clk,
    Q,
    ap_start);
  output ap_loop_init;
  output [2:0]B;
  output ap_loop_exit_ready;
  output [0:0]E;
  output [3:0]ADDRARDADDR;
  output ap_condition_185;
  output [4:0]D;
  input ap_loop_init_reg_0;
  input ap_clk;
  input [4:0]Q;
  input ap_start;

  wire [3:0]ADDRARDADDR;
  wire [2:0]B;
  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire ap_clk;
  wire ap_condition_185;
  wire ap_loop_exit_ready;
  wire ap_loop_init;
  wire ap_loop_init_reg_0;
  wire ap_start;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_fu_66[0]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .O(ap_condition_185));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(Q[4]),
        .O(ap_loop_exit_ready));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_reg_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \i_fu_62[0]_i_1 
       (.I0(Q[4]),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0E0B)) 
    \i_fu_62[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000000A9)) 
    \i_fu_62[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ap_loop_init),
        .I4(Q[4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEFB)) 
    \i_fu_62[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(ap_condition_185),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_fu_62[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(ap_condition_185),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \icmp_ln16_reg_231[0]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(Q[4]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEF0F1FFFEF0F0)) 
    ram_reg_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_condition_185),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'h0A090A090A090A08)) 
    ram_reg_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_condition_185),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'h0C030C030C030C02)) 
    ram_reg_i_5
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_condition_185),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'hF0FFF0FFF0FFF0FE)) 
    ram_reg_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_condition_185),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h0000000000363636)) 
    tmp_product_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .I5(Q[2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h0033333300BEBEBE)) 
    tmp_product_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .I5(Q[0]),
        .O(B[1]));
  LUT6 #(
    .INIT(64'h0AAA0AAA0BBB0EEE)) 
    tmp_product_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(B[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_mul_7s_32s_32_2_1
   (shift_reg_we0,
    D,
    ap_start,
    ap_clk,
    B,
    DOADO,
    WEBWE,
    icmp_ln16_reg_231);
  output shift_reg_we0;
  output [31:0]D;
  input ap_start;
  input ap_clk;
  input [5:0]B;
  input [31:0]DOADO;
  input [0:0]WEBWE;
  input icmp_ln16_reg_231;

  wire [5:0]B;
  wire [31:0]D;
  wire [31:0]DOADO;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire ap_start;
  wire buff0_reg_n_58;
  wire buff0_reg_n_59;
  wire buff0_reg_n_60;
  wire buff0_reg_n_61;
  wire buff0_reg_n_62;
  wire buff0_reg_n_63;
  wire buff0_reg_n_64;
  wire buff0_reg_n_65;
  wire buff0_reg_n_66;
  wire buff0_reg_n_67;
  wire buff0_reg_n_68;
  wire buff0_reg_n_69;
  wire buff0_reg_n_70;
  wire buff0_reg_n_71;
  wire buff0_reg_n_72;
  wire buff0_reg_n_73;
  wire buff0_reg_n_74;
  wire buff0_reg_n_75;
  wire buff0_reg_n_76;
  wire buff0_reg_n_77;
  wire buff0_reg_n_78;
  wire buff0_reg_n_79;
  wire buff0_reg_n_80;
  wire buff0_reg_n_81;
  wire buff0_reg_n_82;
  wire buff0_reg_n_83;
  wire buff0_reg_n_84;
  wire buff0_reg_n_85;
  wire buff0_reg_n_86;
  wire buff0_reg_n_87;
  wire buff0_reg_n_88;
  wire buff0_reg_n_89;
  wire buff0_reg_n_90;
  wire c_load_reg_2501;
  wire icmp_ln16_reg_231;
  wire shift_reg_we0;
  wire tmp_product_n_100;
  wire tmp_product_n_101;
  wire tmp_product_n_102;
  wire tmp_product_n_103;
  wire tmp_product_n_104;
  wire tmp_product_n_105;
  wire tmp_product_n_106;
  wire tmp_product_n_107;
  wire tmp_product_n_108;
  wire tmp_product_n_109;
  wire tmp_product_n_110;
  wire tmp_product_n_111;
  wire tmp_product_n_112;
  wire tmp_product_n_113;
  wire tmp_product_n_114;
  wire tmp_product_n_115;
  wire tmp_product_n_116;
  wire tmp_product_n_117;
  wire tmp_product_n_118;
  wire tmp_product_n_119;
  wire tmp_product_n_120;
  wire tmp_product_n_121;
  wire tmp_product_n_122;
  wire tmp_product_n_123;
  wire tmp_product_n_124;
  wire tmp_product_n_125;
  wire tmp_product_n_126;
  wire tmp_product_n_127;
  wire tmp_product_n_128;
  wire tmp_product_n_129;
  wire tmp_product_n_130;
  wire tmp_product_n_131;
  wire tmp_product_n_132;
  wire tmp_product_n_133;
  wire tmp_product_n_134;
  wire tmp_product_n_135;
  wire tmp_product_n_136;
  wire tmp_product_n_137;
  wire tmp_product_n_138;
  wire tmp_product_n_139;
  wire tmp_product_n_140;
  wire tmp_product_n_141;
  wire tmp_product_n_142;
  wire tmp_product_n_143;
  wire tmp_product_n_144;
  wire tmp_product_n_145;
  wire tmp_product_n_146;
  wire tmp_product_n_147;
  wire tmp_product_n_148;
  wire tmp_product_n_149;
  wire tmp_product_n_150;
  wire tmp_product_n_151;
  wire tmp_product_n_152;
  wire tmp_product_n_153;
  wire tmp_product_n_58;
  wire tmp_product_n_59;
  wire tmp_product_n_60;
  wire tmp_product_n_61;
  wire tmp_product_n_62;
  wire tmp_product_n_63;
  wire tmp_product_n_64;
  wire tmp_product_n_65;
  wire tmp_product_n_66;
  wire tmp_product_n_67;
  wire tmp_product_n_68;
  wire tmp_product_n_69;
  wire tmp_product_n_70;
  wire tmp_product_n_71;
  wire tmp_product_n_72;
  wire tmp_product_n_73;
  wire tmp_product_n_74;
  wire tmp_product_n_75;
  wire tmp_product_n_76;
  wire tmp_product_n_77;
  wire tmp_product_n_78;
  wire tmp_product_n_79;
  wire tmp_product_n_80;
  wire tmp_product_n_81;
  wire tmp_product_n_82;
  wire tmp_product_n_83;
  wire tmp_product_n_84;
  wire tmp_product_n_85;
  wire tmp_product_n_86;
  wire tmp_product_n_87;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire tmp_product_n_90;
  wire tmp_product_n_91;
  wire tmp_product_n_92;
  wire tmp_product_n_93;
  wire tmp_product_n_94;
  wire tmp_product_n_95;
  wire tmp_product_n_96;
  wire tmp_product_n_97;
  wire tmp_product_n_98;
  wire tmp_product_n_99;
  wire NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff0_reg_PCOUT_UNCONNECTED;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg
       (.A({DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31],DOADO[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5:1],B[1:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(shift_reg_we0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_start),
        .CEB2(c_load_reg_2501),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg_OVERFLOW_UNCONNECTED),
        .P({buff0_reg_n_58,buff0_reg_n_59,buff0_reg_n_60,buff0_reg_n_61,buff0_reg_n_62,buff0_reg_n_63,buff0_reg_n_64,buff0_reg_n_65,buff0_reg_n_66,buff0_reg_n_67,buff0_reg_n_68,buff0_reg_n_69,buff0_reg_n_70,buff0_reg_n_71,buff0_reg_n_72,buff0_reg_n_73,buff0_reg_n_74,buff0_reg_n_75,buff0_reg_n_76,buff0_reg_n_77,buff0_reg_n_78,buff0_reg_n_79,buff0_reg_n_80,buff0_reg_n_81,buff0_reg_n_82,buff0_reg_n_83,buff0_reg_n_84,buff0_reg_n_85,buff0_reg_n_86,buff0_reg_n_87,buff0_reg_n_88,buff0_reg_n_89,buff0_reg_n_90,D[31:17]}),
        .PATTERNBDETECT(NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product_n_106,tmp_product_n_107,tmp_product_n_108,tmp_product_n_109,tmp_product_n_110,tmp_product_n_111,tmp_product_n_112,tmp_product_n_113,tmp_product_n_114,tmp_product_n_115,tmp_product_n_116,tmp_product_n_117,tmp_product_n_118,tmp_product_n_119,tmp_product_n_120,tmp_product_n_121,tmp_product_n_122,tmp_product_n_123,tmp_product_n_124,tmp_product_n_125,tmp_product_n_126,tmp_product_n_127,tmp_product_n_128,tmp_product_n_129,tmp_product_n_130,tmp_product_n_131,tmp_product_n_132,tmp_product_n_133,tmp_product_n_134,tmp_product_n_135,tmp_product_n_136,tmp_product_n_137,tmp_product_n_138,tmp_product_n_139,tmp_product_n_140,tmp_product_n_141,tmp_product_n_142,tmp_product_n_143,tmp_product_n_144,tmp_product_n_145,tmp_product_n_146,tmp_product_n_147,tmp_product_n_148,tmp_product_n_149,tmp_product_n_150,tmp_product_n_151,tmp_product_n_152,tmp_product_n_153}),
        .PCOUT(NLW_buff0_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg_UNDERFLOW_UNCONNECTED));
  FDRE \buff0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_105),
        .Q(D[0]),
        .R(1'b0));
  FDRE \buff0_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_95),
        .Q(D[10]),
        .R(1'b0));
  FDRE \buff0_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_94),
        .Q(D[11]),
        .R(1'b0));
  FDRE \buff0_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_93),
        .Q(D[12]),
        .R(1'b0));
  FDRE \buff0_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_92),
        .Q(D[13]),
        .R(1'b0));
  FDRE \buff0_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_91),
        .Q(D[14]),
        .R(1'b0));
  FDRE \buff0_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_90),
        .Q(D[15]),
        .R(1'b0));
  FDRE \buff0_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_89),
        .Q(D[16]),
        .R(1'b0));
  FDRE \buff0_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_104),
        .Q(D[1]),
        .R(1'b0));
  FDRE \buff0_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_103),
        .Q(D[2]),
        .R(1'b0));
  FDRE \buff0_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_102),
        .Q(D[3]),
        .R(1'b0));
  FDRE \buff0_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_101),
        .Q(D[4]),
        .R(1'b0));
  FDRE \buff0_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_100),
        .Q(D[5]),
        .R(1'b0));
  FDRE \buff0_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_99),
        .Q(D[6]),
        .R(1'b0));
  FDRE \buff0_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_98),
        .Q(D[7]),
        .R(1'b0));
  FDRE \buff0_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_97),
        .Q(D[8]),
        .R(1'b0));
  FDRE \buff0_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product_n_96),
        .Q(D[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_2
       (.I0(WEBWE),
        .I1(icmp_ln16_reg_231),
        .O(shift_reg_we0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DOADO[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5],B[5:1],B[1:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(shift_reg_we0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_start),
        .CEB2(c_load_reg_2501),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({tmp_product_n_58,tmp_product_n_59,tmp_product_n_60,tmp_product_n_61,tmp_product_n_62,tmp_product_n_63,tmp_product_n_64,tmp_product_n_65,tmp_product_n_66,tmp_product_n_67,tmp_product_n_68,tmp_product_n_69,tmp_product_n_70,tmp_product_n_71,tmp_product_n_72,tmp_product_n_73,tmp_product_n_74,tmp_product_n_75,tmp_product_n_76,tmp_product_n_77,tmp_product_n_78,tmp_product_n_79,tmp_product_n_80,tmp_product_n_81,tmp_product_n_82,tmp_product_n_83,tmp_product_n_84,tmp_product_n_85,tmp_product_n_86,tmp_product_n_87,tmp_product_n_88,tmp_product_n_89,tmp_product_n_90,tmp_product_n_91,tmp_product_n_92,tmp_product_n_93,tmp_product_n_94,tmp_product_n_95,tmp_product_n_96,tmp_product_n_97,tmp_product_n_98,tmp_product_n_99,tmp_product_n_100,tmp_product_n_101,tmp_product_n_102,tmp_product_n_103,tmp_product_n_104,tmp_product_n_105}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_product_n_106,tmp_product_n_107,tmp_product_n_108,tmp_product_n_109,tmp_product_n_110,tmp_product_n_111,tmp_product_n_112,tmp_product_n_113,tmp_product_n_114,tmp_product_n_115,tmp_product_n_116,tmp_product_n_117,tmp_product_n_118,tmp_product_n_119,tmp_product_n_120,tmp_product_n_121,tmp_product_n_122,tmp_product_n_123,tmp_product_n_124,tmp_product_n_125,tmp_product_n_126,tmp_product_n_127,tmp_product_n_128,tmp_product_n_129,tmp_product_n_130,tmp_product_n_131,tmp_product_n_132,tmp_product_n_133,tmp_product_n_134,tmp_product_n_135,tmp_product_n_136,tmp_product_n_137,tmp_product_n_138,tmp_product_n_139,tmp_product_n_140,tmp_product_n_141,tmp_product_n_142,tmp_product_n_143,tmp_product_n_144,tmp_product_n_145,tmp_product_n_146,tmp_product_n_147,tmp_product_n_148,tmp_product_n_149,tmp_product_n_150,tmp_product_n_151,tmp_product_n_152,tmp_product_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_product_i_1
       (.I0(icmp_ln16_reg_231),
        .O(c_load_reg_2501));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_TOP_shift_reg_RAM_AUTO_1R1W
   (DOADO,
    ap_clk,
    shift_reg_ce1,
    shift_reg_we0,
    ADDRARDADDR,
    Q,
    x,
    WEA,
    WEBWE);
  output [31:0]DOADO;
  input ap_clk;
  input shift_reg_ce1;
  input shift_reg_we0;
  input [3:0]ADDRARDADDR;
  input [3:0]Q;
  input [31:0]x;
  input [0:0]WEA;
  input [0:0]WEBWE;

  wire [3:0]ADDRARDADDR;
  wire [31:0]DOADO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire ap_clk;
  wire shift_reg_ce1;
  wire shift_reg_we0;
  wire [31:0]x;
  wire NLW_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "inst/shift_reg_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(x),
        .DIBDI(DOADO),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(shift_reg_ce1),
        .ENBWREN(shift_reg_we0),
        .INJECTDBITERR(NLW_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
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
