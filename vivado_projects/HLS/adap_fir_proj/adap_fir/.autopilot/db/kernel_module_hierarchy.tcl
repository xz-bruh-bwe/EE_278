set ModuleHierarchy {[{
"Name" : "adap_fir","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_adap_fir_Pipeline_Shift_Accum_Loop_fu_77","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Shift_Accum_Loop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_adap_fir_Pipeline_Coeff_Update_Loop_fu_88","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Coeff_Update_Loop","ID" : "4","Type" : "pipeline"},]},]
}]}