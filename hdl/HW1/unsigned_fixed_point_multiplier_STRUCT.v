module unsigned_fixed_point_multiplier_STRUCT (
    input  [3:0] A,   // 4-bit input A (Q2.2)
    input  [3:0] B,   // 4-bit input B (Q2.2)
    output [7:0] P    // 8-bit output P (Q4.4)
);

    wire [3:0] pp0, pp1, pp2, pp3;     // Partial products
    wire [7:0] sum1, sum2, sum3;       // Intermediate sums
    wire c1, c2, c3;                   // Carry bits

    // Partial Products: AND gates to multiply each bit of A with each bit of B
    assign pp0 = A & {4{B[0]}};  // Partial product 0: A * B[0]
    assign pp1 = A & {4{B[1]}};  // Partial product 1: A * B[1]
    assign pp2 = A & {4{B[2]}};  // Partial product 2: A * B[2]
    assign pp3 = A & {4{B[3]}};  // Partial product 3: A * B[3]

    // Step 1: Sum partial products (shifted appropriately)
    // First sum: pp0 + (pp1 << 1)
    ripple_carry_adder_8bit adder1 (
        .A({pp1, 1'b0}),  // pp1 shifted by 1 bit (multiply by 2)
        .B({4'b0, pp0}),
        .Cin(1'b0),
        .Sum(sum1),
        .Cout(c1)
    );

    // Step 2: Add result of Step 1 with (pp2 << 2)
    ripple_carry_adder_8bit adder2 (
        .A({pp2, 2'b00}),  // pp2 shifted by 2 bits (multiply by 4)
        .B(sum1),
        .Cin(c1),
        .Sum(sum2),
        .Cout(c2)
    );

    // Step 3: Add result of Step 2 with (pp3 << 3)
    ripple_carry_adder_8bit adder3 (
        .A({pp3, 3'b000}),  // pp3 shifted by 3 bits (multiply by 8)
        .B(sum2),
        .Cin(c2),
        .Sum(P),
        .Cout(c3)
    );

endmodule

// 8-bit ripple carry adder module
module ripple_carry_adder_8bit (
    input [7:0] A,   // 8-bit input A
    input [7:0] B,   // 8-bit input B
    input Cin,       // Carry-in
    output [7:0] Sum, // 8-bit sum
    output Cout      // Carry-out
);
    wire c1, c2, c3, c4, c5, c6, c7;  // Internal carry signals

    // Full adder instances for each bit
    full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(Cin),   .Sum(Sum[0]), .Cout(c1));
    full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(c1),    .Sum(Sum[1]), .Cout(c2));
    full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(c2),    .Sum(Sum[2]), .Cout(c3));
    full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(c3),    .Sum(Sum[3]), .Cout(c4));
    full_adder fa4 (.A(A[4]), .B(B[4]), .Cin(c4),    .Sum(Sum[4]), .Cout(c5));
    full_adder fa5 (.A(A[5]), .B(B[5]), .Cin(c5),    .Sum(Sum[5]), .Cout(c6));
    full_adder fa6 (.A(A[6]), .B(B[6]), .Cin(c6),    .Sum(Sum[6]), .Cout(c7));
    full_adder fa7 (.A(A[7]), .B(B[7]), .Cin(c7),    .Sum(Sum[7]), .Cout(Cout));

endmodule

// Full adder module
module full_adder (
    input A,    // Input A
    input B,    // Input B
    input Cin,  // Carry-in
    output Sum, // Sum output
    output Cout // Carry-out
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule