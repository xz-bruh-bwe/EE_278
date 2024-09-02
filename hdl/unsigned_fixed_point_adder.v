module unsigned_fixed_point_adder(
    input [3:0] A,           // 4-bit fixed-point input A (XX.YY)
    input [3:0] B,           // 4-bit fixed-point input B (XX.YY)
    output [4:0] Sum         // 5-bit output Sum to accommodate overflow
);

    wire [4:0] temp_sum;     // 5-bit temporary sum to capture the result

    assign temp_sum = A + B; // Perform addition
    assign Sum = temp_sum;   // Assign the result to output Sum

endmodule
