module unsigned_fixed_point_multiplier_TB;

    // Inputs
    reg unsigned [3:0] A;
    reg unsigned [3:0] B;

    // Output
    wire unsigned [7:0] Product;

    // Instantiate the DUT (Device Under Test)
    unsigned_fixed_point_multiplier dut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    // Test cases
    initial begin
        // Test Case 1: A = 4'b0101 (1.25 in fixed-point), B = 4'b0011 (0.75 in fixed-point)
        // Expected Result: Product = 4'b00100100 (0.9375 in fixed-point)
        A = 4'b0101; // 1.25
        B = 4'b0011; // 0.75
        #10;
        //$display("Test Case 1: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
        //         A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 2: A = 4'b1100 (3.00 in fixed-point), B = 4'b0010 (0.50 in fixed-point)
        // Expected Result: Product = 4'b01100000 (1.50 in fixed-point)
        A = 4'b1100; // 3.00
        B = 4'b0010; // 0.50
        #10;
        //$display("Test Case 2: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
        //         A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 3: A = 4'b0111 (1.75 in fixed-point), B = 4'b0111 (1.75 in fixed-point)
        // Expected Result: Product = 4'b11000001 (3.0625 in fixed-point)
        A = 4'b0111; // 1.75
        B = 4'b0111; // 1.75
        #10;
        //$display("Test Case 3: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
        //         A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // Test Case 4: A = 4'b1001 (2.25 in fixed-point), B = 4'b0100 (1.00 in fixed-point)
        // Expected Result: Product = 4'b10010000 (2.25 in fixed-point)
        A = 4'b1001; // 2.25
        B = 4'b0100; // 1.00
        #10;
        //$display("Test Case 4: A = %b (%0.2f), B = %b (%0.2f), Product = %b (%0.4f)", 
        //         A, $itor(A)/4.0, B, $itor(B)/4.0, Product, $itor(Product)/16.0);

        // End of simulation
        //$stop;
    end

endmodule