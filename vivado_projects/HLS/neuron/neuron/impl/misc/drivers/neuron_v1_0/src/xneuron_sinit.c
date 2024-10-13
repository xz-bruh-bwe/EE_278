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
#include "xneuron.h"

extern XNeuron_Config XNeuron_ConfigTable[];

XNeuron_Config *XNeuron_LookupConfig(u16 DeviceId) {
	XNeuron_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNEURON_NUM_INSTANCES; Index++) {
		if (XNeuron_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNeuron_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNeuron_Initialize(XNeuron *InstancePtr, u16 DeviceId) {
	XNeuron_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNeuron_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNeuron_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

