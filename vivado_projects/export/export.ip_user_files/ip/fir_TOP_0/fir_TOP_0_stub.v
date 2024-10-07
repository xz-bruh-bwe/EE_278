// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Oct  3 23:54:07 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/export/export.gen/sources_1/ip/fir_TOP_0/fir_TOP_0_stub.v
// Design      : fir_TOP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fir_TOP,Vivado 2023.1" *)
module fir_TOP_0(y_ap_vld, s_axi_fir_io_AWADDR, 
  s_axi_fir_io_AWVALID, s_axi_fir_io_AWREADY, s_axi_fir_io_WDATA, s_axi_fir_io_WSTRB, 
  s_axi_fir_io_WVALID, s_axi_fir_io_WREADY, s_axi_fir_io_BRESP, s_axi_fir_io_BVALID, 
  s_axi_fir_io_BREADY, s_axi_fir_io_ARADDR, s_axi_fir_io_ARVALID, s_axi_fir_io_ARREADY, 
  s_axi_fir_io_RDATA, s_axi_fir_io_RRESP, s_axi_fir_io_RVALID, s_axi_fir_io_RREADY, ap_clk, 
  ap_rst_n, interrupt, y, x)
/* synthesis syn_black_box black_box_pad_pin="y_ap_vld,s_axi_fir_io_AWADDR[3:0],s_axi_fir_io_AWVALID,s_axi_fir_io_AWREADY,s_axi_fir_io_WDATA[31:0],s_axi_fir_io_WSTRB[3:0],s_axi_fir_io_WVALID,s_axi_fir_io_WREADY,s_axi_fir_io_BRESP[1:0],s_axi_fir_io_BVALID,s_axi_fir_io_BREADY,s_axi_fir_io_ARADDR[3:0],s_axi_fir_io_ARVALID,s_axi_fir_io_ARREADY,s_axi_fir_io_RDATA[31:0],s_axi_fir_io_RRESP[1:0],s_axi_fir_io_RVALID,s_axi_fir_io_RREADY,ap_rst_n,interrupt,y[31:0],x[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output y_ap_vld;
  input [3:0]s_axi_fir_io_AWADDR;
  input s_axi_fir_io_AWVALID;
  output s_axi_fir_io_AWREADY;
  input [31:0]s_axi_fir_io_WDATA;
  input [3:0]s_axi_fir_io_WSTRB;
  input s_axi_fir_io_WVALID;
  output s_axi_fir_io_WREADY;
  output [1:0]s_axi_fir_io_BRESP;
  output s_axi_fir_io_BVALID;
  input s_axi_fir_io_BREADY;
  input [3:0]s_axi_fir_io_ARADDR;
  input s_axi_fir_io_ARVALID;
  output s_axi_fir_io_ARREADY;
  output [31:0]s_axi_fir_io_RDATA;
  output [1:0]s_axi_fir_io_RRESP;
  output s_axi_fir_io_RVALID;
  input s_axi_fir_io_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [31:0]y;
  input [31:0]x;
endmodule
