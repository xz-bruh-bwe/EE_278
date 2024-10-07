-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Oct  3 23:54:07 2024
-- Host        : DESKTOP-D2NNA1U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/export/export.gen/sources_1/ip/fir_TOP_0/fir_TOP_0_sim_netlist.vhdl
-- Design      : fir_TOP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xa7a12tcpg238-2I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0_fir_TOP_fir_io_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_fu_141_p35_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_fir_io_RVALID : out STD_LOGIC;
    shift_reg_ce1 : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_loop_init : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter4 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter3_reg : in STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fir_TOP_0_fir_TOP_fir_io_s_axi : entity is "fir_TOP_fir_io_s_axi";
end fir_TOP_0_fir_TOP_fir_io_s_axi;

architecture STRUCTURE of fir_TOP_0_fir_TOP_fir_io_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_2_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr : STD_LOGIC;
  signal int_isr8_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal \int_task_ap_done0__2\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal ram_reg_i_8_n_0 : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_fir_io_bvalid\ : STD_LOGIC;
  signal \^s_axi_fir_io_rdata\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_fir_io_rvalid\ : STD_LOGIC;
  signal \^tmp_fu_141_p35_in\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_cast1_reg_226[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_cast1_reg_226[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_cast1_reg_226[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_cast1_reg_226[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_62[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_isr[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ram_reg_i_8 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_i_1\ : label is "soft_lutpair2";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  ap_start <= \^ap_start\;
  interrupt <= \^interrupt\;
  s_axi_fir_io_BVALID <= \^s_axi_fir_io_bvalid\;
  s_axi_fir_io_RDATA(5 downto 0) <= \^s_axi_fir_io_rdata\(5 downto 0);
  s_axi_fir_io_RVALID <= \^s_axi_fir_io_rvalid\;
  tmp_fu_141_p35_in <= \^tmp_fu_141_p35_in\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_fir_io_ARVALID,
      I2 => s_axi_fir_io_RREADY,
      I3 => \^s_axi_fir_io_rvalid\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_fir_io_RREADY,
      I1 => \^s_axi_fir_io_rvalid\,
      I2 => s_axi_fir_io_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_fir_io_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_fir_io_AWVALID,
      I3 => s_axi_fir_io_BREADY,
      I4 => \^s_axi_fir_io_bvalid\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_fir_io_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_fir_io_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_fir_io_BREADY,
      I1 => \^s_axi_fir_io_bvalid\,
      I2 => s_axi_fir_io_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_fir_io_bvalid\,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A020"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Q(4),
      I2 => \^ap_start\,
      I3 => ap_loop_init,
      O => ap_rst_n_1
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FD5"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Q(4),
      I2 => \^ap_start\,
      I3 => ap_loop_init,
      O => ap_rst_n_0
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_idle,
      I2 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\i_cast1_reg_226[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => D(0)
    );
\i_cast1_reg_226[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(1),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => D(1)
    );
\i_cast1_reg_226[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(2),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => D(2)
    );
\i_cast1_reg_226[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(3),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => D(3)
    );
\i_fu_62[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => E(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => WEBWE(0),
      I3 => \^ap_start\,
      I4 => ap_enable_reg_pp0_iter4,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_0_in(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_loop_init,
      I2 => \^ap_start\,
      I3 => Q(4),
      I4 => \int_task_ap_done0__2\,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB0B0B0B0B0B0B0"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \^tmp_fu_141_p35_in\,
      I2 => \^ap_start\,
      I3 => int_ap_start_i_2_n_0,
      I4 => int_ap_start_i_3_n_0,
      I5 => s_axi_fir_io_WDATA(0),
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      O => int_ap_start_i_2_n_0
    );
int_ap_start_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_fir_io_WSTRB(0),
      I1 => s_axi_fir_io_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \waddr_reg_n_0_[1]\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(2),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => p_0_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_0_in(7),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => \p_0_in__0\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \p_0_in__0\,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => int_ap_start_i_3_n_0,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => int_isr8_out,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter3_reg,
      I1 => \int_ier_reg_n_0_[0]\,
      O => int_isr8_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => int_ap_start_i_3_n_0,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => int_isr,
      I5 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      I3 => \p_0_in__0\,
      O => int_isr
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter3_reg,
      I1 => auto_restart_status_reg_n_0,
      I2 => p_0_in(2),
      I3 => ap_idle,
      I4 => \int_task_ap_done0__2\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(1),
      I1 => s_axi_fir_io_ARADDR(0),
      I2 => s_axi_fir_io_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_fir_io_ARADDR(3),
      I5 => s_axi_fir_io_ARADDR(2),
      O => \int_task_ap_done0__2\
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => shift_reg_ce1
    );
ram_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => ram_reg_i_8_n_0,
      I1 => Q(3),
      I2 => ap_loop_init,
      I3 => \^ap_start\,
      I4 => Q(4),
      O => WEA(0)
    );
ram_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^ap_start\,
      I3 => ap_loop_init,
      I4 => Q(0),
      O => ram_reg_i_8_n_0
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10000000"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(0),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => s_axi_fir_io_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => \^s_axi_fir_io_rdata\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => s_axi_fir_io_ARADDR(3),
      I3 => s_axi_fir_io_ARADDR(2),
      I4 => \^ap_start\,
      I5 => int_gie_reg_n_0,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10000000"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(0),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => \rdata[1]_i_2_n_0\,
      I3 => s_axi_fir_io_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => \^s_axi_fir_io_rdata\(1),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => \p_0_in__0\,
      I2 => s_axi_fir_io_ARADDR(2),
      I3 => s_axi_fir_io_ARADDR(3),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_fir_io_ARVALID,
      I2 => s_axi_fir_io_ARADDR(2),
      I3 => s_axi_fir_io_ARADDR(3),
      I4 => s_axi_fir_io_ARADDR(0),
      I5 => s_axi_fir_io_ARADDR(1),
      O => \rdata[9]_i_1_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_fir_io_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[0]_i_1_n_0\,
      Q => \^s_axi_fir_io_rdata\(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[1]_i_1_n_0\,
      Q => \^s_axi_fir_io_rdata\(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => p_0_in(2),
      Q => \^s_axi_fir_io_rdata\(2),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_ap_ready,
      Q => \^s_axi_fir_io_rdata\(3),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => p_0_in(7),
      Q => \^s_axi_fir_io_rdata\(4),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \^interrupt\,
      Q => \^s_axi_fir_io_rdata\(5),
      R => \rdata[9]_i_1_n_0\
    );
tmp_product_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00F6F6F6"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \^ap_start\,
      I4 => ap_loop_init,
      I5 => Q(0),
      O => B(2)
    );
tmp_product_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02220AAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => \^ap_start\,
      I3 => ap_loop_init,
      I4 => Q(1),
      O => B(1)
    );
tmp_product_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2F2F200060606"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^ap_start\,
      I4 => ap_loop_init,
      I5 => Q(0),
      O => B(0)
    );
\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_start\,
      I2 => ap_loop_init,
      O => \^tmp_fu_141_p35_in\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_fir_io_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_fir_io_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0_fir_TOP_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_loop_exit_ready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_condition_185 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_loop_init_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fir_TOP_0_fir_TOP_flow_control_loop_pipe : entity is "fir_TOP_flow_control_loop_pipe";
end fir_TOP_0_fir_TOP_flow_control_loop_pipe;

architecture STRUCTURE of fir_TOP_0_fir_TOP_flow_control_loop_pipe is
  signal \^ap_condition_185\ : STD_LOGIC;
  signal \^ap_loop_init\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc_fu_66[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i_fu_62[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_fu_62[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_62[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \icmp_ln16_reg_231[0]_i_1\ : label is "soft_lutpair8";
begin
  ap_condition_185 <= \^ap_condition_185\;
  ap_loop_init <= \^ap_loop_init\;
\acc_fu_66[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      O => \^ap_condition_185\
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      I2 => Q(4),
      O => ap_loop_exit_ready
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_reg_0,
      Q => \^ap_loop_init\,
      R => '0'
    );
\i_fu_62[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => Q(4),
      I1 => \^ap_loop_init\,
      I2 => Q(0),
      O => D(0)
    );
\i_fu_62[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(1),
      I2 => \^ap_loop_init\,
      I3 => Q(0),
      O => D(1)
    );
\i_fu_62[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000A9"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^ap_loop_init\,
      I4 => Q(4),
      O => D(2)
    );
\i_fu_62[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEFB"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \^ap_condition_185\,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => D(3)
    );
\i_fu_62[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => \^ap_condition_185\,
      I4 => Q(1),
      I5 => Q(2),
      O => D(4)
    );
\icmp_ln16_reg_231[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      I2 => Q(4),
      O => E(0)
    );
ram_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEF0F1FFFEF0F0"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^ap_condition_185\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => ADDRARDADDR(3)
    );
ram_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A090A090A090A08"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^ap_condition_185\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => ADDRARDADDR(2)
    );
ram_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C030C030C030C02"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^ap_condition_185\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => ADDRARDADDR(1)
    );
ram_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0FFF0FFF0FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^ap_condition_185\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => ADDRARDADDR(0)
    );
tmp_product_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000363636"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^ap_loop_init\,
      I4 => ap_start,
      I5 => Q(2),
      O => B(2)
    );
tmp_product_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033333300BEBEBE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => \^ap_loop_init\,
      I4 => ap_start,
      I5 => Q(0),
      O => B(1)
    );
tmp_product_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAA0AAA0BBB0EEE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^ap_loop_init\,
      I3 => ap_start,
      I4 => Q(3),
      I5 => Q(2),
      O => B(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0_fir_TOP_mul_7s_32s_32_2_1 is
  port (
    shift_reg_we0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_start : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln16_reg_231 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fir_TOP_0_fir_TOP_mul_7s_32s_32_2_1 : entity is "fir_TOP_mul_7s_32s_32_2_1";
end fir_TOP_0_fir_TOP_mul_7s_32s_32_2_1;

architecture STRUCTURE of fir_TOP_0_fir_TOP_mul_7s_32s_32_2_1 is
  signal buff0_reg_n_58 : STD_LOGIC;
  signal buff0_reg_n_59 : STD_LOGIC;
  signal buff0_reg_n_60 : STD_LOGIC;
  signal buff0_reg_n_61 : STD_LOGIC;
  signal buff0_reg_n_62 : STD_LOGIC;
  signal buff0_reg_n_63 : STD_LOGIC;
  signal buff0_reg_n_64 : STD_LOGIC;
  signal buff0_reg_n_65 : STD_LOGIC;
  signal buff0_reg_n_66 : STD_LOGIC;
  signal buff0_reg_n_67 : STD_LOGIC;
  signal buff0_reg_n_68 : STD_LOGIC;
  signal buff0_reg_n_69 : STD_LOGIC;
  signal buff0_reg_n_70 : STD_LOGIC;
  signal buff0_reg_n_71 : STD_LOGIC;
  signal buff0_reg_n_72 : STD_LOGIC;
  signal buff0_reg_n_73 : STD_LOGIC;
  signal buff0_reg_n_74 : STD_LOGIC;
  signal buff0_reg_n_75 : STD_LOGIC;
  signal buff0_reg_n_76 : STD_LOGIC;
  signal buff0_reg_n_77 : STD_LOGIC;
  signal buff0_reg_n_78 : STD_LOGIC;
  signal buff0_reg_n_79 : STD_LOGIC;
  signal buff0_reg_n_80 : STD_LOGIC;
  signal buff0_reg_n_81 : STD_LOGIC;
  signal buff0_reg_n_82 : STD_LOGIC;
  signal buff0_reg_n_83 : STD_LOGIC;
  signal buff0_reg_n_84 : STD_LOGIC;
  signal buff0_reg_n_85 : STD_LOGIC;
  signal buff0_reg_n_86 : STD_LOGIC;
  signal buff0_reg_n_87 : STD_LOGIC;
  signal buff0_reg_n_88 : STD_LOGIC;
  signal buff0_reg_n_89 : STD_LOGIC;
  signal buff0_reg_n_90 : STD_LOGIC;
  signal c_load_reg_2501 : STD_LOGIC;
  signal \^shift_reg_we0\ : STD_LOGIC;
  signal tmp_product_n_100 : STD_LOGIC;
  signal tmp_product_n_101 : STD_LOGIC;
  signal tmp_product_n_102 : STD_LOGIC;
  signal tmp_product_n_103 : STD_LOGIC;
  signal tmp_product_n_104 : STD_LOGIC;
  signal tmp_product_n_105 : STD_LOGIC;
  signal tmp_product_n_106 : STD_LOGIC;
  signal tmp_product_n_107 : STD_LOGIC;
  signal tmp_product_n_108 : STD_LOGIC;
  signal tmp_product_n_109 : STD_LOGIC;
  signal tmp_product_n_110 : STD_LOGIC;
  signal tmp_product_n_111 : STD_LOGIC;
  signal tmp_product_n_112 : STD_LOGIC;
  signal tmp_product_n_113 : STD_LOGIC;
  signal tmp_product_n_114 : STD_LOGIC;
  signal tmp_product_n_115 : STD_LOGIC;
  signal tmp_product_n_116 : STD_LOGIC;
  signal tmp_product_n_117 : STD_LOGIC;
  signal tmp_product_n_118 : STD_LOGIC;
  signal tmp_product_n_119 : STD_LOGIC;
  signal tmp_product_n_120 : STD_LOGIC;
  signal tmp_product_n_121 : STD_LOGIC;
  signal tmp_product_n_122 : STD_LOGIC;
  signal tmp_product_n_123 : STD_LOGIC;
  signal tmp_product_n_124 : STD_LOGIC;
  signal tmp_product_n_125 : STD_LOGIC;
  signal tmp_product_n_126 : STD_LOGIC;
  signal tmp_product_n_127 : STD_LOGIC;
  signal tmp_product_n_128 : STD_LOGIC;
  signal tmp_product_n_129 : STD_LOGIC;
  signal tmp_product_n_130 : STD_LOGIC;
  signal tmp_product_n_131 : STD_LOGIC;
  signal tmp_product_n_132 : STD_LOGIC;
  signal tmp_product_n_133 : STD_LOGIC;
  signal tmp_product_n_134 : STD_LOGIC;
  signal tmp_product_n_135 : STD_LOGIC;
  signal tmp_product_n_136 : STD_LOGIC;
  signal tmp_product_n_137 : STD_LOGIC;
  signal tmp_product_n_138 : STD_LOGIC;
  signal tmp_product_n_139 : STD_LOGIC;
  signal tmp_product_n_140 : STD_LOGIC;
  signal tmp_product_n_141 : STD_LOGIC;
  signal tmp_product_n_142 : STD_LOGIC;
  signal tmp_product_n_143 : STD_LOGIC;
  signal tmp_product_n_144 : STD_LOGIC;
  signal tmp_product_n_145 : STD_LOGIC;
  signal tmp_product_n_146 : STD_LOGIC;
  signal tmp_product_n_147 : STD_LOGIC;
  signal tmp_product_n_148 : STD_LOGIC;
  signal tmp_product_n_149 : STD_LOGIC;
  signal tmp_product_n_150 : STD_LOGIC;
  signal tmp_product_n_151 : STD_LOGIC;
  signal tmp_product_n_152 : STD_LOGIC;
  signal tmp_product_n_153 : STD_LOGIC;
  signal tmp_product_n_58 : STD_LOGIC;
  signal tmp_product_n_59 : STD_LOGIC;
  signal tmp_product_n_60 : STD_LOGIC;
  signal tmp_product_n_61 : STD_LOGIC;
  signal tmp_product_n_62 : STD_LOGIC;
  signal tmp_product_n_63 : STD_LOGIC;
  signal tmp_product_n_64 : STD_LOGIC;
  signal tmp_product_n_65 : STD_LOGIC;
  signal tmp_product_n_66 : STD_LOGIC;
  signal tmp_product_n_67 : STD_LOGIC;
  signal tmp_product_n_68 : STD_LOGIC;
  signal tmp_product_n_69 : STD_LOGIC;
  signal tmp_product_n_70 : STD_LOGIC;
  signal tmp_product_n_71 : STD_LOGIC;
  signal tmp_product_n_72 : STD_LOGIC;
  signal tmp_product_n_73 : STD_LOGIC;
  signal tmp_product_n_74 : STD_LOGIC;
  signal tmp_product_n_75 : STD_LOGIC;
  signal tmp_product_n_76 : STD_LOGIC;
  signal tmp_product_n_77 : STD_LOGIC;
  signal tmp_product_n_78 : STD_LOGIC;
  signal tmp_product_n_79 : STD_LOGIC;
  signal tmp_product_n_80 : STD_LOGIC;
  signal tmp_product_n_81 : STD_LOGIC;
  signal tmp_product_n_82 : STD_LOGIC;
  signal tmp_product_n_83 : STD_LOGIC;
  signal tmp_product_n_84 : STD_LOGIC;
  signal tmp_product_n_85 : STD_LOGIC;
  signal tmp_product_n_86 : STD_LOGIC;
  signal tmp_product_n_87 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal tmp_product_n_90 : STD_LOGIC;
  signal tmp_product_n_91 : STD_LOGIC;
  signal tmp_product_n_92 : STD_LOGIC;
  signal tmp_product_n_93 : STD_LOGIC;
  signal tmp_product_n_94 : STD_LOGIC;
  signal tmp_product_n_95 : STD_LOGIC;
  signal tmp_product_n_96 : STD_LOGIC;
  signal tmp_product_n_97 : STD_LOGIC;
  signal tmp_product_n_98 : STD_LOGIC;
  signal tmp_product_n_99 : STD_LOGIC;
  signal NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_buff0_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_buff0_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_buff0_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
begin
  shift_reg_we0 <= \^shift_reg_we0\;
buff0_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => DOADO(31),
      A(28) => DOADO(31),
      A(27) => DOADO(31),
      A(26) => DOADO(31),
      A(25) => DOADO(31),
      A(24) => DOADO(31),
      A(23) => DOADO(31),
      A(22) => DOADO(31),
      A(21) => DOADO(31),
      A(20) => DOADO(31),
      A(19) => DOADO(31),
      A(18) => DOADO(31),
      A(17) => DOADO(31),
      A(16) => DOADO(31),
      A(15) => DOADO(31),
      A(14 downto 0) => DOADO(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_buff0_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(5),
      B(16) => B(5),
      B(15) => B(5),
      B(14) => B(5),
      B(13) => B(5),
      B(12) => B(5),
      B(11) => B(5),
      B(10) => B(5),
      B(9) => B(5),
      B(8) => B(5),
      B(7) => B(5),
      B(6 downto 2) => B(5 downto 1),
      B(1 downto 0) => B(1 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_buff0_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_buff0_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^shift_reg_we0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => ap_start,
      CEB2 => c_load_reg_2501,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => NLW_buff0_reg_OVERFLOW_UNCONNECTED,
      P(47) => buff0_reg_n_58,
      P(46) => buff0_reg_n_59,
      P(45) => buff0_reg_n_60,
      P(44) => buff0_reg_n_61,
      P(43) => buff0_reg_n_62,
      P(42) => buff0_reg_n_63,
      P(41) => buff0_reg_n_64,
      P(40) => buff0_reg_n_65,
      P(39) => buff0_reg_n_66,
      P(38) => buff0_reg_n_67,
      P(37) => buff0_reg_n_68,
      P(36) => buff0_reg_n_69,
      P(35) => buff0_reg_n_70,
      P(34) => buff0_reg_n_71,
      P(33) => buff0_reg_n_72,
      P(32) => buff0_reg_n_73,
      P(31) => buff0_reg_n_74,
      P(30) => buff0_reg_n_75,
      P(29) => buff0_reg_n_76,
      P(28) => buff0_reg_n_77,
      P(27) => buff0_reg_n_78,
      P(26) => buff0_reg_n_79,
      P(25) => buff0_reg_n_80,
      P(24) => buff0_reg_n_81,
      P(23) => buff0_reg_n_82,
      P(22) => buff0_reg_n_83,
      P(21) => buff0_reg_n_84,
      P(20) => buff0_reg_n_85,
      P(19) => buff0_reg_n_86,
      P(18) => buff0_reg_n_87,
      P(17) => buff0_reg_n_88,
      P(16) => buff0_reg_n_89,
      P(15) => buff0_reg_n_90,
      P(14 downto 0) => D(31 downto 17),
      PATTERNBDETECT => NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_buff0_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => tmp_product_n_106,
      PCIN(46) => tmp_product_n_107,
      PCIN(45) => tmp_product_n_108,
      PCIN(44) => tmp_product_n_109,
      PCIN(43) => tmp_product_n_110,
      PCIN(42) => tmp_product_n_111,
      PCIN(41) => tmp_product_n_112,
      PCIN(40) => tmp_product_n_113,
      PCIN(39) => tmp_product_n_114,
      PCIN(38) => tmp_product_n_115,
      PCIN(37) => tmp_product_n_116,
      PCIN(36) => tmp_product_n_117,
      PCIN(35) => tmp_product_n_118,
      PCIN(34) => tmp_product_n_119,
      PCIN(33) => tmp_product_n_120,
      PCIN(32) => tmp_product_n_121,
      PCIN(31) => tmp_product_n_122,
      PCIN(30) => tmp_product_n_123,
      PCIN(29) => tmp_product_n_124,
      PCIN(28) => tmp_product_n_125,
      PCIN(27) => tmp_product_n_126,
      PCIN(26) => tmp_product_n_127,
      PCIN(25) => tmp_product_n_128,
      PCIN(24) => tmp_product_n_129,
      PCIN(23) => tmp_product_n_130,
      PCIN(22) => tmp_product_n_131,
      PCIN(21) => tmp_product_n_132,
      PCIN(20) => tmp_product_n_133,
      PCIN(19) => tmp_product_n_134,
      PCIN(18) => tmp_product_n_135,
      PCIN(17) => tmp_product_n_136,
      PCIN(16) => tmp_product_n_137,
      PCIN(15) => tmp_product_n_138,
      PCIN(14) => tmp_product_n_139,
      PCIN(13) => tmp_product_n_140,
      PCIN(12) => tmp_product_n_141,
      PCIN(11) => tmp_product_n_142,
      PCIN(10) => tmp_product_n_143,
      PCIN(9) => tmp_product_n_144,
      PCIN(8) => tmp_product_n_145,
      PCIN(7) => tmp_product_n_146,
      PCIN(6) => tmp_product_n_147,
      PCIN(5) => tmp_product_n_148,
      PCIN(4) => tmp_product_n_149,
      PCIN(3) => tmp_product_n_150,
      PCIN(2) => tmp_product_n_151,
      PCIN(1) => tmp_product_n_152,
      PCIN(0) => tmp_product_n_153,
      PCOUT(47 downto 0) => NLW_buff0_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_buff0_reg_UNDERFLOW_UNCONNECTED
    );
\buff0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_105,
      Q => D(0),
      R => '0'
    );
\buff0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_95,
      Q => D(10),
      R => '0'
    );
\buff0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_94,
      Q => D(11),
      R => '0'
    );
\buff0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_93,
      Q => D(12),
      R => '0'
    );
\buff0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_92,
      Q => D(13),
      R => '0'
    );
