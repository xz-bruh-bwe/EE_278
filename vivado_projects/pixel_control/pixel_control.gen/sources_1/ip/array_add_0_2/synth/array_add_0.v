// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:array_add:1.0
// IP Revision: 2113805090

(* X_CORE_INFO = "array_add,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "array_add_0,array_add,{}" *)
(* CORE_GENERATION_INFO = "array_add_0,array_add,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=array_add,x_ipVersion=1.0,x_ipCoreRevision=2113805090,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_AXI_LITE_ADDR_WIDTH=8,C_S_AXI_AXI_LITE_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module array_add_0 (
  s_axi_AXI_LITE_AWADDR,
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
  interrupt
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWADDR" *)
input wire [7 : 0] s_axi_AXI_LITE_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWVALID" *)
input wire s_axi_AXI_LITE_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE AWREADY" *)
output wire s_axi_AXI_LITE_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WDATA" *)
input wire [31 : 0] s_axi_AXI_LITE_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WSTRB" *)
input wire [3 : 0] s_axi_AXI_LITE_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WVALID" *)
input wire s_axi_AXI_LITE_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE WREADY" *)
output wire s_axi_AXI_LITE_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BRESP" *)
output wire [1 : 0] s_axi_AXI_LITE_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BVALID" *)
output wire s_axi_AXI_LITE_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE BREADY" *)
input wire s_axi_AXI_LITE_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARADDR" *)
input wire [7 : 0] s_axi_AXI_LITE_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARVALID" *)
input wire s_axi_AXI_LITE_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE ARREADY" *)
output wire s_axi_AXI_LITE_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RDATA" *)
output wire [31 : 0] s_axi_AXI_LITE_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RRESP" *)
output wire [1 : 0] s_axi_AXI_LITE_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RVALID" *)
output wire s_axi_AXI_LITE_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXI_LITE, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0,\
 WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXI_LITE RREADY" *)
input wire s_axi_AXI_LITE_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXI_LITE, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  array_add #(
    .C_S_AXI_AXI_LITE_ADDR_WIDTH(8),
    .C_S_AXI_AXI_LITE_DATA_WIDTH(32)
  ) inst (
    .s_axi_AXI_LITE_AWADDR(s_axi_AXI_LITE_AWADDR),
    .s_axi_AXI_LITE_AWVALID(s_axi_AXI_LITE_AWVALID),
    .s_axi_AXI_LITE_AWREADY(s_axi_AXI_LITE_AWREADY),
    .s_axi_AXI_LITE_WDATA(s_axi_AXI_LITE_WDATA),
    .s_axi_AXI_LITE_WSTRB(s_axi_AXI_LITE_WSTRB),
    .s_axi_AXI_LITE_WVALID(s_axi_AXI_LITE_WVALID),
    .s_axi_AXI_LITE_WREADY(s_axi_AXI_LITE_WREADY),
    .s_axi_AXI_LITE_BRESP(s_axi_AXI_LITE_BRESP),
    .s_axi_AXI_LITE_BVALID(s_axi_AXI_LITE_BVALID),
    .s_axi_AXI_LITE_BREADY(s_axi_AXI_LITE_BREADY),
    .s_axi_AXI_LITE_ARADDR(s_axi_AXI_LITE_ARADDR),
    .s_axi_AXI_LITE_ARVALID(s_axi_AXI_LITE_ARVALID),
    .s_axi_AXI_LITE_ARREADY(s_axi_AXI_LITE_ARREADY),
    .s_axi_AXI_LITE_RDATA(s_axi_AXI_LITE_RDATA),
    .s_axi_AXI_LITE_RRESP(s_axi_AXI_LITE_RRESP),
    .s_axi_AXI_LITE_RVALID(s_axi_AXI_LITE_RVALID),
    .s_axi_AXI_LITE_RREADY(s_axi_AXI_LITE_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt)
  );
endmodule
