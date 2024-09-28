module fp_add_pipelined #(parameter N = 16)
(
    input  logic clk,
    input  logic rst_n,
    input  logic [N-1:0] a,    // 16-bit floating-point input a
    input  logic [N-1:0] b,    // 16-bit floating-point input b
    output logic [N-1:0] result // 16-bit floating-point result
);

    // Stage 1: Extract sign, exponent, and mantissa
    logic sign_a, sign_b;
    logic [4:0] exp_a, exp_b;
    logic [9:0] mant_a, mant_b;

    // Stage 2: Aligned mantissas and adjusted exponents
    logic [9:0] mant_a_aligned, mant_b_aligned;
    logic [4:0] exp_diff, exp_result;
    logic sign_a_reg, sign_b_reg;

    // Stage 3: Mantissa sum and normalization
    logic [10:0] mant_sum;
    logic [4:0] exp_final;
    logic [9:0] mant_final;
    logic sign_result;

    // Stage 1: Extract sign, exponent, and mantissa from a and b
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            exp_a <= 0;
            exp_b <= 0;
            mant_a <= 0;
            mant_b <= 0;
            sign_a <= 0;
            sign_b <= 0;
        end else begin
            sign_a <= a[N-1]; // Sign bit of a
            sign_b <= b[N-1]; // Sign bit of b
            exp_a  <= a[N-2:N-6];  // Exponent of a
            exp_b  <= b[N-2:N-6];  // Exponent of b
            mant_a <= {1'b1, a[N-7:0]}; // Add implicit 1 to mantissa of a
            mant_b <= {1'b1, b[N-7:0]}; // Add implicit 1 to mantissa of b
        end
    end

    // Stage 2: Align exponents and adjust mantissas
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_a_aligned <= 0;
            mant_b_aligned <= 0;
            exp_diff <= 0;
            sign_a_reg <= 0;
            sign_b_reg <= 0;
        end else begin
            // Calculate exponent difference
            if (exp_a > exp_b) begin
                exp_diff <= exp_a - exp_b;
                mant_a_aligned <= mant_a;
                mant_b_aligned <= mant_b >> exp_diff; // Shift b's mantissa to align exponents
                exp_result <= exp_a;
            end else begin
                exp_diff <= exp_b - exp_a;
                mant_b_aligned <= mant_b;
                mant_a_aligned <= mant_a >> exp_diff; // Shift a's mantissa to align exponents
                exp_result <= exp_b;
            end

            sign_a_reg <= sign_a;
            sign_b_reg <= sign_b;
        end
    end

    // Stage 3: Perform addition or subtraction, normalize, and round
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_sum <= 0;
            mant_final <= 0;
            exp_final <= 0;
            sign_result <= 0;
        end else begin
            // Perform addition or subtraction based on sign
            if (sign_a_reg == sign_b_reg) begin
                mant_sum <= mant_a_aligned + mant_b_aligned; // Add mantissas
                sign_result <= sign_a_reg; // Same sign
            end else begin
                if (mant_a_aligned >= mant_b_aligned) begin
                    mant_sum <= mant_a_aligned - mant_b_aligned; // Subtract mantissas
                    sign_result <= sign_a_reg;
                end else begin
                    mant_sum <= mant_b_aligned - mant_a_aligned;
                    sign_result <= sign_b_reg;
                end
            end

            // Normalize the result
            if (mant_sum[10]) begin
                mant_final <= mant_sum[10:1]; // Shift right if overflow
                exp_final <= exp_result + 1;
            end else begin
                mant_final <= mant_sum[9:0];  // No need to shift
                exp_final <= exp_result;
            end
        end
    end

    // Final result construction
    assign result = {sign_result, exp_final, mant_final[9:0]}; // Assemble the final result

endmodule