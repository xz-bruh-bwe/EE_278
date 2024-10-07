module bfloat16_mult #(parameter N = 5'd16)
    (
    input  [N-1:0] A,    // First Bfloat16 input
    input  [N-1:0] B,    // Second Bfloat16 input
    output [N-1:0] result // Bfloat16 output
);

    // Decompose the inputs into sign, exponent, and mantissa
    wire signA, signB;
    wire [7:0] expA, expB;
    wire [7:0] mantA, mantB; // 8-bit mantissas due to the implicit leading 1

    assign signA = A[15];
    assign expA  = A[14:7];
    assign mantA = {1'b1, A[6:0]}; // Implicit leading 1 for normalized numbers

    assign signB = B[15];
    assign expB  = B[14:7];
    assign mantB = {1'b1, B[6:0]}; // Implicit leading 1 for normalized numbers

    // Calculate the sign of the result (XOR of the signs)
    wire sign_res;
    assign sign_res = signA ^ signB; // XOR of the Signals

    // Add the exponents and subtract the bias (127 for Bfloat16)
    wire [8:0] exp_res; // Extra bit to handle exponent overflow
    assign exp_res = expA + expB - 8'd127; // Bias adjustment

    // Multiply the mantissas (result is 16 bits since we're multiplying two 8-bit mantissas)
    wire [15:0] mant_res;
    assign mant_res = mantA * mantB;

    // Normalize the result if necessary
    reg [7:0] norm_exp;
    reg [7:0] norm_mant;
    always @(*) begin
        if (mant_res[15] == 1'b1) begin
            // Mantissa overflow, shift right and increment exponent
            norm_exp = exp_res + 1;
            norm_mant = mant_res[15:8]; // Take the top 8 bits
        end else begin
            // No overflow, no normalization needed
            norm_exp = exp_res;
            norm_mant = mant_res[14:7]; // Take the top 7 bits (no implicit 1 bit needed)
        end
    end

    // Handle special cases: overflow, underflow, zero, and infinity
    reg [15:0] final_result;
    always @(*) begin
        if (exp_res >= 8'hFF) begin
            // Overflow, return infinity
            final_result = {sign_res, 8'hFF, 7'h0};
        end else if (exp_res <= 8'h00) begin
            // Underflow, return zero
            final_result = {sign_res, 8'h00, 7'h0};
        end else begin
            // Normal case, compose the result
            final_result = {sign_res, norm_exp[7:0], norm_mant[6:0]};
        end
    end

    assign result = final_result;

endmodule