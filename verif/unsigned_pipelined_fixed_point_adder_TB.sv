module unsigned_pipelined_fixed_point_adder_TB;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg clk;

    // Output
    wire [8:0] Sum;

    // Instantiate the DUT (Device Under Test)
    unsigned_pipelined_fixed_point_adder dut (
        .A(A),
        .B(B),
        .clk(clk),
        .Sum(Sum)
    );

    // Clock generation
    always #5 clk = ~clk; // 10 ns clock period

    // Test cases
    initial begin
        // Initialize the clock
        clk = 0;

        // Test Case 1: A = 8'b00001111 (0.9375 in fixed-point), B = 8'b00001111 (0.9375 in fixed-point)
        // Expected Result: Sum = 9'b00011110 (1.875 in fixed-point)
        A = 8'b0000_1111; // 0.9375
        B = 8'b0000_1111; // 0.9375
        #20;
        $display("Test Case 1: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);

        // Test Case 2: A = 8'b00110000 (1.50 in fixed-point), B = 8'b00110000 (1.50 in fixed-point)
        // Expected Result: Sum = 9'b01100000 (3.00 in fixed-point)
        A = 8'b0001_1000; // 1.50
        B = 8'b0001_1000; // 1.50
        #20;
        $display("Test Case 2: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);

        // Test Case 3: A = 8'b11110000 (15.00 in fixed-point), B = 8'b00010000 (1.00 in fixed-point)
        // Expected Result: Sum = 9'b00000000 (16.00 in fixed-point, wrap-around)
        A = 8'b11110000; // 15.00
        B = 8'b00010000; // 1.00
        #20;
        $display("Test Case 3: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);

        // Test Case 4: A = 8'b00000000 (0.00 in fixed-point), B = 8'b00000000 (0.00 in fixed-point)
        // Expected Result: Sum = 9'b00000000 (0.00 in fixed-point)
        A = 8'b00000000; // 0.00
        B = 8'b00000000; // 0.00
        #20;
        $display("Test Case 4: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);

        // End of simulation
        //$stop;
    end

endmodule