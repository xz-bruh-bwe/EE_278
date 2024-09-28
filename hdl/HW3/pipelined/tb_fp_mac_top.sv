module tb_fp_mac_top;

    // Parameters
    parameter N = 16;  // Half-precision (16-bit floating-point)
    
    // Testbench signals
    reg  clk;
    reg  rst_n;
    reg  [N-1:0] a, b, c;
    wire [N-1:0] result;

    // Instantiate the DUT (Device Under Test)
    fp_mac_top #(.N(N)) dut (
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .b(b),
        .c(c),
        .result(result)
    );

    // Clock generation (50MHz, 20ns period)
    always #10 clk = ~clk;

    // Test stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        rst_n = 0;
        a = 0;
        b = 0;
        c = 0;

        // Apply reset
        #25 rst_n = 1;  // Release reset after a few cycles

        // Apply first test case
        #20;
        a = 16'h3C00;  // 1.0 in half-precision floating point
        b = 16'h4000;  // 2.0 in half-precision floating point
        c = 16'h4200;  // 3.0 in half-precision floating point (accumulate)

        #100; // Wait for pipeline to process the result

        // Apply second test case
        #20;
        a = 16'h3800;  // 0.5 in half-precision floating point
        b = 16'h4200;  // 3.0 in half-precision floating point
        c = 16'h0000;  // 0.0 (accumulate)

        #100; // Wait for pipeline to process the result

        // Apply third test case
        #20;
        a = 16'hC000;  // -2.0 in half-precision floating point
        b = 16'hC100;  // -4.0 in half-precision floating point
        c = 16'hC200;  // -6.0 in half-precision floating point

        #100; // Wait for pipeline to process the result

        // Apply fourth test case
        #20;
        a = 16'h3C00;  // 1.0 in half-precision floating point
        b = 16'h4200;  // 3.0 in half-precision floating point
        c = 16'h3800;  // 0.5 in half-precision floating point (accumulate)

        #100; // Wait for pipeline to process the result

        // Finish simulation
        $stop;
    end

    // Monitor to display the result
    initial begin
        $monitor("Time: %0t | a: %h, b: %h, c: %h, result: %h", $time, a, b, c, result);
    end

endmodule