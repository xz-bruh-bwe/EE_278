// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// AXI_LITE
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
// 0x40 ~
// 0x7f : Memory 'a' (10 * 32b)
//        Word n : bit [31:0] - a[n]
// 0x80 ~
// 0xbf : Memory 'b' (10 * 32b)
//        Word n : bit [31:0] - b[n]
// 0xc0 ~
// 0xff : Memory 'result' (10 * 32b)
//        Word n : bit [31:0] - result[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL     0x00
#define XARRAY_ADD_AXI_LITE_ADDR_GIE         0x04
#define XARRAY_ADD_AXI_LITE_ADDR_IER         0x08
#define XARRAY_ADD_AXI_LITE_ADDR_ISR         0x0c
#define XARRAY_ADD_AXI_LITE_ADDR_A_BASE      0x40
#define XARRAY_ADD_AXI_LITE_ADDR_A_HIGH      0x7f
#define XARRAY_ADD_AXI_LITE_WIDTH_A          32
#define XARRAY_ADD_AXI_LITE_DEPTH_A          10
#define XARRAY_ADD_AXI_LITE_ADDR_B_BASE      0x80
#define XARRAY_ADD_AXI_LITE_ADDR_B_HIGH      0xbf
#define XARRAY_ADD_AXI_LITE_WIDTH_B          32
#define XARRAY_ADD_AXI_LITE_DEPTH_B          10
#define XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE 0xc0
#define XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH 0xff
#define XARRAY_ADD_AXI_LITE_WIDTH_RESULT     32
#define XARRAY_ADD_AXI_LITE_DEPTH_RESULT     10

