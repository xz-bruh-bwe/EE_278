// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module lenet_predict_control_r_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [63:0]                   input_74,
    output wire [63:0]                   conv1_filters_74,
    output wire [63:0]                   conv1_bias_74,
    output wire [63:0]                   conv2_filters_74,
    output wire [63:0]                   conv2_bias_74,
    output wire [63:0]                   fc1_weights_74,
    output wire [63:0]                   fc1_bias_74,
    output wire [63:0]                   fc2_weights_74,
    output wire [63:0]                   fc2_bias_74,
    output wire [63:0]                   fc3_weights_74,
    output wire [63:0]                   fc3_bias_74
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_74
//        bit 31~0 - input_74[31:0] (Read/Write)
// 0x14 : Data signal of input_74
//        bit 31~0 - input_74[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of conv1_filters_74
//        bit 31~0 - conv1_filters_74[31:0] (Read/Write)
// 0x20 : Data signal of conv1_filters_74
//        bit 31~0 - conv1_filters_74[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of conv1_bias_74
//        bit 31~0 - conv1_bias_74[31:0] (Read/Write)
// 0x2c : Data signal of conv1_bias_74
//        bit 31~0 - conv1_bias_74[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of conv2_filters_74
//        bit 31~0 - conv2_filters_74[31:0] (Read/Write)
// 0x38 : Data signal of conv2_filters_74
//        bit 31~0 - conv2_filters_74[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of conv2_bias_74
//        bit 31~0 - conv2_bias_74[31:0] (Read/Write)
// 0x44 : Data signal of conv2_bias_74
//        bit 31~0 - conv2_bias_74[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of fc1_weights_74
//        bit 31~0 - fc1_weights_74[31:0] (Read/Write)
// 0x50 : Data signal of fc1_weights_74
//        bit 31~0 - fc1_weights_74[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of fc1_bias_74
//        bit 31~0 - fc1_bias_74[31:0] (Read/Write)
// 0x5c : Data signal of fc1_bias_74
//        bit 31~0 - fc1_bias_74[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of fc2_weights_74
//        bit 31~0 - fc2_weights_74[31:0] (Read/Write)
// 0x68 : Data signal of fc2_weights_74
//        bit 31~0 - fc2_weights_74[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of fc2_bias_74
//        bit 31~0 - fc2_bias_74[31:0] (Read/Write)
// 0x74 : Data signal of fc2_bias_74
//        bit 31~0 - fc2_bias_74[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of fc3_weights_74
//        bit 31~0 - fc3_weights_74[31:0] (Read/Write)
// 0x80 : Data signal of fc3_weights_74
//        bit 31~0 - fc3_weights_74[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of fc3_bias_74
//        bit 31~0 - fc3_bias_74[31:0] (Read/Write)
// 0x8c : Data signal of fc3_bias_74
//        bit 31~0 - fc3_bias_74[63:32] (Read/Write)
// 0x90 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_INPUT_74_DATA_0         = 8'h10,
    ADDR_INPUT_74_DATA_1         = 8'h14,
    ADDR_INPUT_74_CTRL           = 8'h18,
    ADDR_CONV1_FILTERS_74_DATA_0 = 8'h1c,
    ADDR_CONV1_FILTERS_74_DATA_1 = 8'h20,
    ADDR_CONV1_FILTERS_74_CTRL   = 8'h24,
    ADDR_CONV1_BIAS_74_DATA_0    = 8'h28,
    ADDR_CONV1_BIAS_74_DATA_1    = 8'h2c,
    ADDR_CONV1_BIAS_74_CTRL      = 8'h30,
    ADDR_CONV2_FILTERS_74_DATA_0 = 8'h34,
    ADDR_CONV2_FILTERS_74_DATA_1 = 8'h38,
    ADDR_CONV2_FILTERS_74_CTRL   = 8'h3c,
    ADDR_CONV2_BIAS_74_DATA_0    = 8'h40,
    ADDR_CONV2_BIAS_74_DATA_1    = 8'h44,
    ADDR_CONV2_BIAS_74_CTRL      = 8'h48,
    ADDR_FC1_WEIGHTS_74_DATA_0   = 8'h4c,
    ADDR_FC1_WEIGHTS_74_DATA_1   = 8'h50,
    ADDR_FC1_WEIGHTS_74_CTRL     = 8'h54,
    ADDR_FC1_BIAS_74_DATA_0      = 8'h58,
    ADDR_FC1_BIAS_74_DATA_1      = 8'h5c,
    ADDR_FC1_BIAS_74_CTRL        = 8'h60,
    ADDR_FC2_WEIGHTS_74_DATA_0   = 8'h64,
    ADDR_FC2_WEIGHTS_74_DATA_1   = 8'h68,
    ADDR_FC2_WEIGHTS_74_CTRL     = 8'h6c,
    ADDR_FC2_BIAS_74_DATA_0      = 8'h70,
    ADDR_FC2_BIAS_74_DATA_1      = 8'h74,
    ADDR_FC2_BIAS_74_CTRL        = 8'h78,
    ADDR_FC3_WEIGHTS_74_DATA_0   = 8'h7c,
    ADDR_FC3_WEIGHTS_74_DATA_1   = 8'h80,
    ADDR_FC3_WEIGHTS_74_CTRL     = 8'h84,
    ADDR_FC3_BIAS_74_DATA_0      = 8'h88,
    ADDR_FC3_BIAS_74_DATA_1      = 8'h8c,
    ADDR_FC3_BIAS_74_CTRL        = 8'h90,
    WRIDLE                       = 2'd0,
    WRDATA                       = 2'd1,
    WRRESP                       = 2'd2,
    WRRESET                      = 2'd3,
    RDIDLE                       = 2'd0,
    RDDATA                       = 2'd1,
    RDRESET                      = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [63:0]                   int_input_74 = 'b0;
    reg  [63:0]                   int_conv1_filters_74 = 'b0;
    reg  [63:0]                   int_conv1_bias_74 = 'b0;
    reg  [63:0]                   int_conv2_filters_74 = 'b0;
    reg  [63:0]                   int_conv2_bias_74 = 'b0;
    reg  [63:0]                   int_fc1_weights_74 = 'b0;
    reg  [63:0]                   int_fc1_bias_74 = 'b0;
    reg  [63:0]                   int_fc2_weights_74 = 'b0;
    reg  [63:0]                   int_fc2_bias_74 = 'b0;
    reg  [63:0]                   int_fc3_weights_74 = 'b0;
    reg  [63:0]                   int_fc3_bias_74 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_INPUT_74_DATA_0: begin
                    rdata <= int_input_74[31:0];
                end
                ADDR_INPUT_74_DATA_1: begin
                    rdata <= int_input_74[63:32];
                end
                ADDR_CONV1_FILTERS_74_DATA_0: begin
                    rdata <= int_conv1_filters_74[31:0];
                end
                ADDR_CONV1_FILTERS_74_DATA_1: begin
                    rdata <= int_conv1_filters_74[63:32];
                end
                ADDR_CONV1_BIAS_74_DATA_0: begin
                    rdata <= int_conv1_bias_74[31:0];
                end
                ADDR_CONV1_BIAS_74_DATA_1: begin
                    rdata <= int_conv1_bias_74[63:32];
                end
                ADDR_CONV2_FILTERS_74_DATA_0: begin
                    rdata <= int_conv2_filters_74[31:0];
                end
                ADDR_CONV2_FILTERS_74_DATA_1: begin
                    rdata <= int_conv2_filters_74[63:32];
                end
                ADDR_CONV2_BIAS_74_DATA_0: begin
                    rdata <= int_conv2_bias_74[31:0];
                end
                ADDR_CONV2_BIAS_74_DATA_1: begin
                    rdata <= int_conv2_bias_74[63:32];
                end
                ADDR_FC1_WEIGHTS_74_DATA_0: begin
                    rdata <= int_fc1_weights_74[31:0];
                end
                ADDR_FC1_WEIGHTS_74_DATA_1: begin
                    rdata <= int_fc1_weights_74[63:32];
                end
                ADDR_FC1_BIAS_74_DATA_0: begin
                    rdata <= int_fc1_bias_74[31:0];
                end
                ADDR_FC1_BIAS_74_DATA_1: begin
                    rdata <= int_fc1_bias_74[63:32];
                end
                ADDR_FC2_WEIGHTS_74_DATA_0: begin
                    rdata <= int_fc2_weights_74[31:0];
                end
                ADDR_FC2_WEIGHTS_74_DATA_1: begin
                    rdata <= int_fc2_weights_74[63:32];
                end
                ADDR_FC2_BIAS_74_DATA_0: begin
                    rdata <= int_fc2_bias_74[31:0];
                end
                ADDR_FC2_BIAS_74_DATA_1: begin
                    rdata <= int_fc2_bias_74[63:32];
                end
                ADDR_FC3_WEIGHTS_74_DATA_0: begin
                    rdata <= int_fc3_weights_74[31:0];
                end
                ADDR_FC3_WEIGHTS_74_DATA_1: begin
                    rdata <= int_fc3_weights_74[63:32];
                end
                ADDR_FC3_BIAS_74_DATA_0: begin
                    rdata <= int_fc3_bias_74[31:0];
                end
                ADDR_FC3_BIAS_74_DATA_1: begin
                    rdata <= int_fc3_bias_74[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign input_74         = int_input_74;
assign conv1_filters_74 = int_conv1_filters_74;
assign conv1_bias_74    = int_conv1_bias_74;
assign conv2_filters_74 = int_conv2_filters_74;
assign conv2_bias_74    = int_conv2_bias_74;
assign fc1_weights_74   = int_fc1_weights_74;
assign fc1_bias_74      = int_fc1_bias_74;
assign fc2_weights_74   = int_fc2_weights_74;
assign fc2_bias_74      = int_fc2_bias_74;
assign fc3_weights_74   = int_fc3_weights_74;
assign fc3_bias_74      = int_fc3_bias_74;
// int_input_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_74_DATA_0)
            int_input_74[31:0] <= (WDATA[31:0] & wmask) | (int_input_74[31:0] & ~wmask);
    end
end

// int_input_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_74_DATA_1)
            int_input_74[63:32] <= (WDATA[31:0] & wmask) | (int_input_74[63:32] & ~wmask);
    end
end

// int_conv1_filters_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_filters_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_FILTERS_74_DATA_0)
            int_conv1_filters_74[31:0] <= (WDATA[31:0] & wmask) | (int_conv1_filters_74[31:0] & ~wmask);
    end
end

// int_conv1_filters_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_filters_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_FILTERS_74_DATA_1)
            int_conv1_filters_74[63:32] <= (WDATA[31:0] & wmask) | (int_conv1_filters_74[63:32] & ~wmask);
    end
end

// int_conv1_bias_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_bias_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_BIAS_74_DATA_0)
            int_conv1_bias_74[31:0] <= (WDATA[31:0] & wmask) | (int_conv1_bias_74[31:0] & ~wmask);
    end
end

// int_conv1_bias_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv1_bias_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV1_BIAS_74_DATA_1)
            int_conv1_bias_74[63:32] <= (WDATA[31:0] & wmask) | (int_conv1_bias_74[63:32] & ~wmask);
    end
end

// int_conv2_filters_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_filters_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_FILTERS_74_DATA_0)
            int_conv2_filters_74[31:0] <= (WDATA[31:0] & wmask) | (int_conv2_filters_74[31:0] & ~wmask);
    end
end

// int_conv2_filters_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_filters_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_FILTERS_74_DATA_1)
            int_conv2_filters_74[63:32] <= (WDATA[31:0] & wmask) | (int_conv2_filters_74[63:32] & ~wmask);
    end
end

// int_conv2_bias_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_bias_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_BIAS_74_DATA_0)
            int_conv2_bias_74[31:0] <= (WDATA[31:0] & wmask) | (int_conv2_bias_74[31:0] & ~wmask);
    end
end

// int_conv2_bias_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_conv2_bias_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CONV2_BIAS_74_DATA_1)
            int_conv2_bias_74[63:32] <= (WDATA[31:0] & wmask) | (int_conv2_bias_74[63:32] & ~wmask);
    end
end

// int_fc1_weights_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc1_weights_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC1_WEIGHTS_74_DATA_0)
            int_fc1_weights_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc1_weights_74[31:0] & ~wmask);
    end
