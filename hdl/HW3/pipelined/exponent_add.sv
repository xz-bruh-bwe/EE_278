module exponent_add #(parameter N = 16)
(
    input  logic [4:0] exp_a,   // Exponent of input a (5 bits for half precision)
    input  logic [4:0] exp_b,   // Exponent of input b (5 bits for half precision)
    output logic [5:0] exp_sum  // Sum of the exponents minus the bias
);
    
    // Bias for half-precision brain floating point is 15 (5-bit exponent, bias = 2^(5-1)-1)
    localparam BIAS = 5'd15;

    // Add exponents and subtract bias (exp_sum = exp_a + exp_b - BIAS)
    assign exp_sum = exp_a + exp_b - BIAS;

endmodule