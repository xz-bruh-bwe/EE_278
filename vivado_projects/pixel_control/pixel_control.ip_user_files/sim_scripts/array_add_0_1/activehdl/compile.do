transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.cache/compile_simlib/activehdl}
vlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/array_add.v" \
"../../../../pixel_control.gen/sources_1/ip/array_add_0_1/sim/array_add_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

