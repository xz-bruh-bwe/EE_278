
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_array_add_top/AESL_inst_array_add/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set a__b__result__return_group [add_wave_group a__b__result__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_array_add_top/AESL_inst_array_add/interrupt -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_BRESP -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_BREADY -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_BVALID -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_RRESP -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_RDATA -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_RREADY -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_RVALID -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_ARREADY -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_ARVALID -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_ARADDR -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_WSTRB -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_WDATA -into $a__b__result__return_group -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_WREADY -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_WVALID -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_AWREADY -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_AWVALID -into $a__b__result__return_group -color #ffff00 -radix hex
add_wave /apatb_array_add_top/AESL_inst_array_add/s_axi_AXI_LITE_AWADDR -into $a__b__result__return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_array_add_top/AESL_inst_array_add/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_array_add_top/AESL_inst_array_add/ap_clk -into $clockgroup
save_wave_config array_add.wcfg
run all

