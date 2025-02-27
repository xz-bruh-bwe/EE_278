// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module lenet_predict_fully_connected_Pipeline_VITIS_LOOP_58_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sum,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        zext_ln56,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        sext_ln56,
        zext_ln57,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        grp_fu_250_p_din0,
        grp_fu_250_p_din1,
        grp_fu_250_p_opcode,
        grp_fu_250_p_dout0,
        grp_fu_250_p_ce,
        grp_fu_254_p_din0,
        grp_fu_254_p_din1,
        grp_fu_254_p_dout0,
        grp_fu_254_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sum;
output  [6:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;
input  [6:0] zext_ln56;
output  [8:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
input  [61:0] sext_ln56;
input  [15:0] zext_ln57;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [31:0] m_axi_gmem_WDATA;
output  [3:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [31:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [8:0] m_axi_gmem_RFIFONUM;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
output  [31:0] grp_fu_250_p_din0;
output  [31:0] grp_fu_250_p_din1;
output  [0:0] grp_fu_250_p_opcode;
input  [31:0] grp_fu_250_p_dout0;
output   grp_fu_250_p_ce;
output  [31:0] grp_fu_254_p_din0;
output  [31:0] grp_fu_254_p_din1;
input  [31:0] grp_fu_254_p_dout0;
output   grp_fu_254_p_ce;

reg ap_idle;
reg output_r_ce0;
reg output_r_we0;
reg input_r_ce0;
reg m_axi_gmem_ARVALID;
reg m_axi_gmem_RREADY;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state6_pp0_stage2_iter1;
wire    ap_block_state9_pp0_stage2_iter2;
wire    ap_block_state12_pp0_stage2_iter3;
wire    ap_block_state15_pp0_stage2_iter4;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln58_reg_259;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem_blk_n_AR;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
reg    gmem_blk_n_R;
wire    ap_block_pp0_stage0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
reg    ap_block_state10_pp0_stage0_iter3;
wire    ap_block_state13_pp0_stage0_iter4;
wire    ap_block_state16_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_11001;
reg   [8:0] j_1_reg_249;
reg   [8:0] j_1_reg_249_pp0_iter1_reg;
reg   [8:0] j_1_reg_249_pp0_iter2_reg;
reg   [6:0] output_addr_reg_254;
reg   [6:0] output_addr_reg_254_pp0_iter1_reg;
reg   [6:0] output_addr_reg_254_pp0_iter2_reg;
reg   [6:0] output_addr_reg_254_pp0_iter3_reg;
reg   [6:0] output_addr_reg_254_pp0_iter4_reg;
reg   [6:0] output_addr_reg_254_pp0_iter5_reg;
wire   [0:0] icmp_ln58_fu_169_p2;
reg   [0:0] icmp_ln58_reg_259_pp0_iter1_reg;
reg   [0:0] icmp_ln58_reg_259_pp0_iter2_reg;
reg   [0:0] icmp_ln58_reg_259_pp0_iter3_reg;
reg   [0:0] icmp_ln58_reg_259_pp0_iter4_reg;
reg   [63:0] gmem_addr_reg_263;
wire   [0:0] ifzero_fu_207_p2;
reg   [0:0] ifzero_reg_269;
reg   [0:0] ifzero_reg_269_pp0_iter1_reg;
reg   [0:0] ifzero_reg_269_pp0_iter2_reg;
reg   [0:0] ifzero_reg_269_pp0_iter3_reg;
reg   [0:0] ifzero_reg_269_pp0_iter4_reg;
reg   [0:0] ifzero_reg_269_pp0_iter5_reg;
reg   [31:0] gmem_addr_read_reg_278;
wire    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_state2_io;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_state8_pp0_stage1_iter2;
wire    ap_block_state11_pp0_stage1_iter3;
wire    ap_block_state14_pp0_stage1_iter4;
wire    ap_block_state17_pp0_stage1_iter5;
reg    ap_block_pp0_stage1_11001;
wire   [31:0] bitcast_ln59_fu_222_p1;
reg   [31:0] mul9_reg_293;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln56_cast_fu_151_p1;
wire   [63:0] j_cast3_fu_218_p1;
wire  signed [63:0] sext_ln59_fu_197_p1;
reg   [31:0] sum_1_fu_64;
reg   [31:0] ap_sig_allocacmp_sum_1_load;
wire    ap_loop_init;
reg   [8:0] j_fu_68;
wire   [8:0] add_ln58_fu_175_p2;
reg   [8:0] ap_sig_allocacmp_j_1;
wire   [62:0] j_cast_fu_181_p1;
wire  signed [62:0] sext_ln56_cast_fu_147_p1;
wire   [62:0] add_ln59_fu_185_p2;
wire   [62:0] zext_ln57_cast_fu_143_p1;
wire   [62:0] add_ln59_1_fu_191_p2;
wire    ap_block_pp0_stage1_00001;
reg    grp_fu_133_ce;
wire    ap_block_pp0_stage2_11001;
reg    grp_fu_138_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage1;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

lenet_predict_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_fu_169_p2 == 1'd0))) begin
            j_fu_68 <= add_ln58_fu_175_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_68 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_1_fu_64 <= sum;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_1_fu_64 <= grp_fu_250_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem_addr_read_reg_278 <= m_axi_gmem_RDATA;
        icmp_ln58_reg_259 <= icmp_ln58_fu_169_p2;
        icmp_ln58_reg_259_pp0_iter1_reg <= icmp_ln58_reg_259;
        icmp_ln58_reg_259_pp0_iter2_reg <= icmp_ln58_reg_259_pp0_iter1_reg;
        icmp_ln58_reg_259_pp0_iter3_reg <= icmp_ln58_reg_259_pp0_iter2_reg;
        icmp_ln58_reg_259_pp0_iter4_reg <= icmp_ln58_reg_259_pp0_iter3_reg;
        ifzero_reg_269_pp0_iter1_reg <= ifzero_reg_269;
        ifzero_reg_269_pp0_iter2_reg <= ifzero_reg_269_pp0_iter1_reg;
        ifzero_reg_269_pp0_iter3_reg <= ifzero_reg_269_pp0_iter2_reg;
        ifzero_reg_269_pp0_iter4_reg <= ifzero_reg_269_pp0_iter3_reg;
        ifzero_reg_269_pp0_iter5_reg <= ifzero_reg_269_pp0_iter4_reg;
        j_1_reg_249 <= ap_sig_allocacmp_j_1;
        j_1_reg_249_pp0_iter1_reg <= j_1_reg_249;
        j_1_reg_249_pp0_iter2_reg <= j_1_reg_249_pp0_iter1_reg;
        mul9_reg_293 <= grp_fu_254_p_dout0;
        output_addr_reg_254 <= zext_ln56_cast_fu_151_p1;
        output_addr_reg_254_pp0_iter1_reg <= output_addr_reg_254;
        output_addr_reg_254_pp0_iter2_reg <= output_addr_reg_254_pp0_iter1_reg;
        output_addr_reg_254_pp0_iter3_reg <= output_addr_reg_254_pp0_iter2_reg;
        output_addr_reg_254_pp0_iter4_reg <= output_addr_reg_254_pp0_iter3_reg;
        output_addr_reg_254_pp0_iter5_reg <= output_addr_reg_254_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln58_fu_169_p2 == 1'd0))) begin
        gmem_addr_reg_263 <= sext_ln59_fu_197_p1;
        ifzero_reg_269 <= ifzero_fu_207_p2;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_259 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln58_reg_259_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 9'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_sum_1_load = grp_fu_250_p_dout0;
    end else begin
        ap_sig_allocacmp_sum_1_load = sum_1_fu_64;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_259 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        gmem_blk_n_AR = m_axi_gmem_ARREADY;
    end else begin
        gmem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem_blk_n_R = m_axi_gmem_RVALID;
    end else begin
        gmem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_133_ce = 1'b1;
    end else begin
        grp_fu_133_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_138_ce = 1'b1;
    end else begin
        grp_fu_138_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln58_reg_259 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m_axi_gmem_ARVALID = 1'b1;
    end else begin
        m_axi_gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem_RREADY = 1'b1;
    end else begin
        m_axi_gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (ifzero_reg_269_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln58_fu_175_p2 = (ap_sig_allocacmp_j_1 + 9'd1);

assign add_ln59_1_fu_191_p2 = (add_ln59_fu_185_p2 + zext_ln57_cast_fu_143_p1);

assign add_ln59_fu_185_p2 = ($signed(j_cast_fu_181_p1) + $signed(sext_ln56_cast_fu_147_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (m_axi_gmem_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (m_axi_gmem_RVALID == 1'b0));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_io));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_io));
end

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state10_pp0_stage0_iter3 = (m_axi_gmem_RVALID == 1'b0);
end

assign ap_block_state11_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage2_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_io = ((icmp_ln58_reg_259 == 1'd0) & (m_axi_gmem_ARREADY == 1'b0));
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign bitcast_ln59_fu_222_p1 = gmem_addr_read_reg_278;

assign grp_fu_250_p_ce = grp_fu_133_ce;

assign grp_fu_250_p_din0 = ap_sig_allocacmp_sum_1_load;

assign grp_fu_250_p_din1 = mul9_reg_293;

assign grp_fu_250_p_opcode = 2'd0;

assign grp_fu_254_p_ce = grp_fu_138_ce;

assign grp_fu_254_p_din0 = input_r_q0;

assign grp_fu_254_p_din1 = bitcast_ln59_fu_222_p1;

assign icmp_ln58_fu_169_p2 = ((ap_sig_allocacmp_j_1 == 9'd400) ? 1'b1 : 1'b0);

assign ifzero_fu_207_p2 = ((add_ln58_fu_175_p2 == 9'd400) ? 1'b1 : 1'b0);

assign input_r_address0 = j_cast3_fu_218_p1;

assign j_cast3_fu_218_p1 = j_1_reg_249_pp0_iter2_reg;

assign j_cast_fu_181_p1 = ap_sig_allocacmp_j_1;

assign m_axi_gmem_ARADDR = gmem_addr_reg_263;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd1;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_WDATA = 32'd0;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 4'd0;

assign m_axi_gmem_WUSER = 1'd0;

assign m_axi_gmem_WVALID = 1'b0;

assign output_r_address0 = output_addr_reg_254_pp0_iter5_reg;

assign output_r_d0 = grp_fu_250_p_dout0;

assign sext_ln56_cast_fu_147_p1 = $signed(sext_ln56);

assign sext_ln59_fu_197_p1 = $signed(add_ln59_1_fu_191_p2);

assign zext_ln56_cast_fu_151_p1 = zext_ln56;

assign zext_ln57_cast_fu_143_p1 = zext_ln57;

endmodule //lenet_predict_fully_connected_Pipeline_VITIS_LOOP_58_2
