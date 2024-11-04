-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 15:53:40 2024
-- Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ array_add_0_stub.vhdl
-- Design      : array_add_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg225-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXI_LITE_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_AWVALID : in STD_LOGIC;
    s_axi_AXI_LITE_AWREADY : out STD_LOGIC;
    s_axi_AXI_LITE_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_LITE_WVALID : in STD_LOGIC;
    s_axi_AXI_LITE_WREADY : out STD_LOGIC;
    s_axi_AXI_LITE_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_LITE_BVALID : out STD_LOGIC;
    s_axi_AXI_LITE_BREADY : in STD_LOGIC;
    s_axi_AXI_LITE_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXI_LITE_ARVALID : in STD_LOGIC;
    s_axi_AXI_LITE_ARREADY : out STD_LOGIC;
    s_axi_AXI_LITE_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_LITE_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_LITE_RVALID : out STD_LOGIC;
    s_axi_AXI_LITE_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXI_LITE_AWADDR[7:0],s_axi_AXI_LITE_AWVALID,s_axi_AXI_LITE_AWREADY,s_axi_AXI_LITE_WDATA[31:0],s_axi_AXI_LITE_WSTRB[3:0],s_axi_AXI_LITE_WVALID,s_axi_AXI_LITE_WREADY,s_axi_AXI_LITE_BRESP[1:0],s_axi_AXI_LITE_BVALID,s_axi_AXI_LITE_BREADY,s_axi_AXI_LITE_ARADDR[7:0],s_axi_AXI_LITE_ARVALID,s_axi_AXI_LITE_ARREADY,s_axi_AXI_LITE_RDATA[31:0],s_axi_AXI_LITE_RRESP[1:0],s_axi_AXI_LITE_RVALID,s_axi_AXI_LITE_RREADY,ap_clk,ap_rst_n,interrupt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "array_add,Vivado 2023.1";
begin
end;
