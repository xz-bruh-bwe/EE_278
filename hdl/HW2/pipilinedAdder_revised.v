module adder #(parameter WIDTH1 = 3'b100,
                        WIDTH2 = 3'b100
                 )
    (
    input [WIDTH1-1:0] l1, l2,  // LSB inputs
    input [WIDTH2-1:0] l3, l4,  // MSB inputs
    input clk,                  // Clock signal
    input aclr,                 // Asynchronous clear
    output reg [WIDTH1+WIDTH2-1:0] sum  // Final sum output
);

// Internal registers
reg [WIDTH1-1:0] r1, q1;
reg [WIDTH2-1:0] r2, q2;
reg cq1;  // Carry from LSB addition
reg [WIDTH2-1:0] u2;

// Combinational addition (stage 1)
always @* begin
    {cq1, r1} = l1 + l2;  // Add LSBs and generate carry
end

// Register stage for LSBs
always @(posedge clk or posedge aclr) begin
    if (aclr) begin
        q1 <= 0;
    end else begin
        q1 <= r1;
    end
end

// Combinational addition (stage 2)
always @* begin
    r2 = l3 + l4;
end

// Register stage for MSBs
always @(posedge clk or posedge aclr) begin
    if (aclr) begin
        q2 <= 0;
    end else begin
        q2 <= r2;
    end
end

// Final stage: Add MSBs and carry from LSB addition
always @* begin
    u2 = q2 + cq1;
end

// Register the final sum
always @(posedge clk or posedge aclr) begin
    if (aclr) begin
        sum <= 0;
    end else begin
        sum <= {u2, q1};  // Concatenate MSBs and LSBs
    end
end

endmodule