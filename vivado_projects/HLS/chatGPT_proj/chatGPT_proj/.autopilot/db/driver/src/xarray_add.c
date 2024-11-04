// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xarray_add.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XArray_add_CfgInitialize(XArray_add *InstancePtr, XArray_add_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axi_lite_BaseAddress = ConfigPtr->Axi_lite_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XArray_add_Start(XArray_add *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL) & 0x80;
    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL, Data | 0x01);
}

u32 XArray_add_IsDone(XArray_add *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XArray_add_IsIdle(XArray_add *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XArray_add_IsReady(XArray_add *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XArray_add_EnableAutoRestart(XArray_add *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL, 0x80);
}

void XArray_add_DisableAutoRestart(XArray_add *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_AP_CTRL, 0);
}

u32 XArray_add_Get_a_BaseAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_BASE);
}

u32 XArray_add_Get_a_HighAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_HIGH);
}

u32 XArray_add_Get_a_TotalBytes(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARRAY_ADD_AXI_LITE_ADDR_A_HIGH - XARRAY_ADD_AXI_LITE_ADDR_A_BASE + 1);
}

u32 XArray_add_Get_a_BitWidth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_WIDTH_A;
}

u32 XArray_add_Get_a_Depth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_DEPTH_A;
}

u32 XArray_add_Write_a_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_A_HIGH - XARRAY_ADD_AXI_LITE_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_a_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_A_HIGH - XARRAY_ADD_AXI_LITE_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArray_add_Write_a_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_A_HIGH - XARRAY_ADD_AXI_LITE_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_a_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_A_HIGH - XARRAY_ADD_AXI_LITE_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_A_BASE + offset + i);
    }
    return length;
}

u32 XArray_add_Get_b_BaseAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_BASE);
}

u32 XArray_add_Get_b_HighAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_HIGH);
}

u32 XArray_add_Get_b_TotalBytes(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARRAY_ADD_AXI_LITE_ADDR_B_HIGH - XARRAY_ADD_AXI_LITE_ADDR_B_BASE + 1);
}

u32 XArray_add_Get_b_BitWidth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_WIDTH_B;
}

u32 XArray_add_Get_b_Depth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_DEPTH_B;
}

u32 XArray_add_Write_b_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_B_HIGH - XARRAY_ADD_AXI_LITE_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_b_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_B_HIGH - XARRAY_ADD_AXI_LITE_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArray_add_Write_b_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_B_HIGH - XARRAY_ADD_AXI_LITE_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_b_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_B_HIGH - XARRAY_ADD_AXI_LITE_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_B_BASE + offset + i);
    }
    return length;
}

u32 XArray_add_Get_result_BaseAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE);
}

u32 XArray_add_Get_result_HighAddress(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH);
}

u32 XArray_add_Get_result_TotalBytes(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH - XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + 1);
}

u32 XArray_add_Get_result_BitWidth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_WIDTH_RESULT;
}

u32 XArray_add_Get_result_Depth(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARRAY_ADD_AXI_LITE_DEPTH_RESULT;
}

u32 XArray_add_Write_result_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH - XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_result_Words(XArray_add *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH - XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArray_add_Write_result_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH - XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArray_add_Read_result_Bytes(XArray_add *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARRAY_ADD_AXI_LITE_ADDR_RESULT_HIGH - XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axi_lite_BaseAddress + XARRAY_ADD_AXI_LITE_ADDR_RESULT_BASE + offset + i);
    }
    return length;
}

void XArray_add_InterruptGlobalEnable(XArray_add *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_GIE, 1);
}

void XArray_add_InterruptGlobalDisable(XArray_add *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_GIE, 0);
}

void XArray_add_InterruptEnable(XArray_add *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_IER);
    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_IER, Register | Mask);
}

void XArray_add_InterruptDisable(XArray_add *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_IER);
    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_IER, Register & (~Mask));
}

void XArray_add_InterruptClear(XArray_add *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArray_add_WriteReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_ISR, Mask);
}

u32 XArray_add_InterruptGetEnabled(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_IER);
}

u32 XArray_add_InterruptGetStatus(XArray_add *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XArray_add_ReadReg(InstancePtr->Axi_lite_BaseAddress, XARRAY_ADD_AXI_LITE_ADDR_ISR);
}

