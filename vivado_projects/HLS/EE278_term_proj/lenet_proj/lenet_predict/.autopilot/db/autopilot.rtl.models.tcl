set SynModuleInfo {
  {SRCNAME conv2d_Pipeline_VITIS_LOOP_38_4 MODELNAME conv2d_Pipeline_VITIS_LOOP_38_4 RTLNAME lenet_predict_conv2d_Pipeline_VITIS_LOOP_38_4}
  {SRCNAME conv2d_Pipeline_VITIS_LOOP_38_45 MODELNAME conv2d_Pipeline_VITIS_LOOP_38_45 RTLNAME lenet_predict_conv2d_Pipeline_VITIS_LOOP_38_45}
  {SRCNAME conv2d MODELNAME conv2d RTLNAME lenet_predict_conv2d
    SUBMODULES {
      {MODELNAME lenet_predict_mul_3ns_11ns_13_1_1 RTLNAME lenet_predict_mul_3ns_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_mul_3ns_6ns_8_1_1 RTLNAME lenet_predict_mul_3ns_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_2
    SUBMODULES {
      {MODELNAME lenet_predict_flow_control_loop_pipe_sequential_init RTLNAME lenet_predict_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lenet_predict_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv2d.1_Pipeline_VITIS_LOOP_38_4 MODELNAME conv2d_1_Pipeline_VITIS_LOOP_38_4 RTLNAME lenet_predict_conv2d_1_Pipeline_VITIS_LOOP_38_4}
  {SRCNAME conv2d.1_Pipeline_VITIS_LOOP_38_44 MODELNAME conv2d_1_Pipeline_VITIS_LOOP_38_44 RTLNAME lenet_predict_conv2d_1_Pipeline_VITIS_LOOP_38_44}
  {SRCNAME conv2d.1 MODELNAME conv2d_1 RTLNAME lenet_predict_conv2d_1
    SUBMODULES {
      {MODELNAME lenet_predict_mul_5ns_8ns_11_1_1 RTLNAME lenet_predict_mul_5ns_8ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_mul_5ns_6ns_9_1_1 RTLNAME lenet_predict_mul_5ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_21 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_21 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_58_1_VITIS_LOOP_59_21}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_79_2 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_79_2 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_79_2}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_79_22 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_79_22 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_79_22}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_79_23 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_79_23 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_79_23}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_13_1 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_13_1 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_13_1}
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_17_2 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_17_2 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_17_2
    SUBMODULES {
      {MODELNAME lenet_predict_fexp_32ns_32ns_32_6_full_dsp_1 RTLNAME lenet_predict_fexp_32ns_32ns_32_6_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_21_3 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_21_3 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_21_3
    SUBMODULES {
      {MODELNAME lenet_predict_fdiv_32ns_32ns_32_8_no_dsp_1 RTLNAME lenet_predict_fdiv_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME lenet_predict_Pipeline_VITIS_LOOP_56_1 MODELNAME lenet_predict_Pipeline_VITIS_LOOP_56_1 RTLNAME lenet_predict_lenet_predict_Pipeline_VITIS_LOOP_56_1}
  {SRCNAME lenet_predict MODELNAME lenet_predict RTLNAME lenet_predict IS_TOP 1
    SUBMODULES {
      {MODELNAME lenet_predict_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME lenet_predict_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME lenet_predict_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME lenet_predict_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_conv1_output_RAM_AUTO_1R1W RTLNAME lenet_predict_conv1_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_pool1_output_RAM_1WNR_AUTO_1R1W RTLNAME lenet_predict_pool1_output_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME lenet_predict_conv2_output_RAM_AUTO_1R1W RTLNAME lenet_predict_conv2_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
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
