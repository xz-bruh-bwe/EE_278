module bfloat16_mult_pipelined #(parameter N = 5'd16)
    (
    input  [N-1:0] A,           // First Bfloat16 input
    input  [N-1:0] B,           // Second Bfloat16 input
    input           clk,        // Clock
    input           rst_n,        // Reset
    input           op_start,    // Operation Start
    output wire     op_finish,   //
    output reg [N-1:0] result   // Bfloat16 output
);

    // Pipeline registers
    reg signA_stage1, signB_stage1;
    reg [7:0] expA_stage1, expB_stage1;
    reg [7:0] mantA_stage1, mantB_stage1;

    reg sign_res_stage2;
    reg [8:0] exp_res_stage2;
    reg [15:0] mant_res_stage2;

    reg [7:0] norm_exp_stage3;
    reg [7:0] norm_mant_stage3;
    reg [8:0] exp_res_stage3;
    reg sign_res_stage3;

    reg op_fin[5:0];

    assign op_finish = op_fin[3];

// Stage 1: Decompose inputs and calculate the intermediate values
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            expA_stage1  <= 0;
            expB_stage1  <= 0;
            mantA_stage1 <= 0;
            mantB_stage1 <= 0;
            signA_stage1 <= 0;
            signB_stage1 <= 0;
                op_fin[0] <= 0;
        end else begin
            // Decompose inputs into sign, exponent, and mantissa
            expA_stage1  <= A[14:7];
            expB_stage1  <= B[14:7];
            mantA_stage1 <= {1'b1, A[6:0]}; // Implicit leading 1 for normalized numbers
            mantB_stage1 <= {1'b1, B[6:0]}; // Implicit leading 1 for normalized numbers
            signA_stage1 <= A[15];
            signB_stage1 <= B[15];

            op_fin[0] <= op_start;
        end
    end

    // Stage 2: Calculate the sign of the result, exponent addition, and mantissa multiplication
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sign_res_stage2 <= 0;
            exp_res_stage2  <= 0;
            mant_res_stage2 <= 0;
                op_fin[1] <= 0;
        end else begin
            // Calculate the result sign (XOR of the signs)
            sign_res_stage2 <= signA_stage1 ^ signB_stage1; 

            // Add the exponents and subtract the bias (127 for Bfloat16)
            exp_res_stage2  <= expA_stage1 + expB_stage1 - 8'd127;

            // Multiply the mantissas (CORRECT)
            mant_res_stage2 <= mantA_stage1 * mantB_stage1;

                op_fin[1] <= op_fin[0];
        end
    end

// Stage 3: Normalize the result and handle overflow/underflow
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            norm_exp_stage3  <= 0;
            norm_mant_stage3 <= 0;
            sign_res_stage3  <= 0;
            exp_res_stage3   <= 0;
                    op_fin[2] <= 0;
        end else begin
            
            // Mantissa normalization
            if (mant_res_stage2[15] == 1'b1) begin
                // Mantissa overflow, shift right and increment exponent
                norm_exp_stage3  <= exp_res_stage2 + 1;
                norm_mant_stage3 <= mant_res_stage2[15:8]; // Take the top 8 bits
                op_fin[2] <= op_fin[1];
            end else begin
                // No overflow, no normalization needed
                norm_exp_stage3 <= exp_res_stage2;
                norm_mant_stage3 <= mant_res_stage2[14:7]; // Take the top 7 bits (no implicit 1 bit needed)
                op_fin[2] <= op_fin[1];
            end

            // Pass sign and exponent to stage 3
            sign_res_stage3 <= sign_res_stage2;
            exp_res_stage3 <= exp_res_stage2;
        end
    end

    // Final Stage: Handle special cases and output the result
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 0;
            op_fin[3] <= 0;
        end else begin
            // Handle overflow, underflow, and special cases
            if (exp_res_stage3 >= 8'hFF) begin
                // Overflow, return infinity
                result <= {sign_res_stage3, 8'hFF, 7'h0};
                op_fin[3] <= op_fin[2];
            end else if (exp_res_stage3 <= 8'h00) begin
                // Underflow, return zero
                result <= {sign_res_stage3, 8'h00, 7'h0};
                op_fin[3] <= op_fin[2];
            end else begin
                // Normal case, compose the result
                result <= {sign_res_stage3, norm_exp_stage3[7:0], norm_mant_stage3[6:0]};
                op_fin[3] <= op_fin[2];
            end
        end
    end


endmodule