set SynModuleInfo {
  {SRCNAME fir_TOP MODELNAME fir_TOP RTLNAME fir_TOP IS_TOP 1
    SUBMODULES {
      {MODELNAME fir_TOP_mul_7s_32s_32_2_1 RTLNAME fir_TOP_mul_7s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fir_TOP_shift_reg_RAM_AUTO_1R1W RTLNAME fir_TOP_shift_reg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_TOP_c_ROM_AUTO_1R RTLNAME fir_TOP_c_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fir_TOP_fir_io_s_axi RTLNAME fir_TOP_fir_io_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME fir_TOP_flow_control_loop_pipe RTLNAME fir_TOP_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fir_TOP_flow_control_loop_pipe_U}
    }
  }
}
