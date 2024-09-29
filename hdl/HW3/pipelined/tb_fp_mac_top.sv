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
        //-----------------------------------------//
        // Mult Values
        //-----------------------------------------//
        a = 16'b0011_1100_0000_0000; // 1 in BF16
        b = 16'b0011_1100_1000_0000; // 1.125 in BF16
        //-----------------------------------------//
        //  Add Values
        c = 16'b0011_0100_0000_0000;  //  .25
        //-----------------------------------------//

        #100; // Wait for pipeline to process the result

        $stop;
    end

    // Monitor to display the result
    initial begin
        $monitor("Time: %0t | a: %h, b: %h, c: %h, result: %h", $time, a, b, c, result);
    end

endmodule