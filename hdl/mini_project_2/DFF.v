module DFF #(parameter N = 16)
    (
    input wire          clk,          // Clock input
    input wire          rst_n,        // Active-low asynchronous reset
    input wire[N-1:0]   data_a,       // Data input
    input wire[N-1:0]   data_b,       // Data input
    input wire          op_start_a,   //
    input wire          op_start_b,   //
    output reg [N-1:0]  data_a_q,     // Data output
    output reg [N-1:0]  data_b_q,     // Data output
    output reg          op_start_a_q,
    output reg          op_start_b_q
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            begin
                data_a_q      <= 1'b0;    // Reset the output to 0 on reset
                data_b_q      <= 1'b0;    // Reset the output to 0 on reset
                op_start_a_q  <= 1'b0;
                op_start_b_q  <= 1'b0;
            end
        else
            begin
                data_a_q     <= data_a;
                data_b_q     <= data_b;
                op_start_a_q <= op_start_a;       
                op_start_b_q <= op_start_b;       
            end         
    end

endmodule