\buff0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_91,
      Q => D(14),
      R => '0'
    );
\buff0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_90,
      Q => D(15),
      R => '0'
    );
\buff0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_89,
      Q => D(16),
      R => '0'
    );
\buff0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_104,
      Q => D(1),
      R => '0'
    );
\buff0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_103,
      Q => D(2),
      R => '0'
    );
\buff0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_102,
      Q => D(3),
      R => '0'
    );
\buff0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_101,
      Q => D(4),
      R => '0'
    );
\buff0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_100,
      Q => D(5),
      R => '0'
    );
\buff0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_99,
      Q => D(6),
      R => '0'
    );
\buff0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_98,
      Q => D(7),
      R => '0'
    );
\buff0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_97,
      Q => D(8),
      R => '0'
    );
\buff0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_product_n_96,
      Q => D(9),
      R => '0'
    );
ram_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => WEBWE(0),
      I1 => icmp_ln16_reg_231,
      O => \^shift_reg_we0\
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => DOADO(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(5),
      B(16) => B(5),
      B(15) => B(5),
      B(14) => B(5),
      B(13) => B(5),
      B(12) => B(5),
      B(11) => B(5),
      B(10) => B(5),
      B(9) => B(5),
      B(8) => B(5),
      B(7) => B(5),
      B(6 downto 2) => B(5 downto 1),
      B(1 downto 0) => B(1 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^shift_reg_we0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => ap_start,
      CEB2 => c_load_reg_2501,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47) => tmp_product_n_58,
      P(46) => tmp_product_n_59,
      P(45) => tmp_product_n_60,
      P(44) => tmp_product_n_61,
      P(43) => tmp_product_n_62,
      P(42) => tmp_product_n_63,
      P(41) => tmp_product_n_64,
      P(40) => tmp_product_n_65,
      P(39) => tmp_product_n_66,
      P(38) => tmp_product_n_67,
      P(37) => tmp_product_n_68,
      P(36) => tmp_product_n_69,
      P(35) => tmp_product_n_70,
      P(34) => tmp_product_n_71,
      P(33) => tmp_product_n_72,
      P(32) => tmp_product_n_73,
      P(31) => tmp_product_n_74,
      P(30) => tmp_product_n_75,
      P(29) => tmp_product_n_76,
      P(28) => tmp_product_n_77,
      P(27) => tmp_product_n_78,
      P(26) => tmp_product_n_79,
      P(25) => tmp_product_n_80,
      P(24) => tmp_product_n_81,
      P(23) => tmp_product_n_82,
      P(22) => tmp_product_n_83,
      P(21) => tmp_product_n_84,
      P(20) => tmp_product_n_85,
      P(19) => tmp_product_n_86,
      P(18) => tmp_product_n_87,
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15) => tmp_product_n_90,
      P(14) => tmp_product_n_91,
      P(13) => tmp_product_n_92,
      P(12) => tmp_product_n_93,
      P(11) => tmp_product_n_94,
      P(10) => tmp_product_n_95,
      P(9) => tmp_product_n_96,
      P(8) => tmp_product_n_97,
      P(7) => tmp_product_n_98,
      P(6) => tmp_product_n_99,
      P(5) => tmp_product_n_100,
      P(4) => tmp_product_n_101,
      P(3) => tmp_product_n_102,
      P(2) => tmp_product_n_103,
      P(1) => tmp_product_n_104,
      P(0) => tmp_product_n_105,
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => tmp_product_n_106,
      PCOUT(46) => tmp_product_n_107,
      PCOUT(45) => tmp_product_n_108,
      PCOUT(44) => tmp_product_n_109,
      PCOUT(43) => tmp_product_n_110,
      PCOUT(42) => tmp_product_n_111,
      PCOUT(41) => tmp_product_n_112,
      PCOUT(40) => tmp_product_n_113,
      PCOUT(39) => tmp_product_n_114,
      PCOUT(38) => tmp_product_n_115,
      PCOUT(37) => tmp_product_n_116,
      PCOUT(36) => tmp_product_n_117,
      PCOUT(35) => tmp_product_n_118,
      PCOUT(34) => tmp_product_n_119,
      PCOUT(33) => tmp_product_n_120,
      PCOUT(32) => tmp_product_n_121,
      PCOUT(31) => tmp_product_n_122,
      PCOUT(30) => tmp_product_n_123,
      PCOUT(29) => tmp_product_n_124,
      PCOUT(28) => tmp_product_n_125,
      PCOUT(27) => tmp_product_n_126,
      PCOUT(26) => tmp_product_n_127,
      PCOUT(25) => tmp_product_n_128,
      PCOUT(24) => tmp_product_n_129,
      PCOUT(23) => tmp_product_n_130,
      PCOUT(22) => tmp_product_n_131,
      PCOUT(21) => tmp_product_n_132,
      PCOUT(20) => tmp_product_n_133,
      PCOUT(19) => tmp_product_n_134,
      PCOUT(18) => tmp_product_n_135,
      PCOUT(17) => tmp_product_n_136,
      PCOUT(16) => tmp_product_n_137,
      PCOUT(15) => tmp_product_n_138,
      PCOUT(14) => tmp_product_n_139,
      PCOUT(13) => tmp_product_n_140,
      PCOUT(12) => tmp_product_n_141,
      PCOUT(11) => tmp_product_n_142,
      PCOUT(10) => tmp_product_n_143,
      PCOUT(9) => tmp_product_n_144,
      PCOUT(8) => tmp_product_n_145,
      PCOUT(7) => tmp_product_n_146,
      PCOUT(6) => tmp_product_n_147,
      PCOUT(5) => tmp_product_n_148,
      PCOUT(4) => tmp_product_n_149,
      PCOUT(3) => tmp_product_n_150,
      PCOUT(2) => tmp_product_n_151,
      PCOUT(1) => tmp_product_n_152,
      PCOUT(0) => tmp_product_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
