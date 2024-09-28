module fp_mac_top #(parameter N = 16)
(
    input  logic clk,
    input  logic rst_n,
    input  logic [N-1:0] a,   // 16-bit floating-point input a
    input  logic [N-1:0] b,   // 16-bit floating-point input b
    input  logic [N-1:0] c,   // 16-bit floating-point accumulator input (c)
    output logic [N-1:0] result // 16-bit floating-point MAC result
);

    // Internal signals between modules
    logic [N-1:0] mult_result; // Output from the pipelined multiplier
    logic [N-1:0] add_result;  // Output from the pipelined adder (MAC result)

    // Stage 1: Pipelined floating-point multiplier
    fp_mult_pipelined #(.N(N)) u_fp_mult (
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .b(b),
        .result(mult_result)
    );

    // Stage 2: Pipelined floating-point adder (accumulator)
    fp_add_pipelined #(.N(N)) u_fp_add (
        .clk(clk),
        .rst_n(rst_n),
        .a(mult_result),
        .b(c),
        .result(add_result)
    );

    // Output the result of the MAC operation
    assign result = add_result;

endmodule