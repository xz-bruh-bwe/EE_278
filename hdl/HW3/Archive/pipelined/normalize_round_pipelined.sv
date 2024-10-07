module normalize_round_pipelined #(parameter N = 16)
(
    input  logic clk,
    input  logic rst_n,
    input  logic [13:0] mant_product, // 14-bit product of mantissas
    input  logic [8:0]  exp_sum,      // Sum of exponents from the multiplier
    output logic [6:0]  mant_norm,    // Normalized mantissa (7 bits)
    output logic [7:0]  exp_norm      // Adjusted exponent after normalization (8 bits)
);

    // Pipeline registers
    logic [13:0] mant_product_reg1, mant_product_reg2;
    logic [8:0]  exp_sum_reg1, exp_sum_reg2;
    logic [8:0]  exp_adjust_reg1, exp_adjust_reg2;
    logic [13:0] normalized_mant_reg2;
    logic [6:0] mant_norm_reg3;
    logic [7:0] exp_norm_reg3;

    // Stage 1: Determine how much to shift the mantissa (leading bit detection)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_product_reg1 <= 0;
            exp_sum_reg1 <= 0;
            exp_adjust_reg1 <= 0;
        end else begin
            if (mant_product[13]) begin
                // No normalization needed, leading bit is already 1
                exp_adjust_reg1 <= 0;
            end else if (mant_product[12]) begin
                // Shift left by 1
                exp_adjust_reg1 <= 1;
            end else if (mant_product[11]) begin
                // Shift left by 2
                exp_adjust_reg1 <= 2;
            end else if (mant_product[10]) begin
                // Shift left by 3
                exp_adjust_reg1 <= 3;
            end else begin
                // Handle cases for smaller values (edge cases)
                exp_adjust_reg1 <= 4;
            end

            mant_product_reg1 <= mant_product; // Store mantissa
            exp_sum_reg1 <= exp_sum; // Store exponent sum
        end
    end

    // Stage 2: Normalize the mantissa and adjust the exponent
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            normalized_mant_reg2 <= 0;
            exp_adjust_reg2 <= 0;
            exp_sum_reg2 <= 0;
        end else begin
            // Shift the mantissa based on exp_adjust
            normalized_mant_reg2 <= mant_product_reg1 << exp_adjust_reg1;
            exp_adjust_reg2 <= exp_adjust_reg1;
            exp_sum_reg2 <= exp_sum_reg1;
        end
    end

    // Stage 3: Apply rounding and finalize the normalized result
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_norm_reg3 <= 0;
            exp_norm_reg3 <= 0;
        end else begin
            // Adjust the exponent after normalization
            exp_norm_reg3 <= exp_sum_reg2 - exp_adjust_reg2;

            // Perform rounding (round-to-nearest)
            if (normalized_mant_reg2[6:0] >= 7'b1000000) begin
                // Round up
                mant_norm_reg3 <= normalized_mant_reg2[13:7] + 1;
            end else begin
                // No rounding needed
                mant_norm_reg3 <= normalized_mant_reg2[13:7];
            end
        end
    end

    // Assign the final results from the pipeline registers
    assign mant_norm = mant_norm_reg3;
    assign exp_norm = exp_norm_reg3;

endmodule