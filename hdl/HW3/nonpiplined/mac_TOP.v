module mac_TOP #(parameter N = 16) // N is the number of bits for floating point
(
    input  logic clk,
    input  logic rst_n,
    input  logic [N-1:0] a,   // First floating-point input
    input  logic [N-1:0] b,   // Second floating-point input
    input  logic [N-1:0] c,   // Accumulate input
    output logic [N-1:0] result // MAC output
);
    
    // Intermediates for the multiplier and adder
    logic [N-1:0] mul_out;
    logic [N-1:0] add_out;

    // Instantiate the Multiplier (3-stage pipeline)
    fp_multiplier #(.N(N)) mult (
        .clk  (clk),
        .rst_n(rst_n),
        .a    (a),
        .b    (b),
        .result(mul_out)
    );

    // Instantiate the Adder (3-stage pipeline)
    fp_adder #(.N(N)) adder (
        .clk(clk),
        .rst_n(rst_n),
        .a(mul_out),
        .b(c),
        .result(add_out)
    );

    // The final result is from the adder output
    assign result = add_out;

endmodule