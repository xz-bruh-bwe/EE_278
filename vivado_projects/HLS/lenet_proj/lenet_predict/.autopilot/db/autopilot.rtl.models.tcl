set SynModuleInfo {
  {SRCNAME conv2d MODELNAME conv2d RTLNAME lenet_predict_conv2d
    SUBMODULES {
      {MODELNAME lenet_predict_mul_3ns_8ns_10_1_1 RTLNAME lenet_predict_mul_3ns_8ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_mac_muladd_3ns_10ns_5ns_12_4_1 RTLNAME lenet_predict_mac_muladd_3ns_10ns_5ns_12_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_flow_control_loop_pipe_sequential_init RTLNAME lenet_predict_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lenet_predict_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME relu MODELNAME relu RTLNAME lenet_predict_relu}
  {SRCNAME maxpool2d MODELNAME maxpool2d RTLNAME lenet_predict_maxpool2d
    SUBMODULES {
      {MODELNAME lenet_predict_mac_muladd_3ns_8ns_4ns_10_4_1 RTLNAME lenet_predict_mac_muladd_3ns_8ns_4ns_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv2d.5 MODELNAME conv2d_5 RTLNAME lenet_predict_conv2d_5
    SUBMODULES {
      {MODELNAME lenet_predict_mul_5ns_8ns_12_1_1 RTLNAME lenet_predict_mul_5ns_8ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu.1 MODELNAME relu_1 RTLNAME lenet_predict_relu_1}
  {SRCNAME maxpool2d.2 MODELNAME maxpool2d_2 RTLNAME lenet_predict_maxpool2d_2
    SUBMODULES {
      {MODELNAME lenet_predict_mac_muladd_3ns_7ns_4ns_9_4_1 RTLNAME lenet_predict_mac_muladd_3ns_7ns_4ns_9_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1 RTLNAME lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fully_connected_Pipeline_VITIS_LOOP_58_2 MODELNAME fully_connected_Pipeline_VITIS_LOOP_58_2 RTLNAME lenet_predict_fully_connected_Pipeline_VITIS_LOOP_58_2}
  {SRCNAME fully_connected MODELNAME fully_connected RTLNAME lenet_predict_fully_connected}
  {SRCNAME relu.3 MODELNAME relu_3 RTLNAME lenet_predict_relu_3}
  {SRCNAME fully_connected.6_Pipeline_VITIS_LOOP_58_2 MODELNAME fully_connected_6_Pipeline_VITIS_LOOP_58_2 RTLNAME lenet_predict_fully_connected_6_Pipeline_VITIS_LOOP_58_2}
  {SRCNAME fully_connected.6 MODELNAME fully_connected_6 RTLNAME lenet_predict_fully_connected_6}
  {SRCNAME relu.4 MODELNAME relu_4 RTLNAME lenet_predict_relu_4}
  {SRCNAME fully_connected.7_Pipeline_VITIS_LOOP_58_2 MODELNAME fully_connected_7_Pipeline_VITIS_LOOP_58_2 RTLNAME lenet_predict_fully_connected_7_Pipeline_VITIS_LOOP_58_2}
  {SRCNAME fully_connected.7 MODELNAME fully_connected_7 RTLNAME lenet_predict_fully_connected_7}
  {SRCNAME softmax_Pipeline_VITIS_LOOP_68_1 MODELNAME softmax_Pipeline_VITIS_LOOP_68_1 RTLNAME lenet_predict_softmax_Pipeline_VITIS_LOOP_68_1}
  {SRCNAME softmax_Pipeline_VITIS_LOOP_75_2 MODELNAME softmax_Pipeline_VITIS_LOOP_75_2 RTLNAME lenet_predict_softmax_Pipeline_VITIS_LOOP_75_2
    SUBMODULES {
      {MODELNAME lenet_predict_fexp_32ns_32ns_32_6_full_dsp_1 RTLNAME lenet_predict_fexp_32ns_32ns_32_6_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax_Pipeline_VITIS_LOOP_80_3 MODELNAME softmax_Pipeline_VITIS_LOOP_80_3 RTLNAME lenet_predict_softmax_Pipeline_VITIS_LOOP_80_3
    SUBMODULES {
      {MODELNAME lenet_predict_fdiv_32ns_32ns_32_8_no_dsp_1 RTLNAME lenet_predict_fdiv_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax MODELNAME softmax RTLNAME lenet_predict_softmax}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_67_1 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_67_1 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_67_1}
  {SRCNAME lenet_predict MODELNAME lenet_predict RTLNAME lenet_predict IS_TOP 1
    SUBMODULES {
      {MODELNAME lenet_predict_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME lenet_predict_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME lenet_predict_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME lenet_predict_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_conv1_output_RAM_1WNR_AUTO_1R1W RTLNAME lenet_predict_conv1_output_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_pool1_output_RAM_1WNR_AUTO_1R1W RTLNAME lenet_predict_pool1_output_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_conv2_output_RAM_1WNR_AUTO_1R1W RTLNAME lenet_predict_conv2_output_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_pool2_output_RAM_AUTO_1R1W RTLNAME lenet_predict_pool2_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fc1_output_RAM_AUTO_1R1W RTLNAME lenet_predict_fc1_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fc2_output_RAM_AUTO_1R1W RTLNAME lenet_predict_fc2_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fc3_output_RAM_AUTO_1R1W RTLNAME lenet_predict_fc3_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_gmem_m_axi RTLNAME lenet_predict_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME lenet_predict_control_s_axi RTLNAME lenet_predict_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME lenet_predict_control_r_s_axi RTLNAME lenet_predict_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
