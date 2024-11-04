// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 15:53:41 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.gen/sources_1/ip/array_add_0_2/array_add_0_stub.v
// Design      : array_add_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "array_add,Vivado 2023.1" *)
module array_add_0(s_axi_AXI_LITE_AWADDR, 
  s_axi_AXI_LITE_AWVALID, s_axi_AXI_LITE_AWREADY, s_axi_AXI_LITE_WDATA, 
  s_axi_AXI_LITE_WSTRB, s_axi_AXI_LITE_WVALID, s_axi_AXI_LITE_WREADY, 
  s_axi_AXI_LITE_BRESP, s_axi_AXI_LITE_BVALID, s_axi_AXI_LITE_BREADY, 
  s_axi_AXI_LITE_ARADDR, s_axi_AXI_LITE_ARVALID, s_axi_AXI_LITE_ARREADY, 
  s_axi_AXI_LITE_RDATA, s_axi_AXI_LITE_RRESP, s_axi_AXI_LITE_RVALID, 
  s_axi_AXI_LITE_RREADY, ap_clk, ap_rst_n, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXI_LITE_AWADDR[7:0],s_axi_AXI_LITE_AWVALID,s_axi_AXI_LITE_AWREADY,s_axi_AXI_LITE_WDATA[31:0],s_axi_AXI_LITE_WSTRB[3:0],s_axi_AXI_LITE_WVALID,s_axi_AXI_LITE_WREADY,s_axi_AXI_LITE_BRESP[1:0],s_axi_AXI_LITE_BVALID,s_axi_AXI_LITE_BREADY,s_axi_AXI_LITE_ARADDR[7:0],s_axi_AXI_LITE_ARVALID,s_axi_AXI_LITE_ARREADY,s_axi_AXI_LITE_RDATA[31:0],s_axi_AXI_LITE_RRESP[1:0],s_axi_AXI_LITE_RVALID,s_axi_AXI_LITE_RREADY,ap_rst_n,interrupt" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [7:0]s_axi_AXI_LITE_AWADDR;
  input s_axi_AXI_LITE_AWVALID;
  output s_axi_AXI_LITE_AWREADY;
  input [31:0]s_axi_AXI_LITE_WDATA;
  input [3:0]s_axi_AXI_LITE_WSTRB;
  input s_axi_AXI_LITE_WVALID;
  output s_axi_AXI_LITE_WREADY;
  output [1:0]s_axi_AXI_LITE_BRESP;
  output s_axi_AXI_LITE_BVALID;
  input s_axi_AXI_LITE_BREADY;
  input [7:0]s_axi_AXI_LITE_ARADDR;
  input s_axi_AXI_LITE_ARVALID;
  output s_axi_AXI_LITE_ARREADY;
  output [31:0]s_axi_AXI_LITE_RDATA;
  output [1:0]s_axi_AXI_LITE_RRESP;
  output s_axi_AXI_LITE_RVALID;
  input s_axi_AXI_LITE_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
endmodule
