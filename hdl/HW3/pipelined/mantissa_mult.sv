module mantissa_mult #(parameter N = 16)
(
    input  logic [6:0] mant_a,  // Mantissa of input a (7 bits for bfloat16)
    input  logic [6:0] mant_b,  // Mantissa of input b (7 bits for bfloat16)
    output logic [13:0] mant_product // 14-bit product of the mantissas
);
    
    // The mantissas are treated as unsigned integers (since we multiply the significands)
    assign mant_product = mant_a * mant_b;

endmodule