tmp_product_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => icmp_ln16_reg_231,
      O => c_load_reg_2501
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0_fir_TOP_shift_reg_RAM_AUTO_1R1W is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    shift_reg_ce1 : in STD_LOGIC;
    shift_reg_we0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fir_TOP_0_fir_TOP_shift_reg_RAM_AUTO_1R1W : entity is "fir_TOP_shift_reg_RAM_AUTO_1R1W";
end fir_TOP_0_fir_TOP_shift_reg_RAM_AUTO_1R1W;

architecture STRUCTURE of fir_TOP_0_fir_TOP_shift_reg_RAM_AUTO_1R1W is
  signal \^doado\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 352;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "inst/shift_reg_U/ram_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 31;
begin
  DOADO(31 downto 0) <= \^doado\(31 downto 0);
ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 9) => B"1000000",
      ADDRARDADDR(8 downto 5) => ADDRARDADDR(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 9) => B"1000000",
      ADDRBWRADDR(8 downto 5) => Q(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => x(31 downto 0),
      DIBDI(31 downto 0) => \^doado\(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \^doado\(31 downto 0),
      DOBDO(31 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => shift_reg_ce1,
      ENBWREN => shift_reg_we0,
      INJECTDBITERR => NLW_ram_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0_fir_TOP is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y_ap_vld : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of fir_TOP_0_fir_TOP : entity is 32;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH of fir_TOP_0_fir_TOP : entity is 4;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH of fir_TOP_0_fir_TOP : entity is 32;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH of fir_TOP_0_fir_TOP : entity is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of fir_TOP_0_fir_TOP : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fir_TOP_0_fir_TOP : entity is "fir_TOP";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of fir_TOP_0_fir_TOP : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of fir_TOP_0_fir_TOP : entity is "yes";
end fir_TOP_0_fir_TOP;

architecture STRUCTURE of fir_TOP_0_fir_TOP is
  signal \<const0>\ : STD_LOGIC;
  signal \acc_fu_66[0]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[12]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[12]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[12]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[12]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[16]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[16]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[16]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[16]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[20]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[20]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[20]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[20]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[24]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[24]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[24]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[24]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[28]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[28]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[28]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[28]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[4]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[4]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[4]_i_5_n_0\ : STD_LOGIC;
  signal \acc_fu_66[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc_fu_66[8]_i_3_n_0\ : STD_LOGIC;
  signal \acc_fu_66[8]_i_4_n_0\ : STD_LOGIC;
  signal \acc_fu_66[8]_i_5_n_0\ : STD_LOGIC;
  signal acc_fu_66_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \acc_fu_66_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \acc_fu_66_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ap_condition_185 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_loop_exit_ready : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal \buff0_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_io_s_axi_U_n_13 : STD_LOGIC;
  signal fir_io_s_axi_U_n_14 : STD_LOGIC;
  signal fir_io_s_axi_U_n_15 : STD_LOGIC;
  signal fir_io_s_axi_U_n_16 : STD_LOGIC;
  signal fir_io_s_axi_U_n_2 : STD_LOGIC;
  signal fir_io_s_axi_U_n_3 : STD_LOGIC;
  signal fir_io_s_axi_U_n_4 : STD_LOGIC;
  signal fir_io_s_axi_U_n_8 : STD_LOGIC;
  signal fir_io_s_axi_U_n_9 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_7 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal \i_cast1_reg_226_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_cast1_reg_226_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_cast1_reg_226_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_cast1_reg_226_reg_n_0_[3]\ : STD_LOGIC;
  signal i_fu_62 : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[4]\ : STD_LOGIC;
  signal icmp_ln16_reg_231 : STD_LOGIC;
  signal icmp_ln16_reg_231_pp0_iter1_reg : STD_LOGIC;
  signal icmp_ln16_reg_231_pp0_iter2_reg : STD_LOGIC;
  signal icmp_ln16_reg_231_pp0_iter3_reg : STD_LOGIC;
  signal mul_ln21_reg_260 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \^s_axi_fir_io_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_reg_ce1 : STD_LOGIC;
  signal shift_reg_q1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shift_reg_we0 : STD_LOGIC;
  signal shift_reg_we1 : STD_LOGIC;
  signal tmp_fu_141_p3 : STD_LOGIC;
  signal tmp_fu_141_p35_in : STD_LOGIC;
  signal \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_n_0\ : STD_LOGIC;
  signal \y[0]_INST_0_n_1\ : STD_LOGIC;
  signal \y[0]_INST_0_n_2\ : STD_LOGIC;
  signal \y[0]_INST_0_n_3\ : STD_LOGIC;
  signal \y[0]_INST_0_n_4\ : STD_LOGIC;
  signal \y[0]_INST_0_n_5\ : STD_LOGIC;
  signal \y[0]_INST_0_n_6\ : STD_LOGIC;
  signal \y[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[12]_INST_0_n_0\ : STD_LOGIC;
  signal \y[12]_INST_0_n_1\ : STD_LOGIC;
  signal \y[12]_INST_0_n_2\ : STD_LOGIC;
  signal \y[12]_INST_0_n_3\ : STD_LOGIC;
  signal \y[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[16]_INST_0_n_0\ : STD_LOGIC;
  signal \y[16]_INST_0_n_1\ : STD_LOGIC;
  signal \y[16]_INST_0_n_2\ : STD_LOGIC;
  signal \y[16]_INST_0_n_3\ : STD_LOGIC;
  signal \y[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_n_0\ : STD_LOGIC;
  signal \y[1]_INST_0_n_1\ : STD_LOGIC;
  signal \y[1]_INST_0_n_2\ : STD_LOGIC;
  signal \y[1]_INST_0_n_3\ : STD_LOGIC;
  signal \y[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[20]_INST_0_n_0\ : STD_LOGIC;
  signal \y[20]_INST_0_n_1\ : STD_LOGIC;
  signal \y[20]_INST_0_n_2\ : STD_LOGIC;
  signal \y[20]_INST_0_n_3\ : STD_LOGIC;
  signal \y[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[24]_INST_0_n_0\ : STD_LOGIC;
  signal \y[24]_INST_0_n_1\ : STD_LOGIC;
  signal \y[24]_INST_0_n_2\ : STD_LOGIC;
  signal \y[24]_INST_0_n_3\ : STD_LOGIC;
  signal \y[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[28]_INST_0_n_1\ : STD_LOGIC;
  signal \y[28]_INST_0_n_2\ : STD_LOGIC;
  signal \y[28]_INST_0_n_3\ : STD_LOGIC;
  signal \y[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_n_0\ : STD_LOGIC;
  signal \y[4]_INST_0_n_1\ : STD_LOGIC;
  signal \y[4]_INST_0_n_2\ : STD_LOGIC;
  signal \y[4]_INST_0_n_3\ : STD_LOGIC;
  signal \y[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_n_0\ : STD_LOGIC;
  signal \y[8]_INST_0_n_1\ : STD_LOGIC;
  signal \y[8]_INST_0_n_2\ : STD_LOGIC;
  signal \y[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_acc_fu_66_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y[1]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_y[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_fu_66_reg[8]_i_1\ : label is 11;
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 : label is "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\tmp_reg_222_pp0_iter1_reg_reg ";
  attribute srl_name of \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2 ";
  attribute ADDER_THRESHOLD of \y[0]_INST_0\ : label is 11;
  attribute ADDER_THRESHOLD of \y[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[16]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[1]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[20]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[24]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[28]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \y[8]_INST_0\ : label is 35;
begin
  s_axi_fir_io_BRESP(1) <= \<const0>\;
  s_axi_fir_io_BRESP(0) <= \<const0>\;
  s_axi_fir_io_RDATA(31) <= \<const0>\;
  s_axi_fir_io_RDATA(30) <= \<const0>\;
  s_axi_fir_io_RDATA(29) <= \<const0>\;
  s_axi_fir_io_RDATA(28) <= \<const0>\;
  s_axi_fir_io_RDATA(27) <= \<const0>\;
  s_axi_fir_io_RDATA(26) <= \<const0>\;
  s_axi_fir_io_RDATA(25) <= \<const0>\;
  s_axi_fir_io_RDATA(24) <= \<const0>\;
  s_axi_fir_io_RDATA(23) <= \<const0>\;
  s_axi_fir_io_RDATA(22) <= \<const0>\;
  s_axi_fir_io_RDATA(21) <= \<const0>\;
  s_axi_fir_io_RDATA(20) <= \<const0>\;
  s_axi_fir_io_RDATA(19) <= \<const0>\;
  s_axi_fir_io_RDATA(18) <= \<const0>\;
  s_axi_fir_io_RDATA(17) <= \<const0>\;
  s_axi_fir_io_RDATA(16) <= \<const0>\;
  s_axi_fir_io_RDATA(15) <= \<const0>\;
  s_axi_fir_io_RDATA(14) <= \<const0>\;
  s_axi_fir_io_RDATA(13) <= \<const0>\;
  s_axi_fir_io_RDATA(12) <= \<const0>\;
  s_axi_fir_io_RDATA(11) <= \<const0>\;
  s_axi_fir_io_RDATA(10) <= \<const0>\;
  s_axi_fir_io_RDATA(9) <= \^s_axi_fir_io_rdata\(9);
  s_axi_fir_io_RDATA(8) <= \<const0>\;
  s_axi_fir_io_RDATA(7) <= \^s_axi_fir_io_rdata\(7);
  s_axi_fir_io_RDATA(6) <= \<const0>\;
  s_axi_fir_io_RDATA(5) <= \<const0>\;
  s_axi_fir_io_RDATA(4) <= \<const0>\;
  s_axi_fir_io_RDATA(3 downto 0) <= \^s_axi_fir_io_rdata\(3 downto 0);
  s_axi_fir_io_RRESP(1) <= \<const0>\;
  s_axi_fir_io_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\acc_fu_66[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(0),
      O => \acc_fu_66[0]_i_2_n_0\
    );
\acc_fu_66[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(15),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(15),
      O => \acc_fu_66[12]_i_2_n_0\
    );
\acc_fu_66[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(14),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(14),
      O => \acc_fu_66[12]_i_3_n_0\
    );
\acc_fu_66[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(13),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(13),
      O => \acc_fu_66[12]_i_4_n_0\
    );
\acc_fu_66[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(12),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(12),
      O => \acc_fu_66[12]_i_5_n_0\
    );
\acc_fu_66[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(19),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(19),
      O => \acc_fu_66[16]_i_2_n_0\
    );
\acc_fu_66[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(18),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(18),
      O => \acc_fu_66[16]_i_3_n_0\
    );
\acc_fu_66[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(17),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(17),
      O => \acc_fu_66[16]_i_4_n_0\
    );
\acc_fu_66[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(16),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(16),
      O => \acc_fu_66[16]_i_5_n_0\
    );
\acc_fu_66[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(23),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(23),
      O => \acc_fu_66[20]_i_2_n_0\
    );
\acc_fu_66[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(22),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(22),
      O => \acc_fu_66[20]_i_3_n_0\
    );
\acc_fu_66[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(21),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(21),
      O => \acc_fu_66[20]_i_4_n_0\
    );
\acc_fu_66[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(20),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(20),
      O => \acc_fu_66[20]_i_5_n_0\
    );
\acc_fu_66[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(27),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(27),
      O => \acc_fu_66[24]_i_2_n_0\
    );
\acc_fu_66[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(26),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(26),
      O => \acc_fu_66[24]_i_3_n_0\
    );
\acc_fu_66[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(25),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(25),
      O => \acc_fu_66[24]_i_4_n_0\
    );
\acc_fu_66[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(24),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(24),
      O => \acc_fu_66[24]_i_5_n_0\
    );
\acc_fu_66[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(31),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(31),
      O => \acc_fu_66[28]_i_2_n_0\
    );
\acc_fu_66[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(30),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(30),
      O => \acc_fu_66[28]_i_3_n_0\
    );
\acc_fu_66[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(29),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(29),
      O => \acc_fu_66[28]_i_4_n_0\
    );
\acc_fu_66[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(28),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(28),
      O => \acc_fu_66[28]_i_5_n_0\
    );
\acc_fu_66[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(7),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(7),
      O => \acc_fu_66[4]_i_2_n_0\
    );
\acc_fu_66[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(6),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(6),
      O => \acc_fu_66[4]_i_3_n_0\
    );
\acc_fu_66[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(5),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(5),
      O => \acc_fu_66[4]_i_4_n_0\
    );
\acc_fu_66[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(4),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(4),
      O => \acc_fu_66[4]_i_5_n_0\
    );
\acc_fu_66[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(11),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(11),
      O => \acc_fu_66[8]_i_2_n_0\
    );
\acc_fu_66[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(10),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(10),
      O => \acc_fu_66[8]_i_3_n_0\
    );
\acc_fu_66[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(9),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(9),
      O => \acc_fu_66[8]_i_4_n_0\
    );
\acc_fu_66[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(8),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(8),
      O => \acc_fu_66[8]_i_5_n_0\
    );
\acc_fu_66_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66[0]_i_2_n_0\,
      Q => acc_fu_66_reg(0),
      R => ap_condition_185
    );
\acc_fu_66_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[8]_i_1_n_5\,
      Q => acc_fu_66_reg(10),
      R => ap_condition_185
    );
\acc_fu_66_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[8]_i_1_n_4\,
      Q => acc_fu_66_reg(11),
      R => ap_condition_185
    );
\acc_fu_66_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[12]_i_1_n_7\,
      Q => acc_fu_66_reg(12),
      R => ap_condition_185
    );
\acc_fu_66_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[8]_i_1_n_0\,
      CO(3) => \acc_fu_66_reg[12]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[12]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[12]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(15 downto 12),
      O(3) => \acc_fu_66_reg[12]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[12]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[12]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[12]_i_1_n_7\,
      S(3) => \acc_fu_66[12]_i_2_n_0\,
      S(2) => \acc_fu_66[12]_i_3_n_0\,
      S(1) => \acc_fu_66[12]_i_4_n_0\,
      S(0) => \acc_fu_66[12]_i_5_n_0\
    );
\acc_fu_66_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[12]_i_1_n_6\,
      Q => acc_fu_66_reg(13),
      R => ap_condition_185
    );
\acc_fu_66_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[12]_i_1_n_5\,
      Q => acc_fu_66_reg(14),
      R => ap_condition_185
    );
\acc_fu_66_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[12]_i_1_n_4\,
      Q => acc_fu_66_reg(15),
      R => ap_condition_185
    );
\acc_fu_66_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[16]_i_1_n_7\,
      Q => acc_fu_66_reg(16),
      R => ap_condition_185
    );
\acc_fu_66_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[12]_i_1_n_0\,
      CO(3) => \acc_fu_66_reg[16]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[16]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[16]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(19 downto 16),
      O(3) => \acc_fu_66_reg[16]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[16]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[16]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[16]_i_1_n_7\,
      S(3) => \acc_fu_66[16]_i_2_n_0\,
      S(2) => \acc_fu_66[16]_i_3_n_0\,
      S(1) => \acc_fu_66[16]_i_4_n_0\,
      S(0) => \acc_fu_66[16]_i_5_n_0\
    );
\acc_fu_66_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[16]_i_1_n_6\,
      Q => acc_fu_66_reg(17),
      R => ap_condition_185
    );
\acc_fu_66_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[16]_i_1_n_5\,
      Q => acc_fu_66_reg(18),
      R => ap_condition_185
    );
\acc_fu_66_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[16]_i_1_n_4\,
      Q => acc_fu_66_reg(19),
      R => ap_condition_185
    );
\acc_fu_66_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y[0]_INST_0_n_6\,
      Q => acc_fu_66_reg(1),
      R => ap_condition_185
    );
\acc_fu_66_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[20]_i_1_n_7\,
      Q => acc_fu_66_reg(20),
      R => ap_condition_185
    );
