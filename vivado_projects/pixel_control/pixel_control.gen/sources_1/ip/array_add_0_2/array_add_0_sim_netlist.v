// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 15:53:41 2024
// Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/pixel_control/pixel_control.gen/sources_1/ip/array_add_0_2/array_add_0_sim_netlist.v
// Design      : array_add_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "array_add_0,array_add,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "array_add,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module array_add_0
   (s_axi_AXI_LITE_AWADDR,
    s_axi_AXI_LITE_AWVALID,
    s_axi_AXI_LITE_AWREADY,
    s_axi_AXI_LITE_WDATA,
    s_axi_AXI_LITE_WSTRB,
    s_axi_AXI_LITE_WVALID,
    s_axi_AXI_LITE_WREADY,
    s_axi_AXI_LITE_BRESP,
    s_axi_AXI_LITE_BVALID,
    s_axi_AXI_LITE_BREADY,
    s_axi_AXI_LITE_ARADDR,
    s_axi_AXI_LITE_ARVALID,
    s_axi_AXI_LITE_ARREADY,
    s_axi_AXI_LITE_RDATA,
    s_axi_AXI_LITE_RRESP,
    s_axi_AXI_LITE_RVALID,
    s_axi_AXI_LITE_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWADDR" *) input [7:0]s_axi_AXI_LITE_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWVALID" *) input s_axi_AXI_LITE_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWREADY" *) output s_axi_AXI_LITE_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WDATA" *) input [31:0]s_axi_AXI_LITE_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WSTRB" *) input [3:0]s_axi_AXI_LITE_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WVALID" *) input s_axi_AXI_LITE_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WREADY" *) output s_axi_AXI_LITE_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BRESP" *) output [1:0]s_axi_AXI_LITE_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BVALID" *) output s_axi_AXI_LITE_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BREADY" *) input s_axi_AXI_LITE_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARADDR" *) input [7:0]s_axi_AXI_LITE_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARVALID" *) input s_axi_AXI_LITE_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARREADY" *) output s_axi_AXI_LITE_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RDATA" *) output [31:0]s_axi_AXI_LITE_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RRESP" *) output [1:0]s_axi_AXI_LITE_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RVALID" *) output s_axi_AXI_LITE_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXI_LITE, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_AXI_LITE_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXI_LITE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [7:0]s_axi_AXI_LITE_ARADDR;
  wire s_axi_AXI_LITE_ARREADY;
  wire s_axi_AXI_LITE_ARVALID;
  wire [7:0]s_axi_AXI_LITE_AWADDR;
  wire s_axi_AXI_LITE_AWREADY;
  wire s_axi_AXI_LITE_AWVALID;
  wire s_axi_AXI_LITE_BREADY;
  wire s_axi_AXI_LITE_BVALID;
  wire [31:0]s_axi_AXI_LITE_RDATA;
  wire s_axi_AXI_LITE_RREADY;
  wire s_axi_AXI_LITE_RVALID;
  wire [31:0]s_axi_AXI_LITE_WDATA;
  wire s_axi_AXI_LITE_WREADY;
  wire [3:0]s_axi_AXI_LITE_WSTRB;
  wire s_axi_AXI_LITE_WVALID;
  wire [1:0]NLW_inst_s_axi_AXI_LITE_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_AXI_LITE_RRESP_UNCONNECTED;

  assign s_axi_AXI_LITE_BRESP[1] = \<const0> ;
  assign s_axi_AXI_LITE_BRESP[0] = \<const0> ;
  assign s_axi_AXI_LITE_RRESP[1] = \<const0> ;
  assign s_axi_AXI_LITE_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_AXI_LITE_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_AXI_LITE_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXI_LITE_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "10'b0000000001" *) 
  (* ap_ST_fsm_pp0_stage1 = "10'b0000000010" *) 
  (* ap_ST_fsm_pp0_stage2 = "10'b0000000100" *) 
  (* ap_ST_fsm_pp0_stage3 = "10'b0000001000" *) 
  (* ap_ST_fsm_pp0_stage4 = "10'b0000010000" *) 
  (* ap_ST_fsm_pp0_stage5 = "10'b0000100000" *) 
  (* ap_ST_fsm_pp0_stage6 = "10'b0001000000" *) 
  (* ap_ST_fsm_pp0_stage7 = "10'b0010000000" *) 
  (* ap_ST_fsm_pp0_stage8 = "10'b0100000000" *) 
  (* ap_ST_fsm_pp0_stage9 = "10'b1000000000" *) 
  array_add_0_array_add inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_AXI_LITE_ARADDR(s_axi_AXI_LITE_ARADDR),
        .s_axi_AXI_LITE_ARREADY(s_axi_AXI_LITE_ARREADY),
        .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID),
        .s_axi_AXI_LITE_AWADDR(s_axi_AXI_LITE_AWADDR),
        .s_axi_AXI_LITE_AWREADY(s_axi_AXI_LITE_AWREADY),
        .s_axi_AXI_LITE_AWVALID(s_axi_AXI_LITE_AWVALID),
        .s_axi_AXI_LITE_BREADY(s_axi_AXI_LITE_BREADY),
        .s_axi_AXI_LITE_BRESP(NLW_inst_s_axi_AXI_LITE_BRESP_UNCONNECTED[1:0]),
        .s_axi_AXI_LITE_BVALID(s_axi_AXI_LITE_BVALID),
        .s_axi_AXI_LITE_RDATA(s_axi_AXI_LITE_RDATA),
        .s_axi_AXI_LITE_RREADY(s_axi_AXI_LITE_RREADY),
        .s_axi_AXI_LITE_RRESP(NLW_inst_s_axi_AXI_LITE_RRESP_UNCONNECTED[1:0]),
        .s_axi_AXI_LITE_RVALID(s_axi_AXI_LITE_RVALID),
        .s_axi_AXI_LITE_WDATA(s_axi_AXI_LITE_WDATA),
        .s_axi_AXI_LITE_WREADY(s_axi_AXI_LITE_WREADY),
        .s_axi_AXI_LITE_WSTRB(s_axi_AXI_LITE_WSTRB),
        .s_axi_AXI_LITE_WVALID(s_axi_AXI_LITE_WVALID));
endmodule

(* C_S_AXI_AXI_LITE_ADDR_WIDTH = "8" *) (* C_S_AXI_AXI_LITE_DATA_WIDTH = "32" *) (* C_S_AXI_AXI_LITE_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "array_add" *) 
(* ap_ST_fsm_pp0_stage0 = "10'b0000000001" *) (* ap_ST_fsm_pp0_stage1 = "10'b0000000010" *) (* ap_ST_fsm_pp0_stage2 = "10'b0000000100" *) 
(* ap_ST_fsm_pp0_stage3 = "10'b0000001000" *) (* ap_ST_fsm_pp0_stage4 = "10'b0000010000" *) (* ap_ST_fsm_pp0_stage5 = "10'b0000100000" *) 
(* ap_ST_fsm_pp0_stage6 = "10'b0001000000" *) (* ap_ST_fsm_pp0_stage7 = "10'b0010000000" *) (* ap_ST_fsm_pp0_stage8 = "10'b0100000000" *) 
(* ap_ST_fsm_pp0_stage9 = "10'b1000000000" *) (* hls_module = "yes" *) 
module array_add_0_array_add
   (ap_clk,
    ap_rst_n,
    s_axi_AXI_LITE_AWVALID,
    s_axi_AXI_LITE_AWREADY,
    s_axi_AXI_LITE_AWADDR,
    s_axi_AXI_LITE_WVALID,
    s_axi_AXI_LITE_WREADY,
    s_axi_AXI_LITE_WDATA,
    s_axi_AXI_LITE_WSTRB,
    s_axi_AXI_LITE_ARVALID,
    s_axi_AXI_LITE_ARREADY,
    s_axi_AXI_LITE_ARADDR,
    s_axi_AXI_LITE_RVALID,
    s_axi_AXI_LITE_RREADY,
    s_axi_AXI_LITE_RDATA,
    s_axi_AXI_LITE_RRESP,
    s_axi_AXI_LITE_BVALID,
    s_axi_AXI_LITE_BREADY,
    s_axi_AXI_LITE_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_AXI_LITE_AWVALID;
  output s_axi_AXI_LITE_AWREADY;
  input [7:0]s_axi_AXI_LITE_AWADDR;
  input s_axi_AXI_LITE_WVALID;
  output s_axi_AXI_LITE_WREADY;
  input [31:0]s_axi_AXI_LITE_WDATA;
  input [3:0]s_axi_AXI_LITE_WSTRB;
  input s_axi_AXI_LITE_ARVALID;
  output s_axi_AXI_LITE_ARREADY;
  input [7:0]s_axi_AXI_LITE_ARADDR;
  output s_axi_AXI_LITE_RVALID;
  input s_axi_AXI_LITE_RREADY;
  output [31:0]s_axi_AXI_LITE_RDATA;
  output [1:0]s_axi_AXI_LITE_RRESP;
  output s_axi_AXI_LITE_BVALID;
  input s_axi_AXI_LITE_BREADY;
  output [1:0]s_axi_AXI_LITE_BRESP;
  output interrupt;

  wire \<const0> ;
  wire AXI_LITE_s_axi_U_n_37;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire ap_CS_fsm_pp0_stage4;
  wire ap_CS_fsm_pp0_stage5;
  wire ap_CS_fsm_pp0_stage6;
  wire ap_CS_fsm_pp0_stage7;
  wire ap_CS_fsm_pp0_stage8;
  wire ap_CS_fsm_pp0_stage9;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire interrupt;
  wire [7:0]s_axi_AXI_LITE_ARADDR;
  wire s_axi_AXI_LITE_ARREADY;
  wire s_axi_AXI_LITE_ARVALID;
  wire [7:0]s_axi_AXI_LITE_AWADDR;
  wire s_axi_AXI_LITE_AWREADY;
  wire s_axi_AXI_LITE_AWVALID;
  wire s_axi_AXI_LITE_BREADY;
  wire s_axi_AXI_LITE_BVALID;
  wire [31:0]s_axi_AXI_LITE_RDATA;
  wire s_axi_AXI_LITE_RREADY;
  wire s_axi_AXI_LITE_RVALID;
  wire [31:0]s_axi_AXI_LITE_WDATA;
  wire s_axi_AXI_LITE_WREADY;
  wire [3:0]s_axi_AXI_LITE_WSTRB;
  wire s_axi_AXI_LITE_WVALID;

  assign s_axi_AXI_LITE_BRESP[1] = \<const0> ;
  assign s_axi_AXI_LITE_BRESP[0] = \<const0> ;
  assign s_axi_AXI_LITE_RRESP[1] = \<const0> ;
  assign s_axi_AXI_LITE_RRESP[0] = \<const0> ;
  array_add_0_array_add_AXI_LITE_s_axi AXI_LITE_s_axi_U
       (.D(ap_NS_fsm),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_AXI_LITE_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXI_LITE_AWREADY),
        .Q({ap_CS_fsm_pp0_stage9,ap_CS_fsm_pp0_stage8,ap_CS_fsm_pp0_stage7,ap_CS_fsm_pp0_stage6,ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage4,ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(AXI_LITE_s_axi_U_n_37),
        .ap_rst_n_inv(ap_rst_n_inv),
        .interrupt(interrupt),
        .s_axi_AXI_LITE_ARADDR(s_axi_AXI_LITE_ARADDR),
        .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID),
        .s_axi_AXI_LITE_AWADDR(s_axi_AXI_LITE_AWADDR),
        .s_axi_AXI_LITE_AWVALID(s_axi_AXI_LITE_AWVALID),
        .s_axi_AXI_LITE_BREADY(s_axi_AXI_LITE_BREADY),
        .s_axi_AXI_LITE_BVALID(s_axi_AXI_LITE_BVALID),
        .s_axi_AXI_LITE_RDATA(s_axi_AXI_LITE_RDATA),
        .s_axi_AXI_LITE_RREADY(s_axi_AXI_LITE_RREADY),
        .s_axi_AXI_LITE_RVALID(s_axi_AXI_LITE_RVALID),
        .s_axi_AXI_LITE_WDATA(s_axi_AXI_LITE_WDATA),
        .s_axi_AXI_LITE_WREADY(s_axi_AXI_LITE_WREADY),
        .s_axi_AXI_LITE_WSTRB(s_axi_AXI_LITE_WSTRB),
        .s_axi_AXI_LITE_WVALID(s_axi_AXI_LITE_WVALID));
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage2),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage3),
        .Q(ap_CS_fsm_pp0_stage4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage4),
        .Q(ap_CS_fsm_pp0_stage5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage5),
        .Q(ap_CS_fsm_pp0_stage6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage6),
        .Q(ap_CS_fsm_pp0_stage7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage7),
        .Q(ap_CS_fsm_pp0_stage8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage8),
        .Q(ap_CS_fsm_pp0_stage9),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_LITE_s_axi_U_n_37),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "array_add_AXI_LITE_s_axi" *) 
