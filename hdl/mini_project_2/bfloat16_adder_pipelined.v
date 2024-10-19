module bfloat16_adder_pipelined #(parameter N = 5'd16)
    (
    input  [N-1:0] A,    // First_n Bfloat16 input
    input  [N-1:0] B,    // Second Bfloat16 input
    input           clk,  // Clock
    input           rst_n,  // Reset
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

// Stage 1: Decompose inputs and calculate exponent difference
    always @(posedge clk or posedge rst_n) begin
        if (!rst_n) begin
            expA_stage1 <= 0;
            expB_stage1 <= 0;
            mantA_stage1 <= 0;
            mantB_stage1 <= 0;
            signA_stage1 <= 0;
            signB_stage1 <= 0;
        end else begin
            // Decompose inputs
            expA_stage1 <= A[14:7];
            expB_stage1 <= B[14:7];
            mantA_stage1 <= {1'b1, A[6:0]}; // Implicit leading 1 for normalized numbers
            mantB_stage1 <= {1'b1, B[6:0]}; // Implicit leading 1 for normalized numbers
            signA_stage1 <= A[15];
            signB_stage1 <= B[15];
        end
    end
//** Data takes 1 clock period propagation to decompose:

 // Stage 2: Align mantissas and perform addition/subtraction
    always @(posedge clk or posedge !rst_n) begin
        if (!rst_n) begin
            exp_diff_stage2      <= 0;
            mantA_shifted_stage2 <= 0;
            mantB_shifted_stage2 <= 0;
            signA_stage2         <= 0;
            signB_stage2         <= 0;
            larger_exp_stage2    <= 0;
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
        end
    end


endmodule

