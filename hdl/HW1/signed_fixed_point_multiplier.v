module signed_fixed_point_multiplier(
    input signed [3:0] A,                // 4-bit signed fixed-point input A (SXX.YY)
    input signed [3:0] B,                // 4-bit signed fixed-point input B (SXX.YY)
    output signed [7:0] Product          // 8-bit signed output Product
);

    wire signed [7:0] temp_product;      // 8-bit temporary product to capture the result

    assign Product = A * B;         // Perform multiplication
    //assign Product = temp_product >>> 2; // Adjust for fixed-point by arithmetic right shifting by 2 bits

endmodule