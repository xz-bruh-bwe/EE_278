// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xneuron.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNeuron_CfgInitialize(XNeuron *InstancePtr, XNeuron_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Neuron_io_BaseAddress = ConfigPtr->Neuron_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNeuron_Start(XNeuron *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL) & 0x80;
    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNeuron_IsDone(XNeuron *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNeuron_IsIdle(XNeuron *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNeuron_IsReady(XNeuron *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNeuron_EnableAutoRestart(XNeuron *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL, 0x80);
}

void XNeuron_DisableAutoRestart(XNeuron *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_AP_CTRL, 0);
}

void XNeuron_InterruptGlobalEnable(XNeuron *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_GIE, 1);
}

void XNeuron_InterruptGlobalDisable(XNeuron *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_GIE, 0);
}

void XNeuron_InterruptEnable(XNeuron *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_IER);
    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_IER, Register | Mask);
}

void XNeuron_InterruptDisable(XNeuron *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_IER);
    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_IER, Register & (~Mask));
}

void XNeuron_InterruptClear(XNeuron *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNeuron_WriteReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_ISR, Mask);
}

u32 XNeuron_InterruptGetEnabled(XNeuron *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_IER);
}

u32 XNeuron_InterruptGetStatus(XNeuron *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNeuron_ReadReg(InstancePtr->Neuron_io_BaseAddress, XNEURON_NEURON_IO_ADDR_ISR);
}

