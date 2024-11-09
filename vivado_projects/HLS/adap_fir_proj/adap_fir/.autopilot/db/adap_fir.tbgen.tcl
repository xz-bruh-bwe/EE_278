set moduleName adap_fir
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
set C_modelName {adap_fir}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 32 regular {axi_slave 1}  }
	{ x float 32 regular {axi_slave 0}  }
	{ d float 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "axi_slave", "bundle":"fir_io","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "x", "interface" : "axi_slave", "bundle":"fir_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "d", "interface" : "axi_slave", "bundle":"fir_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_fir_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_fir_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_fir_io_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_fir_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_fir_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_fir_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_fir_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_fir_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_fir_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_fir_io_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_fir_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_fir_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_fir_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_fir_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_fir_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_fir_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_fir_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_fir_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "fir_io", "role": "AWADDR" },"address":[{"name":"adap_fir","role":"start","value":"0","valid_bit":"0"},{"name":"adap_fir","role":"continue","value":"0","valid_bit":"4"},{"name":"adap_fir","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x","role":"data","value":"32"},{"name":"d","role":"data","value":"40"}] },
	{ "name": "s_axi_fir_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "AWVALID" } },
	{ "name": "s_axi_fir_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "AWREADY" } },
	{ "name": "s_axi_fir_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "WVALID" } },
	{ "name": "s_axi_fir_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "WREADY" } },
	{ "name": "s_axi_fir_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fir_io", "role": "WDATA" } },
	{ "name": "s_axi_fir_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fir_io", "role": "WSTRB" } },
	{ "name": "s_axi_fir_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "fir_io", "role": "ARADDR" },"address":[{"name":"adap_fir","role":"start","value":"0","valid_bit":"0"},{"name":"adap_fir","role":"done","value":"0","valid_bit":"1"},{"name":"adap_fir","role":"idle","value":"0","valid_bit":"2"},{"name":"adap_fir","role":"ready","value":"0","valid_bit":"3"},{"name":"adap_fir","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y","role":"data","value":"16"}, {"name":"y","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_fir_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "ARVALID" } },
	{ "name": "s_axi_fir_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "ARREADY" } },
	{ "name": "s_axi_fir_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "RVALID" } },
	{ "name": "s_axi_fir_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "RREADY" } },
	{ "name": "s_axi_fir_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fir_io", "role": "RDATA" } },
	{ "name": "s_axi_fir_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fir_io", "role": "RRESP" } },
	{ "name": "s_axi_fir_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "BVALID" } },
	{ "name": "s_axi_fir_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "BREADY" } },
	{ "name": "s_axi_fir_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fir_io", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_io", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "8", "9", "10", "11"],
		"CDFG" : "adap_fir",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "181", "EstimateLatencyMax" : "181",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_adap_fir_Pipeline_Shift_Accum_Loop_fu_77", "Port" : "shift_reg", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88", "Port" : "shift_reg", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeffs_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_adap_fir_Pipeline_Shift_Accum_Loop_fu_77", "Port" : "coeffs_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88", "Port" : "coeffs_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coeffs_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adap_fir_Pipeline_Shift_Accum_Loop_fu_77", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "adap_fir_Pipeline_Shift_Accum_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coeffs_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adap_fir_Pipeline_Shift_Accum_Loop_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "adap_fir_Pipeline_Coeff_Update_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "error", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coeffs_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Coeff_Update_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88.fmul_32ns_32ns_32_4_max_dsp_1_U10", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_io_s_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U16", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adap_fir {
		y {Type O LastRead -1 FirstWrite 8}
		x {Type I LastRead 2 FirstWrite -1}
		d {Type I LastRead 2 FirstWrite -1}
		shift_reg {Type IO LastRead -1 FirstWrite -1}
		coeffs_1 {Type IO LastRead -1 FirstWrite -1}}
	adap_fir_Pipeline_Shift_Accum_Loop {
		mul {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		acc_out {Type O LastRead -1 FirstWrite 6}
		shift_reg {Type IO LastRead 0 FirstWrite 0}
		coeffs_1 {Type I LastRead 0 FirstWrite -1}}
	adap_fir_Pipeline_Coeff_Update_Loop {
		error {Type I LastRead 0 FirstWrite -1}
		shift_reg {Type I LastRead 0 FirstWrite -1}
		coeffs_1 {Type IO LastRead 8 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "181", "Max" : "181"}
	, {"Name" : "Interval", "Min" : "182", "Max" : "182"}
]}

set PipelineEnableSignalInfo {[
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
