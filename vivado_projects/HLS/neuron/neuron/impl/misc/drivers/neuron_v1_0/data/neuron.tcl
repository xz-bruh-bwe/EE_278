# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
# Tool Version Limit: 2023.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XNeuron" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_NEURON_IO_BASEADDR" \
        "C_S_AXI_NEURON_IO_HIGHADDR"

    xdefine_config_file $drv_handle "xneuron_g.c" "XNeuron" \
        "DEVICE_ID" \
        "C_S_AXI_NEURON_IO_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XNeuron" \
        "DEVICE_ID" \
        "C_S_AXI_NEURON_IO_BASEADDR" \
        "C_S_AXI_NEURON_IO_HIGHADDR"
}

