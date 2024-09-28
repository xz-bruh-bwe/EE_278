module fp_mult_pipelined #(parameter N = 16)
(
    input  logic clk,
    input  logic rst_n,
    input  logic [N-1:0] a,    // 16-bit floating point input a
    input  logic [N-1:0] b,    // 16-bit floating point input b
    output logic [N-1:0] result // 16-bit floating point result
);

    // Stage 1: Extract sign, exponent, and mantissa
    logic sign_a, sign_b, sign_result;
    logic [4:0] exp_a, exp_b;
    logic [9:0] mant_a, mant_b;

    // Stage 2: Pipeline registers for exponent and mantissa
    logic [9:0] mant_a_reg, mant_b_reg;
    logic [4:0] exp_a_reg, exp_b_reg;
    logic sign_a_reg, sign_b_reg;

    // Stage 2: Mantissa product and exponent sum
    logic [19:0] mant_product;
    logic [5:0] exp_sum;

    // Stage 3: Pipeline registers for result of stage 2
    logic [19:0] mant_product_reg;
    logic [5:0] exp_sum_reg;
    logic sign_result_reg;

    // Stage 3: Normalized mantissa and exponent
    logic [9:0] mant_norm;
    logic [4:0] exp_norm;

    // Stage 1: Split inputs (sign, exponent, mantissa)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_a_reg <= 0;
            mant_b_reg <= 0;
            exp_a_reg <= 0;
            exp_b_reg <= 0;
            sign_a_reg <= 0;
            sign_b_reg <= 0;
        end else begin
            sign_a_reg <= a[15];       // Sign bit of a
            sign_b_reg <= b[15];       // Sign bit of b
            exp_a_reg  <= a[14:10];    // Exponent of a
            exp_b_reg  <= b[14:10];    // Exponent of b
            mant_a_reg <= {1'b1, a[9:0]}; // Add implicit 1 to mantissa of a
            mant_b_reg <= {1'b1, b[9:0]}; // Add implicit 1 to mantissa of b
        end
    end

    // Stage 2: Multiply mantissas and add exponents
    mantissa_mult #(.N(N)) u_mant_mult (
        .mant_a(mant_a_reg),
        .mant_b(mant_b_reg),
        .mant_product(mant_product)
    );

    exponent_add #(.N(N)) u_exp_add (
        .exp_a(exp_a_reg),
        .exp_b(exp_b_reg),
        .exp_sum(exp_sum)
    );

    // Register the outputs of Stage 2 (mantissa product and exponent sum)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_product_reg <= 0;
            exp_sum_reg <= 0;
            sign_result_reg <= 0;
        end else begin
            mant_product_reg <= mant_product;
            exp_sum_reg <= exp_sum;
            sign_result_reg <= sign_a_reg ^ sign_b_reg; // XOR for final sign
        end
    end

    // Stage 3: Normalize and round the result
    normalize_round_pipelined #(.N(N)) u_normalize_round (
        .mant_product(mant_product_reg),
        .exp_sum(exp_sum_reg),
        .mant_norm(mant_norm),
        .exp_norm(exp_norm)
    );

    // Final stage result construction
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 0;
        end else begin
            result <= {sign_result_reg, exp_norm, mant_norm}; // Assemble result
        end
    end

endmodule