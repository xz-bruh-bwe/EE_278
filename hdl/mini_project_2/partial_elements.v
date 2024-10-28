module partial_element #(parameter N = 5'd16)
    (
    input  [N-1:0] A_in,        // First Bfloat16 input 
    input  [N-1:0] B_in,        // Second Bfloat16 input

    output reg  [N-1:0] A_out,  // First Bfloat16 input 
    output reg  [N-1:0] B_out,  // Second Bfloat16 input

    input               clk,        // Clock
    input               rst_n,      // Reset
    input               op_start,   // Operation Start
    output wire         op_finish,  //
    output reg [N-1:0]  result   // Bfloat16 output
);

//Wire


bfloat16_mult_pipelined #(parameter N = 5'd16)
    bfloat16_mult_pipelined(
        .A        (),   // input  [N-1:0]      //First Bfloat16 input
        .B        (),   // input  [N-1:0]      //Second Bfloat16 input
        .clk      (),   // input               //Clock
        .rst_n    (),   // input               //Reset
        .op_start (),   // input               //Operation Start
        .op_finish(),   // output wire         //
        .result   ()    // output reg [N-1:0]  //Bfloat16 output
);


bfloat16_adder_pipelined #(parameter N = 5'd16)
    bfloat16_adder_pipelined(
        .A        (),   // input  [N-1:0]     //First_n Bfloat16 input
        .B        (),   // input  [N-1:0]     //Second Bfloat16 input
        .clk      (),   // input              //Clock
        .rst_n    (),   // input              //Reset
        .op_start (),   // input              //
        .op_finish(),   // output wire        //
        .result   ()    // output reg [N-1:0] //Bfloat16 output
);

endmodule