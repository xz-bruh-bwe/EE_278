vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/array_add.v" \
"../../../../pixel_control.gen/sources_1/ip/array_add_0_1/sim/array_add_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

