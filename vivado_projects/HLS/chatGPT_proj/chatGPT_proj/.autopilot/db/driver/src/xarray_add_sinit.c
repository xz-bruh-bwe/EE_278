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
#include "xarray_add.h"

extern XArray_add_Config XArray_add_ConfigTable[];

XArray_add_Config *XArray_add_LookupConfig(u16 DeviceId) {
	XArray_add_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XARRAY_ADD_NUM_INSTANCES; Index++) {
		if (XArray_add_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XArray_add_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XArray_add_Initialize(XArray_add *InstancePtr, u16 DeviceId) {
	XArray_add_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XArray_add_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XArray_add_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

