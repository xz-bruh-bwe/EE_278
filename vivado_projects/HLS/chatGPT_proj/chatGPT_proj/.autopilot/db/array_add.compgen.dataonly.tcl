# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXI_LITE {
a { 
	dir I
	width 32
	depth 10
	mode ap_memory
	offset 64
	offset_end 127
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
b { 
	dir I
	width 32
	depth 10
	mode ap_memory
	offset 128
	offset_end 191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
result { 
	dir O
	width 32
	depth 10
	mode ap_memory
	offset 192
	offset_end 255
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict AXI_LITE $port_AXI_LITE


