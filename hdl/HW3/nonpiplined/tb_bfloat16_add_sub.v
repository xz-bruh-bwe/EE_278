module tb_bfloat16_add_sub;

    parameter N = 5'd16;

    // Inputs to the DUT
    reg [15:0] A;
    reg [15:0] B;
    
    // Output from the DUT
    wire [15:0] result;
    
    // Instantiate the DUT (Device Under Test)
    bfloat16_add_sub #(.N(N))
        dut (
        .A(A),
        .B(B),
        .result(result)
    );
    
    // Task to display the test results
    task display_result;
        input [15:0] A;
        input [15:0] B;
        input [15:0] result;
        begin
            $display("A = %h, B = %h, Result = %h", A, B, result);
        end
    endtask
    
    // Test cases
    initial begin

        // Initialize the testbench
        $display("Starting Bfloat16 Adder/Subtractor Test...");

        // Test Case 1: Add two positive numbers
        A = 16'b0; // 1.25 in Bfloat16
        B = 16'b0; // .75  in Bfloat16
        #10;
        display_result(A, B, result); // Expected result: 3.0 in Bfloat16 (0x4040)
        
        // Initialize the testbench
        $display("Starting Bfloat16 Adder/Subtractor Test...");

        // Test Case 1: Add two positive numbers
        A = 16'b0011_1110_1000_0000; // .25  in Bfloat16
        B = 16'b0_0111_1110_100_0000; // .75  in Bfloat16
        #10;
        display_result(A, B, result); // Expected result: 3.0 in Bfloat16 (0x4040)
        
        
        // Test Case 5: Add two negative numbers
        A = 16'hBF80; // -1.0 in Bfloat16
        B = 16'hC000; // -2.0 in Bfloat16
        #10;
        display_result(A, B, result); // Expected result: -3.0 in Bfloat16 (0xC040)

        // Test Case 5: Add two negative numbers
        A = 16'b0_1000_1001_000_0000; // 1024 in Bfloat16
        B = 16'B1_1000_1011_111_1100; // -8075 in Bfloat16
        #10;
        display_result(A, B, result); // Expected result: -3.0 in Bfloat16 (0xC040)

        A = 16'b0100_0010_1100_1000;
        B = 16'b1100_0011_0111_1010; 
        #10;
        
        
        // Finish the test
        $display("Bfloat16 Adder/Subtractor Test Completed.");
        //$finish;
    end

endmodule
