############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project chatGPT_proj
set_top array_add
add_files HLS_Code/array_add.cpp
add_files -tb HLS_Code/array_add_tb.cpp
open_solution "chatGPT_proj" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/Baron/Documents/Grad_School/EE_278/HLS_exports -rtl verilog
config_cosim -tool xsim -trace_level port -wave_debug
source "./chatGPT_proj/chatGPT_proj/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level port
export_design -rtl verilog -format ip_catalog -output C:/Users/Baron/Documents/Grad_School/EE_278/HLS_exports
