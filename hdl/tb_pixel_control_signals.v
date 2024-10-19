module tb_pixel_control_signals;

// Testbench signals
reg clk;
reg reset_n;
reg valid_in;
wire hStart;
wire hEnd;
wire vStart;
wire vEnd;
wire valid;

// Instantiate the pixel control signals module
pixel_control_signals uut (
    .clk     (clk),
    .reset_n (reset_n),
    .valid_in(valid_in),
    .hStart  (hStart),
    .hEnd    (hEnd),
    .vStart  (vStart),
    .vEnd    (vEnd),
    .valid   (valid)
);

// Clock generation (50MHz clock)
always begin
    #10 clk = ~clk;  // 20ns clock period (50MHz)
end

// Testbench logic
initial begin
    // Initialize inputs
    clk = 0;
    reset_n = 0;
    valid_in = 0;
    
    // Apply reset
    #25 reset_n = 1;  // De-assert reset after 25ns

    // Start sending valid_in signal after reset
    @(posedge clk)
    valid_in = 1;

    // Let the system run for a while to test several frames
    #2000; // Simulate for 2000 ns
    wait(uut.vCounter == 9)
        valid_in = 0;


    // End simulation
    $finish;
end

// Monitor signals for debugging
initial begin
    $monitor("Time=%0d, hStart=%b, hEnd=%b, vStart=%b, vEnd=%b, valid=%b, hCounter=%0d, vCounter=%0d",
             $time, hStart, hEnd, vStart, vEnd, valid, uut.hCounter, uut.vCounter);
end

endmodule