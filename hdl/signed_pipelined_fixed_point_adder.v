module signed_pipelined_fixed_point_adder(
    input  wire signed [7:0] A,      // 8-bit signed input A
    input  wire signed [7:0] B,      // 8-bit signed input B
    input  wire clk,                 // Clock signal
    output reg  signed [8:0] Sum     // 9-bit output Sum (including carry-out)
);

    // Internal signals for pipeline stages
    reg signed [8:0] sum_lower_stage1;     // 9-bit to include carry from lower 4-bit addition
    reg signed [8:0] sum_upper_stage2;     // 9-bit to include carry-in from the lower stage
    reg carry_in_stage2;                   // Carry-out from lower 4-bit addition

    // Stage 1: Add the lower 4 bits
    always @(posedge clk) begin
        // Add lower 4 bits of inputs and capture carry-out
        {carry_in_stage2, sum_lower_stage1[7:0]} <= A[3:0] + B[3:0];
    end

    // Stage 2: Add the upper 4 bits along with carry-in
    always @(posedge clk) begin
        // Add upper 4 bits of inputs and include carry from the lower stage
        sum_upper_stage2 <= A[7:4] + B[7:4] + carry_in_stage2;
        
        // Combine the upper and lower stages to produce the final result
        Sum <= sum_upper_stage2 + {sum_lower_stage1[7:0], 1'b0};  // Adding lower stage result with extra bit for proper alignment
    end

endmodule

//// Internal registers for pipelining
//    reg signed [4:0] stage1_sum;     // 5-bit to hold sum and carry from first stage (LSB + Carry)
//    reg signed [3:0] A_MSB, B_MSB;   // Most Significant Bits for the second stage
//    reg carry_out;                   // Carry out from Stage 1
//
//    always @(posedge clk) begin
//        // Stage 1: Add the least significant 4-bit halves and register the result
//        {carry_out, stage1_sum[3:0]} <= A[3:0] + B[3:0]; // Add LSBs and capture carry
//        stage1_sum[4] <= carry_out;  // Store carry-out
//        A_MSB <= A[7:4]; // Register the MSB of A for the second stage
//        B_MSB <= B[7:4]; // Register the MSB of B for the second stage
//    end
//
//    always @(posedge clk) begin
//        // Stage 2: Add the most significant 4-bit halves with the carry from Stage 1
//        {Sum[8], Sum[7:4]} <= A_MSB + B_MSB + stage1_sum[4]; // Add MSBs with carry-in
//        Sum[3:0] <= stage1_sum[3:0]; // Least significant bits from stage 1
//    end