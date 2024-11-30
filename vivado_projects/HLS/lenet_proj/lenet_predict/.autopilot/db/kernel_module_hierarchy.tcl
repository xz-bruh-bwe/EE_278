set ModuleHierarchy {[{
"Name" : "lenet_predict","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv2d_fu_232","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_relu_fu_246","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_87_1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_maxpool2d_fu_251","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_5_fu_257","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_relu_1_fu_267","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_87_1","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "grp_maxpool2d_2_fu_272","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3","ID" : "12","Type" : "pipeline"},]},
	{"Name" : "grp_fully_connected_fu_278","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_56_1","ID" : "14","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_fully_connected_Pipeline_VITIS_LOOP_58_2_fu_92","ID" : "15","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_58_2","ID" : "16","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_relu_3_fu_288","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_87_1","ID" : "18","Type" : "pipeline"},]},
	{"Name" : "grp_fully_connected_6_fu_293","ID" : "19","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_56_1","ID" : "20","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_fully_connected_6_Pipeline_VITIS_LOOP_58_2_fu_90","ID" : "21","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_58_2","ID" : "22","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_relu_4_fu_303","ID" : "23","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_87_1","ID" : "24","Type" : "pipeline"},]},
	{"Name" : "grp_fully_connected_7_fu_308","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_56_1","ID" : "26","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_fully_connected_7_Pipeline_VITIS_LOOP_58_2_fu_92","ID" : "27","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_58_2","ID" : "28","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_softmax_fu_318","ID" : "29","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_softmax_Pipeline_VITIS_LOOP_68_1_fu_18","ID" : "30","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_68_1","ID" : "31","Type" : "pipeline"},]},
		{"Name" : "grp_softmax_Pipeline_VITIS_LOOP_75_2_fu_25","ID" : "32","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_75_2","ID" : "33","Type" : "pipeline"},]},
		{"Name" : "grp_softmax_Pipeline_VITIS_LOOP_80_3_fu_33","ID" : "34","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_80_3","ID" : "35","Type" : "pipeline"},]},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_67_1_fu_323","ID" : "36","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_67_1","ID" : "37","Type" : "pipeline"},]},]
}]}