\acc_fu_66_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[16]_i_1_n_0\,
      CO(3) => \acc_fu_66_reg[20]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[20]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[20]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(23 downto 20),
      O(3) => \acc_fu_66_reg[20]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[20]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[20]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[20]_i_1_n_7\,
      S(3) => \acc_fu_66[20]_i_2_n_0\,
      S(2) => \acc_fu_66[20]_i_3_n_0\,
      S(1) => \acc_fu_66[20]_i_4_n_0\,
      S(0) => \acc_fu_66[20]_i_5_n_0\
    );
\acc_fu_66_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[20]_i_1_n_6\,
      Q => acc_fu_66_reg(21),
      R => ap_condition_185
    );
\acc_fu_66_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[20]_i_1_n_5\,
      Q => acc_fu_66_reg(22),
      R => ap_condition_185
    );
\acc_fu_66_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[20]_i_1_n_4\,
      Q => acc_fu_66_reg(23),
      R => ap_condition_185
    );
\acc_fu_66_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[24]_i_1_n_7\,
      Q => acc_fu_66_reg(24),
      R => ap_condition_185
    );
\acc_fu_66_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[20]_i_1_n_0\,
      CO(3) => \acc_fu_66_reg[24]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[24]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[24]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(27 downto 24),
      O(3) => \acc_fu_66_reg[24]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[24]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[24]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[24]_i_1_n_7\,
      S(3) => \acc_fu_66[24]_i_2_n_0\,
      S(2) => \acc_fu_66[24]_i_3_n_0\,
      S(1) => \acc_fu_66[24]_i_4_n_0\,
      S(0) => \acc_fu_66[24]_i_5_n_0\
    );
