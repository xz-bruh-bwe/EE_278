module exponent_add #(parameter N = 16)
(
    input  logic [7:0] exp_a,   // Exponent of input a (8 bits for bfloat16)
    input  logic [7:0] exp_b,   // Exponent of input b (8 bits for bfloat16)
    output logic [8:0] exp_sum  // Sum of the exponents minus the bias
);
    
    // Bias for bfloat16 (8-bit exponent, bias = 127)
    localparam BIAS = 8'd127;

    // Add exponents and subtract bias (exp_sum = exp_a + exp_b - BIAS)
    assign exp_sum = exp_a + exp_b - BIAS;

endmodule