end

// int_fc1_weights_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc1_weights_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC1_WEIGHTS_74_DATA_1)
            int_fc1_weights_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc1_weights_74[63:32] & ~wmask);
    end
end

// int_fc1_bias_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc1_bias_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC1_BIAS_74_DATA_0)
            int_fc1_bias_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc1_bias_74[31:0] & ~wmask);
    end
end

// int_fc1_bias_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc1_bias_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC1_BIAS_74_DATA_1)
            int_fc1_bias_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc1_bias_74[63:32] & ~wmask);
    end
end

// int_fc2_weights_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc2_weights_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC2_WEIGHTS_74_DATA_0)
            int_fc2_weights_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc2_weights_74[31:0] & ~wmask);
    end
end

// int_fc2_weights_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc2_weights_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC2_WEIGHTS_74_DATA_1)
            int_fc2_weights_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc2_weights_74[63:32] & ~wmask);
    end
end

// int_fc2_bias_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc2_bias_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC2_BIAS_74_DATA_0)
            int_fc2_bias_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc2_bias_74[31:0] & ~wmask);
    end
end

// int_fc2_bias_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc2_bias_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC2_BIAS_74_DATA_1)
            int_fc2_bias_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc2_bias_74[63:32] & ~wmask);
    end
end

// int_fc3_weights_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc3_weights_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC3_WEIGHTS_74_DATA_0)
            int_fc3_weights_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc3_weights_74[31:0] & ~wmask);
    end
end

// int_fc3_weights_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc3_weights_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC3_WEIGHTS_74_DATA_1)
            int_fc3_weights_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc3_weights_74[63:32] & ~wmask);
    end
end

// int_fc3_bias_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc3_bias_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC3_BIAS_74_DATA_0)
            int_fc3_bias_74[31:0] <= (WDATA[31:0] & wmask) | (int_fc3_bias_74[31:0] & ~wmask);
    end
end

// int_fc3_bias_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fc3_bias_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FC3_BIAS_74_DATA_1)
            int_fc3_bias_74[63:32] <= (WDATA[31:0] & wmask) | (int_fc3_bias_74[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
