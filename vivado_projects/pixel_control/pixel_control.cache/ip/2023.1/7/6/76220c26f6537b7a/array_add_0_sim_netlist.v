// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 15:33:53 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ array_add_0_sim_netlist.v
// Design      : array_add_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add
   (ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a,
    b,
    result);
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]a;
  input [31:0]b;
  output [31:0]result;

  wire \<const0> ;
  wire [31:0]a;
  wire ap_start;
  wire [31:0]b;
  wire [31:0]result;
  wire \result[0]_INST_0_i_1_n_0 ;
  wire \result[0]_INST_0_i_2_n_0 ;
  wire \result[0]_INST_0_i_3_n_0 ;
  wire \result[0]_INST_0_i_4_n_0 ;
  wire \result[0]_INST_0_n_0 ;
  wire \result[0]_INST_0_n_1 ;
  wire \result[0]_INST_0_n_2 ;
  wire \result[0]_INST_0_n_3 ;
  wire \result[12]_INST_0_i_1_n_0 ;
  wire \result[12]_INST_0_i_2_n_0 ;
  wire \result[12]_INST_0_i_3_n_0 ;
  wire \result[12]_INST_0_i_4_n_0 ;
  wire \result[12]_INST_0_n_0 ;
  wire \result[12]_INST_0_n_1 ;
  wire \result[12]_INST_0_n_2 ;
  wire \result[12]_INST_0_n_3 ;
  wire \result[16]_INST_0_i_1_n_0 ;
  wire \result[16]_INST_0_i_2_n_0 ;
  wire \result[16]_INST_0_i_3_n_0 ;
  wire \result[16]_INST_0_i_4_n_0 ;
  wire \result[16]_INST_0_n_0 ;
  wire \result[16]_INST_0_n_1 ;
  wire \result[16]_INST_0_n_2 ;
  wire \result[16]_INST_0_n_3 ;
  wire \result[20]_INST_0_i_1_n_0 ;
  wire \result[20]_INST_0_i_2_n_0 ;
  wire \result[20]_INST_0_i_3_n_0 ;
  wire \result[20]_INST_0_i_4_n_0 ;
  wire \result[20]_INST_0_n_0 ;
  wire \result[20]_INST_0_n_1 ;
  wire \result[20]_INST_0_n_2 ;
  wire \result[20]_INST_0_n_3 ;
  wire \result[24]_INST_0_i_1_n_0 ;
  wire \result[24]_INST_0_i_2_n_0 ;
  wire \result[24]_INST_0_i_3_n_0 ;
  wire \result[24]_INST_0_i_4_n_0 ;
  wire \result[24]_INST_0_n_0 ;
  wire \result[24]_INST_0_n_1 ;
  wire \result[24]_INST_0_n_2 ;
  wire \result[24]_INST_0_n_3 ;
  wire \result[28]_INST_0_i_1_n_0 ;
  wire \result[28]_INST_0_i_2_n_0 ;
  wire \result[28]_INST_0_i_3_n_0 ;
  wire \result[28]_INST_0_i_4_n_0 ;
  wire \result[28]_INST_0_n_1 ;
  wire \result[28]_INST_0_n_2 ;
  wire \result[28]_INST_0_n_3 ;
  wire \result[4]_INST_0_i_1_n_0 ;
  wire \result[4]_INST_0_i_2_n_0 ;
  wire \result[4]_INST_0_i_3_n_0 ;
  wire \result[4]_INST_0_i_4_n_0 ;
  wire \result[4]_INST_0_n_0 ;
  wire \result[4]_INST_0_n_1 ;
  wire \result[4]_INST_0_n_2 ;
  wire \result[4]_INST_0_n_3 ;
  wire \result[8]_INST_0_i_1_n_0 ;
  wire \result[8]_INST_0_i_2_n_0 ;
  wire \result[8]_INST_0_i_3_n_0 ;
  wire \result[8]_INST_0_i_4_n_0 ;
  wire \result[8]_INST_0_n_0 ;
  wire \result[8]_INST_0_n_1 ;
  wire \result[8]_INST_0_n_2 ;
  wire \result[8]_INST_0_n_3 ;
  wire [3:3]\NLW_result[28]_INST_0_CO_UNCONNECTED ;

  assign ap_done = ap_start;
  assign ap_idle = \<const0> ;
  assign ap_ready = ap_start;
  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[0]_INST_0 
       (.CI(1'b0),
        .CO({\result[0]_INST_0_n_0 ,\result[0]_INST_0_n_1 ,\result[0]_INST_0_n_2 ,\result[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[3:0]),
        .O(result[3:0]),
        .S({\result[0]_INST_0_i_1_n_0 ,\result[0]_INST_0_i_2_n_0 ,\result[0]_INST_0_i_3_n_0 ,\result[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[0]_INST_0_i_1 
       (.I0(b[3]),
        .I1(a[3]),
        .O(\result[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[0]_INST_0_i_2 
       (.I0(b[2]),
        .I1(a[2]),
        .O(\result[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[0]_INST_0_i_3 
       (.I0(b[1]),
        .I1(a[1]),
        .O(\result[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[0]_INST_0_i_4 
       (.I0(b[0]),
        .I1(a[0]),
        .O(\result[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[12]_INST_0 
       (.CI(\result[8]_INST_0_n_0 ),
        .CO({\result[12]_INST_0_n_0 ,\result[12]_INST_0_n_1 ,\result[12]_INST_0_n_2 ,\result[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[15:12]),
        .O(result[15:12]),
        .S({\result[12]_INST_0_i_1_n_0 ,\result[12]_INST_0_i_2_n_0 ,\result[12]_INST_0_i_3_n_0 ,\result[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[12]_INST_0_i_1 
       (.I0(b[15]),
        .I1(a[15]),
        .O(\result[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[12]_INST_0_i_2 
       (.I0(b[14]),
        .I1(a[14]),
        .O(\result[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[12]_INST_0_i_3 
       (.I0(b[13]),
        .I1(a[13]),
        .O(\result[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[12]_INST_0_i_4 
       (.I0(b[12]),
        .I1(a[12]),
        .O(\result[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[16]_INST_0 
       (.CI(\result[12]_INST_0_n_0 ),
        .CO({\result[16]_INST_0_n_0 ,\result[16]_INST_0_n_1 ,\result[16]_INST_0_n_2 ,\result[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[19:16]),
        .O(result[19:16]),
        .S({\result[16]_INST_0_i_1_n_0 ,\result[16]_INST_0_i_2_n_0 ,\result[16]_INST_0_i_3_n_0 ,\result[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[16]_INST_0_i_1 
       (.I0(b[19]),
        .I1(a[19]),
        .O(\result[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[16]_INST_0_i_2 
       (.I0(b[18]),
        .I1(a[18]),
        .O(\result[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[16]_INST_0_i_3 
       (.I0(b[17]),
        .I1(a[17]),
        .O(\result[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[16]_INST_0_i_4 
       (.I0(b[16]),
        .I1(a[16]),
        .O(\result[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[20]_INST_0 
       (.CI(\result[16]_INST_0_n_0 ),
        .CO({\result[20]_INST_0_n_0 ,\result[20]_INST_0_n_1 ,\result[20]_INST_0_n_2 ,\result[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[23:20]),
        .O(result[23:20]),
        .S({\result[20]_INST_0_i_1_n_0 ,\result[20]_INST_0_i_2_n_0 ,\result[20]_INST_0_i_3_n_0 ,\result[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[20]_INST_0_i_1 
       (.I0(b[23]),
        .I1(a[23]),
        .O(\result[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[20]_INST_0_i_2 
       (.I0(b[22]),
        .I1(a[22]),
        .O(\result[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[20]_INST_0_i_3 
       (.I0(b[21]),
        .I1(a[21]),
        .O(\result[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[20]_INST_0_i_4 
       (.I0(b[20]),
        .I1(a[20]),
        .O(\result[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[24]_INST_0 
       (.CI(\result[20]_INST_0_n_0 ),
        .CO({\result[24]_INST_0_n_0 ,\result[24]_INST_0_n_1 ,\result[24]_INST_0_n_2 ,\result[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[27:24]),
        .O(result[27:24]),
        .S({\result[24]_INST_0_i_1_n_0 ,\result[24]_INST_0_i_2_n_0 ,\result[24]_INST_0_i_3_n_0 ,\result[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[24]_INST_0_i_1 
       (.I0(b[27]),
        .I1(a[27]),
        .O(\result[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[24]_INST_0_i_2 
       (.I0(b[26]),
        .I1(a[26]),
        .O(\result[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[24]_INST_0_i_3 
       (.I0(b[25]),
        .I1(a[25]),
        .O(\result[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[24]_INST_0_i_4 
       (.I0(b[24]),
        .I1(a[24]),
        .O(\result[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[28]_INST_0 
       (.CI(\result[24]_INST_0_n_0 ),
        .CO({\NLW_result[28]_INST_0_CO_UNCONNECTED [3],\result[28]_INST_0_n_1 ,\result[28]_INST_0_n_2 ,\result[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b[30:28]}),
        .O(result[31:28]),
        .S({\result[28]_INST_0_i_1_n_0 ,\result[28]_INST_0_i_2_n_0 ,\result[28]_INST_0_i_3_n_0 ,\result[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[28]_INST_0_i_1 
       (.I0(b[31]),
        .I1(a[31]),
        .O(\result[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[28]_INST_0_i_2 
       (.I0(b[30]),
        .I1(a[30]),
        .O(\result[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[28]_INST_0_i_3 
       (.I0(b[29]),
        .I1(a[29]),
        .O(\result[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[28]_INST_0_i_4 
       (.I0(b[28]),
        .I1(a[28]),
        .O(\result[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[4]_INST_0 
       (.CI(\result[0]_INST_0_n_0 ),
        .CO({\result[4]_INST_0_n_0 ,\result[4]_INST_0_n_1 ,\result[4]_INST_0_n_2 ,\result[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[7:4]),
        .O(result[7:4]),
        .S({\result[4]_INST_0_i_1_n_0 ,\result[4]_INST_0_i_2_n_0 ,\result[4]_INST_0_i_3_n_0 ,\result[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[4]_INST_0_i_1 
       (.I0(b[7]),
        .I1(a[7]),
        .O(\result[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[4]_INST_0_i_2 
       (.I0(b[6]),
        .I1(a[6]),
        .O(\result[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[4]_INST_0_i_3 
       (.I0(b[5]),
        .I1(a[5]),
        .O(\result[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[4]_INST_0_i_4 
       (.I0(b[4]),
        .I1(a[4]),
        .O(\result[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result[8]_INST_0 
       (.CI(\result[4]_INST_0_n_0 ),
        .CO({\result[8]_INST_0_n_0 ,\result[8]_INST_0_n_1 ,\result[8]_INST_0_n_2 ,\result[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(b[11:8]),
        .O(result[11:8]),
        .S({\result[8]_INST_0_i_1_n_0 ,\result[8]_INST_0_i_2_n_0 ,\result[8]_INST_0_i_3_n_0 ,\result[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[8]_INST_0_i_1 
       (.I0(b[11]),
        .I1(a[11]),
        .O(\result[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[8]_INST_0_i_2 
       (.I0(b[10]),
        .I1(a[10]),
        .O(\result[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[8]_INST_0_i_3 
       (.I0(b[9]),
        .I1(a[9]),
        .O(\result[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[8]_INST_0_i_4 
       (.I0(b[8]),
        .I1(a[8]),
        .O(\result[8]_INST_0_i_4_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "array_add_0,array_add,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "array_add,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a,
    b,
    result);
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a, LAYERED_METADATA undef" *) input [31:0]a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b, LAYERED_METADATA undef" *) input [31:0]b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 result DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME result, LAYERED_METADATA undef" *) output [31:0]result;

  wire \<const1> ;
  wire [31:0]a;
  wire ap_done;
  wire ap_ready;
  wire ap_start;
  wire [31:0]b;
  wire [31:0]result;
  wire NLW_inst_ap_idle_UNCONNECTED;

  assign ap_idle = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_array_add inst
       (.a(a),
        .ap_done(ap_done),
        .ap_idle(NLW_inst_ap_idle_UNCONNECTED),
        .ap_ready(ap_ready),
        .ap_start(ap_start),
        .b(b),
        .result(result));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
