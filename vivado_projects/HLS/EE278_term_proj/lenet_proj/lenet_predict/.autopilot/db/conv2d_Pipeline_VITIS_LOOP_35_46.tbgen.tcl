set moduleName conv2d_Pipeline_VITIS_LOOP_35_46
set isTopModule 0
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
set C_modelName {conv2d_Pipeline_VITIS_LOOP_35_46}
set C_modelType { int 1 }
set C_modelArgList {
	{ select_ln31_11 int 4 regular  }
	{ zext_ln35_2 int 4 regular  }
	{ input_r float 32 regular {array 1176 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ sum_10_out float 32 regular {pointer 1}  }
	{ sum_29_4_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "select_ln31_11", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln35_2", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_29_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln31_11 sc_in sc_lv 4 signal 0 } 
	{ zext_ln35_2 sc_in sc_lv 4 signal 1 } 
	{ input_r_address0 sc_out sc_lv 11 signal 2 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_r_q0 sc_in sc_lv 32 signal 2 } 
	{ input_r_address1 sc_out sc_lv 11 signal 2 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_r_q1 sc_in sc_lv 32 signal 2 } 
	{ sum_10_out sc_out sc_lv 32 signal 3 } 
	{ sum_10_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ sum_29_4_out sc_out sc_lv 32 signal 4 } 
	{ sum_29_4_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_722_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_722_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_722_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_722_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_722_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_726_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_726_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_726_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_726_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln31_11", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "select_ln31_11", "role": "default" }} , 
 	{ "name": "zext_ln35_2", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln35_2", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "sum_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_10_out", "role": "default" }} , 
 	{ "name": "sum_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_10_out", "role": "ap_vld" }} , 
 	{ "name": "sum_29_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_29_4_out", "role": "default" }} , 
 	{ "name": "sum_29_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_29_4_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_722_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_722_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_722_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_722_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_722_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_722_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_722_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_722_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_722_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_722_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_726_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_726_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_726_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_726_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_726_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_726_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_726_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_726_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "conv2d_Pipeline_VITIS_LOOP_35_46",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln31_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln35_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_29_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_4", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage23", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage23_subdone", "PostState" : ["ap_ST_fsm_state46", "ap_ST_fsm_state47"]}}]}]}


set ArgLastReadFirstWriteLatency {
	conv2d_Pipeline_VITIS_LOOP_35_46 {
		select_ln31_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln35_2 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 6 FirstWrite -1}
		sum_10_out {Type O LastRead -1 FirstWrite 2}
		sum_29_4_out {Type O LastRead -1 FirstWrite 25}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "146", "Max" : "146"}
	, {"Name" : "Interval", "Min" : "146", "Max" : "146"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln31_11 { ap_none {  { select_ln31_11 in_data 0 4 } } }
	zext_ln35_2 { ap_none {  { zext_ln35_2 in_data 0 4 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 11 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 }  { input_r_address1 MemPortADDR2 1 11 }  { input_r_ce1 MemPortCE2 1 1 }  { input_r_q1 in_data 0 32 } } }
	sum_10_out { ap_vld {  { sum_10_out out_data 1 32 }  { sum_10_out_ap_vld out_vld 1 1 } } }
	sum_29_4_out { ap_vld {  { sum_29_4_out out_data 1 32 }  { sum_29_4_out_ap_vld out_vld 1 1 } } }
}
