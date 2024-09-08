module unsigned_fixed_point_multiplier(
    input  [3:0] A,                      // 4-bit unsigned fixed-point input A (XX.YY)
    input  [3:0] B,                      // 4-bit unsigned fixed-point input B (XX.YY)
    output  [7:0] Product                // 8-bit output Product
);
    wire [7:0] temp_product;            // 8-bit temporary product to capture the result

    assign Product = A * B;        // Perform multiplication
    assign Product = temp_product >> 2; // Adjust for fixed-point by shifting right by 2 bits

endmodule