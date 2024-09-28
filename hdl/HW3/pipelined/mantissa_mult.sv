module mantissa_mult #(parameter N = 16)
(
    input  logic [9:0] mant_a,  // Mantissa of input a (10 bits for half precision)
    input  logic [9:0] mant_b,  // Mantissa of input b (10 bits for half precision)
    output logic [19:0] mant_product // 20-bit product of the mantissas
);
    
    // The mantissas are treated as unsigned integers (since we multiply the significands)
    assign mant_product = mant_a * mant_b;

endmodule