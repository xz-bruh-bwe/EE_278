module bfloat16_partial_element #(parameter N = 5'd16)
    (
    input  [N-1:0]      A_in,       // First Bfloat16 input 
    input  [N-1:0]      B_in,       // Second Bfloat16 input
    output reg  [N-1:0] A_out,      // First Bfloat16 input 
    output reg  [N-1:0] B_out,      // Second Bfloat16 input
    input               clk,        // Clock
    input               rst_n,      // Reset
    input               op_start,   // Operation Start
    output wire         op_finish,  //
    output wire [N-1:0]  result     // Bfloat16 output
);

//Wires
wire            mult_op_finish;
wire [N-1:0]    mult_op_result;

//Reg
wire [N-1:0]     partial_sum;
reg [N-1:0]     partial_sum_q;

assign result = partial_sum_q; 

always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            begin
                A_out         <= 1'b0;
                B_out         <= 1'b0;
                partial_sum_q <= 1'b0;
            end
        else 
            begin 
                 
                A_out         <= A_in;
                B_out         <= B_in;
                partial_sum_q <= partial_sum;
            end
    end
bfloat16_mult_pipelined #(.N(N))
    bfloat16_mult_pipelined(
        .A        (A_in),           // input  [N-1:0]      |//First Bfloat16 input
        .B        (B_in),           // input  [N-1:0]      |//Second Bfloat16 input
        .clk      (clk),            // input               |//Clock
        .rst_n    (rst_n),          // input               |//Reset
        .op_start (op_start),       // input               |//Operation Start
        .op_finish(mult_op_finish), // output wire         |//
        .result   (mult_op_result)  // output reg [N-1:0]  |//Bfloat16 output
);
bfloat16_adder_pipelined #(.N(N))
    bfloat16_adder_pipelined(       
        .A        (partial_sum_q),  // input  [N-1:0]     |//First_n Bfloat16 input
        .B        (mult_op_result), // input  [N-1:0]     |//Second Bfloat16 input
        .clk      (clk),            // input              |//Clock
        .rst_n    (rst_n),          // input              |//Reset
        .op_start (mult_op_finish), // input              |//
        .op_finish(op_finish),      // output wire        |//
        .result   (partial_sum)     // output reg [N-1:0] |//Bfloat16 output
);
endmodule