\acc_fu_66_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[24]_i_1_n_6\,
      Q => acc_fu_66_reg(25),
      R => ap_condition_185
    );
\acc_fu_66_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[24]_i_1_n_5\,
      Q => acc_fu_66_reg(26),
      R => ap_condition_185
    );
\acc_fu_66_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[24]_i_1_n_4\,
      Q => acc_fu_66_reg(27),
      R => ap_condition_185
    );
\acc_fu_66_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[28]_i_1_n_7\,
      Q => acc_fu_66_reg(28),
      R => ap_condition_185
    );
\acc_fu_66_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[24]_i_1_n_0\,
      CO(3) => \NLW_acc_fu_66_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \acc_fu_66_reg[28]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[28]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => acc_fu_66_reg(30 downto 28),
      O(3) => \acc_fu_66_reg[28]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[28]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[28]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[28]_i_1_n_7\,
      S(3) => \acc_fu_66[28]_i_2_n_0\,
      S(2) => \acc_fu_66[28]_i_3_n_0\,
      S(1) => \acc_fu_66[28]_i_4_n_0\,
      S(0) => \acc_fu_66[28]_i_5_n_0\
    );
\acc_fu_66_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[28]_i_1_n_6\,
      Q => acc_fu_66_reg(29),
      R => ap_condition_185
    );
\acc_fu_66_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y[0]_INST_0_n_5\,
      Q => acc_fu_66_reg(2),
      R => ap_condition_185
    );
\acc_fu_66_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[28]_i_1_n_5\,
      Q => acc_fu_66_reg(30),
      R => ap_condition_185
    );
\acc_fu_66_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[28]_i_1_n_4\,
      Q => acc_fu_66_reg(31),
      R => ap_condition_185
    );
\acc_fu_66_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y[0]_INST_0_n_4\,
      Q => acc_fu_66_reg(3),
      R => ap_condition_185
    );
\acc_fu_66_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[4]_i_1_n_7\,
      Q => acc_fu_66_reg(4),
      R => ap_condition_185
    );
