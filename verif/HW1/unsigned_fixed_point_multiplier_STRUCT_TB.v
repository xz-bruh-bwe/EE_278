module unsigned_fixed_point_multiplier_STRUCT_TB;

    reg [3:0] A, B;         // Test inputs (Q2.2)
    wire [7:0] P;           // Test output (Q4.4)

    // Instantiate the multiplier
    unsigned_fixed_point_multiplier_STRUCT uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        // Test case 1
        A = 4'b1100; // 3.0 in Q2.2
        B = 4'b0100; // 1.0 in Q2.2
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test case 2
        A = 4'b0110; // 1.5 in Q2.2
        B = 4'b0011; // 0.75 in Q2.2
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test case 3
        A = 4'b1010; // 2.5 in Q2.2
        B = 4'b0111; // 1.75 in Q2.2
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        $stop;
    end

endmodule