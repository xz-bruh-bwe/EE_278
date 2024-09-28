module normalize_round_pipelined #(parameter N = 16)
(
    input  logic clk,
    input  logic rst_n,
    input  logic [19:0] mant_product, // 20-bit product of mantissas
    input  logic [5:0]  exp_sum,      // Sum of exponents from the multiplier
    output logic [9:0]  mant_norm,    // Normalized mantissa (10 bits)
    output logic [4:0]  exp_norm      // Adjusted exponent after normalization (5 bits)
);

    // Stage 1: Intermediate signals
    logic [5:0] exp_adjust;    // Adjustment to exponent during normalization
    logic [19:0] normalized_mant; // The normalized mantissa

    // Stage 2: Pipeline registers for intermediate normalization values
    logic [5:0] exp_adjust_reg;
    logic [19:0] normalized_mant_reg;

    // Stage 3: Rounding logic
    logic [9:0] rounded_mant;

    // Stage 1: Normalization process (shift left or right to make the leading bit 1)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            exp_adjust_reg <= 0;
            normalized_mant_reg <= 0;
        end else begin
            if (mant_product[19]) begin
                // No normalization needed, leading bit is already 1
                normalized_mant_reg <= mant_product;
                exp_adjust_reg <= 0;
            end else if (mant_product[18]) begin
                // Shift left by 1
                normalized_mant_reg <= mant_product << 1;
                exp_adjust_reg <= 1;
            end else if (mant_product[17]) begin
                // Shift left by 2
                normalized_mant_reg <= mant_product << 2;
                exp_adjust_reg <= 2;
            end
            // More conditions for shifting...
            else begin
                // Handle edge cases for smaller values
                normalized_mant_reg <= mant_product << 10;
                exp_adjust_reg <= 10;
            end
        end
    end

    // Stage 2: Adjust the exponent (in a pipelined fashion)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            exp_norm <= 0;
        end else begin
            exp_norm <= exp_sum - exp_adjust_reg;
        end
    end

    // Stage 3: Rounding operation (round-to-nearest)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_norm <= 0;
        end else begin
            if (normalized_mant_reg[9:0] >= 10'b1000000000) begin
                // Round up
                rounded_mant = normalized_mant_reg[19:10] + 1;
            end else begin
                // No rounding needed
                rounded_mant = normalized_mant_reg[19:10];
            end
            mant_norm <= rounded_mant;
        end
    end

endmodule