\acc_fu_66_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[0]_INST_0_n_0\,
      CO(3) => \acc_fu_66_reg[4]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[4]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[4]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(7 downto 4),
      O(3) => \acc_fu_66_reg[4]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[4]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[4]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[4]_i_1_n_7\,
      S(3) => \acc_fu_66[4]_i_2_n_0\,
      S(2) => \acc_fu_66[4]_i_3_n_0\,
      S(1) => \acc_fu_66[4]_i_4_n_0\,
      S(0) => \acc_fu_66[4]_i_5_n_0\
    );
\acc_fu_66_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[4]_i_1_n_6\,
      Q => acc_fu_66_reg(5),
      R => ap_condition_185
    );
\acc_fu_66_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[4]_i_1_n_5\,
      Q => acc_fu_66_reg(6),
      R => ap_condition_185
    );
\acc_fu_66_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[4]_i_1_n_4\,
      Q => acc_fu_66_reg(7),
      R => ap_condition_185
    );
\acc_fu_66_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[8]_i_1_n_7\,
      Q => acc_fu_66_reg(8),
      R => ap_condition_185
    );
\acc_fu_66_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_66_reg[4]_i_1_n_0\,
      CO(3) => \acc_fu_66_reg[8]_i_1_n_0\,
      CO(2) => \acc_fu_66_reg[8]_i_1_n_1\,
      CO(1) => \acc_fu_66_reg[8]_i_1_n_2\,
      CO(0) => \acc_fu_66_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(11 downto 8),
      O(3) => \acc_fu_66_reg[8]_i_1_n_4\,
      O(2) => \acc_fu_66_reg[8]_i_1_n_5\,
      O(1) => \acc_fu_66_reg[8]_i_1_n_6\,
      O(0) => \acc_fu_66_reg[8]_i_1_n_7\,
      S(3) => \acc_fu_66[8]_i_2_n_0\,
      S(2) => \acc_fu_66[8]_i_3_n_0\,
      S(1) => \acc_fu_66[8]_i_4_n_0\,
      S(0) => \acc_fu_66[8]_i_5_n_0\
    );
\acc_fu_66_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \acc_fu_66_reg[8]_i_1_n_6\,
      Q => acc_fu_66_reg(9),
      R => ap_condition_185
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => fir_io_s_axi_U_n_9,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => ap_loop_exit_ready,
      Q => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0
    );
\ap_loop_exit_ready_pp0_iter3_reg_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0,
      Q => ap_loop_exit_ready_pp0_iter3_reg,
      R => '0'
    );
fir_io_s_axi_U: entity work.fir_TOP_0_fir_TOP_fir_io_s_axi
     port map (
      B(2) => fir_io_s_axi_U_n_2,
      B(1) => fir_io_s_axi_U_n_3,
      B(0) => fir_io_s_axi_U_n_4,
      D(3) => fir_io_s_axi_U_n_13,
      D(2) => fir_io_s_axi_U_n_14,
      D(1) => fir_io_s_axi_U_n_15,
      D(0) => fir_io_s_axi_U_n_16,
      E(0) => i_fu_62,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_fir_io_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_fir_io_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_fir_io_WREADY,
      Q(4) => \i_fu_62_reg_n_0_[4]\,
      Q(3) => \i_fu_62_reg_n_0_[3]\,
      Q(2) => \i_fu_62_reg_n_0_[2]\,
      Q(1) => \i_fu_62_reg_n_0_[1]\,
      Q(0) => \i_fu_62_reg_n_0_[0]\,
      WEA(0) => shift_reg_we1,
      WEBWE(0) => ap_enable_reg_pp0_iter1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      ap_loop_exit_ready_pp0_iter3_reg => ap_loop_exit_ready_pp0_iter3_reg,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => fir_io_s_axi_U_n_8,
      ap_rst_n_1 => fir_io_s_axi_U_n_9,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      interrupt => interrupt,
      s_axi_fir_io_ARADDR(3 downto 0) => s_axi_fir_io_ARADDR(3 downto 0),
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(3 downto 0) => s_axi_fir_io_AWADDR(3 downto 0),
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
      s_axi_fir_io_RDATA(5) => \^s_axi_fir_io_rdata\(9),
      s_axi_fir_io_RDATA(4) => \^s_axi_fir_io_rdata\(7),
      s_axi_fir_io_RDATA(3 downto 0) => \^s_axi_fir_io_rdata\(3 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
      s_axi_fir_io_WDATA(2) => s_axi_fir_io_WDATA(7),
      s_axi_fir_io_WDATA(1 downto 0) => s_axi_fir_io_WDATA(1 downto 0),
      s_axi_fir_io_WSTRB(0) => s_axi_fir_io_WSTRB(0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID,
      shift_reg_ce1 => shift_reg_ce1,
      tmp_fu_141_p35_in => tmp_fu_141_p35_in
    );
flow_control_loop_pipe_U: entity work.fir_TOP_0_fir_TOP_flow_control_loop_pipe
     port map (
      ADDRARDADDR(3) => flow_control_loop_pipe_U_n_6,
      ADDRARDADDR(2) => flow_control_loop_pipe_U_n_7,
      ADDRARDADDR(1) => flow_control_loop_pipe_U_n_8,
      ADDRARDADDR(0) => flow_control_loop_pipe_U_n_9,
      B(2) => flow_control_loop_pipe_U_n_1,
      B(1) => flow_control_loop_pipe_U_n_2,
      B(0) => flow_control_loop_pipe_U_n_3,
      D(4) => flow_control_loop_pipe_U_n_11,
      D(3) => flow_control_loop_pipe_U_n_12,
      D(2) => flow_control_loop_pipe_U_n_13,
      D(1) => flow_control_loop_pipe_U_n_14,
      D(0) => flow_control_loop_pipe_U_n_15,
      E(0) => tmp_fu_141_p3,
      Q(4) => \i_fu_62_reg_n_0_[4]\,
      Q(3) => \i_fu_62_reg_n_0_[3]\,
      Q(2) => \i_fu_62_reg_n_0_[2]\,
      Q(1) => \i_fu_62_reg_n_0_[1]\,
      Q(0) => \i_fu_62_reg_n_0_[0]\,
      ap_clk => ap_clk,
      ap_condition_185 => ap_condition_185,
      ap_loop_exit_ready => ap_loop_exit_ready,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0 => fir_io_s_axi_U_n_8,
      ap_start => ap_start
    );
\i_cast1_reg_226_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_fu_141_p3,
      D => fir_io_s_axi_U_n_16,
      Q => \i_cast1_reg_226_reg_n_0_[0]\,
      R => '0'
    );
\i_cast1_reg_226_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_fu_141_p3,
      D => fir_io_s_axi_U_n_15,
      Q => \i_cast1_reg_226_reg_n_0_[1]\,
      R => '0'
    );
\i_cast1_reg_226_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_fu_141_p3,
      D => fir_io_s_axi_U_n_14,
      Q => \i_cast1_reg_226_reg_n_0_[2]\,
      R => '0'
    );
\i_cast1_reg_226_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_fu_141_p3,
      D => fir_io_s_axi_U_n_13,
      Q => \i_cast1_reg_226_reg_n_0_[3]\,
      R => '0'
    );
\i_fu_62_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_15,
      Q => \i_fu_62_reg_n_0_[0]\,
      R => '0'
    );
\i_fu_62_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_14,
      Q => \i_fu_62_reg_n_0_[1]\,
      R => '0'
    );
\i_fu_62_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_13,
      Q => \i_fu_62_reg_n_0_[2]\,
      R => '0'
    );
\i_fu_62_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_12,
      Q => \i_fu_62_reg_n_0_[3]\,
      R => '0'
    );
\i_fu_62_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_11,
      Q => \i_fu_62_reg_n_0_[4]\,
      R => '0'
    );
\icmp_ln16_reg_231_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => icmp_ln16_reg_231,
      Q => icmp_ln16_reg_231_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln16_reg_231_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => icmp_ln16_reg_231_pp0_iter1_reg,
      Q => icmp_ln16_reg_231_pp0_iter2_reg,
      R => '0'
    );
\icmp_ln16_reg_231_pp0_iter3_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => icmp_ln16_reg_231_pp0_iter2_reg,
      Q => icmp_ln16_reg_231_pp0_iter3_reg,
      R => '0'
    );
\icmp_ln16_reg_231_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_fu_141_p3,
      D => flow_control_loop_pipe_U_n_11,
      Q => icmp_ln16_reg_231,
      R => '0'
    );
mul_7s_32s_32_2_1_U1: entity work.fir_TOP_0_fir_TOP_mul_7s_32s_32_2_1
     port map (
      B(5) => flow_control_loop_pipe_U_n_1,
      B(4) => flow_control_loop_pipe_U_n_2,
      B(3) => fir_io_s_axi_U_n_2,
      B(2) => fir_io_s_axi_U_n_3,
      B(1) => flow_control_loop_pipe_U_n_3,
      B(0) => fir_io_s_axi_U_n_4,
      D(31 downto 0) => \buff0_reg__0\(31 downto 0),
      DOADO(31 downto 0) => shift_reg_q1(31 downto 0),
      WEBWE(0) => ap_enable_reg_pp0_iter1,
      ap_clk => ap_clk,
      ap_start => ap_start,
      icmp_ln16_reg_231 => icmp_ln16_reg_231,
      shift_reg_we0 => shift_reg_we0
    );
\mul_ln21_reg_260[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => icmp_ln16_reg_231_pp0_iter2_reg,
      O => p_0_in
    );
\mul_ln21_reg_260_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(0),
      Q => mul_ln21_reg_260(0),
      R => '0'
    );
\mul_ln21_reg_260_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(10),
      Q => mul_ln21_reg_260(10),
      R => '0'
    );
