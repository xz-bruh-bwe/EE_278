// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XNEURON_H
#define XNEURON_H

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
#include "xneuron_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Neuron_io_BaseAddress;
} XNeuron_Config;
#endif

typedef struct {
    u64 Neuron_io_BaseAddress;
    u32 IsReady;
} XNeuron;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNeuron_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNeuron_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNeuron_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNeuron_ReadReg(BaseAddress, RegOffset) \
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
int XNeuron_Initialize(XNeuron *InstancePtr, u16 DeviceId);
XNeuron_Config* XNeuron_LookupConfig(u16 DeviceId);
int XNeuron_CfgInitialize(XNeuron *InstancePtr, XNeuron_Config *ConfigPtr);
#else
int XNeuron_Initialize(XNeuron *InstancePtr, const char* InstanceName);
int XNeuron_Release(XNeuron *InstancePtr);
#endif

void XNeuron_Start(XNeuron *InstancePtr);
u32 XNeuron_IsDone(XNeuron *InstancePtr);
u32 XNeuron_IsIdle(XNeuron *InstancePtr);
u32 XNeuron_IsReady(XNeuron *InstancePtr);
void XNeuron_EnableAutoRestart(XNeuron *InstancePtr);
void XNeuron_DisableAutoRestart(XNeuron *InstancePtr);


void XNeuron_InterruptGlobalEnable(XNeuron *InstancePtr);
void XNeuron_InterruptGlobalDisable(XNeuron *InstancePtr);
void XNeuron_InterruptEnable(XNeuron *InstancePtr, u32 Mask);
void XNeuron_InterruptDisable(XNeuron *InstancePtr, u32 Mask);
void XNeuron_InterruptClear(XNeuron *InstancePtr, u32 Mask);
u32 XNeuron_InterruptGetEnabled(XNeuron *InstancePtr);
u32 XNeuron_InterruptGetStatus(XNeuron *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
