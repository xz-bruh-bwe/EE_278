module bfloat16_adder_pipelined #(parameter N = 5'd16)
    (
    input  [N-1:0] A,    // First_n Bfloat16 input
    input  [N-1:0] B,    // Second Bfloat16 input
    input           clk,  // Clock
    input           rst_n,  // Reset
    input           op_start,
    output wire     op_finish,
    output reg [N-1:0] result // Bfloat16 output
);

//Pipeline Registers
    //Stage 1 Registers
    reg [7:0] expA_stage1, expB_stage1;
    reg [7:0] mantA_stage1, mantB_stage1; // Mantissa = 7 bits + 1 leading bit:
    reg       signA_stage1, signB_stage1;

    //Stage 2 Registers
    reg [7:0] exp_diff_stage2;
    reg [7:0] mantA_shifted_stage2, mantB_shifted_stage2; // Mantissa = 7 bits + 1 leading bit:
    reg       signA_stage2, signB_stage2;
    reg [7:0] larger_exp_stage2;

    //Stage 3 Regsiters
    reg [8:0] mant_res_stage3;
    reg sign_res_stage3;
    reg [7:0] exp_res_stage3;
    reg [6:0] mant_res_norm_stage3;

    reg [8:0] mant_sum  ;
    reg [8:0] mant_diff ;
    reg [8:0] mant_equal;

    //Stage Pipeline Reg
    reg op_fin[6:0];

    assign op_finish = op_fin[6];

// Stage 1: Decompose inputs and calculate exponent difference
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
            // Decompose inputs
            expA_stage1 <= A[14:7];
            expB_stage1 <= B[14:7];
            signA_stage1 <= A[15];
            signB_stage1 <= B[15];
    
            mantA_stage1 <= {1'b1, A[6:0]}; // Implicit leading 1 for normalized numbers
            mantB_stage1 <= {1'b1, B[6:0]}; // Implicit leading 1 for normalized numbers                
            op_fin[0]    <= op_start;

        end
    end
//** Data takes 1 clock period propagation to decompose:

 // Stage 2: Align mantissas and perform addition/subtraction
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            exp_diff_stage2      <= 0;
            mantA_shifted_stage2 <= 0;
            mantB_shifted_stage2 <= 0;
            signA_stage2         <= 0;
            signB_stage2         <= 0;
            larger_exp_stage2    <= 0;
                op_fin[1] <= 0;
            
        end else begin
            // Calculate exponent difference
            exp_diff_stage2   <= (expA_stage1 > expB_stage1) ? (expA_stage1 - expB_stage1) : (expB_stage1 - expA_stage1);
            larger_exp_stage2 <= (expA_stage1 > expB_stage1) ? expA_stage1 : expB_stage1; // Larger exponent for result

            // Align mantissas based on exponent difference
            mantA_shifted_stage2 <= mantA_stage1 >> exp_diff_stage2;
            mantB_shifted_stage2 <= mantB_stage1 >> exp_diff_stage2;

            // Carry over the signs
            signA_stage2 <= signA_stage1; // ::The Signs are carried over in stage 2? Propagation problems
            signB_stage2 <= signB_stage1; // ::The Signs are carried over in stage 2? Propagation problems

            op_fin[1] <= op_fin[0]; 
        end
    end

// Stage 3: Perform normalization and compute the result
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mant_res_stage3      <= 0;
            exp_res_stage3       <= 0;
            mant_res_norm_stage3 <= 0;
            sign_res_stage3      <= 0;
                op_fin[2] <= 0;
        end else begin
            // Mantissa addition or subtraction based on signs       
            mant_sum   <= (expA_stage1 >= expB_stage1) ? (mantA_stage1 + {1'b0, mantB_shifted_stage2}) : (mantB_stage1 + {1'b0, mantA_shifted_stage2});
            mant_diff  <= (expA_stage1 >= expB_stage1) ? (mantA_stage1 - {1'b0, mantB_shifted_stage2}) : (mantB_stage1 - {1'b0, mantA_shifted_stage2});

            mant_res_stage3 <= (signA_stage2 == signB_stage2) ? mant_sum : mant_diff;
            sign_res_stage3 <= (mantA_shifted_stage2 > mantB_shifted_stage2) ? signA_stage2 : signB_stage2;
            
            op_fin[2] <= op_fin[1];

            // Normalization logic
            if (mant_res_stage3[8] == 1'b1) begin
                // If the result mantissa is too large (9 bits), shift right and increment exponent
                exp_res_stage3       <= larger_exp_stage2 + 1;
                mant_res_norm_stage3 <= mant_res_stage3[7:1];
                    op_fin[3] <= op_fin[2];
            
            end else if(mant_res_stage3[7] == 1'b0 && exp_diff_stage2 > 0) begin
                exp_res_stage3 <= larger_exp_stage2 - 1;
                
                // Shift left if the result is too small and adjust the exponent downward
                mant_res_norm_stage3 <= mant_res_stage3[6:0] << 1 ;
                op_fin[3] <= op_fin[2];
            
            end else begin
                // No normalization needed
                exp_res_stage3       <= larger_exp_stage2;
                mant_res_norm_stage3 <= mant_res_stage3[6:0];
                    op_fin[3] <= op_fin[2];
            end
        end
    end

// Final Stage: Handle special cases and output the result
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 0;
            op_fin[6] <= 0;
            
        end else begin
            op_fin[4] <= op_fin[3];
            op_fin[5] <= op_fin[4];
            // Handle overflow, underflow, zero, and infinity
            if (exp_res_stage3 >= 8'hFF) begin
                // Overflow, return infinity
                result <= {sign_res_stage3, 8'hFF, 7'h0};
                op_fin[6] <= op_fin[5]; 
            end else if (exp_res_stage3 == 0) begin
                // Underflow, return zero
                result <= {sign_res_stage3, 8'h00, 7'h0};
                op_fin[6] <= op_fin[5];
            end else begin
                // Normal case, compose the result
                result <= {sign_res_stage3, exp_res_stage3, mant_res_norm_stage3};
                
                op_fin[6] <= op_fin[5];
            end
        end
    end
endmodule