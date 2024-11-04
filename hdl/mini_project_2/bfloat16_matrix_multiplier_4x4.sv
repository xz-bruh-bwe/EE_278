module bfloat16_matrix_multiplier_4x4 #(parameter N     = 5'd16,
                                                SIZE  = 8'd16)
(
    input              clk                          ,
    input              rst_n                        ,
    input      [N-1:0] A         [SIZE-1:0]      , // 4x4 matrix A (16-bit bfloat16 elements)
    input      [N-1:0] B         [SIZE-1:0]      , // 4x4 matrix B (16-bit bfloat16 elements)
    input              OP_START  [SIZE*2-1:0]    , // OP FINISH size is SIZE*2
    output wire        OP_FINISH    [SIZE*SIZE-1:0] ,
    output reg [N-1:0] C            [SIZE-1:0][SIZE-1:0]   // 4x4 matrix C (16-bit bfloat16 results)
);

 // Wires for connecting each cell in the array
    wire [N-1:0] A_internal        [SIZE-1:0][SIZE-1:0];    // Wires for the 'A' connections
    wire [N-1:0] B_internal        [SIZE-1:0][SIZE-1:0];    // Wires for the 'B' connections
    wire [N-1:0] result_internal   [SIZE-1:0][SIZE-1:0];    // Result connections for each cell
    wire         op_start_internal [SIZE-1:0][SIZE-1:0];    // Internal start signals for each element
    wire         op_finish_internal[SIZE-1:0][SIZE-1:0];    // Internal finish signals for each element

 // Input Delay Registers
    //wire[N-1:0] A_data_delay[SIZE-1:0];
    //wire        A_delay     [SIZE-1:0];
    //
    //wire[N-1:0] B_data_delay[SIZE-1:0];
    //wire        B_delay     [SIZE-1:0];


    //reg [N-1:0] A[SIZE*2-1:0];           
    //reg [N-1:0] B[SIZE*2-1:0];           
    //reg         OP_START[SIZE*2-1:0];    

    //assign A[0]        = A_in[0];
    //assign B[0]        = B_in[0];
    //assign OP_START[0] = OP_START_in[0];

    // /* /* /*  Delay 1 */ 
    //     /*-------------------------------------------------------------*/
    //     DFF #(.N(N))
    //         DFF_0(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_in[1]),
    //             .data_b      (B_in[1]),
    //             .op_start_a  (OP_START_in[1]),
    //             .op_start_b  (OP_START_in[4]),
    //             .data_a_q    (A[1]),
    //             .data_b_q    (B[1]),
    //             .op_start_a_q(OP_START[1]),
    //             .op_start_b_q(OP_START[4])
    //     );
    // /*-------------------------------------------------------------*/

    // /*  Delay 2 */
    //      wire[N-1:0] A_data_delay[SIZE-1:0];
    //      wire        A_delay     [SIZE-1:0];
         
    //      wire[N-1:0] B_data_delay[SIZE-1:0];
    //      wire        B_delay     [SIZE-1:0];

    //      wire        OP_START_A_wire[SIZE-1:0];
    //      wire        OP_START_B_wire[SIZE-1:0];
    //     /*-------------------------------------------------------------*/
        
    //     DFF #(.N(N))
    //         DFF_1(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_in[2]),
    //             .data_b      (B_in[2]),
    //             .op_start_a  (OP_START_in[2]),
    //             .op_start_b  (OP_START_in[5]),
    //             .data_a_q    (A_data_delay[0]),
    //             .data_b_q    (B_data_delay[0]),
    //             .op_start_a_q(OP_START_A_wire[0]),
    //             .op_start_b_q(OP_START_B_wire[0])
    //     );

    //     DFF #(.N(N))
    //         DFF_2(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_data_delay[0]),
    //             .data_b      (B_data_delay[0]),
    //             .op_start_a  (OP_START_A_wire[0]),
    //             .op_start_b  (OP_START_B_wire[0]),
    //             .data_a_q    (A[2]),
    //             .data_b_q    (B[2]),
    //             .op_start_a_q(OP_START[2]),
    //             .op_start_b_q(OP_START[5])
    //     );
    // /*-------------------------------------------------------------*/

    // /*  Delay 3 */
    //     // wire[N-1:0] A_data_delay[SIZE-1:0];
    //     // wire        A_delay     [SIZE-1:0];

    //     // wire[N-1:0] B_data_delay[SIZE-1:0];
    //     // wire        B_delay     [SIZE-1:0];

    //     // wire        OP_START_A_wire[SIZE-1:0];
    //     // wire        OP_START_B_wire[SIZE-1:0];
    //     /*-------------------------------------------------------------*/
    //     DFF #(.N(N))
    //         DFF_3(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_in[3]),
    //             .data_b      (B_in[3]),
    //             .op_start_a  (OP_START_in[3]),
    //             .op_start_b  (OP_START_in[6]),
    //             .data_a_q    (A_data_delay[1]),
    //             .data_b_q    (B_data_delay[1]),
    //             .op_start_a_q(OP_START_A_wire[1]),
    //             .op_start_b_q(OP_START_B_wire[1])
    //     );

    //     DFF #(.N(N))
    //         DFF_4(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_data_delay[1]),
    //             .data_b      (B_data_delay[1]),
    //             .op_start_a  (OP_START_A_wire[1]),
    //             .op_start_b  (OP_START_B_wire[1]),
    //             .data_a_q    (A_data_delay[2]),
    //             .data_b_q    (B_data_delay[2]),
    //             .op_start_a_q(OP_START_A_wire[2]),
    //             .op_start_b_q(OP_START_B_wire[2])
    //     );

    //     DFF #(.N(N))
    //         DFF_5(
    //             .clk         (clk),
    //             .rst_n       (rst_n),
    //             .data_a      (A_data_delay[2]),
    //             .data_b      (B_data_delay[2]),
    //             .op_start_a  (OP_START_A_wire[2]),
    //             .op_start_b  (OP_START_B_wire[2]),
    //             .data_a_q    (A[3]),
    //             .data_b_q    (B[3]),
    //             .op_start_a_q(OP_START[3]),
    //             .op_start_b_q(OP_START[6])
    //     );
    // /*-------------------------------------------------------------*/ */ */


