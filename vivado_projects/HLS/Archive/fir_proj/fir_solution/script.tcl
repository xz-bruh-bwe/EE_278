############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project fir_proj
set_top fir_TOP
add_files HLS_Code/fir.c
add_files -tb HLS_Code/fir_test.c
add_files -tb HLS_Code/out.gold.dat
open_solution "fir_solution" -flow_target vivado
set_part {xa7a12tcsg325-1Q}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS -rtl verilog
config_cosim -tool xsim -trace_level all -wave_debug
#source "./fir_proj/fir_solution/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level all
export_design -rtl verilog -format ip_catalog -output C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS
