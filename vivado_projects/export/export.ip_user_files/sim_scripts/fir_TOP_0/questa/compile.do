vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../export.gen/sources_1/ip/fir_TOP_0/drivers/fir_TOP_v1_0/src" \
"../../../ipstatic/hdl/verilog/fir_TOP_c_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_fir_io_s_axi.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_flow_control_loop_pipe.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_mul_7s_32s_32_2_1.v" \
"../../../ipstatic/hdl/verilog/fir_TOP_shift_reg_RAM_AUTO_1R1W.v" \
"../../../ipstatic/hdl/verilog/fir_TOP.v" \
"../../../../export.gen/sources_1/ip/fir_TOP_0/sim/fir_TOP_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