genvar i, j;
    generate
        for (i = 0; i < SIZE; i = i + 1) begin: row_loop
            for (j = 0; j < SIZE; j = j + 1) begin: col_loop
                bfloat16_partial_element #(.N(N)) element (
                    // Inputs
                    .A_in     ((j == 0) ? A[i] : A_internal[i][j-1]),       // If first column, connect from input A, else from previous column
                    .B_in     ((i == 0) ? B[j] : B_internal[i-1][j]),       // If first row, connect from input B, else from previous row
                    .clk      (clk),                                        // Clock
                    .rst_n    (rst_n),                                      // Reset

                    // `op_start` assignment
                    .op_start ((i == 0) ? OP_START[j] :                     // First row gets op_start from OP_START[j]
                               (j == 0) ? OP_START[SIZE + i - 1] :          // First column gets op_start from OP_START[SIZE + i]
                               op_finish_internal[i][j-1]),                 // All others get op_start from the op_finish of the previous element in the row

                    // Outputs
                    .A_out    (A_internal[i][j]),                           // Connect to the next column in the same row
                    .B_out    (B_internal[i][j]),                           // Connect to the next row in the same column
                    .op_finish(op_finish_internal[i][j]),                   // Local op_finish signal
                    .result   (result_internal[i][j])                       // Intermediate result
                );
                
                // Assign the result to output matrix C
                always @(posedge clk or negedge rst_n) begin
                    if (!rst_n)
                        C[i][j] <= 0;
                    else
                        C[i][j] <= result_internal[i][j];
                end
                
                // Assign final OP_FINISH signals
                assign OP_FINISH[i * SIZE + j] = op_finish_internal[i][j];
            end
        end
    endgenerate


endmodule 


/* genvar i, j;
    generate
        for (i = 0; i < SIZE; i = i + 1) begin: row_loop
            for (j = 0; j < SIZE; j = j + 1) begin: col_loop
                bfloat16_partial_element #(.N(N)) element (
                    // Inputs
                    .A_in     ((j == 0) ? A_delayed[i] : A_internal[i][j-1]),       // If first column, connect from input A, else from previous column
                    .B_in     ((i == 0) ? B_delayed[j] : B_internal[i-1][j]),       // If first row, connect from input B, else from previous row
                    .clk      (clk),                                        // Clock
                    .rst_n    (rst_n),                                      // Reset

                    // `op_start` assignment
                    .op_start ((i == 0) ? OP_START[j] :                     // First row gets op_start from OP_START[j]
                               (j == 0) ? OP_START[SIZE + i - 1] :              // First column gets op_start from OP_START[SIZE + i]
                               op_finish_internal[i][j-1]),                 // All others get op_start from the op_finish of the previous element in the row

                    // Outputs
                    .A_out    (A_internal[i][j]),                           // Connect to the next column in the same row
                    .B_out    (B_internal[i][j]),                           // Connect to the next row in the same column
                    .op_finish(op_finish_internal[i][j]),                   // Local op_finish signal
                    .result   (result_internal[i][j])                       // Intermediate result
                );
                
                // Assign the result to output matrix C
                always @(posedge clk or negedge rst_n) begin
                    if (!rst_n)
                        C[i][j] <= 0;
                    else
                        C[i][j] <= result_internal[i][j];
                end
                
                // Assign final OP_FINISH signals
                assign OP_FINISH[i * SIZE + j] = op_finish_internal[i][j];
            end
        end
    endgenerate */