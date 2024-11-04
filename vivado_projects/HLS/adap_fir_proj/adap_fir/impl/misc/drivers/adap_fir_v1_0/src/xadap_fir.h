// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XADAP_FIR_H
#define XADAP_FIR_H

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
#include "xadap_fir_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Fir_io_BaseAddress;
} XAdap_fir_Config;
#endif

typedef struct {
    u64 Fir_io_BaseAddress;
    u32 IsReady;
} XAdap_fir;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAdap_fir_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAdap_fir_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAdap_fir_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAdap_fir_ReadReg(BaseAddress, RegOffset) \
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
int XAdap_fir_Initialize(XAdap_fir *InstancePtr, u16 DeviceId);
XAdap_fir_Config* XAdap_fir_LookupConfig(u16 DeviceId);
int XAdap_fir_CfgInitialize(XAdap_fir *InstancePtr, XAdap_fir_Config *ConfigPtr);
#else
int XAdap_fir_Initialize(XAdap_fir *InstancePtr, const char* InstanceName);
int XAdap_fir_Release(XAdap_fir *InstancePtr);
#endif

void XAdap_fir_Start(XAdap_fir *InstancePtr);
u32 XAdap_fir_IsDone(XAdap_fir *InstancePtr);
u32 XAdap_fir_IsIdle(XAdap_fir *InstancePtr);
u32 XAdap_fir_IsReady(XAdap_fir *InstancePtr);
void XAdap_fir_EnableAutoRestart(XAdap_fir *InstancePtr);
void XAdap_fir_DisableAutoRestart(XAdap_fir *InstancePtr);

u32 XAdap_fir_Get_y(XAdap_fir *InstancePtr);
u32 XAdap_fir_Get_y_vld(XAdap_fir *InstancePtr);
void XAdap_fir_Set_x(XAdap_fir *InstancePtr, u32 Data);
u32 XAdap_fir_Get_x(XAdap_fir *InstancePtr);
void XAdap_fir_Set_d(XAdap_fir *InstancePtr, u32 Data);
u32 XAdap_fir_Get_d(XAdap_fir *InstancePtr);

void XAdap_fir_InterruptGlobalEnable(XAdap_fir *InstancePtr);
void XAdap_fir_InterruptGlobalDisable(XAdap_fir *InstancePtr);
void XAdap_fir_InterruptEnable(XAdap_fir *InstancePtr, u32 Mask);
void XAdap_fir_InterruptDisable(XAdap_fir *InstancePtr, u32 Mask);
void XAdap_fir_InterruptClear(XAdap_fir *InstancePtr, u32 Mask);
u32 XAdap_fir_InterruptGetEnabled(XAdap_fir *InstancePtr);
u32 XAdap_fir_InterruptGetStatus(XAdap_fir *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
