// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1__HH__
#define __lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1__HH__
#include "lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3 lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U;

    SC_CTOR(lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1):  lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U ("lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U") {
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.clk(clk);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.rst(reset);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.ce(ce);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.in0(din0);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.in1(din1);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.in2(din2);
        lenet_predict_mac_muladd_3ns_5ns_3ns_8_4_1_DSP48_3_U.dout(dout);

    }

};

#endif //
