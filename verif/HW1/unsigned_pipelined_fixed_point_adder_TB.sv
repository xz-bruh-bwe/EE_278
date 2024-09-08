module unsigned_pipelined_fixed_point_adder_TB;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;

    reg clk, rst;

    // Output
    wire [8:0] Sum;

    // Instantiate the DUT (Device Under Test)
    unsigned_pipelined_fixed_point_adder dut (
        .A(A),
        .B(B),
        .clk(clk),
        .rst(rst),
        .Sum(Sum)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10 ns clock period (100 MHz)
    end
        initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        A = 8'b0;
        B = 8'b0;
        #15;
        rst = 0;
        #15;
        // Apply stimuli with correct timing
        // Test Case 1: A = 8'b00001111 (0.9375), B = 8'b00001111 (0.9375)
        @(negedge clk);  // Wait for the negative edge of the clock
        A = 8'b0000_1111; 
        B = 8'b0000_1111;
        #50;
        @(posedge clk);  // Capture the result after a clock cycle
        #10;
        @(posedge clk);
        $display("Test Case 1: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
        // Test Case 2: A = 8'b00110000 (1.50), B = 8'b00110000 (1.50)
        @(negedge clk);
        A = 8'b0001_1000;
        B = 8'b0001_1000;
        @(posedge clk);
        #10;
        @(posedge clk);
        $display("Test Case 2: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
        // Test Case 3: A = 8'b11110000 (15.00), B = 8'b00010000 (1.00)
        @(negedge clk);
        A = 8'b1111_0000;
        B = 8'b0001_0000;
        @(posedge clk);
        #10;  
        @(posedge clk);
        $display("Test Case 3: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
        // Test Case 4: A = 8'b00000000 (0.00), B = 8'b00000000 (0.00)
        @(negedge clk);
        A = 8'b1000_1111;
        B = 8'b0000_1001;
        @(posedge clk);
        #10; 
        @(posedge clk);
        $display("Test Case 4: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);

        // Test Case 4: A = 8'b00000000 (0.00), B = 8'b00000000 (0.00)
        @(negedge clk);
        A = 8'b1000_0000;
        B = 8'b0001_0001;
        @(posedge clk);
        #10; 
        @(posedge clk);
        $display("Test Case 4: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
        // End of simulation
        $stop;
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
//        // Initialize inputs
//        A = 8'b0;
//        B = 8'b0;
//
//        // Apply stimuli with correct timing
//        // Test Case 1: A = 8'b00001111 (0.9375), B = 8'b00001111 (0.9375)
//        @(negedge clk);  // Wait for the negative edge of the clock
//        A = 8'b0000_1111; 
//        B = 8'b0000_1111;
//        
//        @(posedge clk);  // Capture the result after a clock cycle
//        #10;
//        @(posedge clk);
//        $display("Test Case 1: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 2: A = 8'b00110000 (1.50), B = 8'b00110000 (1.50)
//        @(negedge clk);
//        A = 8'b0001_1000;
//        B = 8'b0001_1000;
//        @(posedge clk);
//        #10;
//        @(posedge clk);
//        $display("Test Case 2: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 3: A = 8'b11110000 (15.00), B = 8'b00010000 (1.00)
//        @(negedge clk);
//        A = 8'b1111_0000;
//        B = 8'b0001_0000;
//        @(posedge clk);
//        #10;  
//        @(posedge clk);
//        $display("Test Case 3: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // Test Case 4: A = 8'b00000000 (0.00), B = 8'b00000000 (0.00)
//        @(negedge clk);
//        A = 8'b0000_0000;
//        B = 8'b0000_0000;
//        @(posedge clk);
//        #10; 
//        @(posedge clk);
//        $display("Test Case 4: A = %b (%0.4f), B = %b (%0.4f), Sum = %b (%0.4f)", 
//                 A, $itor(A)/16.0, B, $itor(B)/16.0, Sum, $itor(Sum)/16.0);
//
//        // End of simulation
//        $stop;
//    end

