module unsigned_pipelined_fixed_point_adder(
    input  wire [7:0] A,      // 8-bit unsigned input A
    input  wire [7:0] B,      // 8-bit unsigned input B
    input  wire clk,          // Clock signal
    output reg  [8:0] Sum     // 9-bit output Sum (including carry-out)
);

    // Internal registers for pipelining
    reg [4:0] stage1_sum;  // 5-bit to hold sum and carry from first stage (LSB + Carry)
    reg [3:0] A_MSB, B_MSB; // Most Significant Bits for the second stage
    
    always @(posedge clk) begin
        // Stage 1: Add the least significant 4-bit halves and register the result
        stage1_sum <= A[3:0] + B[3:0];
        A_MSB <= A[7:4]; // Register the MSB of A for the second stage
        B_MSB <= B[7:4]; // Register the MSB of B for the second stage
    end

    always @(posedge clk) begin
        // Stage 2: Add the most significant 4-bit halves with the carry from Stage 1
        Sum <= {1'b0, A_MSB} + {1'b0, B_MSB} + stage1_sum[4];
        Sum[3:0] <= stage1_sum[3:0]; // Least significant bits from stage 1
    end

endmodule