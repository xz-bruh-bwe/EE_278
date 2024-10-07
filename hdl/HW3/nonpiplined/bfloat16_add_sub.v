module bfloat16_add_sub #(parameter N = 5'd16)
    (
    input  [N-1:0] A,   // First Bfloat16 input
    input  [N-1:0] B,   // Second Bfloat16 input
    output [N-1:0] result  // Bfloat16 output
);

    // Decompose the inputs into sign, exponent, and mantissa
    wire signA, signB;
    wire [7:0] expA, expB;
    wire [7:0] mantA, mantB; // Should be 8 bits

    assign signA = A[15];
    assign expA  = A[14:7];
    assign mantA = {1'b1, A[6:0]}; // Implicit leading 1 for normalized numbers

    assign signB = B[15];
    assign expB  = B[14:7];
    assign mantB = {1'b1, B[6:0]}; // Implicit leading 1 for normalized numbers

    // Exponent difference and alignment
    wire [7:0] exp_diff; // 8 Bit Exponent Difference?
    wire [6:0] mantA_shifted, mantB_shifted;
    wire [7:0] larger_exp;
    assign exp_diff = (expA > expB) ? (expA - expB) : (expB - expA);
    assign larger_exp = (expA > expB) ? expA : expB; // Larger exponent for result

    
    // Align mantissas based on exponent difference
    //assign mantA_shifted = (expA > expB) ? mantA : (mantA >> exp_diff);
    //assign mantB_shifted = (expB > expA) ? mantB : (mantB >> exp_diff);

    assign mantA_shifted = mantA >> exp_diff;
    assign mantB_shifted = mantB >> exp_diff;

    // Mantissa addition or subtraction based on signs
        // Based on Pre-compute
    wire [8:0] mant_res;
    wire [8:0] mant_sum;
    wire [8:0] mant_diff;

    // Check if the exponents are the same
    wire exp_equal = (expA == expB);

    // Depending on which exponent is larger, only one mantissa is shifted, and then we add/subtract
    assign mant_sum = (expA  >= expB)  ? (mantA + {1'b0, mantB_shifted}) : (mantB + {1'b0, mantA_shifted});
    assign mant_diff = (expA >= expB) ? (mantA - {1'b0, mantB_shifted}) : (mantB - {1'b0, mantA_shifted});

    
    assign mant_res = (signA == signB) ? mant_sum : mant_diff;


    // Determine the sign of the result
    wire sign_res;
    assign sign_res = (mantA_shifted > mantB_shifted) ? signA : signB;

    // Normalization logic
    reg [7:0] exp_res;
    reg [6:0] mant_res_norm;

    always @(*) begin
        if (mant_res[8] == 1'b1) begin
            // If the result mantissa is too large (9 bits), shift right and increment exponent
            exp_res = larger_exp + 1;
            mant_res_norm = mant_res[7:1];
        
        end else begin
            // No normalization needed
            exp_res = larger_exp;
            mant_res_norm = mant_res[6:0];
        end
    end

    // Handle special cases: overflow, underflow, zero, and infinity
    reg [15:0] final_result;
    always @(*) begin
        if (exp_res >= 8'hFF) begin
            // Overflow, return infinity
            final_result = {sign_res, 8'hFF, 7'h0};
        end else if (exp_res == 0) begin
            // Underflow, return zero
            final_result = {sign_res, 8'h00, 7'h0};
        end else begin
            // Normal case, compose the result
            final_result = {sign_res, exp_res, mant_res_norm};
        end
    end

    assign result = final_result;

endmodule