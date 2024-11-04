set moduleName array_add
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {array_add}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 32 regular {axi_slave 0}  }
	{ b int 32 regular {axi_slave 0}  }
	{ result int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "axi_slave", "bundle":"AXI_LITE","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"AXI_LITE","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "result", "interface" : "axi_slave", "bundle":"AXI_LITE","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":192}, "offset_end" : {"out":255}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXI_LITE_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXI_LITE_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXI_LITE_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_LITE_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXI_LITE_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXI_LITE_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXI_LITE_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_LITE_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXI_LITE_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "AWADDR" },"address":[{"name":"array_add","role":"start","value":"0","valid_bit":"0"},{"name":"array_add","role":"continue","value":"0","valid_bit":"4"},{"name":"array_add","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"64"},{"name":"b","role":"data","value":"128"}] },
	{ "name": "s_axi_AXI_LITE_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "AWVALID" } },
	{ "name": "s_axi_AXI_LITE_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "AWREADY" } },
	{ "name": "s_axi_AXI_LITE_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "WVALID" } },
	{ "name": "s_axi_AXI_LITE_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "WREADY" } },
	{ "name": "s_axi_AXI_LITE_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "WDATA" } },
	{ "name": "s_axi_AXI_LITE_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "WSTRB" } },
	{ "name": "s_axi_AXI_LITE_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "ARADDR" },"address":[{"name":"array_add","role":"start","value":"0","valid_bit":"0"},{"name":"array_add","role":"done","value":"0","valid_bit":"1"},{"name":"array_add","role":"idle","value":"0","valid_bit":"2"},{"name":"array_add","role":"ready","value":"0","valid_bit":"3"},{"name":"array_add","role":"auto_start","value":"0","valid_bit":"7"},{"name":"result","role":"data","value":"192"}] },
	{ "name": "s_axi_AXI_LITE_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "ARVALID" } },
	{ "name": "s_axi_AXI_LITE_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "ARREADY" } },
	{ "name": "s_axi_AXI_LITE_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "RVALID" } },
	{ "name": "s_axi_AXI_LITE_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "RREADY" } },
	{ "name": "s_axi_AXI_LITE_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "RDATA" } },
	{ "name": "s_axi_AXI_LITE_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "RRESP" } },
	{ "name": "s_axi_AXI_LITE_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "BVALID" } },
	{ "name": "s_axi_AXI_LITE_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "BREADY" } },
	{ "name": "s_axi_AXI_LITE_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_LITE", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "array_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "10",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_LITE_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	array_add {
		a {Type I LastRead 9 FirstWrite -1}
		b {Type I LastRead 9 FirstWrite -1}
		result {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
