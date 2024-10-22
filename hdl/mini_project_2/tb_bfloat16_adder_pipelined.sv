module tb_bfloat16_adder_pipelined;

    `timescale 1ns/1ps

////////////////////////////////////////////////////////////////////////
//System Definitions
////////////////////////////////////////////////////////////////////////
    `define SYS_CLOCK 10.0 // Clock period in nanoseconds


////////////////////////////////////////////////////////////////////////
//Input Output
////////////////////////////////////////////////////////////////////////
    // Inputs to the DUT (Device Under Test)
    logic [15:0]  A;
    logic [15:0]  B;
    logic         clk;
    logic         rst_n;
    logic         op_start;
    logic         op_finish;
    logic [15:0] result;


////////////////////////////////////////////////////////////////////////
// Module Instantiation
////////////////////////////////////////////////////////////////////////

    // Instantiate the DUT
    bfloat16_adder_pipelined dut (
        .A          (A),
        .B          (B),
        .clk        (clk),
        .rst_n      (rst_n),
        .op_start   (op_start),
        .op_finish  (op_finish),
        .result     (result)
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

        repeat_clocks(4);

        // Test Case 1:
        //A = 16'b1011_1110_1000_0000; //-0.25
        //B = 16'b0011_1111_1001_0000; // 1.125
               
        input_data(.input_a(16'b1011_1110_1000_0000), 
                    .input_b(16'b0011_1111_1001_0000));
        
        repeat_clocks(2); 

        // Test Case 2: 
        //A = 16'b0011_1111_1010_0000; //1.25
        //B = 16'b0011_1111_0110_0000; // .875
        input_data(.input_a(16'b0011_1111_1010_0000), 
                    .input_b(16'b0011_1111_0110_0000));
        
        repeat_clocks(2);

        // Test Case 3: 
        //A = 16'b1100_0000_1110_1000; // -7.25
        //B = 16'b0100_0000_0011_1000; // 2.875
        input_data(.input_a(16'b1100_0000_1110_1000), 
                    .input_b(16'b0100_0000_0011_1000));

        repeat_clocks(2);

        // Test Case 3: 
        //A = 16'b0011_1111_1010_0000; // 1.25
        //B = 16'b0011_1111_0100_0000; // .75
        input_data(.input_a(16'b0011_1111_1010_0000), 
                    .input_b(16'b0011_1111_0100_0000));
        
        // Finish simulation
        $finish;
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