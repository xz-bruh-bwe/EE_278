// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlenet_predict.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLenet_predict_CfgInitialize(XLenet_predict *InstancePtr, XLenet_predict_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLenet_predict_Start(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLenet_predict_IsDone(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLenet_predict_IsIdle(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLenet_predict_IsReady(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLenet_predict_EnableAutoRestart(XLenet_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLenet_predict_DisableAutoRestart(XLenet_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XLenet_predict_Get_predicted_class(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_PREDICTED_CLASS_DATA);
    return Data;
}

u32 XLenet_predict_Get_predicted_class_vld(XLenet_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_PREDICTED_CLASS_CTRL);
    return Data & 0x1;
}

void XLenet_predict_Set_input_r(XLenet_predict *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_r_BaseAddress, XLENET_PREDICT_CONTROL_R_ADDR_INPUT_R_DATA, (u32)(Data));
    XLenet_predict_WriteReg(InstancePtr->Control_r_BaseAddress, XLENET_PREDICT_CONTROL_R_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XLenet_predict_Get_input_r(XLenet_predict *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_predict_ReadReg(InstancePtr->Control_r_BaseAddress, XLENET_PREDICT_CONTROL_R_ADDR_INPUT_R_DATA);
    Data += (u64)XLenet_predict_ReadReg(InstancePtr->Control_r_BaseAddress, XLENET_PREDICT_CONTROL_R_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XLenet_predict_InterruptGlobalEnable(XLenet_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_GIE, 1);
}

void XLenet_predict_InterruptGlobalDisable(XLenet_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_GIE, 0);
}

void XLenet_predict_InterruptEnable(XLenet_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_IER);
    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_IER, Register | Mask);
}

void XLenet_predict_InterruptDisable(XLenet_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_IER);
    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLenet_predict_InterruptClear(XLenet_predict *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_predict_WriteReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_ISR, Mask);
}

u32 XLenet_predict_InterruptGetEnabled(XLenet_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_IER);
}

u32 XLenet_predict_InterruptGetStatus(XLenet_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLenet_predict_ReadReg(InstancePtr->Control_BaseAddress, XLENET_PREDICT_CONTROL_ADDR_ISR);
}

