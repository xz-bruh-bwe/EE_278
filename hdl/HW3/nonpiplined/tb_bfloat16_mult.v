module tb_bfloat16_mult;

    parameter WIDTH = 5'd16;
    
    // Inputs to the DUT
    reg [WIDTH-1:0] A;
    reg [WIDTH-1:0] B;
    
    // Output from the DUT
    wire [WIDTH-1:0] result;
    
    // Instantiate the DUT (Device Under Test)
    bfloat16_mult dut (
        .A(A),
        .B(B),
        .result(result)
    );
    
    // Task to display the test results
    task display_result;
        input [WIDTH-1:0] A;
        input [WIDTH-1:0] B;
        input [WIDTH-1:0] result;
        begin
            $display("A = %h, B = %h, Result = %h", A, B, result);
        end
    endtask
    
    // Test cases
    initial begin
        $display("Starting Bfloat16 Multiplier Test...");

        // Test Case 1: Multiply two positive numbers
        A = 16'b1100_0000_0010_0000; // 1.0 in Bfloat16
        B = 16'b1100_0000_1110_1000; // 2.0 in Bfloat16
        #10;
        display_result(A, B, result); // Expected result: 2.0 in Bfloat16 (0x4000)
        
        //// Test Case 2: Multiply a positive number by a negative number
        //A = 16'h3F80; // 1.0 in Bfloat16
        //B = 16'hBF80; // -1.0 in Bfloat16
        //#10;
        //display_result(A, B, result); // Expected result: -1.0 in Bfloat16 (0xBF80)
        
        // End of simulation
        $display("Bfloat16 Multiplier Test Completed.");
        $finish;
    end

endmodule