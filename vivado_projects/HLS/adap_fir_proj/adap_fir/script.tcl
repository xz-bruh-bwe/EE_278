############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project adap_fir_proj
set_top adap_fir
add_files HLS_Code/adap_fir.c
add_files HLS_Code/adap_fir.h
add_files -tb HLS_Code/adap_fir_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "adap_fir" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
source "./adap_fir_proj/adap_fir/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