\mul_ln21_reg_260_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(11),
      Q => mul_ln21_reg_260(11),
      R => '0'
    );
\mul_ln21_reg_260_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(12),
      Q => mul_ln21_reg_260(12),
      R => '0'
    );
\mul_ln21_reg_260_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(13),
      Q => mul_ln21_reg_260(13),
      R => '0'
    );
\mul_ln21_reg_260_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(14),
      Q => mul_ln21_reg_260(14),
      R => '0'
    );
\mul_ln21_reg_260_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(15),
      Q => mul_ln21_reg_260(15),
      R => '0'
    );
\mul_ln21_reg_260_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(16),
      Q => mul_ln21_reg_260(16),
      R => '0'
    );
\mul_ln21_reg_260_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(17),
      Q => mul_ln21_reg_260(17),
      R => '0'
    );
\mul_ln21_reg_260_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(18),
      Q => mul_ln21_reg_260(18),
      R => '0'
    );
\mul_ln21_reg_260_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(19),
      Q => mul_ln21_reg_260(19),
      R => '0'
    );
\mul_ln21_reg_260_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(1),
      Q => mul_ln21_reg_260(1),
      R => '0'
    );
\mul_ln21_reg_260_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(20),
      Q => mul_ln21_reg_260(20),
      R => '0'
    );
\mul_ln21_reg_260_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(21),
      Q => mul_ln21_reg_260(21),
      R => '0'
    );
\mul_ln21_reg_260_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(22),
      Q => mul_ln21_reg_260(22),
      R => '0'
    );
\mul_ln21_reg_260_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(23),
      Q => mul_ln21_reg_260(23),
      R => '0'
    );
\mul_ln21_reg_260_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(24),
      Q => mul_ln21_reg_260(24),
      R => '0'
    );
\mul_ln21_reg_260_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(25),
      Q => mul_ln21_reg_260(25),
      R => '0'
    );
\mul_ln21_reg_260_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(26),
      Q => mul_ln21_reg_260(26),
      R => '0'
    );
\mul_ln21_reg_260_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(27),
      Q => mul_ln21_reg_260(27),
      R => '0'
    );
\mul_ln21_reg_260_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(28),
      Q => mul_ln21_reg_260(28),
      R => '0'
    );
\mul_ln21_reg_260_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(29),
      Q => mul_ln21_reg_260(29),
      R => '0'
    );
\mul_ln21_reg_260_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(2),
      Q => mul_ln21_reg_260(2),
      R => '0'
    );
\mul_ln21_reg_260_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(30),
      Q => mul_ln21_reg_260(30),
      R => '0'
    );
\mul_ln21_reg_260_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(31),
      Q => mul_ln21_reg_260(31),
      R => '0'
    );
\mul_ln21_reg_260_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(3),
      Q => mul_ln21_reg_260(3),
      R => '0'
    );
\mul_ln21_reg_260_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(4),
      Q => mul_ln21_reg_260(4),
      R => '0'
    );
\mul_ln21_reg_260_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(5),
      Q => mul_ln21_reg_260(5),
      R => '0'
    );
\mul_ln21_reg_260_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(6),
      Q => mul_ln21_reg_260(6),
      R => '0'
    );
\mul_ln21_reg_260_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(7),
      Q => mul_ln21_reg_260(7),
      R => '0'
    );
\mul_ln21_reg_260_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(8),
      Q => mul_ln21_reg_260(8),
      R => '0'
    );
\mul_ln21_reg_260_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \buff0_reg__0\(9),
      Q => mul_ln21_reg_260(9),
      R => '0'
    );
shift_reg_U: entity work.fir_TOP_0_fir_TOP_shift_reg_RAM_AUTO_1R1W
     port map (
      ADDRARDADDR(3) => flow_control_loop_pipe_U_n_6,
      ADDRARDADDR(2) => flow_control_loop_pipe_U_n_7,
      ADDRARDADDR(1) => flow_control_loop_pipe_U_n_8,
      ADDRARDADDR(0) => flow_control_loop_pipe_U_n_9,
      DOADO(31 downto 0) => shift_reg_q1(31 downto 0),
      Q(3) => \i_cast1_reg_226_reg_n_0_[3]\,
      Q(2) => \i_cast1_reg_226_reg_n_0_[2]\,
      Q(1) => \i_cast1_reg_226_reg_n_0_[1]\,
      Q(0) => \i_cast1_reg_226_reg_n_0_[0]\,
      WEA(0) => shift_reg_we1,
      WEBWE(0) => ap_enable_reg_pp0_iter1,
      ap_clk => ap_clk,
      shift_reg_ce1 => shift_reg_ce1,
      shift_reg_we0 => shift_reg_we0,
      x(31 downto 0) => x(31 downto 0)
    );
\tmp_reg_222_pp0_iter1_reg_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => tmp_fu_141_p35_in,
      Q => \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0\
    );
\tmp_reg_222_pp0_iter2_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_reg_222_pp0_iter1_reg_reg[0]_srl2_n_0\,
      Q => y_ap_vld,
      R => '0'
    );
\y[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y[0]_INST_0_n_0\,
      CO(2) => \y[0]_INST_0_n_1\,
      CO(1) => \y[0]_INST_0_n_2\,
      CO(0) => \y[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(3 downto 0),
      O(3) => \y[0]_INST_0_n_4\,
      O(2) => \y[0]_INST_0_n_5\,
      O(1) => \y[0]_INST_0_n_6\,
      O(0) => y(0),
      S(3) => \y[0]_INST_0_i_1_n_0\,
      S(2) => \y[0]_INST_0_i_2_n_0\,
      S(1) => \y[0]_INST_0_i_3_n_0\,
      S(0) => \y[0]_INST_0_i_4_n_0\
    );
\y[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(3),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(3),
      O => \y[0]_INST_0_i_1_n_0\
    );
\y[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(2),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(2),
      O => \y[0]_INST_0_i_2_n_0\
    );
\y[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(1),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(1),
      O => \y[0]_INST_0_i_3_n_0\
    );
\y[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(0),
      O => \y[0]_INST_0_i_4_n_0\
    );
\y[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[8]_INST_0_n_0\,
      CO(3) => \y[12]_INST_0_n_0\,
      CO(2) => \y[12]_INST_0_n_1\,
      CO(1) => \y[12]_INST_0_n_2\,
      CO(0) => \y[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(15 downto 12),
      O(3 downto 0) => y(15 downto 12),
      S(3) => \y[12]_INST_0_i_1_n_0\,
      S(2) => \y[12]_INST_0_i_2_n_0\,
      S(1) => \y[12]_INST_0_i_3_n_0\,
      S(0) => \y[12]_INST_0_i_4_n_0\
    );
\y[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(15),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(15),
      O => \y[12]_INST_0_i_1_n_0\
    );
\y[12]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(14),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(14),
      O => \y[12]_INST_0_i_2_n_0\
    );
\y[12]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(13),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(13),
      O => \y[12]_INST_0_i_3_n_0\
    );
\y[12]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(12),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(12),
      O => \y[12]_INST_0_i_4_n_0\
    );
\y[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[12]_INST_0_n_0\,
      CO(3) => \y[16]_INST_0_n_0\,
      CO(2) => \y[16]_INST_0_n_1\,
      CO(1) => \y[16]_INST_0_n_2\,
      CO(0) => \y[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(19 downto 16),
      O(3 downto 0) => y(19 downto 16),
      S(3) => \y[16]_INST_0_i_1_n_0\,
      S(2) => \y[16]_INST_0_i_2_n_0\,
      S(1) => \y[16]_INST_0_i_3_n_0\,
      S(0) => \y[16]_INST_0_i_4_n_0\
    );
\y[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(19),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(19),
      O => \y[16]_INST_0_i_1_n_0\
    );
\y[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(18),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(18),
      O => \y[16]_INST_0_i_2_n_0\
    );
\y[16]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(17),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(17),
      O => \y[16]_INST_0_i_3_n_0\
    );
\y[16]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(16),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(16),
      O => \y[16]_INST_0_i_4_n_0\
    );
\y[1]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y[1]_INST_0_n_0\,
      CO(2) => \y[1]_INST_0_n_1\,
      CO(1) => \y[1]_INST_0_n_2\,
      CO(0) => \y[1]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(3 downto 0),
      O(3 downto 1) => y(3 downto 1),
      O(0) => \NLW_y[1]_INST_0_O_UNCONNECTED\(0),
      S(3) => \y[1]_INST_0_i_1_n_0\,
      S(2) => \y[1]_INST_0_i_2_n_0\,
      S(1) => \y[1]_INST_0_i_3_n_0\,
      S(0) => \y[1]_INST_0_i_4_n_0\
    );
\y[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(3),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(3),
      O => \y[1]_INST_0_i_1_n_0\
    );
\y[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(2),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(2),
      O => \y[1]_INST_0_i_2_n_0\
    );
\y[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(1),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(1),
      O => \y[1]_INST_0_i_3_n_0\
    );
\y[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(0),
      O => \y[1]_INST_0_i_4_n_0\
    );
\y[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[16]_INST_0_n_0\,
      CO(3) => \y[20]_INST_0_n_0\,
      CO(2) => \y[20]_INST_0_n_1\,
      CO(1) => \y[20]_INST_0_n_2\,
      CO(0) => \y[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(23 downto 20),
      O(3 downto 0) => y(23 downto 20),
      S(3) => \y[20]_INST_0_i_1_n_0\,
      S(2) => \y[20]_INST_0_i_2_n_0\,
      S(1) => \y[20]_INST_0_i_3_n_0\,
      S(0) => \y[20]_INST_0_i_4_n_0\
    );
\y[20]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(23),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(23),
      O => \y[20]_INST_0_i_1_n_0\
    );
\y[20]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(22),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(22),
      O => \y[20]_INST_0_i_2_n_0\
    );
