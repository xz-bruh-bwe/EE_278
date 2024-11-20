############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project lenet_proj
set_top lenet_predict
add_files lenet_main.cpp
add_files lenet_support.cpp
add_files lenet_support.h
open_solution "lenet_predict" -flow_target vivado
set_part {xczu7ev-ffvf1517-3-e}
create_clock -period 10 -name default
#source "./lenet_proj/lenet_predict/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