module array_add_0_array_add_AXI_LITE_s_axi
   (ap_rst_n_inv,
    interrupt,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_AXI_LITE_BVALID,
    s_axi_AXI_LITE_RDATA,
    ap_rst_n_0,
    s_axi_AXI_LITE_RVALID,
    s_axi_AXI_LITE_WREADY,
    D,
    ap_enable_reg_pp0_iter0,
    ap_clk,
    s_axi_AXI_LITE_WDATA,
    ap_enable_reg_pp0_iter1,
    Q,
    s_axi_AXI_LITE_ARADDR,
    s_axi_AXI_LITE_AWVALID,
    s_axi_AXI_LITE_AWADDR,
    s_axi_AXI_LITE_WVALID,
    s_axi_AXI_LITE_ARVALID,
    s_axi_AXI_LITE_BREADY,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n,
    s_axi_AXI_LITE_RREADY,
    s_axi_AXI_LITE_WSTRB);
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_AXI_LITE_BVALID;
  output [31:0]s_axi_AXI_LITE_RDATA;
  output ap_rst_n_0;
  output s_axi_AXI_LITE_RVALID;
  output s_axi_AXI_LITE_WREADY;
  output [1:0]D;
  output ap_enable_reg_pp0_iter0;
  input ap_clk;
  input [31:0]s_axi_AXI_LITE_WDATA;
  input ap_enable_reg_pp0_iter1;
  input [9:0]Q;
  input [7:0]s_axi_AXI_LITE_ARADDR;
  input s_axi_AXI_LITE_AWVALID;
  input [7:0]s_axi_AXI_LITE_AWADDR;
  input s_axi_AXI_LITE_WVALID;
  input s_axi_AXI_LITE_ARVALID;
  input s_axi_AXI_LITE_BREADY;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n;
  input s_axi_AXI_LITE_RREADY;
  input [3:0]s_axi_AXI_LITE_WSTRB;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[1]_i_2_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_rstate_reg_n_0_[2] ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [9:0]Q;
  wire a_ce0;
  wire [3:0]address0;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire [3:0]int_a_address1;
  wire int_a_n_0;
  wire int_a_n_1;
  wire int_a_n_2;
  wire int_a_n_3;
  wire int_a_n_32;
  wire int_a_n_33;
  wire int_a_read;
  wire int_a_read0;
  wire int_a_write_i_1_n_0;
  wire int_a_write_reg_n_0;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_i_4_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_b_n_0;
  wire int_b_n_1;
  wire int_b_n_10;
  wire int_b_n_11;
  wire int_b_n_12;
  wire int_b_n_13;
  wire int_b_n_14;
  wire int_b_n_15;
  wire int_b_n_16;
  wire int_b_n_17;
  wire int_b_n_18;
  wire int_b_n_19;
  wire int_b_n_2;
  wire int_b_n_20;
  wire int_b_n_21;
  wire int_b_n_22;
  wire int_b_n_23;
  wire int_b_n_3;
  wire int_b_n_34;
  wire int_b_n_39;
  wire int_b_n_4;
  wire int_b_n_40;
  wire int_b_n_41;
  wire int_b_n_42;
  wire int_b_n_43;
  wire int_b_n_44;
  wire int_b_n_45;
  wire int_b_n_46;
  wire int_b_n_47;
  wire int_b_n_48;
  wire int_b_n_49;
  wire int_b_n_5;
  wire int_b_n_50;
  wire int_b_n_51;
  wire int_b_n_52;
  wire int_b_n_53;
  wire int_b_n_54;
  wire int_b_n_55;
  wire int_b_n_56;
  wire int_b_n_57;
  wire int_b_n_58;
  wire int_b_n_59;
  wire int_b_n_6;
  wire int_b_n_60;
  wire int_b_n_61;
  wire int_b_n_62;
  wire int_b_n_63;
  wire int_b_n_64;
  wire int_b_n_65;
  wire int_b_n_66;
  wire int_b_n_67;
  wire int_b_n_68;
  wire int_b_n_69;
  wire int_b_n_7;
  wire int_b_n_70;
  wire int_b_n_71;
  wire int_b_n_72;
  wire int_b_n_8;
  wire int_b_n_9;
  wire int_b_read;
  wire int_b_read0;
  wire int_b_write_i_1_n_0;
  wire int_b_write_i_2_n_0;
  wire int_b_write_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire int_isr;
  wire int_isr8_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_result_n_0;
  wire int_result_n_1;
  wire int_result_n_10;
  wire int_result_n_11;
  wire int_result_n_12;
  wire int_result_n_13;
  wire int_result_n_14;
  wire int_result_n_15;
  wire int_result_n_16;
  wire int_result_n_17;
  wire int_result_n_18;
  wire int_result_n_19;
  wire int_result_n_2;
  wire int_result_n_20;
  wire int_result_n_21;
  wire int_result_n_22;
  wire int_result_n_23;
  wire int_result_n_24;
  wire int_result_n_25;
  wire int_result_n_26;
  wire int_result_n_27;
  wire int_result_n_28;
  wire int_result_n_3;
  wire int_result_n_33;
  wire int_result_n_34;
  wire int_result_n_35;
  wire int_result_n_36;
  wire int_result_n_37;
  wire int_result_n_4;
  wire int_result_n_5;
  wire int_result_n_6;
  wire int_result_n_7;
  wire int_result_n_8;
  wire int_result_n_9;
  wire int_result_read;
  wire int_result_read0;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire [7:0]p_0_in;
  wire [7:2]p_0_in_0;
  wire [3:0]p_0_in__0;
  wire [30:0]q0;
  wire [31:0]q1;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_4_n_0 ;
  wire [7:0]s_axi_AXI_LITE_ARADDR;
  wire s_axi_AXI_LITE_ARVALID;
  wire [7:0]s_axi_AXI_LITE_AWADDR;
  wire s_axi_AXI_LITE_AWVALID;
  wire s_axi_AXI_LITE_BREADY;
  wire s_axi_AXI_LITE_BVALID;
  wire [31:0]s_axi_AXI_LITE_RDATA;
  wire s_axi_AXI_LITE_RREADY;
  wire s_axi_AXI_LITE_RVALID;
  wire [31:0]s_axi_AXI_LITE_WDATA;
  wire s_axi_AXI_LITE_WREADY;
  wire [3:0]s_axi_AXI_LITE_WSTRB;
  wire s_axi_AXI_LITE_WVALID;
  wire task_ap_done;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'h444F444477777777)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXI_LITE_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(\FSM_onehot_rstate[1]_i_2_n_0 ),
        .I3(int_result_read),
        .I4(s_axi_AXI_LITE_RREADY),
        .I5(\FSM_onehot_rstate_reg_n_0_[2] ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rstate[1]_i_2 
       (.I0(int_a_read),
        .I1(int_b_read),
        .O(\FSM_onehot_rstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA2AAA2AAA2)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(s_axi_AXI_LITE_RREADY),
        .I2(int_result_read),
        .I3(\FSM_onehot_rstate[1]_i_2_n_0 ),
        .I4(s_axi_AXI_LITE_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF353035)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_AXI_LITE_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_AXI_LITE_BVALID),
        .I4(s_axi_AXI_LITE_BREADY),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F080F080F0)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_ARVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_AXI_LITE_WVALID),
        .I4(s_axi_AXI_LITE_AWVALID),
        .I5(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444F444F444F444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_AXI_LITE_BREADY),
        .I1(s_axi_AXI_LITE_BVALID),
        .I2(s_axi_AXI_LITE_WVALID),
        .I3(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I4(s_axi_AXI_LITE_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_AXI_LITE_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[9]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4044404040404040)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(int_result_n_0),
        .I1(\ap_CS_fsm[1]_i_3_n_0 ),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008800A0AAA000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[9]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q[0]),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    auto_restart_status_i_1
       (.I0(p_0_in_0[7]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  array_add_0_array_add_AXI_LITE_s_axi_ram int_a
       (.D({int_a_n_0,int_a_n_1,int_a_n_2,int_a_n_3}),
        .E(a_ce0),
        .\FSM_onehot_rstate_reg[1] (int_a_n_32),
        .Q({q1[31:10],q1[8],q1[6:4],q1[1:0]}),
        .S(int_a_n_33),
        .address0(address0),
        .ap_clk(ap_clk),
        .int_a_address1(int_a_address1),
        .int_a_read(int_a_read),
        .int_ap_ready(int_ap_ready),
        .int_b_read(int_b_read),
        .interrupt(interrupt),
        .mem_reg_0_15_28_28_i_2(int_b_n_72),
        .p_0_in_0({p_0_in_0[7],p_0_in_0[2]}),
        .\q0_reg[0]_0 (\FSM_onehot_wstate_reg_n_0_[2] ),
        .\q0_reg[30]_0 (q0),
        .\q1_reg[0]_0 (int_a_write_reg_n_0),
        .\q1_reg[0]_1 (\FSM_onehot_rstate_reg[1]_0 ),
        .\rdata_reg[2] (\rdata[9]_i_2_n_0 ),
        .\rdata_reg[9] ({int_b_n_62,int_b_n_64,int_b_n_68,int_b_n_69}),
        .\rdata_reg[9]_0 ({int_result_n_34,int_result_n_35,int_result_n_36,int_result_n_37}),
        .s_axi_AXI_LITE_ARADDR(s_axi_AXI_LITE_ARADDR[3:2]),
        .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID),
        .s_axi_AXI_LITE_WDATA(s_axi_AXI_LITE_WDATA),
        .s_axi_AXI_LITE_WSTRB(s_axi_AXI_LITE_WSTRB),
        .s_axi_AXI_LITE_WVALID(s_axi_AXI_LITE_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    int_a_read_i_1
       (.I0(s_axi_AXI_LITE_ARADDR[7]),
        .I1(s_axi_AXI_LITE_ARADDR[6]),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_a_read0));
  FDRE int_a_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_a_read0),
        .Q(int_a_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    int_a_write_i_1
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_AWVALID),
        .I2(s_axi_AXI_LITE_AWADDR[6]),
        .I3(s_axi_AXI_LITE_AWADDR[7]),
        .I4(int_b_write_i_2_n_0),
        .I5(int_a_write_reg_n_0),
        .O(int_a_write_i_1_n_0));
  FDRE int_a_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_a_write_i_1_n_0),
        .Q(int_a_write_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    int_ap_idle_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in_0[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF444444444)) 
    int_ap_ready_i_1
       (.I0(p_0_in_0[7]),
        .I1(ap_ready),
        .I2(\rdata[9]_i_2_n_0 ),
        .I3(s_axi_AXI_LITE_ARADDR[2]),
        .I4(s_axi_AXI_LITE_ARADDR[3]),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    int_ap_ready_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[9]),
        .O(ap_ready));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B8B0F0)) 
    int_ap_start_i_1
       (.I0(p_0_in_0[7]),
        .I1(Q[9]),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(int_ap_start5_out),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_ap_start_i_2
       (.I0(s_axi_AXI_LITE_WDATA[0]),
        .I1(s_axi_AXI_LITE_WSTRB[0]),
        .I2(int_ap_start_i_3_n_0),
        .I3(int_ap_start_i_4_n_0),
        .I4(p_0_in__0[0]),
        .I5(p_0_in__0[1]),
        .O(int_ap_start5_out));
  LUT6 #(
    .INIT(64'hFFFFEFFFEFFFEFFF)) 
    int_ap_start_i_3
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(p_0_in__0[2]),
        .I2(s_axi_AXI_LITE_WVALID),
        .I3(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I4(s_axi_AXI_LITE_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_ap_start_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_4
       (.I0(p_0_in__0[3]),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[7] ),
        .I3(\waddr_reg_n_0_[0] ),
        .O(int_ap_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_AXI_LITE_WDATA[7]),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[0]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in_0[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in_0[7]),
        .R(ap_rst_n_inv));
  array_add_0_array_add_AXI_LITE_s_axi_ram_0 int_b
       (.E(a_ce0),
        .Q(Q),
        .S(int_a_n_33),
        .address0(address0),
        .\ap_CS_fsm_reg[5] (int_b_n_34),
        .\ap_CS_fsm_reg[8] (int_b_n_39),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_start(ap_start),
        .int_a_address1(int_a_address1),
        .mem_reg_0_15_28_28_i_2_0(q0),
        .p_1_in({int_b_n_0,int_b_n_1,int_b_n_2,int_b_n_3,int_b_n_4,int_b_n_5,int_b_n_6,int_b_n_7,int_b_n_8,int_b_n_9,int_b_n_10,int_b_n_11,int_b_n_12,int_b_n_13,int_b_n_14,int_b_n_15,int_b_n_16,int_b_n_17,int_b_n_18,int_b_n_19,int_b_n_20,int_b_n_21,int_b_n_22,int_b_n_23,p_0_in}),
        .\q0_reg[0]_0 (\FSM_onehot_wstate_reg_n_0_[2] ),
        .\q0_reg[31]_0 (int_b_n_72),
        .\q0_reg[31]_1 (int_a_n_32),
        .\q1_reg[0]_0 (int_b_write_reg_n_0),
        .\q1_reg[0]_1 (\FSM_onehot_rstate_reg[1]_0 ),
        .\q1_reg[24]_0 (int_result_n_33),
        .\q1_reg[31]_0 ({int_b_n_40,int_b_n_41,int_b_n_42,int_b_n_43,int_b_n_44,int_b_n_45,int_b_n_46,int_b_n_47,int_b_n_48,int_b_n_49,int_b_n_50,int_b_n_51,int_b_n_52,int_b_n_53,int_b_n_54,int_b_n_55,int_b_n_56,int_b_n_57,int_b_n_58,int_b_n_59,int_b_n_60,int_b_n_61,int_b_n_62,int_b_n_63,int_b_n_64,int_b_n_65,int_b_n_66,int_b_n_67,int_b_n_68,int_b_n_69,int_b_n_70,int_b_n_71}),
        .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID),
        .s_axi_AXI_LITE_WDATA(s_axi_AXI_LITE_WDATA),
        .s_axi_AXI_LITE_WSTRB(s_axi_AXI_LITE_WSTRB),
        .s_axi_AXI_LITE_WVALID(s_axi_AXI_LITE_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    int_b_read_i_1
       (.I0(s_axi_AXI_LITE_ARADDR[6]),
        .I1(s_axi_AXI_LITE_ARADDR[7]),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_b_read0));
  FDRE int_b_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_b_read0),
        .Q(int_b_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    int_b_write_i_1
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_AWVALID),
        .I2(s_axi_AXI_LITE_AWADDR[7]),
        .I3(s_axi_AXI_LITE_AWADDR[6]),
        .I4(int_b_write_i_2_n_0),
        .I5(int_b_write_reg_n_0),
        .O(int_b_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    int_b_write_i_2
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_ARVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_AXI_LITE_WVALID),
        .O(int_b_write_i_2_n_0));
  FDRE int_b_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_b_write_i_1_n_0),
        .Q(int_b_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_AXI_LITE_WDATA[0]),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[0]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_AXI_LITE_WDATA[0]),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[1]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_AXI_LITE_WDATA[1]),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[1]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_AXI_LITE_WSTRB[0]),
        .I1(int_ap_start_i_3_n_0),
        .I2(p_0_in__0[3]),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[7] ),
        .I5(\waddr_reg_n_0_[0] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_AXI_LITE_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(int_isr8_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[0]),
        .O(int_isr8_out));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_AXI_LITE_WDATA[1]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(int_isr),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \int_isr[1]_i_2 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(Q[9]),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(int_isr));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  array_add_0_array_add_AXI_LITE_s_axi_ram__parameterized0 int_result
       (.D({int_result_n_1,int_result_n_2}),
        .Q(Q),
        .\ap_CS_fsm_reg[4] (int_result_n_0),
        .\ap_CS_fsm_reg[9] (int_result_n_33),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .int_a_address1(int_a_address1),
        .int_a_read(int_a_read),
        .int_b_read(int_b_read),
        .mem_reg_0_15_31_31_i_1__1(int_b_n_34),
        .p_1_in({int_b_n_0,int_b_n_1,int_b_n_2,int_b_n_3,int_b_n_4,int_b_n_5,int_b_n_6,int_b_n_7,int_b_n_8,int_b_n_9,int_b_n_10,int_b_n_11,int_b_n_12,int_b_n_13,int_b_n_14,int_b_n_15,int_b_n_16,int_b_n_17,int_b_n_18,int_b_n_19,int_b_n_20,int_b_n_21,int_b_n_22,int_b_n_23,p_0_in}),
        .\q1_reg[0]_0 (\FSM_onehot_rstate_reg[1]_0 ),
        .\q1_reg[0]_1 (int_b_n_39),
        .\q1_reg[10]_0 (int_result_n_7),
        .\q1_reg[11]_0 (int_result_n_8),
        .\q1_reg[12]_0 (int_result_n_9),
        .\q1_reg[13]_0 (int_result_n_10),
        .\q1_reg[14]_0 (int_result_n_11),
        .\q1_reg[15]_0 (int_result_n_12),
        .\q1_reg[16]_0 (int_result_n_13),
        .\q1_reg[17]_0 (int_result_n_14),
        .\q1_reg[18]_0 (int_result_n_15),
        .\q1_reg[19]_0 (int_result_n_16),
        .\q1_reg[20]_0 (int_result_n_17),
        .\q1_reg[21]_0 (int_result_n_18),
        .\q1_reg[22]_0 (int_result_n_19),
        .\q1_reg[23]_0 (int_result_n_20),
        .\q1_reg[24]_0 (int_result_n_21),
        .\q1_reg[25]_0 (int_result_n_22),
        .\q1_reg[26]_0 (int_result_n_23),
        .\q1_reg[27]_0 (int_result_n_24),
        .\q1_reg[28]_0 (int_result_n_25),
        .\q1_reg[29]_0 (int_result_n_26),
        .\q1_reg[30]_0 (int_result_n_27),
        .\q1_reg[31]_0 (int_result_n_28),
        .\q1_reg[31]_1 (p_0_in__0),
        .\q1_reg[4]_0 (int_result_n_3),
        .\q1_reg[5]_0 (int_result_n_4),
        .\q1_reg[6]_0 (int_result_n_5),
        .\q1_reg[8]_0 (int_result_n_6),
        .\q1_reg[9]_0 ({int_result_n_34,int_result_n_35,int_result_n_36,int_result_n_37}),
        .\rdata_reg[0] (\rdata[9]_i_2_n_0 ),
        .\rdata_reg[0]_0 (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[31] ({int_b_n_40,int_b_n_41,int_b_n_42,int_b_n_43,int_b_n_44,int_b_n_45,int_b_n_46,int_b_n_47,int_b_n_48,int_b_n_49,int_b_n_50,int_b_n_51,int_b_n_52,int_b_n_53,int_b_n_54,int_b_n_55,int_b_n_56,int_b_n_57,int_b_n_58,int_b_n_59,int_b_n_60,int_b_n_61,int_b_n_63,int_b_n_65,int_b_n_66,int_b_n_67,int_b_n_70,int_b_n_71}),
        .\rdata_reg[31]_0 ({q1[31:10],q1[8],q1[6:4],q1[1:0]}),
        .s_axi_AXI_LITE_ARADDR(s_axi_AXI_LITE_ARADDR[5:2]),
        .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    int_result_read_i_1
       (.I0(s_axi_AXI_LITE_ARADDR[7]),
        .I1(s_axi_AXI_LITE_ARADDR[6]),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_result_read0));
  FDRE int_result_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_result_read0),
        .Q(int_result_read),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    int_task_ap_done_i_1
       (.I0(task_ap_done),
        .I1(\rdata[9]_i_2_n_0 ),
        .I2(s_axi_AXI_LITE_ARADDR[2]),
        .I3(s_axi_AXI_LITE_ARADDR[3]),
        .I4(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F001000)) 
    int_task_ap_done_i_2
       (.I0(ap_start),
        .I1(p_0_in_0[2]),
        .I2(auto_restart_status_reg_n_0),
        .I3(Q[0]),
        .I4(ap_enable_reg_pp0_iter1),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_AXI_LITE_ARADDR[3]),
        .I3(ap_start),
        .I4(s_axi_AXI_LITE_ARADDR[2]),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata[1]_i_2 
       (.I0(int_task_ap_done),
        .I1(\int_ier_reg_n_0_[1] ),
        .I2(s_axi_AXI_LITE_ARADDR[2]),
        .I3(s_axi_AXI_LITE_ARADDR[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_AXI_LITE_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \rdata[31]_i_2 
       (.I0(int_result_read),
        .I1(int_a_read),
        .I2(int_b_read),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[9]_i_2 
       (.I0(s_axi_AXI_LITE_ARADDR[4]),
        .I1(s_axi_AXI_LITE_ARADDR[5]),
        .I2(s_axi_AXI_LITE_ARADDR[0]),
        .I3(s_axi_AXI_LITE_ARADDR[1]),
        .I4(\rdata[9]_i_4_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \rdata[9]_i_4 
       (.I0(s_axi_AXI_LITE_ARADDR[7]),
        .I1(s_axi_AXI_LITE_ARADDR[6]),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[9]_i_4_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_2),
        .Q(s_axi_AXI_LITE_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_7),
        .Q(s_axi_AXI_LITE_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_8),
        .Q(s_axi_AXI_LITE_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_9),
        .Q(s_axi_AXI_LITE_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_10),
        .Q(s_axi_AXI_LITE_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_11),
        .Q(s_axi_AXI_LITE_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_12),
        .Q(s_axi_AXI_LITE_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_13),
        .Q(s_axi_AXI_LITE_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_14),
        .Q(s_axi_AXI_LITE_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_15),
        .Q(s_axi_AXI_LITE_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_16),
        .Q(s_axi_AXI_LITE_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_1),
        .Q(s_axi_AXI_LITE_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_17),
        .Q(s_axi_AXI_LITE_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_18),
        .Q(s_axi_AXI_LITE_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_19),
        .Q(s_axi_AXI_LITE_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_20),
        .Q(s_axi_AXI_LITE_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_21),
        .Q(s_axi_AXI_LITE_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_22),
        .Q(s_axi_AXI_LITE_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_23),
        .Q(s_axi_AXI_LITE_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_24),
        .Q(s_axi_AXI_LITE_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_25),
        .Q(s_axi_AXI_LITE_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_26),
        .Q(s_axi_AXI_LITE_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_a_n_3),
        .Q(s_axi_AXI_LITE_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_27),
        .Q(s_axi_AXI_LITE_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_28),
        .Q(s_axi_AXI_LITE_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_a_n_2),
        .Q(s_axi_AXI_LITE_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_3),
        .Q(s_axi_AXI_LITE_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_4),
        .Q(s_axi_AXI_LITE_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_5),
        .Q(s_axi_AXI_LITE_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_a_n_1),
        .Q(s_axi_AXI_LITE_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_result_n_6),
        .Q(s_axi_AXI_LITE_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_a_n_0),
        .Q(s_axi_AXI_LITE_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    s_axi_AXI_LITE_RVALID_INST_0
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(int_result_read),
        .I2(int_a_read),
        .I3(int_b_read),
        .O(s_axi_AXI_LITE_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h70)) 
    s_axi_AXI_LITE_WREADY_INST_0
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_ARVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .O(s_axi_AXI_LITE_WREADY));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[7]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_AXI_LITE_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[2]),
        .Q(p_0_in__0[0]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[3]),
        .Q(p_0_in__0[1]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[4]),
        .Q(p_0_in__0[2]),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[5]),
        .Q(p_0_in__0[3]),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_AXI_LITE_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "array_add_AXI_LITE_s_axi_ram" *) 
module array_add_0_array_add_AXI_LITE_s_axi_ram
   (D,
    Q,
    \FSM_onehot_rstate_reg[1] ,
    S,
    \q0_reg[30]_0 ,
    s_axi_AXI_LITE_ARADDR,
    \rdata_reg[2] ,
    p_0_in_0,
    int_a_read,
    \rdata_reg[9] ,
    int_b_read,
    \rdata_reg[9]_0 ,
    int_ap_ready,
    interrupt,
    \q1_reg[0]_0 ,
    s_axi_AXI_LITE_WVALID,
    s_axi_AXI_LITE_ARVALID,
    \q1_reg[0]_1 ,
    s_axi_AXI_LITE_WSTRB,
    \q0_reg[0]_0 ,
    s_axi_AXI_LITE_WDATA,
    mem_reg_0_15_28_28_i_2,
    ap_clk,
    int_a_address1,
    address0,
    E);
  output [3:0]D;
  output [27:0]Q;
  output \FSM_onehot_rstate_reg[1] ;
  output [0:0]S;
  output [30:0]\q0_reg[30]_0 ;
  input [1:0]s_axi_AXI_LITE_ARADDR;
  input \rdata_reg[2] ;
  input [1:0]p_0_in_0;
  input int_a_read;
  input [3:0]\rdata_reg[9] ;
  input int_b_read;
  input [3:0]\rdata_reg[9]_0 ;
  input int_ap_ready;
  input interrupt;
  input \q1_reg[0]_0 ;
  input s_axi_AXI_LITE_WVALID;
  input s_axi_AXI_LITE_ARVALID;
  input \q1_reg[0]_1 ;
  input [3:0]s_axi_AXI_LITE_WSTRB;
  input \q0_reg[0]_0 ;
  input [31:0]s_axi_AXI_LITE_WDATA;
  input [0:0]mem_reg_0_15_28_28_i_2;
  input ap_clk;
  input [3:0]int_a_address1;
  input [3:0]address0;
  input [0:0]E;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate_reg[1] ;
  wire [27:0]Q;
  wire [0:0]S;
  wire [3:0]address0;
  wire ap_clk;
  wire [3:0]int_a_address1;
  wire int_a_ce1;
  wire int_a_read;
  wire int_ap_ready;
  wire int_b_read;
  wire interrupt;
  wire [0:0]mem_reg_0_15_28_28_i_2;
  wire [24:0]p_0_in0_out;
  wire [1:0]p_0_in_0;
  wire [31:24]p_1_in;
  wire [31:31]q0;
  wire [31:0]q00;
  wire \q0_reg[0]_0 ;
  wire [30:0]\q0_reg[30]_0 ;
  wire [9:2]q1;
  wire [31:0]q10__0;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata_reg[2] ;
  wire [3:0]\rdata_reg[9] ;
  wire [3:0]\rdata_reg[9]_0 ;
  wire [1:0]s_axi_AXI_LITE_ARADDR;
  wire s_axi_AXI_LITE_ARVALID;
  wire [31:0]s_axi_AXI_LITE_WDATA;
  wire [3:0]s_axi_AXI_LITE_WSTRB;
  wire s_axi_AXI_LITE_WVALID;

  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[0]),
        .DPO(q00[0]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[0]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_0_0_i_1__0
       (.I0(s_axi_AXI_LITE_WSTRB[0]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[10]),
        .DPO(q00[10]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[10]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[11]),
        .DPO(q00[11]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[11]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[12]),
        .DPO(q00[12]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[12]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[13]),
        .DPO(q00[13]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[13]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[14]),
        .DPO(q00[14]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[14]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[15]),
        .DPO(q00[15]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[15]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[16]),
        .DPO(q00[16]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[16]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_16_16_i_1__0
       (.I0(s_axi_AXI_LITE_WSTRB[2]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[17]),
        .DPO(q00[17]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[17]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[18]),
        .DPO(q00[18]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[18]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[19]),
        .DPO(q00[19]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[19]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[1]),
        .DPO(q00[1]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[1]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[20]),
        .DPO(q00[20]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[20]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[21]),
        .DPO(q00[21]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[21]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[22]),
        .DPO(q00[22]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[22]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[23]),
        .DPO(q00[23]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[23]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[24]),
        .DPO(q00[24]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[24]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_24_24_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[24]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_24_24_i_2__0
       (.I0(s_axi_AXI_LITE_WSTRB[3]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out[24]));
  LUT2 #(
    .INIT(4'h7)) 
    mem_reg_0_15_24_24_i_3
       (.I0(\q1_reg[0]_1 ),
        .I1(s_axi_AXI_LITE_ARVALID),
        .O(\FSM_onehot_rstate_reg[1] ));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[25]),
        .DPO(q00[25]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[25]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_25_25_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[25]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[25]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[26]),
        .DPO(q00[26]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[26]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_26_26_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[26]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[26]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[27]),
        .DPO(q00[27]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[27]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_27_27_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[27]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[27]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[28]),
        .DPO(q00[28]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[28]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_28_28_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[28]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[28]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_28_28_i_3
       (.I0(q0),
        .I1(mem_reg_0_15_28_28_i_2),
        .O(S));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[29]),
        .DPO(q00[29]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[29]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_29_29_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[29]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[29]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[2]),
        .DPO(q00[2]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[2]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[30]),
        .DPO(q00[30]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[30]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_30_30_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[30]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[30]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[31]),
        .DPO(q00[31]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[31]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_31_31_i_1__0
       (.I0(s_axi_AXI_LITE_WDATA[31]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\FSM_onehot_rstate_reg[1] ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(p_1_in[31]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[3]),
        .DPO(q00[3]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[3]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[4]),
        .DPO(q00[4]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[4]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[5]),
        .DPO(q00[5]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[5]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[6]),
        .DPO(q00[6]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[6]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[7]),
        .DPO(q00[7]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[7]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[8]),
        .DPO(q00[8]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[8]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_8_8_i_1__0
       (.I0(s_axi_AXI_LITE_WSTRB[1]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[9]),
        .DPO(q00[9]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[9]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[0]),
        .Q(\q0_reg[30]_0 [0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[10]),
        .Q(\q0_reg[30]_0 [10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[11]),
        .Q(\q0_reg[30]_0 [11]),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[12]),
        .Q(\q0_reg[30]_0 [12]),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[13]),
        .Q(\q0_reg[30]_0 [13]),
        .R(1'b0));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[14]),
        .Q(\q0_reg[30]_0 [14]),
        .R(1'b0));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[15]),
        .Q(\q0_reg[30]_0 [15]),
        .R(1'b0));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[16]),
        .Q(\q0_reg[30]_0 [16]),
        .R(1'b0));
  FDRE \q0_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[17]),
        .Q(\q0_reg[30]_0 [17]),
        .R(1'b0));
  FDRE \q0_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[18]),
        .Q(\q0_reg[30]_0 [18]),
        .R(1'b0));
  FDRE \q0_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[19]),
        .Q(\q0_reg[30]_0 [19]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[1]),
        .Q(\q0_reg[30]_0 [1]),
        .R(1'b0));
  FDRE \q0_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[20]),
        .Q(\q0_reg[30]_0 [20]),
        .R(1'b0));
  FDRE \q0_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[21]),
        .Q(\q0_reg[30]_0 [21]),
        .R(1'b0));
  FDRE \q0_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[22]),
        .Q(\q0_reg[30]_0 [22]),
        .R(1'b0));
  FDRE \q0_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[23]),
        .Q(\q0_reg[30]_0 [23]),
        .R(1'b0));
  FDRE \q0_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[24]),
        .Q(\q0_reg[30]_0 [24]),
        .R(1'b0));
  FDRE \q0_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[25]),
        .Q(\q0_reg[30]_0 [25]),
        .R(1'b0));
  FDRE \q0_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[26]),
        .Q(\q0_reg[30]_0 [26]),
        .R(1'b0));
  FDRE \q0_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[27]),
        .Q(\q0_reg[30]_0 [27]),
        .R(1'b0));
  FDRE \q0_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[28]),
        .Q(\q0_reg[30]_0 [28]),
        .R(1'b0));
  FDRE \q0_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[29]),
        .Q(\q0_reg[30]_0 [29]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[2]),
        .Q(\q0_reg[30]_0 [2]),
        .R(1'b0));
  FDRE \q0_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[30]),
        .Q(\q0_reg[30]_0 [30]),
        .R(1'b0));
  FDRE \q0_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[31]),
        .Q(q0),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[3]),
        .Q(\q0_reg[30]_0 [3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[4]),
        .Q(\q0_reg[30]_0 [4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[5]),
        .Q(\q0_reg[30]_0 [5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[6]),
        .Q(\q0_reg[30]_0 [6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[7]),
        .Q(\q0_reg[30]_0 [7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[8]),
        .Q(\q0_reg[30]_0 [8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[9]),
        .Q(\q0_reg[30]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1 
       (.I0(\q1_reg[0]_0 ),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\q1_reg[0]_1 ),
        .O(int_a_ce1));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[10]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[11]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[12]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[13]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[14]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[15]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[16]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[17]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[18]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[19]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[20]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[21]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[22]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[23]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[24]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[25]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[26]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[27]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[28]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[29]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[2]),
        .Q(q1[2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[30]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[31]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[3]),
        .Q(q1[3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[4]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[5]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[6]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[7]),
        .Q(q1[7]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[8]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[9]),
        .Q(q1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \rdata[2]_i_1 
       (.I0(s_axi_AXI_LITE_ARADDR[1]),
        .I1(s_axi_AXI_LITE_ARADDR[0]),
        .I2(\rdata_reg[2] ),
        .I3(p_0_in_0[0]),
        .I4(\rdata[2]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \rdata[2]_i_2 
       (.I0(q1[2]),
        .I1(int_a_read),
        .I2(\rdata_reg[9] [0]),
        .I3(int_b_read),
        .I4(\rdata_reg[9]_0 [0]),
        .I5(\FSM_onehot_rstate_reg[1] ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \rdata[3]_i_1 
       (.I0(s_axi_AXI_LITE_ARADDR[1]),
        .I1(s_axi_AXI_LITE_ARADDR[0]),
        .I2(\rdata_reg[2] ),
        .I3(int_ap_ready),
        .I4(\rdata[3]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \rdata[3]_i_2 
       (.I0(q1[3]),
        .I1(int_a_read),
        .I2(\rdata_reg[9] [1]),
        .I3(int_b_read),
        .I4(\rdata_reg[9]_0 [1]),
        .I5(\FSM_onehot_rstate_reg[1] ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \rdata[7]_i_1 
       (.I0(s_axi_AXI_LITE_ARADDR[1]),
        .I1(s_axi_AXI_LITE_ARADDR[0]),
        .I2(\rdata_reg[2] ),
        .I3(p_0_in_0[1]),
        .I4(\rdata[7]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \rdata[7]_i_2 
       (.I0(q1[7]),
        .I1(int_a_read),
        .I2(\rdata_reg[9] [2]),
        .I3(int_b_read),
        .I4(\rdata_reg[9]_0 [2]),
        .I5(\FSM_onehot_rstate_reg[1] ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \rdata[9]_i_1 
       (.I0(s_axi_AXI_LITE_ARADDR[1]),
        .I1(s_axi_AXI_LITE_ARADDR[0]),
        .I2(\rdata_reg[2] ),
        .I3(interrupt),
        .I4(\rdata[9]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB8BBB88800000000)) 
    \rdata[9]_i_3 
       (.I0(q1[9]),
        .I1(int_a_read),
        .I2(\rdata_reg[9] [3]),
        .I3(int_b_read),
        .I4(\rdata_reg[9]_0 [3]),
        .I5(\FSM_onehot_rstate_reg[1] ),
        .O(\rdata[9]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "array_add_AXI_LITE_s_axi_ram" *) 
module array_add_0_array_add_AXI_LITE_s_axi_ram_0
   (p_1_in,
    E,
    ap_enable_reg_pp0_iter0,
    \ap_CS_fsm_reg[5] ,
    address0,
    \ap_CS_fsm_reg[8] ,
    \q1_reg[31]_0 ,
    \q0_reg[31]_0 ,
    \q1_reg[0]_0 ,
    s_axi_AXI_LITE_WVALID,
    s_axi_AXI_LITE_ARVALID,
    \q1_reg[0]_1 ,
    s_axi_AXI_LITE_WSTRB,
    \q0_reg[0]_0 ,
    s_axi_AXI_LITE_WDATA,
    \q0_reg[31]_1 ,
    \q1_reg[24]_0 ,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    ap_start,
    S,
    mem_reg_0_15_28_28_i_2_0,
    ap_clk,
    int_a_address1);
  output [31:0]p_1_in;
  output [0:0]E;
  output ap_enable_reg_pp0_iter0;
  output \ap_CS_fsm_reg[5] ;
  output [3:0]address0;
  output \ap_CS_fsm_reg[8] ;
  output [31:0]\q1_reg[31]_0 ;
  output [0:0]\q0_reg[31]_0 ;
  input \q1_reg[0]_0 ;
  input s_axi_AXI_LITE_WVALID;
  input s_axi_AXI_LITE_ARVALID;
  input \q1_reg[0]_1 ;
  input [3:0]s_axi_AXI_LITE_WSTRB;
  input \q0_reg[0]_0 ;
  input [31:0]s_axi_AXI_LITE_WDATA;
  input \q0_reg[31]_1 ;
  input \q1_reg[24]_0 ;
  input ap_enable_reg_pp0_iter0_reg;
  input [9:0]Q;
  input ap_start;
  input [0:0]S;
  input [30:0]mem_reg_0_15_28_28_i_2_0;
  input ap_clk;
  input [3:0]int_a_address1;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]S;
  wire [3:0]address0;
  wire \ap_CS_fsm_reg[5] ;
  wire \ap_CS_fsm_reg[8] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_start;
  wire [3:0]int_a_address1;
  wire int_b_ce1;
  wire mem_reg_0_15_0_0_i_10__0_n_0;
  wire mem_reg_0_15_0_0_i_11__0_n_0;
  wire mem_reg_0_15_0_0_i_12_n_0;
  wire mem_reg_0_15_0_0_i_1__1_n_0;
  wire mem_reg_0_15_0_0_i_1__1_n_1;
  wire mem_reg_0_15_0_0_i_1__1_n_2;
  wire mem_reg_0_15_0_0_i_1__1_n_3;
  wire mem_reg_0_15_0_0_i_7__0_n_0;
  wire mem_reg_0_15_0_0_i_8__0_n_0;
  wire mem_reg_0_15_0_0_i_9__0_n_0;
  wire mem_reg_0_15_12_12_i_1_n_0;
  wire mem_reg_0_15_12_12_i_1_n_1;
  wire mem_reg_0_15_12_12_i_1_n_2;
  wire mem_reg_0_15_12_12_i_1_n_3;
  wire mem_reg_0_15_12_12_i_2_n_0;
  wire mem_reg_0_15_12_12_i_3_n_0;
  wire mem_reg_0_15_12_12_i_4_n_0;
  wire mem_reg_0_15_12_12_i_5_n_0;
  wire mem_reg_0_15_16_16_i_1__1_n_0;
  wire mem_reg_0_15_16_16_i_1__1_n_1;
  wire mem_reg_0_15_16_16_i_1__1_n_2;
  wire mem_reg_0_15_16_16_i_1__1_n_3;
  wire mem_reg_0_15_16_16_i_2_n_0;
  wire mem_reg_0_15_16_16_i_3_n_0;
  wire mem_reg_0_15_16_16_i_4_n_0;
  wire mem_reg_0_15_16_16_i_5_n_0;
  wire mem_reg_0_15_20_20_i_1_n_0;
  wire mem_reg_0_15_20_20_i_1_n_1;
  wire mem_reg_0_15_20_20_i_1_n_2;
  wire mem_reg_0_15_20_20_i_1_n_3;
  wire mem_reg_0_15_20_20_i_2_n_0;
  wire mem_reg_0_15_20_20_i_3_n_0;
  wire mem_reg_0_15_20_20_i_4_n_0;
  wire mem_reg_0_15_20_20_i_5_n_0;
  wire mem_reg_0_15_24_24_i_1_n_0;
  wire mem_reg_0_15_24_24_i_2__1_n_0;
  wire mem_reg_0_15_24_24_i_2__1_n_1;
  wire mem_reg_0_15_24_24_i_2__1_n_2;
  wire mem_reg_0_15_24_24_i_2__1_n_3;
  wire mem_reg_0_15_24_24_i_2__1_n_4;
  wire mem_reg_0_15_24_24_i_2__1_n_5;
  wire mem_reg_0_15_24_24_i_2__1_n_6;
  wire mem_reg_0_15_24_24_i_2__1_n_7;
  wire mem_reg_0_15_24_24_i_3__0_n_0;
  wire mem_reg_0_15_24_24_i_4_n_0;
  wire mem_reg_0_15_24_24_i_5_n_0;
  wire mem_reg_0_15_24_24_i_6_n_0;
  wire mem_reg_0_15_25_25_i_1_n_0;
  wire mem_reg_0_15_26_26_i_1_n_0;
  wire mem_reg_0_15_27_27_i_1_n_0;
  wire mem_reg_0_15_28_28_i_1_n_0;
  wire [30:0]mem_reg_0_15_28_28_i_2_0;
  wire mem_reg_0_15_28_28_i_2_n_1;
  wire mem_reg_0_15_28_28_i_2_n_2;
  wire mem_reg_0_15_28_28_i_2_n_3;
  wire mem_reg_0_15_28_28_i_2_n_4;
  wire mem_reg_0_15_28_28_i_2_n_5;
  wire mem_reg_0_15_28_28_i_2_n_6;
  wire mem_reg_0_15_28_28_i_2_n_7;
  wire mem_reg_0_15_28_28_i_4_n_0;
  wire mem_reg_0_15_28_28_i_5_n_0;
  wire mem_reg_0_15_28_28_i_6_n_0;
  wire mem_reg_0_15_29_29_i_1_n_0;
  wire mem_reg_0_15_30_30_i_1_n_0;
  wire mem_reg_0_15_31_31_i_1_n_0;
  wire mem_reg_0_15_4_4_i_1_n_0;
  wire mem_reg_0_15_4_4_i_1_n_1;
  wire mem_reg_0_15_4_4_i_1_n_2;
  wire mem_reg_0_15_4_4_i_1_n_3;
  wire mem_reg_0_15_4_4_i_2_n_0;
  wire mem_reg_0_15_4_4_i_3_n_0;
  wire mem_reg_0_15_4_4_i_4_n_0;
  wire mem_reg_0_15_4_4_i_5_n_0;
  wire mem_reg_0_15_8_8_i_1__1_n_0;
  wire mem_reg_0_15_8_8_i_1__1_n_1;
  wire mem_reg_0_15_8_8_i_1__1_n_2;
  wire mem_reg_0_15_8_8_i_1__1_n_3;
  wire mem_reg_0_15_8_8_i_2_n_0;
  wire mem_reg_0_15_8_8_i_3_n_0;
  wire mem_reg_0_15_8_8_i_4_n_0;
  wire mem_reg_0_15_8_8_i_5_n_0;
  wire [24:0]p_0_in0_out__0;
  wire [31:0]p_1_in;
  wire [31:0]q00__0;
  wire \q0[31]_i_2_n_0 ;
  wire \q0_reg[0]_0 ;
  wire [0:0]\q0_reg[31]_0 ;
  wire \q0_reg[31]_1 ;
  wire \q0_reg_n_0_[0] ;
  wire \q0_reg_n_0_[10] ;
  wire \q0_reg_n_0_[11] ;
  wire \q0_reg_n_0_[12] ;
  wire \q0_reg_n_0_[13] ;
  wire \q0_reg_n_0_[14] ;
  wire \q0_reg_n_0_[15] ;
  wire \q0_reg_n_0_[16] ;
  wire \q0_reg_n_0_[17] ;
  wire \q0_reg_n_0_[18] ;
  wire \q0_reg_n_0_[19] ;
  wire \q0_reg_n_0_[1] ;
  wire \q0_reg_n_0_[20] ;
  wire \q0_reg_n_0_[21] ;
  wire \q0_reg_n_0_[22] ;
  wire \q0_reg_n_0_[23] ;
  wire \q0_reg_n_0_[24] ;
  wire \q0_reg_n_0_[25] ;
  wire \q0_reg_n_0_[26] ;
  wire \q0_reg_n_0_[27] ;
  wire \q0_reg_n_0_[28] ;
  wire \q0_reg_n_0_[29] ;
  wire \q0_reg_n_0_[2] ;
  wire \q0_reg_n_0_[30] ;
  wire \q0_reg_n_0_[3] ;
  wire \q0_reg_n_0_[4] ;
  wire \q0_reg_n_0_[5] ;
  wire \q0_reg_n_0_[6] ;
  wire \q0_reg_n_0_[7] ;
  wire \q0_reg_n_0_[8] ;
  wire \q0_reg_n_0_[9] ;
  wire [31:0]q10__1;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire \q1_reg[24]_0 ;
  wire [31:0]\q1_reg[31]_0 ;
  wire s_axi_AXI_LITE_ARVALID;
  wire [31:0]s_axi_AXI_LITE_WDATA;
  wire [3:0]s_axi_AXI_LITE_WSTRB;
  wire s_axi_AXI_LITE_WVALID;
  wire [3:3]NLW_mem_reg_0_15_28_28_i_2_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[0]),
        .DPO(q00__0[0]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[0]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_0_0_i_1
       (.I0(s_axi_AXI_LITE_WSTRB[0]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_15_0_0_i_10
       (.I0(mem_reg_0_15_0_0_i_12_n_0),
        .I1(Q[8]),
        .O(\ap_CS_fsm_reg[8] ));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_0_0_i_10__0
       (.I0(\q0_reg_n_0_[0] ),
        .I1(mem_reg_0_15_28_28_i_2_0[0]),
        .O(mem_reg_0_15_0_0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_15_0_0_i_11__0
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(mem_reg_0_15_0_0_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0F04)) 
    mem_reg_0_15_0_0_i_12
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(mem_reg_0_15_0_0_i_12_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_0_0_i_1__1
       (.CI(1'b0),
        .CO({mem_reg_0_15_0_0_i_1__1_n_0,mem_reg_0_15_0_0_i_1__1_n_1,mem_reg_0_15_0_0_i_1__1_n_2,mem_reg_0_15_0_0_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[3] ,\q0_reg_n_0_[2] ,\q0_reg_n_0_[1] ,\q0_reg_n_0_[0] }),
        .O(p_1_in[3:0]),
        .S({mem_reg_0_15_0_0_i_7__0_n_0,mem_reg_0_15_0_0_i_8__0_n_0,mem_reg_0_15_0_0_i_9__0_n_0,mem_reg_0_15_0_0_i_10__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    mem_reg_0_15_0_0_i_6__0
       (.I0(\ap_CS_fsm_reg[8] ),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[7]),
        .I5(Q[9]),
        .O(address0[0]));
  LUT6 #(
    .INIT(64'h0000FFFF00001110)) 
    mem_reg_0_15_0_0_i_7
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(address0[3]),
        .I5(mem_reg_0_15_0_0_i_11__0_n_0),
        .O(address0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_0_0_i_7__0
       (.I0(\q0_reg_n_0_[3] ),
        .I1(mem_reg_0_15_28_28_i_2_0[3]),
        .O(mem_reg_0_15_0_0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    mem_reg_0_15_0_0_i_8
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(address0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_0_0_i_8__0
       (.I0(\q0_reg_n_0_[2] ),
        .I1(mem_reg_0_15_28_28_i_2_0[2]),
        .O(mem_reg_0_15_0_0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_0_15_0_0_i_9
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(address0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_0_0_i_9__0
       (.I0(\q0_reg_n_0_[1] ),
        .I1(mem_reg_0_15_28_28_i_2_0[1]),
        .O(mem_reg_0_15_0_0_i_9__0_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[10]),
        .DPO(q00__0[10]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[10]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[11]),
        .DPO(q00__0[11]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[11]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[12]),
        .DPO(q00__0[12]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[12]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_12_12_i_1
       (.CI(mem_reg_0_15_8_8_i_1__1_n_0),
        .CO({mem_reg_0_15_12_12_i_1_n_0,mem_reg_0_15_12_12_i_1_n_1,mem_reg_0_15_12_12_i_1_n_2,mem_reg_0_15_12_12_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[15] ,\q0_reg_n_0_[14] ,\q0_reg_n_0_[13] ,\q0_reg_n_0_[12] }),
        .O(p_1_in[15:12]),
        .S({mem_reg_0_15_12_12_i_2_n_0,mem_reg_0_15_12_12_i_3_n_0,mem_reg_0_15_12_12_i_4_n_0,mem_reg_0_15_12_12_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_12_12_i_2
       (.I0(\q0_reg_n_0_[15] ),
        .I1(mem_reg_0_15_28_28_i_2_0[15]),
        .O(mem_reg_0_15_12_12_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_12_12_i_3
       (.I0(\q0_reg_n_0_[14] ),
        .I1(mem_reg_0_15_28_28_i_2_0[14]),
        .O(mem_reg_0_15_12_12_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_12_12_i_4
       (.I0(\q0_reg_n_0_[13] ),
        .I1(mem_reg_0_15_28_28_i_2_0[13]),
        .O(mem_reg_0_15_12_12_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_12_12_i_5
       (.I0(\q0_reg_n_0_[12] ),
        .I1(mem_reg_0_15_28_28_i_2_0[12]),
        .O(mem_reg_0_15_12_12_i_5_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[13]),
        .DPO(q00__0[13]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[13]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[14]),
        .DPO(q00__0[14]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[14]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[15]),
        .DPO(q00__0[15]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[15]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[16]),
        .DPO(q00__0[16]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[16]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_16_16_i_1
       (.I0(s_axi_AXI_LITE_WSTRB[2]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out__0[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_16_16_i_1__1
       (.CI(mem_reg_0_15_12_12_i_1_n_0),
        .CO({mem_reg_0_15_16_16_i_1__1_n_0,mem_reg_0_15_16_16_i_1__1_n_1,mem_reg_0_15_16_16_i_1__1_n_2,mem_reg_0_15_16_16_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[19] ,\q0_reg_n_0_[18] ,\q0_reg_n_0_[17] ,\q0_reg_n_0_[16] }),
        .O(p_1_in[19:16]),
        .S({mem_reg_0_15_16_16_i_2_n_0,mem_reg_0_15_16_16_i_3_n_0,mem_reg_0_15_16_16_i_4_n_0,mem_reg_0_15_16_16_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_16_16_i_2
       (.I0(\q0_reg_n_0_[19] ),
        .I1(mem_reg_0_15_28_28_i_2_0[19]),
        .O(mem_reg_0_15_16_16_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_16_16_i_3
       (.I0(\q0_reg_n_0_[18] ),
        .I1(mem_reg_0_15_28_28_i_2_0[18]),
        .O(mem_reg_0_15_16_16_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_16_16_i_4
       (.I0(\q0_reg_n_0_[17] ),
        .I1(mem_reg_0_15_28_28_i_2_0[17]),
        .O(mem_reg_0_15_16_16_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_16_16_i_5
       (.I0(\q0_reg_n_0_[16] ),
        .I1(mem_reg_0_15_28_28_i_2_0[16]),
        .O(mem_reg_0_15_16_16_i_5_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[17]),
        .DPO(q00__0[17]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[17]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[18]),
        .DPO(q00__0[18]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[18]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[19]),
        .DPO(q00__0[19]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[19]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[1]),
        .DPO(q00__0[1]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[1]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[20]),
        .DPO(q00__0[20]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[20]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_20_20_i_1
       (.CI(mem_reg_0_15_16_16_i_1__1_n_0),
        .CO({mem_reg_0_15_20_20_i_1_n_0,mem_reg_0_15_20_20_i_1_n_1,mem_reg_0_15_20_20_i_1_n_2,mem_reg_0_15_20_20_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[23] ,\q0_reg_n_0_[22] ,\q0_reg_n_0_[21] ,\q0_reg_n_0_[20] }),
        .O(p_1_in[23:20]),
        .S({mem_reg_0_15_20_20_i_2_n_0,mem_reg_0_15_20_20_i_3_n_0,mem_reg_0_15_20_20_i_4_n_0,mem_reg_0_15_20_20_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_20_20_i_2
       (.I0(\q0_reg_n_0_[23] ),
        .I1(mem_reg_0_15_28_28_i_2_0[23]),
        .O(mem_reg_0_15_20_20_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_20_20_i_3
       (.I0(\q0_reg_n_0_[22] ),
        .I1(mem_reg_0_15_28_28_i_2_0[22]),
        .O(mem_reg_0_15_20_20_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_20_20_i_4
       (.I0(\q0_reg_n_0_[21] ),
        .I1(mem_reg_0_15_28_28_i_2_0[21]),
        .O(mem_reg_0_15_20_20_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_20_20_i_5
       (.I0(\q0_reg_n_0_[20] ),
        .I1(mem_reg_0_15_28_28_i_2_0[20]),
        .O(mem_reg_0_15_20_20_i_5_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[21]),
        .DPO(q00__0[21]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[21]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[22]),
        .DPO(q00__0[22]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[22]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[23]),
        .DPO(q00__0[23]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[23]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_24_24_i_1_n_0),
        .DPO(q00__0[24]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[24]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_24_24_i_1
       (.I0(s_axi_AXI_LITE_WDATA[24]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_24_24_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_24_24_i_1__1
       (.I0(mem_reg_0_15_24_24_i_2__1_n_7),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_24_24_i_2
       (.I0(s_axi_AXI_LITE_WSTRB[3]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out__0[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_24_24_i_2__1
       (.CI(mem_reg_0_15_20_20_i_1_n_0),
        .CO({mem_reg_0_15_24_24_i_2__1_n_0,mem_reg_0_15_24_24_i_2__1_n_1,mem_reg_0_15_24_24_i_2__1_n_2,mem_reg_0_15_24_24_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[27] ,\q0_reg_n_0_[26] ,\q0_reg_n_0_[25] ,\q0_reg_n_0_[24] }),
        .O({mem_reg_0_15_24_24_i_2__1_n_4,mem_reg_0_15_24_24_i_2__1_n_5,mem_reg_0_15_24_24_i_2__1_n_6,mem_reg_0_15_24_24_i_2__1_n_7}),
        .S({mem_reg_0_15_24_24_i_3__0_n_0,mem_reg_0_15_24_24_i_4_n_0,mem_reg_0_15_24_24_i_5_n_0,mem_reg_0_15_24_24_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_24_24_i_3__0
       (.I0(\q0_reg_n_0_[27] ),
        .I1(mem_reg_0_15_28_28_i_2_0[27]),
        .O(mem_reg_0_15_24_24_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_24_24_i_4
       (.I0(\q0_reg_n_0_[26] ),
        .I1(mem_reg_0_15_28_28_i_2_0[26]),
        .O(mem_reg_0_15_24_24_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_24_24_i_5
       (.I0(\q0_reg_n_0_[25] ),
        .I1(mem_reg_0_15_28_28_i_2_0[25]),
        .O(mem_reg_0_15_24_24_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_24_24_i_6
       (.I0(\q0_reg_n_0_[24] ),
        .I1(mem_reg_0_15_28_28_i_2_0[24]),
        .O(mem_reg_0_15_24_24_i_6_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_25_25_i_1_n_0),
        .DPO(q00__0[25]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[25]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_25_25_i_1
       (.I0(s_axi_AXI_LITE_WDATA[25]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_25_25_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_25_25_i_1__1
       (.I0(mem_reg_0_15_24_24_i_2__1_n_6),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[25]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_26_26_i_1_n_0),
        .DPO(q00__0[26]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[26]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_26_26_i_1
       (.I0(s_axi_AXI_LITE_WDATA[26]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_26_26_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_26_26_i_1__1
       (.I0(mem_reg_0_15_24_24_i_2__1_n_5),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[26]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_27_27_i_1_n_0),
        .DPO(q00__0[27]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[27]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_27_27_i_1
       (.I0(s_axi_AXI_LITE_WDATA[27]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_27_27_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_27_27_i_1__1
       (.I0(mem_reg_0_15_24_24_i_2__1_n_4),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[27]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_28_28_i_1_n_0),
        .DPO(q00__0[28]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[28]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_28_28_i_1
       (.I0(s_axi_AXI_LITE_WDATA[28]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_28_28_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_28_28_i_1__1
       (.I0(mem_reg_0_15_28_28_i_2_n_7),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_28_28_i_2
       (.CI(mem_reg_0_15_24_24_i_2__1_n_0),
        .CO({NLW_mem_reg_0_15_28_28_i_2_CO_UNCONNECTED[3],mem_reg_0_15_28_28_i_2_n_1,mem_reg_0_15_28_28_i_2_n_2,mem_reg_0_15_28_28_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q0_reg_n_0_[30] ,\q0_reg_n_0_[29] ,\q0_reg_n_0_[28] }),
        .O({mem_reg_0_15_28_28_i_2_n_4,mem_reg_0_15_28_28_i_2_n_5,mem_reg_0_15_28_28_i_2_n_6,mem_reg_0_15_28_28_i_2_n_7}),
        .S({S,mem_reg_0_15_28_28_i_4_n_0,mem_reg_0_15_28_28_i_5_n_0,mem_reg_0_15_28_28_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_28_28_i_4
       (.I0(\q0_reg_n_0_[30] ),
        .I1(mem_reg_0_15_28_28_i_2_0[30]),
        .O(mem_reg_0_15_28_28_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_28_28_i_5
       (.I0(\q0_reg_n_0_[29] ),
        .I1(mem_reg_0_15_28_28_i_2_0[29]),
        .O(mem_reg_0_15_28_28_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_28_28_i_6
       (.I0(\q0_reg_n_0_[28] ),
        .I1(mem_reg_0_15_28_28_i_2_0[28]),
        .O(mem_reg_0_15_28_28_i_6_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_29_29_i_1_n_0),
        .DPO(q00__0[29]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[29]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_29_29_i_1
       (.I0(s_axi_AXI_LITE_WDATA[29]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_29_29_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_29_29_i_1__1
       (.I0(mem_reg_0_15_28_28_i_2_n_6),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[29]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[2]),
        .DPO(q00__0[2]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[2]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_30_30_i_1_n_0),
        .DPO(q00__0[30]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[30]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_30_30_i_1
       (.I0(s_axi_AXI_LITE_WDATA[30]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_30_30_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_30_30_i_1__1
       (.I0(mem_reg_0_15_28_28_i_2_n_5),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[30]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_31_31_i_1_n_0),
        .DPO(q00__0[31]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[31]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_0_15_31_31_i_1
       (.I0(s_axi_AXI_LITE_WDATA[31]),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(\q0_reg[0]_0 ),
        .I3(\q0_reg[31]_1 ),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WSTRB[3]),
        .O(mem_reg_0_15_31_31_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_31_31_i_1__1
       (.I0(mem_reg_0_15_28_28_i_2_n_4),
        .I1(\q1_reg[24]_0 ),
        .O(p_1_in[31]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[3]),
        .DPO(q00__0[3]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[3]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[4]),
        .DPO(q00__0[4]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[4]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_4_4_i_1
       (.CI(mem_reg_0_15_0_0_i_1__1_n_0),
        .CO({mem_reg_0_15_4_4_i_1_n_0,mem_reg_0_15_4_4_i_1_n_1,mem_reg_0_15_4_4_i_1_n_2,mem_reg_0_15_4_4_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[7] ,\q0_reg_n_0_[6] ,\q0_reg_n_0_[5] ,\q0_reg_n_0_[4] }),
        .O(p_1_in[7:4]),
        .S({mem_reg_0_15_4_4_i_2_n_0,mem_reg_0_15_4_4_i_3_n_0,mem_reg_0_15_4_4_i_4_n_0,mem_reg_0_15_4_4_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_4_4_i_2
       (.I0(\q0_reg_n_0_[7] ),
        .I1(mem_reg_0_15_28_28_i_2_0[7]),
        .O(mem_reg_0_15_4_4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_4_4_i_3
       (.I0(\q0_reg_n_0_[6] ),
        .I1(mem_reg_0_15_28_28_i_2_0[6]),
        .O(mem_reg_0_15_4_4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_4_4_i_4
       (.I0(\q0_reg_n_0_[5] ),
        .I1(mem_reg_0_15_28_28_i_2_0[5]),
        .O(mem_reg_0_15_4_4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_4_4_i_5
       (.I0(\q0_reg_n_0_[4] ),
        .I1(mem_reg_0_15_28_28_i_2_0[4]),
        .O(mem_reg_0_15_4_4_i_5_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[5]),
        .DPO(q00__0[5]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[5]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[6]),
        .DPO(q00__0[6]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[6]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[7]),
        .DPO(q00__0[7]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[7]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[8]),
        .DPO(q00__0[8]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[8]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_8_8_i_1
       (.I0(s_axi_AXI_LITE_WSTRB[1]),
        .I1(\q1_reg[0]_0 ),
        .I2(\q1_reg[0]_1 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\q0_reg[0]_0 ),
        .I5(s_axi_AXI_LITE_WVALID),
        .O(p_0_in0_out__0[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_reg_0_15_8_8_i_1__1
       (.CI(mem_reg_0_15_4_4_i_1_n_0),
        .CO({mem_reg_0_15_8_8_i_1__1_n_0,mem_reg_0_15_8_8_i_1__1_n_1,mem_reg_0_15_8_8_i_1__1_n_2,mem_reg_0_15_8_8_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q0_reg_n_0_[11] ,\q0_reg_n_0_[10] ,\q0_reg_n_0_[9] ,\q0_reg_n_0_[8] }),
        .O(p_1_in[11:8]),
        .S({mem_reg_0_15_8_8_i_2_n_0,mem_reg_0_15_8_8_i_3_n_0,mem_reg_0_15_8_8_i_4_n_0,mem_reg_0_15_8_8_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_8_8_i_2
       (.I0(\q0_reg_n_0_[11] ),
        .I1(mem_reg_0_15_28_28_i_2_0[11]),
        .O(mem_reg_0_15_8_8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_8_8_i_3
       (.I0(\q0_reg_n_0_[10] ),
        .I1(mem_reg_0_15_28_28_i_2_0[10]),
        .O(mem_reg_0_15_8_8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_8_8_i_4
       (.I0(\q0_reg_n_0_[9] ),
        .I1(mem_reg_0_15_28_28_i_2_0[9]),
        .O(mem_reg_0_15_8_8_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_0_15_8_8_i_5
       (.I0(\q0_reg_n_0_[8] ),
        .I1(mem_reg_0_15_28_28_i_2_0[8]),
        .O(mem_reg_0_15_8_8_i_5_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_AXI_LITE_WDATA[9]),
        .DPO(q00__0[9]),
        .DPRA0(address0[0]),
        .DPRA1(address0[1]),
        .DPRA2(address0[2]),
        .DPRA3(address0[3]),
        .DPRA4(1'b0),
        .SPO(q10__1[9]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  LUT5 #(
    .INIT(32'hFFFFE2C0)) 
    \q0[31]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[9]),
        .I4(\q0[31]_i_2_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \q0[31]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\ap_CS_fsm_reg[5] ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(\q0[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q0[31]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(\ap_CS_fsm_reg[5] ));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[0]),
        .Q(\q0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[10]),
        .Q(\q0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[11]),
        .Q(\q0_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[12]),
        .Q(\q0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[13]),
        .Q(\q0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[14]),
        .Q(\q0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[15]),
        .Q(\q0_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[16]),
        .Q(\q0_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \q0_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[17]),
        .Q(\q0_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \q0_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[18]),
        .Q(\q0_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \q0_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[19]),
        .Q(\q0_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[1]),
        .Q(\q0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q0_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[20]),
        .Q(\q0_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \q0_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[21]),
        .Q(\q0_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \q0_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[22]),
        .Q(\q0_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \q0_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[23]),
        .Q(\q0_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \q0_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[24]),
        .Q(\q0_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \q0_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[25]),
        .Q(\q0_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \q0_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[26]),
        .Q(\q0_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \q0_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[27]),
        .Q(\q0_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \q0_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[28]),
        .Q(\q0_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \q0_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[29]),
        .Q(\q0_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[2]),
        .Q(\q0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q0_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[30]),
        .Q(\q0_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \q0_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[31]),
        .Q(\q0_reg[31]_0 ),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[3]),
        .Q(\q0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[4]),
        .Q(\q0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[5]),
        .Q(\q0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[6]),
        .Q(\q0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[7]),
        .Q(\q0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[8]),
        .Q(\q0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(q00__0[9]),
        .Q(\q0_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1__0 
       (.I0(\q1_reg[0]_0 ),
        .I1(s_axi_AXI_LITE_WVALID),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(\q1_reg[0]_1 ),
        .O(int_b_ce1));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[0]),
        .Q(\q1_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[10]),
        .Q(\q1_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[11]),
        .Q(\q1_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[12]),
        .Q(\q1_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[13]),
        .Q(\q1_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[14]),
        .Q(\q1_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[15]),
        .Q(\q1_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[16]),
        .Q(\q1_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[17]),
        .Q(\q1_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[18]),
        .Q(\q1_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[19]),
        .Q(\q1_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[1]),
        .Q(\q1_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[20]),
        .Q(\q1_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[21]),
        .Q(\q1_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[22]),
        .Q(\q1_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[23]),
        .Q(\q1_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[24]),
        .Q(\q1_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[25]),
        .Q(\q1_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[26]),
        .Q(\q1_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[27]),
        .Q(\q1_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[28]),
        .Q(\q1_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[29]),
        .Q(\q1_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[2]),
        .Q(\q1_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[30]),
        .Q(\q1_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[31]),
        .Q(\q1_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[3]),
        .Q(\q1_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[4]),
        .Q(\q1_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[5]),
        .Q(\q1_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[6]),
        .Q(\q1_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[7]),
        .Q(\q1_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[8]),
        .Q(\q1_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10__1[9]),
        .Q(\q1_reg[31]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "array_add_AXI_LITE_s_axi_ram" *) 
module array_add_0_array_add_AXI_LITE_s_axi_ram__parameterized0
   (\ap_CS_fsm_reg[4] ,
    D,
    \q1_reg[4]_0 ,
    \q1_reg[5]_0 ,
    \q1_reg[6]_0 ,
    \q1_reg[8]_0 ,
    \q1_reg[10]_0 ,
    \q1_reg[11]_0 ,
    \q1_reg[12]_0 ,
    \q1_reg[13]_0 ,
    \q1_reg[14]_0 ,
    \q1_reg[15]_0 ,
    \q1_reg[16]_0 ,
    \q1_reg[17]_0 ,
    \q1_reg[18]_0 ,
    \q1_reg[19]_0 ,
    \q1_reg[20]_0 ,
    \q1_reg[21]_0 ,
    \q1_reg[22]_0 ,
    \q1_reg[23]_0 ,
    \q1_reg[24]_0 ,
    \q1_reg[25]_0 ,
    \q1_reg[26]_0 ,
    \q1_reg[27]_0 ,
    \q1_reg[28]_0 ,
    \q1_reg[29]_0 ,
    \q1_reg[30]_0 ,
    \q1_reg[31]_0 ,
    int_a_address1,
    \ap_CS_fsm_reg[9] ,
    \q1_reg[9]_0 ,
    Q,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \q1_reg[0]_0 ,
    s_axi_AXI_LITE_ARVALID,
    int_b_read,
    \rdata_reg[31] ,
    int_a_read,
    \rdata_reg[31]_0 ,
    \rdata_reg[1] ,
    \q1_reg[31]_1 ,
    s_axi_AXI_LITE_ARADDR,
    \q1_reg[0]_1 ,
    ap_enable_reg_pp0_iter0_reg,
    ap_start,
    ap_enable_reg_pp0_iter1,
    mem_reg_0_15_31_31_i_1__1,
    ap_enable_reg_pp0_iter0,
    ap_clk,
    p_1_in);
  output \ap_CS_fsm_reg[4] ;
  output [1:0]D;
  output \q1_reg[4]_0 ;
  output \q1_reg[5]_0 ;
  output \q1_reg[6]_0 ;
  output \q1_reg[8]_0 ;
  output \q1_reg[10]_0 ;
  output \q1_reg[11]_0 ;
  output \q1_reg[12]_0 ;
  output \q1_reg[13]_0 ;
  output \q1_reg[14]_0 ;
  output \q1_reg[15]_0 ;
  output \q1_reg[16]_0 ;
  output \q1_reg[17]_0 ;
  output \q1_reg[18]_0 ;
  output \q1_reg[19]_0 ;
  output \q1_reg[20]_0 ;
  output \q1_reg[21]_0 ;
  output \q1_reg[22]_0 ;
  output \q1_reg[23]_0 ;
  output \q1_reg[24]_0 ;
  output \q1_reg[25]_0 ;
  output \q1_reg[26]_0 ;
  output \q1_reg[27]_0 ;
  output \q1_reg[28]_0 ;
  output \q1_reg[29]_0 ;
  output \q1_reg[30]_0 ;
  output \q1_reg[31]_0 ;
  output [3:0]int_a_address1;
  output \ap_CS_fsm_reg[9] ;
  output [3:0]\q1_reg[9]_0 ;
  input [9:0]Q;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \q1_reg[0]_0 ;
  input s_axi_AXI_LITE_ARVALID;
  input int_b_read;
  input [27:0]\rdata_reg[31] ;
  input int_a_read;
  input [27:0]\rdata_reg[31]_0 ;
  input \rdata_reg[1] ;
  input [3:0]\q1_reg[31]_1 ;
  input [3:0]s_axi_AXI_LITE_ARADDR;
  input \q1_reg[0]_1 ;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_start;
  input ap_enable_reg_pp0_iter1;
  input mem_reg_0_15_31_31_i_1__1;
  input ap_enable_reg_pp0_iter0;
  input ap_clk;
  input [31:0]p_1_in;

  wire [1:0]D;
  wire [9:0]Q;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[9] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire ar_hs;
  wire [3:0]int_a_address1;
  wire int_a_read;
  wire int_b_read;
  wire mem_reg_0_15_0_0_i_12__0_n_0;
  wire mem_reg_0_15_0_0_i_13_n_0;
  wire mem_reg_0_15_0_0_i_14_n_0;
  wire mem_reg_0_15_0_0_i_3__0_n_0;
  wire mem_reg_0_15_0_0_i_4__0_n_0;
  wire mem_reg_0_15_0_0_i_5__0_n_0;
  wire mem_reg_0_15_0_0_i_6_n_0;
  wire mem_reg_0_15_31_31_i_1__1;
  wire [31:0]p_1_in;
  wire [31:0]q10;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire \q1_reg[10]_0 ;
  wire \q1_reg[11]_0 ;
  wire \q1_reg[12]_0 ;
  wire \q1_reg[13]_0 ;
  wire \q1_reg[14]_0 ;
  wire \q1_reg[15]_0 ;
  wire \q1_reg[16]_0 ;
  wire \q1_reg[17]_0 ;
  wire \q1_reg[18]_0 ;
  wire \q1_reg[19]_0 ;
  wire \q1_reg[20]_0 ;
  wire \q1_reg[21]_0 ;
  wire \q1_reg[22]_0 ;
  wire \q1_reg[23]_0 ;
  wire \q1_reg[24]_0 ;
  wire \q1_reg[25]_0 ;
  wire \q1_reg[26]_0 ;
  wire \q1_reg[27]_0 ;
  wire \q1_reg[28]_0 ;
  wire \q1_reg[29]_0 ;
  wire \q1_reg[30]_0 ;
  wire \q1_reg[31]_0 ;
  wire [3:0]\q1_reg[31]_1 ;
  wire \q1_reg[4]_0 ;
  wire \q1_reg[5]_0 ;
  wire \q1_reg[6]_0 ;
  wire \q1_reg[8]_0 ;
  wire [3:0]\q1_reg[9]_0 ;
  wire \q1_reg_n_0_[0] ;
  wire \q1_reg_n_0_[10] ;
  wire \q1_reg_n_0_[11] ;
  wire \q1_reg_n_0_[12] ;
  wire \q1_reg_n_0_[13] ;
  wire \q1_reg_n_0_[14] ;
  wire \q1_reg_n_0_[15] ;
  wire \q1_reg_n_0_[16] ;
  wire \q1_reg_n_0_[17] ;
  wire \q1_reg_n_0_[18] ;
  wire \q1_reg_n_0_[19] ;
  wire \q1_reg_n_0_[1] ;
  wire \q1_reg_n_0_[20] ;
  wire \q1_reg_n_0_[21] ;
  wire \q1_reg_n_0_[22] ;
  wire \q1_reg_n_0_[23] ;
  wire \q1_reg_n_0_[24] ;
  wire \q1_reg_n_0_[25] ;
  wire \q1_reg_n_0_[26] ;
  wire \q1_reg_n_0_[27] ;
  wire \q1_reg_n_0_[28] ;
  wire \q1_reg_n_0_[29] ;
  wire \q1_reg_n_0_[30] ;
  wire \q1_reg_n_0_[31] ;
  wire \q1_reg_n_0_[4] ;
  wire \q1_reg_n_0_[5] ;
  wire \q1_reg_n_0_[6] ;
  wire \q1_reg_n_0_[8] ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[1] ;
  wire [27:0]\rdata_reg[31] ;
  wire [27:0]\rdata_reg[31]_0 ;
  wire result_ce0;
  wire [3:0]s_axi_AXI_LITE_ARADDR;
  wire s_axi_AXI_LITE_ARVALID;
  wire NLW_mem_reg_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_10_10_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_11_11_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_12_12_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_13_13_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_14_14_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_15_15_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_16_16_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_17_17_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_18_18_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_19_19_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_1_1_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_20_20_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_21_21_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_22_22_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_23_23_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_24_24_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_25_25_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_26_26_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_27_27_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_28_28_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_29_29_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_2_2_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_30_30_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_31_31_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_3_3_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_4_4_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_5_5_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_6_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_7_7_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_8_8_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_9_9_SPO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\ap_CS_fsm_reg[4] ));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[0]),
        .DPO(q10[0]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  LUT6 #(
    .INIT(64'h0000000155555555)) 
    mem_reg_0_15_0_0_i_11
       (.I0(mem_reg_0_15_0_0_i_14_n_0),
        .I1(Q[9]),
        .I2(Q[1]),
        .I3(\ap_CS_fsm_reg[4] ),
        .I4(mem_reg_0_15_31_31_i_1__1),
        .I5(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm_reg[9] ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    mem_reg_0_15_0_0_i_12__0
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(mem_reg_0_15_0_0_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h11500050)) 
    mem_reg_0_15_0_0_i_13
       (.I0(Q[9]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[0]),
        .I4(ap_start),
        .O(mem_reg_0_15_0_0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_15_0_0_i_14
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter1),
        .O(mem_reg_0_15_0_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    mem_reg_0_15_0_0_i_2
       (.I0(\q1_reg[31]_1 [0]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(s_axi_AXI_LITE_ARADDR[0]),
        .O(int_a_address1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_0_15_0_0_i_2__0
       (.I0(\ap_CS_fsm_reg[9] ),
        .O(result_ce0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    mem_reg_0_15_0_0_i_3
       (.I0(\q1_reg[31]_1 [1]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(s_axi_AXI_LITE_ARADDR[1]),
        .O(int_a_address1[1]));
  LUT6 #(
    .INIT(64'hFFFF00A000880088)) 
    mem_reg_0_15_0_0_i_3__0
       (.I0(\q1_reg[0]_1 ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(Q[9]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q[0]),
        .O(mem_reg_0_15_0_0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    mem_reg_0_15_0_0_i_4
       (.I0(\q1_reg[31]_1 [2]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(s_axi_AXI_LITE_ARADDR[2]),
        .O(int_a_address1[2]));
  LUT6 #(
    .INIT(64'h00000000000030B8)) 
    mem_reg_0_15_0_0_i_4__0
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[9]),
        .I5(mem_reg_0_15_0_0_i_12__0_n_0),
        .O(mem_reg_0_15_0_0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    mem_reg_0_15_0_0_i_5
       (.I0(\q1_reg[31]_1 [3]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_AXI_LITE_ARVALID),
        .I3(s_axi_AXI_LITE_ARADDR[3]),
        .O(int_a_address1[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    mem_reg_0_15_0_0_i_5__0
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(mem_reg_0_15_0_0_i_13_n_0),
        .O(mem_reg_0_15_0_0_i_5__0_n_0));
  LUT5 #(
    .INIT(32'hFAD88888)) 
    mem_reg_0_15_0_0_i_6
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_start),
        .I4(Q[9]),
        .O(mem_reg_0_15_0_0_i_6_n_0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[10]),
        .DPO(q10[10]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_10_10_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[11]),
        .DPO(q10[11]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_11_11_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[12]),
        .DPO(q10[12]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_12_12_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[13]),
        .DPO(q10[13]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_13_13_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[14]),
        .DPO(q10[14]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_14_14_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[15]),
        .DPO(q10[15]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_15_15_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[16]),
        .DPO(q10[16]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_16_16_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[17]),
        .DPO(q10[17]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_17_17_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[18]),
        .DPO(q10[18]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_18_18_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[19]),
        .DPO(q10[19]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_19_19_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[1]),
        .DPO(q10[1]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_1_1_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[20]),
        .DPO(q10[20]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_20_20_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[21]),
        .DPO(q10[21]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_21_21_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[22]),
        .DPO(q10[22]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_22_22_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[23]),
        .DPO(q10[23]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_23_23_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[24]),
        .DPO(q10[24]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_24_24_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[25]),
        .DPO(q10[25]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_25_25_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[26]),
        .DPO(q10[26]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_26_26_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[27]),
        .DPO(q10[27]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_27_27_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[28]),
        .DPO(q10[28]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_28_28_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[29]),
        .DPO(q10[29]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_29_29_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[2]),
        .DPO(q10[2]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_2_2_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[30]),
        .DPO(q10[30]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_30_30_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[31]),
        .DPO(q10[31]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_31_31_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[3]),
        .DPO(q10[3]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_3_3_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[4]),
        .DPO(q10[4]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_4_4_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[5]),
        .DPO(q10[5]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_5_5_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[6]),
        .DPO(q10[6]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_6_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[7]),
        .DPO(q10[7]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_7_7_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[8]),
        .DPO(q10[8]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_8_8_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "AXI_LITE_s_axi_U/int_result/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "9" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(mem_reg_0_15_0_0_i_3__0_n_0),
        .A1(mem_reg_0_15_0_0_i_4__0_n_0),
        .A2(mem_reg_0_15_0_0_i_5__0_n_0),
        .A3(mem_reg_0_15_0_0_i_6_n_0),
        .A4(1'b0),
        .D(p_1_in[9]),
        .DPO(q10[9]),
        .DPRA0(int_a_address1[0]),
        .DPRA1(int_a_address1[1]),
        .DPRA2(int_a_address1[2]),
        .DPRA3(int_a_address1[3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_9_9_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(result_ce0));
  LUT2 #(
    .INIT(4'h8)) 
    \q1[31]_i_1__1 
       (.I0(s_axi_AXI_LITE_ARVALID),
        .I1(\q1_reg[0]_0 ),
        .O(ar_hs));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[0]),
        .Q(\q1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[10]),
        .Q(\q1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[11]),
        .Q(\q1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[12]),
        .Q(\q1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[13]),
        .Q(\q1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[14]),
        .Q(\q1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[15]),
        .Q(\q1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[16]),
        .Q(\q1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[17]),
        .Q(\q1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[18]),
        .Q(\q1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[19]),
        .Q(\q1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[1]),
        .Q(\q1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[20]),
        .Q(\q1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[21]),
        .Q(\q1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[22]),
        .Q(\q1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[23]),
        .Q(\q1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[24]),
        .Q(\q1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[25]),
        .Q(\q1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[26]),
        .Q(\q1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[27]),
        .Q(\q1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[28]),
        .Q(\q1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[29]),
        .Q(\q1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[2]),
        .Q(\q1_reg[9]_0 [0]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[30]),
        .Q(\q1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[31]),
        .Q(\q1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[3]),
        .Q(\q1_reg[9]_0 [1]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[4]),
        .Q(\q1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[5]),
        .Q(\q1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[6]),
        .Q(\q1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[7]),
        .Q(\q1_reg[9]_0 [2]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[8]),
        .Q(\q1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(q10[9]),
        .Q(\q1_reg[9]_0 [3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    \rdata[0]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(\rdata_reg[0]_0 ),
        .I2(\q1_reg[0]_0 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\rdata[0]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[0]_i_3 
       (.I0(\q1_reg_n_0_[0] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [0]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [0]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[10]_i_1 
       (.I0(\q1_reg_n_0_[10] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [6]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [6]),
        .O(\q1_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[11]_i_1 
       (.I0(\q1_reg_n_0_[11] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [7]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [7]),
        .O(\q1_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[12]_i_1 
       (.I0(\q1_reg_n_0_[12] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [8]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [8]),
        .O(\q1_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[13]_i_1 
       (.I0(\q1_reg_n_0_[13] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [9]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [9]),
        .O(\q1_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[14]_i_1 
       (.I0(\q1_reg_n_0_[14] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [10]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [10]),
        .O(\q1_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[15]_i_1 
       (.I0(\q1_reg_n_0_[15] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [11]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [11]),
        .O(\q1_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[16]_i_1 
       (.I0(\q1_reg_n_0_[16] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [12]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [12]),
        .O(\q1_reg[16]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[17]_i_1 
       (.I0(\q1_reg_n_0_[17] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [13]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [13]),
        .O(\q1_reg[17]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[18]_i_1 
       (.I0(\q1_reg_n_0_[18] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [14]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [14]),
        .O(\q1_reg[18]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[19]_i_1 
       (.I0(\q1_reg_n_0_[19] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [15]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [15]),
        .O(\q1_reg[19]_0 ));
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    \rdata[1]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(\rdata_reg[1] ),
        .I2(\q1_reg[0]_0 ),
        .I3(s_axi_AXI_LITE_ARVALID),
        .I4(\rdata[1]_i_3_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[1]_i_3 
       (.I0(\q1_reg_n_0_[1] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [1]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [1]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[20]_i_1 
       (.I0(\q1_reg_n_0_[20] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [16]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [16]),
        .O(\q1_reg[20]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[21]_i_1 
       (.I0(\q1_reg_n_0_[21] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [17]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [17]),
        .O(\q1_reg[21]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[22]_i_1 
       (.I0(\q1_reg_n_0_[22] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [18]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [18]),
        .O(\q1_reg[22]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[23]_i_1 
       (.I0(\q1_reg_n_0_[23] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [19]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [19]),
        .O(\q1_reg[23]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[24]_i_1 
       (.I0(\q1_reg_n_0_[24] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [20]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [20]),
        .O(\q1_reg[24]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[25]_i_1 
       (.I0(\q1_reg_n_0_[25] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [21]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [21]),
        .O(\q1_reg[25]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[26]_i_1 
       (.I0(\q1_reg_n_0_[26] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [22]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [22]),
        .O(\q1_reg[26]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[27]_i_1 
       (.I0(\q1_reg_n_0_[27] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [23]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [23]),
        .O(\q1_reg[27]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[28]_i_1 
       (.I0(\q1_reg_n_0_[28] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [24]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [24]),
        .O(\q1_reg[28]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[29]_i_1 
       (.I0(\q1_reg_n_0_[29] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [25]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [25]),
        .O(\q1_reg[29]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[30]_i_1 
       (.I0(\q1_reg_n_0_[30] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [26]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [26]),
        .O(\q1_reg[30]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[31]_i_3 
       (.I0(\q1_reg_n_0_[31] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [27]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [27]),
        .O(\q1_reg[31]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[4]_i_1 
       (.I0(\q1_reg_n_0_[4] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [2]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [2]),
        .O(\q1_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[5]_i_1 
       (.I0(\q1_reg_n_0_[5] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [3]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [3]),
        .O(\q1_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[6]_i_1 
       (.I0(\q1_reg_n_0_[6] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [4]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [4]),
        .O(\q1_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \rdata[8]_i_1 
       (.I0(\q1_reg_n_0_[8] ),
        .I1(int_b_read),
        .I2(\rdata_reg[31] [5]),
        .I3(int_a_read),
        .I4(\rdata_reg[31]_0 [5]),
        .O(\q1_reg[8]_0 ));
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
