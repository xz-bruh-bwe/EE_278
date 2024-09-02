module signed_fixed_point_adder_TB;

    // Inputs
    reg signed [3:0] A;
    reg signed [3:0] B;

    // Output
    wire signed [4:0] Sum;

    // Instantiate the DUT (Device Under Test)
    signed_fixed_point_adder dut (
        .A(A),
        .B(B),
        .Sum(Sum)
    );

    // Test cases
    initial begin
        // Test Case 1: A = 4'b0101 (1.01 in fixed-point), B = 4'b0011 (0.11 in fixed-point)
        // Expected Result: Sum = 4'b1000 (10.00 in fixed-point)
        A = 4'b0101; // 1.25
        B = 4'b0011; // 0.75
        #10;
        $display("Test Case 1: A = %b (%0.2f), B = %b (%0.2f), Sum = %b (%0.2f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Sum, $itor(Sum)/4.0);

        // Test Case 2: A = 4'b1100 (-1.00 in fixed-point), B = 4'b0011 (0.75 in fixed-point)
        // Expected Result: Sum = 4'b0111 (-0.25 in fixed-point)
        A = 4'b1100; // -1.00
        B = 4'b0011; // 0.75
        #10;
        $display("Test Case 2: A = %b (%0.2f), B = %b (%0.2f), Sum = %b (%0.2f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Sum, $itor(Sum)/4.0);

        // Test Case 3: A = 4'b1010 (-1.50 in fixed-point), B = 4'b0110 (1.50 in fixed-point)
        // Expected Result: Sum = 4'b0000 (0.00 in fixed-point)
        A = 4'b1010; // -1.50
        B = 4'b0110; // 1.50
        #10;
        $display("Test Case 3: A = %b (%0.2f), B = %b (%0.2f), Sum = %b (%0.2f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Sum, $itor(Sum)/4.0);

        // Test Case 4: A = 4'b1110 (-0.25 in fixed-point), B = 4'b1001 (-1.75 in fixed-point)
        // Expected Result: Sum = 5'b11011 (-2.00 in fixed-point)
        A = 4'b1110; // -0.25
        B = 4'b1001; // -1.75
        #10;
        $display("Test Case 4: A = %b (%0.2f), B = %b (%0.2f), Sum = %b (%0.2f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Sum, $itor(Sum)/4.0);

        // End of simulation
        //$stop;
    end

endmodule