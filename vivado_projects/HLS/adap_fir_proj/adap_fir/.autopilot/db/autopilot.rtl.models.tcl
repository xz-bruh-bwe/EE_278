set SynModuleInfo {
  {SRCNAME adap_fir_Pipeline_Shift_Accum_Loop MODELNAME adap_fir_Pipeline_Shift_Accum_Loop RTLNAME adap_fir_adap_fir_Pipeline_Shift_Accum_Loop
    SUBMODULES {
      {MODELNAME adap_fir_flow_control_loop_pipe_sequential_init RTLNAME adap_fir_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME adap_fir_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME adap_fir_Pipeline_Coeff_Update_Loop MODELNAME adap_fir_Pipeline_Coeff_Update_Loop RTLNAME adap_fir_adap_fir_Pipeline_Coeff_Update_Loop}
  {SRCNAME adap_fir MODELNAME adap_fir RTLNAME adap_fir IS_TOP 1
    SUBMODULES {
      {MODELNAME adap_fir_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME adap_fir_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME adap_fir_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME adap_fir_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME adap_fir_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME adap_fir_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME adap_fir_shift_reg_RAM_AUTO_1R1W RTLNAME adap_fir_shift_reg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME adap_fir_coeffs_1_RAM_AUTO_1R1W RTLNAME adap_fir_coeffs_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME adap_fir_fir_io_s_axi RTLNAME adap_fir_fir_io_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
