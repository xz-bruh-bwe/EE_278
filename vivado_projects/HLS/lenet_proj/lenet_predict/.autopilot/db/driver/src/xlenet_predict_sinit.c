// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlenet_predict.h"

extern XLenet_predict_Config XLenet_predict_ConfigTable[];

XLenet_predict_Config *XLenet_predict_LookupConfig(u16 DeviceId) {
	XLenet_predict_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLENET_PREDICT_NUM_INSTANCES; Index++) {
		if (XLenet_predict_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLenet_predict_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLenet_predict_Initialize(XLenet_predict *InstancePtr, u16 DeviceId) {
	XLenet_predict_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLenet_predict_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLenet_predict_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

