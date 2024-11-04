transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pixel_control.gen/sources_1/ip/array_add_0_2/drivers/array_add_v1_0/src" -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/array_add_AXI_LITE_s_axi.v" \
"../../../ipstatic/hdl/verilog/array_add.v" \
"../../../../pixel_control.gen/sources_1/ip/array_add_0_2/sim/array_add_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

