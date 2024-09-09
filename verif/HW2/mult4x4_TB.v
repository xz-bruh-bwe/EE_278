`timescale 1ns / 1ps

module mult4x4_TB;

// Inputs
reg clk;
reg St;
reg [3:0] Mplier;
reg [3:0] Mcand;

// Outputs
wire [8:0] Prod;
wire done;

// Instantiate the Unit Under Test (UUT)
mult4x4 uut (
    .clk(clk), 
    .St(St), 
    .Mplier(Mplier), 
    .Mcand(Mcand), 
    .Prod(Prod), 
    .done(done)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100MHz clock, period of 10ns
end

// Test stimulus
initial begin
    // Initialize inputs
    St = 0;
    Mplier = 0;
    Mcand = 0;
    /////////////////////////////////////////////////////////////////////////////////////////////
    // Wait 100 ns for global reset to finish
    #100;
    
    /////////////////////////////////////////////////////////////////////////////////////////////
    // Start the multiplication process
    Mplier = 4'b1010; // 10 in decimal
    Mcand = 4'b0011;  // 3 in decimal
    St = 1;           // Assert start
    #10;
    St = 0;           // Deassert start

    // Wait for multiplication to complete
    wait(done);
    #50;

    // Check the result
    #10;
    $display("Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != (Mplier * Mcand)) begin
        $display("Test Failed: Expected %d, Got %d", Mplier * Mcand, Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end
    /////////////////////////////////////////////////////////////////////////////////////////////
    // Test with another set of inputs
    #100;
    Mplier = 4'b1100; // 12 in decimal
    Mcand = 4'b0101;  // 5 in decimal
    St = 1;
    #10;
    St = 0;

    // Wait for multiplication to complete
    wait(done);
    #50;

    // Check the result
    #10;
    $display("Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != (Mplier * Mcand)) begin
        $display("Test Failed: Expected %d, Got %d", Mplier * Mcand, Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end

    /////////////////////////////////////////////////////////////////////////////////////////////
    Mplier = 4'b1001; 
    Mcand = 4'b0011;  
    St = 1;           // Start the multiplication
    #10;
    St = 0;           // Deassert start
    
    // Wait for multiplication to complete
    wait(done);
    #50;
    
    // Check the result
    #10;
    $display("Test Case 1: Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != 0) begin
        $display("Test Failed: Expected 0, Got %d", Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end
    /////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////
    Mplier = 4'b0100; 
    Mcand = 4'b0111;  
    St = 1;           // Start the multiplication
    #10;
    St = 0;           // Deassert start
    
    // Wait for multiplication to complete
    wait(done);
    #50;
    
    // Check the result
    #10;
    $display("Test Case 1: Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != 0) begin
        $display("Test Failed: Expected 0, Got %d", Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end
    /////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////
    Mplier = 4'b1001; 
    Mcand = 4'b0111;  
    St = 1;           // Start the multiplication
    #10;
    St = 0;           // Deassert start
    
    // Wait for multiplication to complete
    wait(done);
    #50;
    
    // Check the result
    #10;
    $display("Test Case 1: Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != 0) begin
        $display("Test Failed: Expected 0, Got %d", Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end
    /////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////////////////////
    Mplier = 4'b1110; 
    Mcand = 4'b0110;  
    St = 1;           // Start the multiplication
    #10;
    St = 0;           // Deassert start
    
    // Wait for multiplication to complete
    wait(done);
    #50;
    
    // Check the result
    #10;
    $display("Test Case 1: Mplier = %d, Mcand = %d, Prod = %d", Mplier, Mcand, Prod);
    if (Prod != 0) begin
        $display("Test Failed: Expected 0, Got %d", Prod);
    end else begin
        $display("Test Passed: %d * %d = %d", Mplier, Mcand, Prod);
    end
    /////////////////////////////////////////////////////////////////////////////////////////////

    // Hold:
    St = 1;           // Deassert start



        
    #100;
    $finish;
end

endmodule