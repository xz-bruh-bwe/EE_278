// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 15:33:53 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.gen/sources_1/ip/array_add_0_1/array_add_0_stub.v
// Design      : array_add_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "array_add,Vivado 2023.1" *)
module array_add_0(ap_start, ap_done, ap_idle, ap_ready, a, b, result)
/* synthesis syn_black_box black_box_pad_pin="ap_start,ap_done,ap_idle,ap_ready,a[31:0],b[31:0],result[31:0]" */;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]a;
  input [31:0]b;
  output [31:0]result;
endmodule
