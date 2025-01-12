// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLENET_PREDICT_H
#define XLENET_PREDICT_H

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
#include "xlenet_predict_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XLenet_predict_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XLenet_predict;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLenet_predict_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLenet_predict_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLenet_predict_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLenet_predict_ReadReg(BaseAddress, RegOffset) \
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
int XLenet_predict_Initialize(XLenet_predict *InstancePtr, u16 DeviceId);
XLenet_predict_Config* XLenet_predict_LookupConfig(u16 DeviceId);
int XLenet_predict_CfgInitialize(XLenet_predict *InstancePtr, XLenet_predict_Config *ConfigPtr);
#else
int XLenet_predict_Initialize(XLenet_predict *InstancePtr, const char* InstanceName);
int XLenet_predict_Release(XLenet_predict *InstancePtr);
#endif

void XLenet_predict_Start(XLenet_predict *InstancePtr);
u32 XLenet_predict_IsDone(XLenet_predict *InstancePtr);
u32 XLenet_predict_IsIdle(XLenet_predict *InstancePtr);
u32 XLenet_predict_IsReady(XLenet_predict *InstancePtr);
void XLenet_predict_EnableAutoRestart(XLenet_predict *InstancePtr);
void XLenet_predict_DisableAutoRestart(XLenet_predict *InstancePtr);

u32 XLenet_predict_Get_predicted_class_74(XLenet_predict *InstancePtr);
u32 XLenet_predict_Get_predicted_class_74_vld(XLenet_predict *InstancePtr);
void XLenet_predict_Set_input_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_input_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_conv1_filters_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_conv1_filters_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_conv1_bias_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_conv1_bias_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_conv2_filters_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_conv2_filters_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_conv2_bias_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_conv2_bias_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc1_weights_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc1_weights_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc1_bias_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc1_bias_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc2_weights_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc2_weights_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc2_bias_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc2_bias_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc3_weights_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc3_weights_74(XLenet_predict *InstancePtr);
void XLenet_predict_Set_fc3_bias_74(XLenet_predict *InstancePtr, u64 Data);
u64 XLenet_predict_Get_fc3_bias_74(XLenet_predict *InstancePtr);

void XLenet_predict_InterruptGlobalEnable(XLenet_predict *InstancePtr);
void XLenet_predict_InterruptGlobalDisable(XLenet_predict *InstancePtr);
void XLenet_predict_InterruptEnable(XLenet_predict *InstancePtr, u32 Mask);
void XLenet_predict_InterruptDisable(XLenet_predict *InstancePtr, u32 Mask);
void XLenet_predict_InterruptClear(XLenet_predict *InstancePtr, u32 Mask);
u32 XLenet_predict_InterruptGetEnabled(XLenet_predict *InstancePtr);
u32 XLenet_predict_InterruptGetStatus(XLenet_predict *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
