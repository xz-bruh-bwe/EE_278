module top_bfloat16 (
    input  [15:0] A,      // First Bfloat16 input for multiplier
    input  [15:0] B,      // Second Bfloat16 input for multiplier
    input  [15:0] C,      // Input for adder (third input)
    input         clk,    // Clock
    input         rst,    // Reset
    output [15:0] result  // Final Bfloat16 output (from the adder)
);

    // Intermediate wire to connect the multiplier output to the adder input
    wire [15:0] mult_result;

    // Instantiate the Bfloat16 multiplier
    bfloat16_mult_pipelined multiplier (
        .A(A),             // First input to the multiplier
        .B(B),             // Second input to the multiplier
        .clk(clk),         // Clock
        .rst(rst),         // Reset
        .result(mult_result)  // Output of the multiplier
    );

    // Instantiate the Bfloat16 adder/subtractor
    bfloat16_add_sub_pipelined adder (
        .A(mult_result),   // Output of the multiplier as one input to the adder
        .B(C),             // External input as second input to the adder
        .clk(clk),         // Clock
        .rst(rst),         // Reset
        .result(result)    // Final output of the top module
    );

endmodule
