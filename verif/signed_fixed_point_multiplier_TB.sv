module signed_fixed_point_multiplier_TB;

    // Inputs
    reg signed [3:0] A;
    reg signed [3:0] B;

    // Output
    wire signed [7:0] Product;

    // Instantiate the DUT (Device Under Test)
    signed_fixed_point_multiplier dut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    // Test cases
    initial begin
        // Test Case 1: A = 4'b0101 (1.25 in fixed-point), B = 4'b0011 (0.75 in fixed-point)
        // Expected Result: Product = 4'b00011010 (0.9375 in fixed-point)
        A = 4'b0101; // 1.25
        B = 4'b0011; // 0.75
        #10;
        $display("Test Case 1: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 2: A = 4'b1100 (-1.00 in fixed-point), B = 4'b0010 (0.50 in fixed-point)
        // Expected Result: Product = 4'b11110000 (-0.50 in fixed-point)
        A = 4'b1100; // -1.00
        B = 4'b0010; // 0.50
        #10;
        $display("Test Case 2: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 3: A = 4'b1011 (-1.25 in fixed-point), B = 4'b0101 (1.25 in fixed-point)
        // Expected Result: Product = 4'b11101111 (-1.5625 in fixed-point)
        A = 4'b1011; // -1.25
        B = 4'b0101; // 1.25
        #10;
        $display("Test Case 3: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 4: A = 4'b1001 (-1.75 in fixed-point), B = 4'b1001 (-1.75 in fixed-point)
        // Expected Result: Product = 4'b01100001 (3.0625 in fixed-point)
        A = 4'b1001; // -1.75
        B = 4'b1001; // -1.75
        #10;
        $display("Test Case 4: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
                 A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // End of simulation
        //$stop;
    end

endmodule