module signed_pipelined_fixed_point_adder(
    input wire signed [7:0] A,    // 8-bit signed input A
    input wire signed [7:0] B,    // 8-bit signed input B
    input wire clk,               // Clock signal
    input wire rst,               // Reset signal
    output reg signed [8:0] Sum   // 9-bit signed output Sum (including carry-out)
);   
    // Internal registers for pipeline stages
    reg signed [3:0] A_lower, B_lower;          // Lower 4 bits (fractional part)
    reg signed [3:0] A_upper, B_upper;          // Upper 4 bits (integer part)
    reg signed [4:0] sum_lower;                 // Lower part sum (with carry)
    reg signed [4:0] sum_upper;                 // Upper part sum (with carry)
    reg              stage1_done;               // Control signal for stage completion
    reg [8:0]              Sum_latch; 

    // Stage 1: Add the lower 4 bits (fractional part)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A_lower     <= 4'b0;
            B_lower     <= 4'b0;
            sum_lower   <= 5'b0;
            stage1_done <= 1'b0;
        end else begin
            A_lower     <= A[3:0];  // Fractional part of A
            B_lower     <= B[3:0];  // Fractional part of B
            sum_lower   <= A[3:0] + B[3:0];  // Add the lower 4 bits (fractional part)
            stage1_done <= !stage1_done;
        end
    end
    // Stage 2: Add the upper 4 bits (integer part) with carry from stage 1
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A_upper <= 4'b0;
            B_upper <= 4'b0;
            sum_upper <= 5'b0;
            Sum <= 9'b0;
            Sum_latch <= 9'b0;
        end else begin
            A_upper <= A[7:4];  // Integer part of A
            B_upper <= B[7:4];  // Integer part of B

            // Add the upper 4 bits and propagate the carry from sum_lower
            sum_upper <= A_upper + B_upper + sum_lower[4]; 

            // Combine upper and lower sum parts into final 9-bit result
            Sum_latch <= {sum_upper[4:0], sum_lower[3:0]};  // Concatenate upper and lower results
            
            if(stage1_done == 1'b1) begin
                Sum <= Sum_latch;
            end else begin
                Sum <= Sum;
            end
        end
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