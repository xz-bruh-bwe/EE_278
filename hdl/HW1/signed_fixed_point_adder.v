module signed_fixed_point_adder(
    input signed [3:0] A,       // 4-bit signed fixed-point input A (SS.XXYY)
    input signed [3:0] B,       // 4-bit signed fixed-point input B (SS.XXYY)
    output signed [4:0] Sum     // 5-bit signed output Sum to accommodate overflow
);

    wire signed [4:0] temp_sum; // 5-bit temporary sum to capture the result

    assign temp_sum = A + B;    // Perform addition
    assign Sum = temp_sum;      // Assign the result to output Sum

endmodule