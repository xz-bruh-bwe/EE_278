module tb_bfloat16_mult_pipelined;

    // Inputs to the DUT
    reg [15:0] A;
    reg [15:0] B;
    reg clk;
    reg rst;

    // Output from the DUT
    wire [15:0] result;

    // Instantiate the DUT (Device Under Test)
    bfloat16_mult_pipelined dut (
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

        

        // // Test Case: -2.5 x -7.25
        A = 16'b1100_0000_0010_0000;
        B = 16'b1100_0000_1110_1000;
        #100;
        //display_result(A, B, result); // Expected result: 2.0 in Bfloat16 (0x4000)
        
        // Test Case: 2014 X 3.75
        A = 16'b0100_0100_1111_1011;  
        B = 16'b0100_0000_0111_0000;
        #100;
        //display_result(A, B, result); // Expected result: -1.0 in Bfloat16 (0xBF80)

        // Finish simulation
        $finish;
    end

endmodule