# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_fir_io {
y { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
d { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict fir_io $port_fir_io


