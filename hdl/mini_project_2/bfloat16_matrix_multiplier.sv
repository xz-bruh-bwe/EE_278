// This module is parameterized so that we can just the amount of multipliers

module bfloat16_matrix_multiplier #(parameter N     = 5'd16,
                                              SIZE  = 4'd2)
(
    input              clk                          ,
    input              rst_n                        ,
    input      [N-1:0] A        [SIZE-1:0][SIZE-1:0], // 4x4 matrix A (16-bit bfloat16 elements)
    input      [N-1:0] B        [SIZE-1:0][SIZE-1:0], // 4x4 matrix B (16-bit bfloat16 elements)
    input              OP_START [SIZE*SIZE-1:0]     , // OP FINISH size is SIZE*SIZE
    output wire        OP_FINISH                    ,
    output reg [N-1:0] C        [SIZE-1:0][SIZE-1:0]  // 4x4 matrix C (16-bit bfloat16 results)
);

// Intermediate signals for partial sums and multiplier outputs
    wire [N-1:0] mult_out        [SIZE-1:0][SIZE-1:0];
    wire [N-1:0] add_out         [SIZE-1:0][SIZE-1:0];
    wire        operation_wire  [SIZE-1:0];
    reg  [N-1:0] partial_sum     [SIZE-1:0][SIZE-1:0];

    wire [SIZE*SIZE-1:0] OP_IN;

    // Generate Variables associated with the instantiations of the adders/multipliers
    genvar i, j;
    integer a;
    integer m, n;


    // Instantiate the PEs for the systolic array
    // Each PE consists of a bfloat16 multiplier followed by a bfloat16 adder.
    generate
        for(i = 0; i < SIZE; i = i + 1) begin: row
            for(j = 0; j < SIZE; j = j + 1) begin: col

            // Multiply Operation
            bfloat16_mult_pipelined #(.N(N)
                )
                bfloat16_mult_pipelined(
                    .A        (A[i][j]   ),  //Input from matrix A
                    .B        (B[j][i]   ),  //Input from matrix B (transposed [j][i])
                    .clk      (clk       ), 
                    .rst_n    (rst_n     ), 
                    .op_start (OP_START[i * SIZE + j]), 
                    .op_finish(/* Open */) , 
                    .result   (mult_out[i][j])  
                );

            bfloat16_adder_pipelined #(.N(N)
                )
                bfloat16_adder_pipelined(
                    .A        (partial_sum[i][j]      ),   // First_n Bfloat16 input
                    .B        (mult_out[j][i]      ),   // Second Bfloat16 input
                    .clk      (clk          ),   // Clock
                    .rst_n    (rst_n        ),   // Reset
                    .op_start (1'b0         ),   //
                    .op_finish(/*  Open   */),   //
                    .result   (add_out[i][j])    // Bfloat16 output
                );
            end
        end
    endgenerate

     // Always block for updating partial sums and storing the final result
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset all partial sums and output matrix C to zero
            for (m = 0; m < SIZE; m = m + 1) begin
                for (n = 0; n < SIZE; n = n + 1) begin
                    partial_sum[m][n] <= 16'd0;
                    C[m][n] <= 16'd0;
                end
            end
        end else begin
            // Update partial sums and store results in C after accumulatioN
            for (m = 0; m < SIZE; m = m + 1) begin
                for (n = 0; n < SIZE; n = n + 1) begin
                    partial_sum[m][n] <= add_out[m][n];
                    // Store the result in matrix C after all partial sums are accumulated
                    if (n == SIZE-1) begin
                        C[m][n] <= add_out[m][n];
                    end
                end
            end
        end
    end

endmodule