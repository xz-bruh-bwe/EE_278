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
#include "xadap_fir.h"

extern XAdap_fir_Config XAdap_fir_ConfigTable[];

XAdap_fir_Config *XAdap_fir_LookupConfig(u16 DeviceId) {
	XAdap_fir_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XADAP_FIR_NUM_INSTANCES; Index++) {
		if (XAdap_fir_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAdap_fir_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAdap_fir_Initialize(XAdap_fir *InstancePtr, u16 DeviceId) {
	XAdap_fir_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAdap_fir_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAdap_fir_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

