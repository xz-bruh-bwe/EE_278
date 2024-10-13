set moduleName neuron
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {neuron}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 32 regular {pointer 1}  }
	{ x int 32 regular {array 6 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ y sc_out sc_lv 32 signal 0 } 
	{ y_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ x_address0 sc_out sc_lv 3 signal 1 } 
	{ x_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_q0 sc_in sc_lv 32 signal 1 } 
	{ s_axi_neuron_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_neuron_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_neuron_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_neuron_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_neuron_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_neuron_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_neuron_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_neuron_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_neuron_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "neuron_io", "role": "AWADDR" },"address":[{"name":"neuron","role":"start","value":"0","valid_bit":"0"},{"name":"neuron","role":"continue","value":"0","valid_bit":"4"},{"name":"neuron","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_neuron_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "AWVALID" } },
	{ "name": "s_axi_neuron_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "AWREADY" } },
	{ "name": "s_axi_neuron_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "WVALID" } },
	{ "name": "s_axi_neuron_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "WREADY" } },
	{ "name": "s_axi_neuron_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neuron_io", "role": "WDATA" } },
	{ "name": "s_axi_neuron_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "neuron_io", "role": "WSTRB" } },
	{ "name": "s_axi_neuron_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "neuron_io", "role": "ARADDR" },"address":[{"name":"neuron","role":"start","value":"0","valid_bit":"0"},{"name":"neuron","role":"done","value":"0","valid_bit":"1"},{"name":"neuron","role":"idle","value":"0","valid_bit":"2"},{"name":"neuron","role":"ready","value":"0","valid_bit":"3"},{"name":"neuron","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_neuron_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "ARVALID" } },
	{ "name": "s_axi_neuron_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "ARREADY" } },
	{ "name": "s_axi_neuron_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "RVALID" } },
	{ "name": "s_axi_neuron_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "RREADY" } },
	{ "name": "s_axi_neuron_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neuron_io", "role": "RDATA" } },
	{ "name": "s_axi_neuron_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "neuron_io", "role": "RRESP" } },
	{ "name": "s_axi_neuron_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "BVALID" } },
	{ "name": "s_axi_neuron_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "BREADY" } },
	{ "name": "s_axi_neuron_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "neuron_io", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neuron_io", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "y", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "y_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "y", "role": "ap_vld" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "neuron",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Weight_Sum_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neuron_io_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	neuron {
		y {Type O LastRead -1 FirstWrite 6}
		x {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50", "Max" : "50"}
	, {"Name" : "Interval", "Min" : "51", "Max" : "51"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { ap_vld {  { y out_data 1 32 }  { y_ap_vld out_vld 1 1 } } }
	x { ap_memory {  { x_address0 mem_address 1 3 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 } } }
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
