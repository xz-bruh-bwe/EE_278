# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
# Tool Version Limit: 2023.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XFir_top" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_FIR_IO_BASEADDR" \
        "C_S_AXI_FIR_IO_HIGHADDR"

    xdefine_config_file $drv_handle "xfir_top_g.c" "XFir_top" \
        "DEVICE_ID" \
        "C_S_AXI_FIR_IO_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XFir_top" \
        "DEVICE_ID" \
        "C_S_AXI_FIR_IO_BASEADDR" \
        "C_S_AXI_FIR_IO_HIGHADDR"
}

