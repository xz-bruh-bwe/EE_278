############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project neuron_int_float
add_files HLS_Code/neuron_int_float.c
add_files HLS_Code/neuron_int_float.h
add_files -tb HLS_Code/neuron_int_float_test.c
open_solution "neuron_int_float" -flow_target vivado
set_part {xa7a100tfgg484-1Q}
create_clock -period 10 -name default
#source "./neuron_int_float/neuron_int_float/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
