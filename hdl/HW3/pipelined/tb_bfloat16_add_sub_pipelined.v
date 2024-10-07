module tb_bfloat16_add_sub_pipelined;

    // Inputs to the DUT (Device Under Test)
    reg [15:0] A;
    reg [15:0] B;
    reg clk;
    reg rst;

    // Output from the DUT
    wire [15:0] result;

    // Instantiate the DUT
    bfloat16_add_sub_pipelined dut (
        .A(A),
        .B(B),
        .clk(clk),
        .rst(rst),
        .result(result)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Apply reset and test cases
    initial begin
        // Initialize clock and reset
        clk = 0;
        rst = 1;
        A = 16'b0;
        B = 16'b0;

        // Apply reset for a few cycles
        #20 rst = 0;

        // Test Case 1: Add two positive numbers
        A = 16'b0011_1110_1000_0000; //.25
        B = 16'b0011_1111_1001_0000; // 1.125       
        #50;  // Wait for the pipeline to process


        // Test Case: 1024 - 8075
        /****** Multiply **********/
        A = 16'b0100_0100_1000_0000; // 1024
        //b = 16'b0011_1111_1000_0000; //  1
        /******* Add ***************/
        B = 16'b1100_0101_1111_1100; //-8075
        /*******     ***************/
        #10;
        
        


        $display("Test Case 1: A = %h, B = %h, Result = %h", A, B, result);  // Expected result: 3.0 in Bfloat16 (0x4040)


        // Finish simulation
        $finish;
    end

endmodule