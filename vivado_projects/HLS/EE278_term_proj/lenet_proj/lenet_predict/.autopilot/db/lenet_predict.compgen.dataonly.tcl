# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
predicted_class_74 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


set port_control_r {
input_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
conv1_filters_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
conv1_bias_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
conv2_filters_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
conv2_bias_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
fc1_weights_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
fc1_bias_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
fc2_weights_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
fc2_bias_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
fc3_weights_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
fc3_bias_74 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
}
dict set axilite_register_dict control_r $port_control_r


