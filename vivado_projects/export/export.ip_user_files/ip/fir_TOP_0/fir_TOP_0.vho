-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: xilinx.com:hls:fir_TOP:1.0
-- IP Revision: 2113762331

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT fir_TOP_0
  PORT (
    y_ap_vld : OUT STD_LOGIC;
    s_axi_fir_io_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_fir_io_AWVALID : IN STD_LOGIC;
    s_axi_fir_io_AWREADY : OUT STD_LOGIC;
    s_axi_fir_io_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_fir_io_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_fir_io_WVALID : IN STD_LOGIC;
    s_axi_fir_io_WREADY : OUT STD_LOGIC;
    s_axi_fir_io_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_fir_io_BVALID : OUT STD_LOGIC;
    s_axi_fir_io_BREADY : IN STD_LOGIC;
    s_axi_fir_io_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_fir_io_ARVALID : IN STD_LOGIC;
    s_axi_fir_io_ARREADY : OUT STD_LOGIC;
    s_axi_fir_io_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_fir_io_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_fir_io_RVALID : OUT STD_LOGIC;
    s_axi_fir_io_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    x : IN STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : fir_TOP_0
  PORT MAP (
    y_ap_vld => y_ap_vld,
    s_axi_fir_io_AWADDR => s_axi_fir_io_AWADDR,
    s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY => s_axi_fir_io_AWREADY,
    s_axi_fir_io_WDATA => s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB => s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID => s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY => s_axi_fir_io_WREADY,
    s_axi_fir_io_BRESP => s_axi_fir_io_BRESP,
    s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
    s_axi_fir_io_ARADDR => s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY => s_axi_fir_io_ARREADY,
    s_axi_fir_io_RDATA => s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP => s_axi_fir_io_RRESP,
    s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    interrupt => interrupt,
    y => y,
    x => x
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file fir_TOP_0.vhd when simulating
-- the core, fir_TOP_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



