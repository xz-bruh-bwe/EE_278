// This module is parameterized so that we can just the amount of multipliers

module bfloat16_matrix_multiplier #(parameter N     = 5'd16,
                                              SIZE  = 4'd4)
(
    input              clk                          ,
    input              rst_n                        ,
    input      [N-1:0] A        [SIZE-1:0][SIZE-1:0], // 4x4 matrix A (16-bit bfloat16 elements)
    input      [N-1:0] B        [SIZE-1:0][SIZE-1:0], // 4x4 matrix B (16-bit bfloat16 elements)
    input              OP_START [SIZE*SIZE*SIZE-1:0], // OP FINISH size is SIZE*SIZE
    output wire        OP_FINISH[SIZE*SIZE-1:0]     ,
    output reg [N-1:0] C        [SIZE-1:0][SIZE-1:0]  // 4x4 matrix C (16-bit bfloat16 results)
);

    // Generate Variables associated with the instantiations of the adders/multipliers
    // For multiplier loops
    genvar i, j;
    genvar k;

    wire [N-1:0] mult_result[SIZE*SIZE*SIZE-1:0];     // Wires for each of the 8 multiplier results (for a 2x2 matrix)
    wire         mult_op_finish[SIZE*SIZE*SIZE-1:0];


    //wire [N-1:0] mult_result[SIZE*SIZE*SIZE-1:0];     // Wires for each of the 8 multiplier results (for a 2x2 matrix)
    wire        adder_op_finish[SIZE*SIZE*SIZE-1:0];

    wire[N-1:0] partial_sum[SIZE*SIZE*2-1:0];
    wire        partial_sum_op_finish[SIZE*SIZE*2-1:0];


    genvar a, b;
    genvar idx;

    //mult_op_finish[i * SIZE * SIZE + j * SIZE + k]

    // Instantiate the PEs for the systolic array
    // Each PE consists of a bfloat16 multiplier followed by a bfloat16 adder.
    generate
        for(i = 0; i < SIZE; i = i + 1) begin: row
            for(j = 0; j < SIZE; j = j + 1) begin: col
                for(k = 0; k < SIZE; k = k + 1) begin: dep
                
            // Multiply Operation
            bfloat16_mult_pipelined #(.N(N)
                )
                bfloat16_mult_pipelined(
                    .A        (A[i][k]   ),  //Input from matrix A
                    .B        (B[k][j]   ),  //Input from matrix B (transposed s
                    .clk      (clk       ), 
                    .rst_n    (rst_n     ), 
                    .op_start (OP_START[i * SIZE * SIZE + j * SIZE + k]), 
                    .op_finish(mult_op_finish[i * SIZE * SIZE + j * SIZE + k]), 
                    .result   (mult_result[i * SIZE * SIZE + j * SIZE + k])  
                );

            end
        end
    end        
endgenerate


// Adder Instantiation 4x4
    generate
        for (idx = 0; idx < SIZE * SIZE; idx = idx + 1) begin: adder_blocks
            // Combine the first two multiplier results for each output element.
            bfloat16_adder_pipelined #(.N(N)) bfloat16_adder_pipelined_partial_adder_0 (
                .A        (mult_result[4 * idx + 0]),    
                .B        (mult_result[4 * idx + 1]),    
                .clk      (clk),
                .rst_n    (rst_n),
                .op_start (mult_op_finish[4 * idx + 0] || mult_op_finish[4 * idx + 1]), 
                .op_finish(partial_sum_op_finish[2 * idx + 0]),
                .result   (partial_sum[2 * idx + 0])
            );

            // Combine the next two multiplier results for each output element.
            bfloat16_adder_pipelined #(.N(N)) bfloat16_adder_pipelined_partial_adder_1 (
                .A        (mult_result[4 * idx + 2]),    
                .B        (mult_result[4 * idx + 3]),    
                .clk      (clk),
                .rst_n    (rst_n),
                .op_start (mult_op_finish[4 * idx + 2] || mult_op_finish[4 * idx + 3]), 
                .op_finish(partial_sum_op_finish[2 * idx + 1]),
                .result   (partial_sum[2 * idx + 1])
            );

            // Combine the partial sums to produce the final result for C.
            bfloat16_adder_pipelined #(.N(N)) bfloat16_adder_pipelined_final_adder (
                .A        (partial_sum[2 * idx + 0]),    
                .B        (partial_sum[2 * idx + 1]),    
                .clk      (clk),
                .rst_n    (rst_n),
                .op_start (partial_sum_op_finish[2 * idx + 0] || partial_sum_op_finish[2 * idx + 1]), 
                .op_finish(OP_FINISH[idx]),
                .result   (C[idx / SIZE][idx % SIZE])
            );
        end
    endgenerate

        



endmodule 
        
    
        // Instantiate the adder for each PE
        // bfloat16_adder_pipelined #(.N(N)
        // )
        //     bfloat16_adder_pipelined(
        //    .A        (),    
        //    .B        (),    
        //    .clk      (clk),
        //    .rst_n    (rst_n),
        //    .op_start (     ), 
        //    .op_finish(/* Open */) ,
        //    .result   () 
        // );



//     //Separate Adder 2x2
// generate
//     for (idx = 0; idx < SIZE*SIZE; idx = idx + 1) begin: adders
//         bfloat16_adder_pipelined #(.N(N)) 
//         bfloat16_adder_pipelined_inst (
//             .A        (mult_result[2*idx]),        // A input: Even-indexed result
//             .B        (mult_result[2*idx + 1]),    // B input: Odd-indexed result
//             .clk      (clk),
//             .rst_n    (rst_n),
//             .op_start (mult_op_finish[2*idx] || mult_op_finish[2*idx+1]), 
//             .op_finish(OP_FINISH[idx]),
//             .result   (C[idx / SIZE][idx % SIZE]) // Map to the corresponding row and column of C
//         );
//     end
// endgenerate

/* 
// Adder Instantiation 3x3
    generate
        for (idx = 0; idx < SIZE * SIZE; idx = idx + 1) begin: adder_blocks
            // Combine the first two multiplier results for each output element.
            bfloat16_adder_pipelined #(.N(N)) bfloat16_adder_pipelined_partial_adder_0 (
                .A        (mult_result[3 * idx + 0]),    
                .B        (mult_result[3 * idx + 1]),    
                .clk      (clk),
                .rst_n    (rst_n),
                .op_start (mult_op_finish[3 * idx + 0] || mult_op_finish[3 * idx + 1]), 
                .op_finish(partial_sum_op_finish[2 * idx + 0]),
                .result   (partial_sum[2 * idx + 0])
            );

            // Add the third multiplier result to the partial sum to get the final result.
            bfloat16_adder_pipelined #(.N(N)) bfloat16_adder_pipelined_final_adder (
                .A        (partial_sum[2 * idx + 0]),    
                .B        (mult_result[3 * idx + 2]),    
                .clk      (clk),
                .rst_n    (rst_n),
                .op_start (partial_sum_op_finish[2 * idx + 0] || mult_op_finish[3 * idx + 2]), 
                .op_finish(OP_FINISH[idx]),
                .result   (C[idx / SIZE][idx % SIZE])
            );
        end
    endgenerate */