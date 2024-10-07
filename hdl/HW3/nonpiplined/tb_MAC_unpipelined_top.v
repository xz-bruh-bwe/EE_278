`timescale 1ns/1ps

module tb_MAC_unpipelined_top;

    parameter N = 5'd16;

    // Inputs
    reg [N-1:0] a;      // Input A for the multiplier
    reg [N-1:0] b;      // Input B for the multiplier
    reg [N-1:0] c;      // Input C for the adder

    // Output
    wire [15:0] final_result; // Final result after addition

    // Instantiate the MAC_unpipelined_top module
    MAC_unpipelined_top #(.N(N))
    uut (
        .a(a),
        .b(b),
        .c(c),
        .final_result(final_result)
    );

    // Test case
    initial begin

        // Initialize inputs
        a = 16'b0; 
        b = 16'b0; 
        c = 16'b0; 
        #10;
        
        
        // Test Case .25 + 1.125
        /****** Multiply **********/
        a = 16'b0011_1110_1000_0000;  // .25
        b = 16'b0011_1111_1000_0000;  //  1
        /******* Add ***************/ 
        c = 16'b0011_1111_1001_0000; // 1.125
        /*******     ***************/                                                    
        #10;

        //// Display the results
        //$display("a = %h, b = %h, c = %h", a, b, c);
        //$display("MAC result = %h", final_result);

        // Test Case: 150 - 250
        /****** Multiply **********/
        a = 16'b0100_0011_0001_0110; // 150 0100_0011_0001_0110
        b = 16'b0011_1111_1000_0000; // 1
        /******* Add ***************/
        c = 16'b1100_0011_0111_1010; // -250 1100_0011_0111_1010
        /*******     ***************/
        #10;
        

        // Test Case: -2.5 x -7.25
        /****** Multiply **********/
        a = 16'b1100_0000_0010_0000;
        b = 16'b1100_0000_1110_1000;
        /******* Add ***************/
        c = 16'b0;
        /*******     ***************/
        #10;
        
        

        // Test Case: 0.0001 + .00000001
        /****** Multiply **********/
        a = 16'b0011_1000_1101_0001;  
        b = 16'b0011_1111_1000_0000;
        /******* Add ***************/
        c = 16'b0011_0011_1101_0110;
        /*******     ***************/
        #10;
        

        // Test Case: 1024 - 8075
        /****** Multiply **********/
        a = 16'b0100_0100_1000_0000; // 1024
        b = 16'b0011_1111_1000_0000; //  1
        /******* Add ***************/
        c = 16'b1100_0101_1111_1100;
        /*******     ***************/
        #10;
        
        
        // Test Case: 2014 X 3.75
        /****** Multiply **********/
        a = 16'b0100_0100_1111_1011;  
        b = 16'b0100_0000_0111_0000;
        /******* Add ***************/
        c = 16'b0;
        /*******     ***************/
        #10;





        // End the simulation
        $stop;
    end

endmodule