set ModuleHierarchy {[{
"Name" : "lenet_predict","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv2d_fu_336","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_conv2d_Pipeline_VITIS_LOOP_38_4_fu_167","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_38_4","ID" : "4","Type" : "pipeline"},]},
		{"Name" : "grp_conv2d_Pipeline_VITIS_LOOP_38_45_fu_182","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_38_4","ID" : "6","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2_fu_348","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_58_1_VITIS_LOOP_59_2","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_1_fu_354","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3","ID" : "10","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_conv2d_1_Pipeline_VITIS_LOOP_38_4_fu_161","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_38_4","ID" : "12","Type" : "pipeline"},]},
		{"Name" : "grp_conv2d_1_Pipeline_VITIS_LOOP_38_44_fu_176","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_38_4","ID" : "14","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_21_fu_363","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_58_1_VITIS_LOOP_59_2","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_13_1_fu_396","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_13_1","ID" : "18","Type" : "pipeline"},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_17_2_fu_403","ID" : "19","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_17_2","ID" : "20","Type" : "pipeline"},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_21_3_fu_410","ID" : "21","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_21_3","ID" : "22","Type" : "pipeline"},]},
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_56_1_fu_416","ID" : "23","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_56_1","ID" : "24","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_76_1","ID" : "25","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_79_2_fu_369","ID" : "26","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_79_2","ID" : "27","Type" : "pipeline"},]},]},
	{"Name" : "VITIS_LOOP_76_1","ID" : "28","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_79_22_fu_378","ID" : "29","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_79_2","ID" : "30","Type" : "pipeline"},]},]},
	{"Name" : "VITIS_LOOP_76_1","ID" : "31","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_lenet_predict_Pipeline_VITIS_LOOP_79_23_fu_387","ID" : "32","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_79_2","ID" : "33","Type" : "pipeline"},]},]},]
}]}