\y[20]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(21),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(21),
      O => \y[20]_INST_0_i_3_n_0\
    );
\y[20]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(20),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(20),
      O => \y[20]_INST_0_i_4_n_0\
    );
\y[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[20]_INST_0_n_0\,
      CO(3) => \y[24]_INST_0_n_0\,
      CO(2) => \y[24]_INST_0_n_1\,
      CO(1) => \y[24]_INST_0_n_2\,
      CO(0) => \y[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(27 downto 24),
      O(3 downto 0) => y(27 downto 24),
      S(3) => \y[24]_INST_0_i_1_n_0\,
      S(2) => \y[24]_INST_0_i_2_n_0\,
      S(1) => \y[24]_INST_0_i_3_n_0\,
      S(0) => \y[24]_INST_0_i_4_n_0\
    );
\y[24]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(27),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(27),
      O => \y[24]_INST_0_i_1_n_0\
    );
\y[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(26),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(26),
      O => \y[24]_INST_0_i_2_n_0\
    );
\y[24]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(25),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(25),
      O => \y[24]_INST_0_i_3_n_0\
    );
\y[24]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(24),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(24),
      O => \y[24]_INST_0_i_4_n_0\
    );
\y[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[24]_INST_0_n_0\,
      CO(3) => \NLW_y[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \y[28]_INST_0_n_1\,
      CO(1) => \y[28]_INST_0_n_2\,
      CO(0) => \y[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => acc_fu_66_reg(30 downto 28),
      O(3 downto 0) => y(31 downto 28),
      S(3) => \y[28]_INST_0_i_1_n_0\,
      S(2) => \y[28]_INST_0_i_2_n_0\,
      S(1) => \y[28]_INST_0_i_3_n_0\,
      S(0) => \y[28]_INST_0_i_4_n_0\
    );
\y[28]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(31),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(31),
      O => \y[28]_INST_0_i_1_n_0\
    );
\y[28]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(30),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(30),
      O => \y[28]_INST_0_i_2_n_0\
    );
\y[28]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(29),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(29),
      O => \y[28]_INST_0_i_3_n_0\
    );
\y[28]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(28),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(28),
      O => \y[28]_INST_0_i_4_n_0\
    );
\y[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[1]_INST_0_n_0\,
      CO(3) => \y[4]_INST_0_n_0\,
      CO(2) => \y[4]_INST_0_n_1\,
      CO(1) => \y[4]_INST_0_n_2\,
      CO(0) => \y[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(7 downto 4),
      O(3 downto 0) => y(7 downto 4),
      S(3) => \y[4]_INST_0_i_1_n_0\,
      S(2) => \y[4]_INST_0_i_2_n_0\,
      S(1) => \y[4]_INST_0_i_3_n_0\,
      S(0) => \y[4]_INST_0_i_4_n_0\
    );
\y[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(7),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(7),
      O => \y[4]_INST_0_i_1_n_0\
    );
\y[4]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(6),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(6),
      O => \y[4]_INST_0_i_2_n_0\
    );
\y[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(5),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(5),
      O => \y[4]_INST_0_i_3_n_0\
    );
\y[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(4),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(4),
      O => \y[4]_INST_0_i_4_n_0\
    );
\y[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y[4]_INST_0_n_0\,
      CO(3) => \y[8]_INST_0_n_0\,
      CO(2) => \y[8]_INST_0_n_1\,
      CO(1) => \y[8]_INST_0_n_2\,
      CO(0) => \y[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_fu_66_reg(11 downto 8),
      O(3 downto 0) => y(11 downto 8),
      S(3) => \y[8]_INST_0_i_1_n_0\,
      S(2) => \y[8]_INST_0_i_2_n_0\,
      S(1) => \y[8]_INST_0_i_3_n_0\,
      S(0) => \y[8]_INST_0_i_4_n_0\
    );
\y[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(11),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(11),
      O => \y[8]_INST_0_i_1_n_0\
    );
\y[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(10),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(10),
      O => \y[8]_INST_0_i_2_n_0\
    );
\y[8]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(9),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(9),
      O => \y[8]_INST_0_i_3_n_0\
    );
\y[8]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => mul_ln21_reg_260(8),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => icmp_ln16_reg_231_pp0_iter3_reg,
      I3 => acc_fu_66_reg(8),
      O => \y[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_TOP_0 is
  port (
    y_ap_vld : out STD_LOGIC;
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fir_TOP_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_TOP_0 : entity is "fir_TOP_0,fir_TOP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fir_TOP_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fir_TOP_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fir_TOP_0 : entity is "fir_TOP,Vivado 2023.1";
  attribute hls_module : string;
  attribute hls_module of fir_TOP_0 : entity is "yes";
end fir_TOP_0;

architecture STRUCTURE of fir_TOP_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_fir_io_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_s_axi_fir_io_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_inst_s_axi_fir_io_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH : integer;
  attribute C_S_AXI_FIR_IO_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_fir_io_RREADY : signal is "XIL_INTERFACENAME s_axi_fir_io, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB";
  attribute X_INTERFACE_INFO of x : signal is "xilinx.com:signal:data:1.0 x DATA";
  attribute X_INTERFACE_PARAMETER of x : signal is "XIL_INTERFACENAME x, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of y : signal is "xilinx.com:signal:data:1.0 y DATA";
  attribute X_INTERFACE_PARAMETER of y : signal is "XIL_INTERFACENAME y, LAYERED_METADATA undef";
begin
  s_axi_fir_io_BRESP(1) <= \<const0>\;
  s_axi_fir_io_BRESP(0) <= \<const0>\;
  s_axi_fir_io_RDATA(31) <= \<const0>\;
  s_axi_fir_io_RDATA(30) <= \<const0>\;
  s_axi_fir_io_RDATA(29) <= \<const0>\;
  s_axi_fir_io_RDATA(28) <= \<const0>\;
  s_axi_fir_io_RDATA(27) <= \<const0>\;
  s_axi_fir_io_RDATA(26) <= \<const0>\;
  s_axi_fir_io_RDATA(25) <= \<const0>\;
  s_axi_fir_io_RDATA(24) <= \<const0>\;
  s_axi_fir_io_RDATA(23) <= \<const0>\;
  s_axi_fir_io_RDATA(22) <= \<const0>\;
  s_axi_fir_io_RDATA(21) <= \<const0>\;
  s_axi_fir_io_RDATA(20) <= \<const0>\;
  s_axi_fir_io_RDATA(19) <= \<const0>\;
  s_axi_fir_io_RDATA(18) <= \<const0>\;
  s_axi_fir_io_RDATA(17) <= \<const0>\;
  s_axi_fir_io_RDATA(16) <= \<const0>\;
  s_axi_fir_io_RDATA(15) <= \<const0>\;
  s_axi_fir_io_RDATA(14) <= \<const0>\;
  s_axi_fir_io_RDATA(13) <= \<const0>\;
  s_axi_fir_io_RDATA(12) <= \<const0>\;
  s_axi_fir_io_RDATA(11) <= \<const0>\;
  s_axi_fir_io_RDATA(10) <= \<const0>\;
  s_axi_fir_io_RDATA(9) <= \^s_axi_fir_io_rdata\(9);
  s_axi_fir_io_RDATA(8) <= \<const0>\;
  s_axi_fir_io_RDATA(7) <= \^s_axi_fir_io_rdata\(7);
  s_axi_fir_io_RDATA(6) <= \<const0>\;
  s_axi_fir_io_RDATA(5) <= \<const0>\;
  s_axi_fir_io_RDATA(4) <= \<const0>\;
  s_axi_fir_io_RDATA(3 downto 0) <= \^s_axi_fir_io_rdata\(3 downto 0);
  s_axi_fir_io_RRESP(1) <= \<const0>\;
  s_axi_fir_io_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.fir_TOP_0_fir_TOP
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_fir_io_ARADDR(3 downto 0) => s_axi_fir_io_ARADDR(3 downto 0),
      s_axi_fir_io_ARREADY => s_axi_fir_io_ARREADY,
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(3 downto 0) => s_axi_fir_io_AWADDR(3 downto 0),
      s_axi_fir_io_AWREADY => s_axi_fir_io_AWREADY,
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_BRESP(1 downto 0) => NLW_inst_s_axi_fir_io_BRESP_UNCONNECTED(1 downto 0),
      s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
      s_axi_fir_io_RDATA(31 downto 10) => NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED(31 downto 10),
      s_axi_fir_io_RDATA(9) => \^s_axi_fir_io_rdata\(9),
      s_axi_fir_io_RDATA(8) => NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED(8),
      s_axi_fir_io_RDATA(7) => \^s_axi_fir_io_rdata\(7),
      s_axi_fir_io_RDATA(6 downto 4) => NLW_inst_s_axi_fir_io_RDATA_UNCONNECTED(6 downto 4),
      s_axi_fir_io_RDATA(3 downto 0) => \^s_axi_fir_io_rdata\(3 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_RRESP(1 downto 0) => NLW_inst_s_axi_fir_io_RRESP_UNCONNECTED(1 downto 0),
      s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
      s_axi_fir_io_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_fir_io_WDATA(7) => s_axi_fir_io_WDATA(7),
      s_axi_fir_io_WDATA(6 downto 2) => B"00000",
      s_axi_fir_io_WDATA(1 downto 0) => s_axi_fir_io_WDATA(1 downto 0),
      s_axi_fir_io_WREADY => s_axi_fir_io_WREADY,
      s_axi_fir_io_WSTRB(3 downto 1) => B"000",
      s_axi_fir_io_WSTRB(0) => s_axi_fir_io_WSTRB(0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID,
      x(31 downto 0) => x(31 downto 0),
      y(31 downto 0) => y(31 downto 0),
      y_ap_vld => y_ap_vld
    );
end STRUCTURE;
