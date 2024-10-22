module tb_bfloat16_mult_pipelined;

    `timescale 1ns/1ps

////////////////////////////////////////////////////////////////////////
//System Definitions
////////////////////////////////////////////////////////////////////////
    `define SYS_CLOCK 10.0 // Clock period in nanoseconds

////////////////////////////////////////////////////////////////////////
//Parameters
////////////////////////////////////////////////////////////////////////
parameter DWIDTH = 5'd16;

////////////////////////////////////////////////////////////////////////
//Input Output
////////////////////////////////////////////////////////////////////////
    // Inputs to the DUT (Device Under Test)
    logic  [DWIDTH-1:0] A           ;    // First Bfloat16 input
    logic  [DWIDTH-1:0] B           ;    // Second Bfloat16 input
    logic               clk         ;    // Clock
    logic               rst_n       ;    // Reset
    logic               op_start    ;    // Operation Start
    logic               op_finish   ;    // Operation Finish
    logic [DWIDTH-1:0]  result      ;    // Bfloat16 output


bfloat16_mult_pipelined #(.N(DWIDTH))
    bfloat16_mult_pipelined(
        .A       (A         ),    // First Bfloat16 input
        .B       (B         ),    // Second Bfloat16 input
        .clk     (clk       ),    // Clock
        .rst_n   (rst_n     ),    // Reset
        .op_start(op_start  ),    // Operation Start
        .op_finish(op_finish),    // Operation Finish
        .result  (result    )     // Bfloat16 output
);

////////////////////////////////////////////////////////////////////////
// Clock Period
////////////////////////////////////////////////////////////////////////
    // Clock generation
    always begin
        #(`SYS_CLOCK/2) clk = ~clk;  // Clock period of 10 time units
    end 

////////////////////////////////////////////////////////////////////////
// Initial Begin and Stimulus
////////////////////////////////////////////////////////////////////////
    // Apply reset and test cases
    initial begin
        // Initialize clock and reset
        clk      = 0;
        rst_n    = 0;
        op_start = 0;
        A        = 16'b0;
        B        = 16'b0;

        assert_reset();
        
        simple_clock();

        // Test Case 1:
        //A = 16'b0100_0001_0010_0010; // 10.125
        //B = 16'b1100_0000_1110_0001; //-7.03125
        input_data(.input_a(16'b0100_0001_0010_0010), 
                    .input_b(16'b1100_0000_1110_0001));
            
        repeat_clocks(2);

        // Test Case 2:
        //A = 16'b1100_0000_0011_0000; // -2.75
        //B = 16'b1011_1111_1010_0000; // -1.25               
        input_data(.input_a(16'b1100_0000_0011_0000), 
                    .input_b(16'b1011_1111_1010_0000));
            
        repeat_clocks(2); 


    end
////////////////////////////////////////////////////////////////////////
// Tasks
////////////////////////////////////////////////////////////////////////

task simple_clock;
    begin
        #`SYS_CLOCK;
        @(posedge clk);
    end
endtask

task assert_reset;
    begin
        simple_clock();
        rst_n = 0;
        simple_clock();
        rst_n = 1;
    end
endtask

task repeat_clocks(input int a);
    begin
        for(int x = 0; x < a; x = x + 1)
            begin
                simple_clock();
            end
    end

endtask

task assert_op_start;
    op_start = 1'b1;
endtask

task deassert_op_start;
    op_start = 1'b0;
endtask 

task input_data; 
    input [15:0] input_a;
    input [15:0] input_b;
        begin
            simple_clock();
            assert_op_start();
            A = input_a;
            B = input_b;
            simple_clock();
            deassert_op_start();
        end
endtask

endmodule 