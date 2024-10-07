module tb_top_bfloat16;

    // Inputs to the top module
    reg [15:0] A;
    reg [15:0] B;
    reg [15:0] C;
    reg clk;
    reg rst;

    // Output from the top module
    wire [15:0] result;

    // Instantiate the top module
    top_bfloat16 dut (
        .A(A),      // Input A for multiplier
        .B(B),      // Input B for multiplier
        .C(C),      // Input C for adder
        .clk(clk),  // Clock
        .rst(rst),  // Reset
        .result(result)  // Final result from the adder
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Apply reset and test cases
    initial begin
        // Initialize clock and reset
        clk = 0;
        rst = 1;
        A = 16'b0;
        B = 16'b0;
        C = 16'b0;

        // Apply reset for A few cycles
        #20 rst = 0;


        // Test Case .25 + 1.125
        /****** Multiply **********/
        A = 16'b0011_1110_1000_0000;  // .25
        B = 16'b0011_1111_1000_0000;  //  1
        /******* Add ***************/ 
        C = 16'b0011_1111_1001_0000; // 1.125
        /*******     ***************/                                                    
        #100;

        //// Display the results
        //$display("A = %h, B = %h, C = %h", A, B, C);
        //$display("MAC result = %h", final_result);

        // Test Case: 150 - 250
        /****** Multiply **********/
        A = 16'b0100_0011_0001_0110; // 150 0100_0011_0001_0110
        B = 16'b0011_1111_1000_0000; // 1
        /******* Add ***************/
        C = 16'b1100_0011_0111_1010; // -250 1100_0011_0111_1010
        /*******     ***************/
        #100;
        

        // Test Case: -2.5 x -7.25
        /****** Multiply **********/
        A = 16'b1100_0000_0010_0000;
        B = 16'b1100_0000_1110_1000;
        /******* Add ***************/
        C = 16'b0;
        /*******     ***************/
        #100;
        
        

        // Test Case: 0.0001 + .00000001
        /****** Multiply **********/
        A = 16'b0011_1000_1101_0001;  
        B = 16'b0011_1111_1000_0000;
        /******* Add ***************/
        C = 16'b0011_0011_1101_0110;
        /*******     ***************/
        #100;
        

        // Test Case: 1024 - 8075
        /****** Multiply **********/
        A = 16'b0100_0100_1000_0000; // 1024
        B = 16'b0011_1111_1000_0000; //  1
        /******* Add ***************/
        C = 16'b1100_0101_1111_1100;
        /*******     ***************/
        #100;
        
        
        // Test Case: 2014 X 3.75
        /****** Multiply **********/
        A = 16'b0100_0100_1111_1011;  
        B = 16'b0100_0000_0111_0000;
        /******* Add ***************/
        C = 16'b0;
        /*******     ***************/
        #100;

        // Finish simulation
        $finish;
    end

endmodule