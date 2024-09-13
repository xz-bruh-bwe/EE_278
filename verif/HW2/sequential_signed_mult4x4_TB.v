`timescale 1ns / 1ps

module sequential_signed_mult4x4_TB;

    // Inputs
    reg clk;
    reg St;
    reg signed [3:0] Mplier;
    reg signed [3:0] Mcand;

    // Outputs
    wire signed [8:0] Prod;
    wire done;

    // Instantiate the Unit Under Test (UUT)
    sequential_signed_mult4x4 uut (
        .clk(clk),
        .St(St),
        .Mplier(Mplier),
        .Mcand(Mcand),
        .Prod(Prod),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;  // Clock with 10ns period

    // Test procedure
    initial begin
        // Initialize Inputs
        clk = 0;
        St = 0;
        Mplier = 0;
        Mcand = 0;

        // Wait for the global reset to known state
        #100;

        // Test case 1: 3 * -4 = -12
        Mplier = 4'b1111; 
        Mcand = 4'b1111;  
        St = 1;
        #10; 
        
        St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 1: 3 * -4 = %d, Expected = -12", Prod);
        
        // Test case 2: -5 * 7 = -35
        
        Mplier = 4'b1011;  // -5
        Mcand = 4'b0111;   // 7
        St = 1;
        #10 St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 2: -5 * 7 = %d, Expected = -35", Prod);
        
        // Test case 3: -8 * -3 = 24
        
        Mplier = 4'b1000;  
        Mcand = 4'b1101;   
         St = 1;
        #10 St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 3: -8 * -3 = %d, Expected = 24", Prod);
        
        // Test case 4: 6 * 2 = 12
        
        Mplier = 4'b0110;  
        Mcand = 4'b0010;   
        St = 1;
        #10 St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 4: 6 * 2 = %d, Expected = 12", Prod);
        
        // Test case 5: 7 * -7 = -49
        St = 1;
        Mplier = 4'b0111;  
        Mcand = 4'b1001;   
        St = 1;
        #10 St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 5: 7 * -7 = %d, Expected = -49", Prod);

        // Test case 5: 7 * -7 = -49
        St = 1;
        Mplier = 4'b1111;  
        Mcand = 4'b1111;   
        St = 1;
        #10 St = 0;        // Release start
        wait(done);
        #50;
        $display("Test 5: 7 * -7 = %d, Expected = -49", Prod);
        
        
        // End of simulation
        $finish;
    end
endmodule