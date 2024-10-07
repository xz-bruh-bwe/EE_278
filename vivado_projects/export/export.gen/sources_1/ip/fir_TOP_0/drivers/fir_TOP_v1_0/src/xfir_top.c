// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfir_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFir_top_CfgInitialize(XFir_top *InstancePtr, XFir_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Fir_io_BaseAddress = ConfigPtr->Fir_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFir_top_Start(XFir_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL) & 0x80;
    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFir_top_IsDone(XFir_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFir_top_IsIdle(XFir_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFir_top_IsReady(XFir_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFir_top_EnableAutoRestart(XFir_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL, 0x80);
}

void XFir_top_DisableAutoRestart(XFir_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_AP_CTRL, 0);
}

void XFir_top_InterruptGlobalEnable(XFir_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_GIE, 1);
}

void XFir_top_InterruptGlobalDisable(XFir_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_GIE, 0);
}

void XFir_top_InterruptEnable(XFir_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_IER);
    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_IER, Register | Mask);
}

void XFir_top_InterruptDisable(XFir_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_IER);
    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_IER, Register & (~Mask));
}

void XFir_top_InterruptClear(XFir_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_top_WriteReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_ISR, Mask);
}

u32 XFir_top_InterruptGetEnabled(XFir_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_IER);
}

u32 XFir_top_InterruptGetStatus(XFir_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFir_top_ReadReg(InstancePtr->Fir_io_BaseAddress, XFIR_TOP_FIR_IO_ADDR_ISR);
}

