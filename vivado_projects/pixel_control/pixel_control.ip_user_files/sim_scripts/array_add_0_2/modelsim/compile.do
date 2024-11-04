vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pixel_control.gen/sources_1/ip/array_add_0_2/drivers/array_add_v1_0/src" \
"../../../ipstatic/hdl/verilog/array_add_AXI_LITE_s_axi.v" \
"../../../ipstatic/hdl/verilog/array_add.v" \
"../../../../pixel_control.gen/sources_1/ip/array_add_0_2/sim/array_add_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

