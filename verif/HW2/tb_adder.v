module tb_adder();

parameter WIDTH1 = 4;
parameter WIDTH2 = 4;

// Testbench signals
reg [WIDTH1-1:0] l1, l2;
reg [WIDTH2-1:0] l3, l4;
reg clk;
reg aclr;
wire [WIDTH1+WIDTH2-1:0] sum;

// Instantiate the adder module
adder #(WIDTH1, WIDTH2) uut (
    .l1(l1),
    .l2(l2),
    .l3(l3),
    .l4(l4),
    .clk(clk),
    .aclr(aclr),
    .sum(sum)
);

// Clock generation
always #5 clk = ~clk;

// Testbench procedure
initial begin
    // Initialize signals
    clk = 0;
    aclr = 0;
    l1 = 0;
    l2 = 0;
    l3 = 0;
    l4 = 0;

    // Apply reset
    aclr = 1;
    #10;
    aclr = 0;

    // Test case 1: Add small values
    l1 = 4'b0011;  // 3
    l2 = 4'b0101;  // 5
    l3 = 4'b0110;  // 6
    l4 = 4'b1001;  // 9
    #10;

    // Test case 2: Add larger values
    l1 = 4'b1111;  // 15
    l2 = 4'b0001;  // 1
    l3 = 4'b1101;  // 13
    l4 = 4'b1011;  // 11
    #10;

    // Test case 3: Add with carry from LSB addition
    l1 = 4'b1110;  // 14
    l2 = 4'b0011;  // 3
    l3 = 4'b1001;  // 9
    l4 = 4'b1010;  // 10
    #10;

    // Finish simulation
    $stop;
end

// Monitor output
initial begin
    $monitor("At time %0d: l1=%b, l2=%b, l3=%b, l4=%b => sum=%b", $time, l1, l2, l3, l4, sum);
end

endmodule