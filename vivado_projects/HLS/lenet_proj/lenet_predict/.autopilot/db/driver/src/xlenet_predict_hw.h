// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of predicted_class
//        bit 31~0 - predicted_class[31:0] (Read)
// 0x14 : Control signal of predicted_class
//        bit 0  - predicted_class_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLENET_PREDICT_CONTROL_ADDR_AP_CTRL              0x00
#define XLENET_PREDICT_CONTROL_ADDR_GIE                  0x04
#define XLENET_PREDICT_CONTROL_ADDR_IER                  0x08
#define XLENET_PREDICT_CONTROL_ADDR_ISR                  0x0c
#define XLENET_PREDICT_CONTROL_ADDR_PREDICTED_CLASS_DATA 0x10
#define XLENET_PREDICT_CONTROL_BITS_PREDICTED_CLASS_DATA 32
#define XLENET_PREDICT_CONTROL_ADDR_PREDICTED_CLASS_CTRL 0x14

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of conv1_filters
//        bit 31~0 - conv1_filters[31:0] (Read/Write)
// 0x20 : Data signal of conv1_filters
//        bit 31~0 - conv1_filters[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of conv1_bias
//        bit 31~0 - conv1_bias[31:0] (Read/Write)
// 0x2c : Data signal of conv1_bias
//        bit 31~0 - conv1_bias[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of conv2_filters
//        bit 31~0 - conv2_filters[31:0] (Read/Write)
// 0x38 : Data signal of conv2_filters
//        bit 31~0 - conv2_filters[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of conv2_bias
//        bit 31~0 - conv2_bias[31:0] (Read/Write)
// 0x44 : Data signal of conv2_bias
//        bit 31~0 - conv2_bias[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of fc1_weights
//        bit 31~0 - fc1_weights[31:0] (Read/Write)
// 0x50 : Data signal of fc1_weights
//        bit 31~0 - fc1_weights[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of fc1_bias
//        bit 31~0 - fc1_bias[31:0] (Read/Write)
// 0x5c : Data signal of fc1_bias
//        bit 31~0 - fc1_bias[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of fc2_weights
//        bit 31~0 - fc2_weights[31:0] (Read/Write)
// 0x68 : Data signal of fc2_weights
//        bit 31~0 - fc2_weights[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of fc2_bias
//        bit 31~0 - fc2_bias[31:0] (Read/Write)
// 0x74 : Data signal of fc2_bias
//        bit 31~0 - fc2_bias[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of fc3_weights
//        bit 31~0 - fc3_weights[31:0] (Read/Write)
// 0x80 : Data signal of fc3_weights
//        bit 31~0 - fc3_weights[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of fc3_bias
//        bit 31~0 - fc3_bias[31:0] (Read/Write)
// 0x8c : Data signal of fc3_bias
//        bit 31~0 - fc3_bias[63:32] (Read/Write)
// 0x90 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLENET_PREDICT_CONTROL_R_ADDR_INPUT_R_DATA       0x10
#define XLENET_PREDICT_CONTROL_R_BITS_INPUT_R_DATA       64
#define XLENET_PREDICT_CONTROL_R_ADDR_CONV1_FILTERS_DATA 0x1c
#define XLENET_PREDICT_CONTROL_R_BITS_CONV1_FILTERS_DATA 64
#define XLENET_PREDICT_CONTROL_R_ADDR_CONV1_BIAS_DATA    0x28
#define XLENET_PREDICT_CONTROL_R_BITS_CONV1_BIAS_DATA    64
#define XLENET_PREDICT_CONTROL_R_ADDR_CONV2_FILTERS_DATA 0x34
#define XLENET_PREDICT_CONTROL_R_BITS_CONV2_FILTERS_DATA 64
#define XLENET_PREDICT_CONTROL_R_ADDR_CONV2_BIAS_DATA    0x40
#define XLENET_PREDICT_CONTROL_R_BITS_CONV2_BIAS_DATA    64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC1_WEIGHTS_DATA   0x4c
#define XLENET_PREDICT_CONTROL_R_BITS_FC1_WEIGHTS_DATA   64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC1_BIAS_DATA      0x58
#define XLENET_PREDICT_CONTROL_R_BITS_FC1_BIAS_DATA      64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC2_WEIGHTS_DATA   0x64
#define XLENET_PREDICT_CONTROL_R_BITS_FC2_WEIGHTS_DATA   64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC2_BIAS_DATA      0x70
#define XLENET_PREDICT_CONTROL_R_BITS_FC2_BIAS_DATA      64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC3_WEIGHTS_DATA   0x7c
#define XLENET_PREDICT_CONTROL_R_BITS_FC3_WEIGHTS_DATA   64
#define XLENET_PREDICT_CONTROL_R_ADDR_FC3_BIAS_DATA      0x88
#define XLENET_PREDICT_CONTROL_R_BITS_FC3_BIAS_DATA      64

