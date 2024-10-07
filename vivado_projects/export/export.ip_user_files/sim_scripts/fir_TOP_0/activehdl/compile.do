transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/export/export.cache/compile_simlib/activehdl}
vlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../export.gen/sources_1/ip/fir_TOP_0/drivers/fir_TOP_v1_0/src" -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/fir_TOP_c_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_fir_io_s_axi.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_flow_control_loop_pipe.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_mul_7s_32s_32_2_1.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_shift_reg_RAM_AUTO_1R1W.v" \
"../../../ipstatic/hdl/verilog/fir_TOP.v" \
"../../../../export.gen/sources_1/ip/fir_TOP_0/sim/fir_TOP_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

