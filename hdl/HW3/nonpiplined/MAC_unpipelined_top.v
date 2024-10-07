module MAC_unpipelined_top #(parameter N = 5'd16)
    (
    input  [N-1:0] a,     // Input A for the multiplier
    input  [N-1:0] b,     // Input B for the multiplier
    input  [N-1:0] c, // Input C for the adder
    output [N-1:0] final_result // Final result after addition
);

    // Internal wire to hold the result of the multiplier
    wire [15:0] multiplier_result;

    // Instantiate the Bfloat16 multiplier
    bfloat16_mult #(.N(N))
    mult (
        .A(a),
        .B(b),
        .result(multiplier_result)
    );

    // Instantiate the Bfloat16 adder
    bfloat16_add_sub #(.N(N))
    add_sub (
        .A(multiplier_result),
        .B(c),
        .result(final_result)
    );

endmodule