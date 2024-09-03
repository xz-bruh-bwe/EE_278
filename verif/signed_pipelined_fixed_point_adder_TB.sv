module signed_pipelined_fixed_point_adder_TB;

    // Inputs
    reg signed [7:0] A;
    reg signed [7:0] B;
    reg clk;

    // Output
    wire signed [8:0] Sum;

    // Instantiate the DUT (Device Under Test)
    signed_pipelined_fixed_point_adder dut (
        .A(A),
        .B(B),
        .clk(clk),
        .Sum(Sum)
    );

     // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period of 10 time units
    end

        // Test stimulus
    initial begin
        // Initialize inputs
        A = 8'sh00; // 0 in hex
        B = 8'sh00; // 0 in hex

        // Wait for initial clock cycles
        @(posedge clk);
        @(posedge clk);

        // Apply test vectors
        A = 8'sh0F; // 15 in hex
        B = 8'sh0A; // 10 in hex
        @(posedge clk); // Wait for result

        A = 8'sh17; // 23 in hex
        B = 8'sh11; // 17 in hex
        @(posedge clk); // Wait for result

        A = 8'shF6; // -10 in hex (Two's complement representation)
        B = 8'shFB; // -5 in hex
        @(posedge clk); // Wait for result

        A = 8'sh7F; // 127 in hex
        B = 8'shFF; // -1 in hex
        @(posedge clk); // Wait for result

        A = 8'sh80; // -128 in hex
        B = 8'sh01; // 1 in hex
        @(posedge clk); // Wait for result

        // Finish simulation after a few more cycles
        @(posedge clk);
        @(posedge clk);
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %0t | A = %0d | B = %0d | Sum = %0d", $time, A, B, Sum);
    end


endmodule

//// Clock generation
//    initial begin
//        clk = 0;
//        forever #5 clk = ~clk; // 10 ns clock period
//    end
//
//    // Test cases
//    initial begin
//        
//        // Initialize inputs
//        A = 8'b0;
//        B = 8'b0;
//
//        // Test Case 1: A = 8'b00001111 (0.9375 in fixed-point), B = 8'b00001111 (0.9375 in fixed-point)
//        // Expected Result: Sum = 9'b00011110 (1.875 in fixed-point)
//        @(negedge clk);  // Wait for the negative edge of the clock
//        A = 8'b0000_1111; // 0.9375
//        B = 8'b0000_1111; // 0.9375
//        @(posedge clk);  // Capture the result after a clock cycle
//        @(posedge clk);  // Capture the result after a clock cycle
//        $display("Test Case 1: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 2: A = 8'b11111110 (-0.25 in fixed-point), B = 8'b00000001 (0.0625 in fixed-point)
//        // Expected Result: Sum = 9'b11111111 (-0.1875 in fixed-point)
//        @(negedge clk);  // Wait for the negative edge of the clock
//        A = 8'b1111_1110; // -0.25
//        B = 8'b0000_0001; // 0.0625
//        @(posedge clk);  // Capture the result after a clock cycle
//        @(posedge clk);  // Capture the result after a clock cycle
//        $display("Test Case 2: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 3: A = 8'b10000000 (-2.00 in fixed-point), B = 8'b01100000 (1.50 in fixed-point)
//        // Expected Result: Sum = 9'b11100000 (-0.50 in fixed-point)
//        @(negedge clk);  // Wait for the negative edge of the clock
//        A = 8'b1000_0000; // -2.00
//        B = 8'b0110_0000; // 1.50
//        @(posedge clk);  // Capture the result after a clock cycle
//        @(posedge clk);  // Capture the result after a clock cycle
//        $display("Test Case 3: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 4: A = 8'b00000000 (0.00 in fixed-point), B = 8'b11111111 (-0.0625 in fixed-point)
//        // Expected Result: Sum = 9'b11111111 (-0.0625 in fixed-point)
//        @(negedge clk);  // Wait for the negative edge of the clock
//        A = 8'b0000_0000; // 0.00
//        B = 8'b1111_1111; // -0.0625
//        @(posedge clk);  // Capture the result after a clock cycle
//        @(posedge clk);  // Capture the result after a clock cycle
//        $display("Test Case 4: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // End of simulation
//        $stop;
//    end