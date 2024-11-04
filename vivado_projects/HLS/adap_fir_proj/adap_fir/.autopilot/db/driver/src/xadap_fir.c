// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xadap_fir.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAdap_fir_CfgInitialize(XAdap_fir *InstancePtr, XAdap_fir_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Fir_io_BaseAddress = ConfigPtr->Fir_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAdap_fir_Start(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL) & 0x80;
    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAdap_fir_IsDone(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAdap_fir_IsIdle(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAdap_fir_IsReady(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAdap_fir_EnableAutoRestart(XAdap_fir *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL, 0x80);
}

void XAdap_fir_DisableAutoRestart(XAdap_fir *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_AP_CTRL, 0);
}

u32 XAdap_fir_Get_y(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_Y_DATA);
    return Data;
}

u32 XAdap_fir_Get_y_vld(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_Y_CTRL);
    return Data & 0x1;
}

void XAdap_fir_Set_x(XAdap_fir *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_X_DATA, Data);
}

u32 XAdap_fir_Get_x(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_X_DATA);
    return Data;
}

void XAdap_fir_Set_d(XAdap_fir *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_D_DATA, Data);
}

u32 XAdap_fir_Get_d(XAdap_fir *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_D_DATA);
    return Data;
}

void XAdap_fir_InterruptGlobalEnable(XAdap_fir *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_GIE, 1);
}

void XAdap_fir_InterruptGlobalDisable(XAdap_fir *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_GIE, 0);
}

void XAdap_fir_InterruptEnable(XAdap_fir *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_IER);
    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_IER, Register | Mask);
}

void XAdap_fir_InterruptDisable(XAdap_fir *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_IER);
    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_IER, Register & (~Mask));
}

void XAdap_fir_InterruptClear(XAdap_fir *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdap_fir_WriteReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_ISR, Mask);
}

u32 XAdap_fir_InterruptGetEnabled(XAdap_fir *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_IER);
}

u32 XAdap_fir_InterruptGetStatus(XAdap_fir *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdap_fir_ReadReg(InstancePtr->Fir_io_BaseAddress, XADAP_FIR_FIR_IO_ADDR_ISR);
}

