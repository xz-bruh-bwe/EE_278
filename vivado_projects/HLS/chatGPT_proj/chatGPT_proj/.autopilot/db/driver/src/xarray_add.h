// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XARRAY_ADD_H
#define XARRAY_ADD_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xarray_add_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Axi_lite_BaseAddress;
} XArray_add_Config;
#endif

typedef struct {
    u64 Axi_lite_BaseAddress;
    u32 IsReady;
} XArray_add;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XArray_add_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XArray_add_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XArray_add_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XArray_add_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XArray_add_Initialize(XArray_add *InstancePtr, u16 DeviceId);
XArray_add_Config* XArray_add_LookupConfig(u16 DeviceId);
int XArray_add_CfgInitialize(XArray_add *InstancePtr, XArray_add_Config *ConfigPtr);
#else
int XArray_add_Initialize(XArray_add *InstancePtr, const char* InstanceName);
int XArray_add_Release(XArray_add *InstancePtr);
#endif

void XArray_add_Start(XArray_add *InstancePtr);
u32 XArray_add_IsDone(XArray_add *InstancePtr);
u32 XArray_add_IsIdle(XArray_add *InstancePtr);
u32 XArray_add_IsReady(XArray_add *InstancePtr);
void XArray_add_EnableAutoRestart(XArray_add *InstancePtr);
void XArray_add_DisableAutoRestart(XArray_add *InstancePtr);

u32 XArray_add_Get_a_BaseAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_a_HighAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_a_TotalBytes(XArray_add *InstancePtr);
u32 XArray_add_Get_a_BitWidth(XArray_add *InstancePtr);
u32 XArray_add_Get_a_Depth(XArray_add *InstancePtr);
u32 XArray_add_Write_a_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Read_a_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Write_a_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);
u32 XArray_add_Read_a_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);
u32 XArray_add_Get_b_BaseAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_b_HighAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_b_TotalBytes(XArray_add *InstancePtr);
u32 XArray_add_Get_b_BitWidth(XArray_add *InstancePtr);
u32 XArray_add_Get_b_Depth(XArray_add *InstancePtr);
u32 XArray_add_Write_b_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Read_b_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Write_b_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);
u32 XArray_add_Read_b_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);
u32 XArray_add_Get_result_BaseAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_result_HighAddress(XArray_add *InstancePtr);
u32 XArray_add_Get_result_TotalBytes(XArray_add *InstancePtr);
u32 XArray_add_Get_result_BitWidth(XArray_add *InstancePtr);
u32 XArray_add_Get_result_Depth(XArray_add *InstancePtr);
u32 XArray_add_Write_result_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Read_result_Words(XArray_add *InstancePtr, int offset, word_type *data, int length);
u32 XArray_add_Write_result_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);
u32 XArray_add_Read_result_Bytes(XArray_add *InstancePtr, int offset, char *data, int length);

void XArray_add_InterruptGlobalEnable(XArray_add *InstancePtr);
void XArray_add_InterruptGlobalDisable(XArray_add *InstancePtr);
void XArray_add_InterruptEnable(XArray_add *InstancePtr, u32 Mask);
void XArray_add_InterruptDisable(XArray_add *InstancePtr, u32 Mask);
void XArray_add_InterruptClear(XArray_add *InstancePtr, u32 Mask);
u32 XArray_add_InterruptGetEnabled(XArray_add *InstancePtr);
u32 XArray_add_InterruptGetStatus(XArray_add *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
