set SynModuleInfo {
  {SRCNAME neuron MODELNAME neuron RTLNAME neuron IS_TOP 1
    SUBMODULES {
      {MODELNAME neuron_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME neuron_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME neuron_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME neuron_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME neuron_weights_ROM_AUTO_1R RTLNAME neuron_weights_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME neuron_neuron_io_s_axi RTLNAME neuron_neuron_io_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME neuron_flow_control_loop_pipe RTLNAME neuron_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME neuron_flow_control_loop_pipe_U}
    }
  }
}
