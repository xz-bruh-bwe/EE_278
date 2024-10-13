############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project neuron
set_top neuron
add_files HLS_Code/neuron.c
add_files HLS_Code/neuron.h
add_files -tb HLS_Code/neuron_test.c
add_files -tb HLS_Code/out.gold.dat
open_solution "neuron" -flow_target vivado
set_part {xa7a75tcsg324-1Q}
create_clock -period 10 -name default
#source "./neuron/neuron/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
