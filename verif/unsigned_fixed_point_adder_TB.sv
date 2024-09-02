module unsigned_fixed_point_adder_TB;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;

    // Output
    wire [4:0] Sum;

    // Instantiate the DUT (Device Under Test)
    unsigned_fixed_point_adder dut (
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
        #10; // Wait for 10 time units
        $display("Test Case 1: A = %b, B = %b, Sum = %b", A, B, Sum);

        // Test Case 2: A = 4'b1100 (3.00 in fixed-point), B = 4'b0011 (0.11 in fixed-point)
        // Expected Result: Sum = 4'b1111 (11.11 in fixed-point)
        A = 4'b1100; // 3.00
        B = 4'b0011; // 0.75
        #10; // Wait for 10 time units
        $display("Test Case 2: A = %b, B = %b, Sum = %b", A, B, Sum);

        // Test Case 3: A = 4'b1001 (2.01 in fixed-point), B = 4'b0111 (1.11 in fixed-point)
        // Expected Result: Sum = 5'b10000 (100.00 in fixed-point with overflow)
        A = 4'b1001; // 2.25
        B = 4'b0111; // 1.75
        #10; // Wait for 10 time units
        $display("Test Case 3: A = %b, B = %b, Sum = %b", A, B, Sum);

        // End of simulation
        //$stop;
    end

endmodule