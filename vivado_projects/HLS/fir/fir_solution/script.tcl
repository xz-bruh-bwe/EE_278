############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project fir
set_top fir
add_files HLS_Code/fdacoefs.h
add_files HLS_Code/fir.c
add_files HLS_Code/fir.h
add_files -tb HLS_Code/fir_test.c
add_files -tb HLS_Code/out.gold.dat
open_solution "fir_solution" -flow_target vivado
set_part {xa7z010clg225-1I}
create_clock -period 10 -name default
#source "./fir/fir_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
