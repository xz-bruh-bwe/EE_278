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

#define CONTROL_R_ADDR_INPUT_74_DATA         0x10
#define CONTROL_R_BITS_INPUT_74_DATA         64
#define CONTROL_R_ADDR_CONV1_FILTERS_74_DATA 0x1c
#define CONTROL_R_BITS_CONV1_FILTERS_74_DATA 64
#define CONTROL_R_ADDR_CONV1_BIAS_74_DATA    0x28
#define CONTROL_R_BITS_CONV1_BIAS_74_DATA    64
#define CONTROL_R_ADDR_CONV2_FILTERS_74_DATA 0x34
#define CONTROL_R_BITS_CONV2_FILTERS_74_DATA 64
#define CONTROL_R_ADDR_CONV2_BIAS_74_DATA    0x40
#define CONTROL_R_BITS_CONV2_BIAS_74_DATA    64
#define CONTROL_R_ADDR_FC1_WEIGHTS_74_DATA   0x4c
#define CONTROL_R_BITS_FC1_WEIGHTS_74_DATA   64
#define CONTROL_R_ADDR_FC1_BIAS_74_DATA      0x58
#define CONTROL_R_BITS_FC1_BIAS_74_DATA      64
#define CONTROL_R_ADDR_FC2_WEIGHTS_74_DATA   0x64
#define CONTROL_R_BITS_FC2_WEIGHTS_74_DATA   64
#define CONTROL_R_ADDR_FC2_BIAS_74_DATA      0x70
#define CONTROL_R_BITS_FC2_BIAS_74_DATA      64
#define CONTROL_R_ADDR_FC3_WEIGHTS_74_DATA   0x7c
#define CONTROL_R_BITS_FC3_WEIGHTS_74_DATA   64
#define CONTROL_R_ADDR_FC3_BIAS_74_DATA      0x88
#define CONTROL_R_BITS_FC3_BIAS_74_DATA      64
