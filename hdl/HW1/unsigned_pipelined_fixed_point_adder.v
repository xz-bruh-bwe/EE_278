module unsigned_pipelined_fixed_point_adder(
    input  wire [7:0] A,      // 8-bit unsigned input A
    input  wire [7:0] B,      // 8-bit unsigned input B
    input  wire clk,          // Clock Signal
    input  wire rst,
    output reg  [8:0] Sum     // 9-bit output Sum (including carry-out)
);

 // Internal registers for the pipeline stages
    reg [3:0] A_lower, B_lower;
    reg [4:0] sum_lower;
    reg [3:0] A_upper, B_upper;
    reg [4:0] sum_upper_with_carry;
    reg [8:0] Sum_latch;
    reg       output_ready; 

    // Stage 1: Add the lower 4 bits
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A_lower <= 4'b0;
            B_lower <= 4'b0;
            sum_lower <= 5'b0;
            output_ready <= 1'b0;
            
        end else begin
            A_lower <= A[3:0];
            B_lower <= B[3:0];

            sum_lower <= A[3:0] + B[3:0];
            output_ready <= !output_ready;

            
        end
    end

    // Stage 2: Add the upper 4 bits and propagate the carry
    always @(posedge clk or posedge rst) begin
        
        if (rst) begin
            A_upper              <= 4'b0;
            B_upper              <= 4'b0;
            sum_upper_with_carry <= 5'b0;
            //Sum                  <= 9'b0;
        end else begin
            A_upper <= A[7:4];
            B_upper <= B[7:4];

            sum_upper_with_carry <= A_upper + B_upper + sum_lower[4];
            Sum_latch <= {sum_upper_with_carry[4:0], sum_lower[3:0]};
            
            if(sum_lower[4] && A_upper == 4'b0 && B_upper == 4'b0)
                begin
                    Sum <= Sum;
                end
            else if(!output_ready == 1'b1)
                begin
                    Sum <= Sum_latch;
                end
            else
                begin
                    Sum <= Sum;
                end 
   
        end
    end
    
endmodule


//if(sum_lower[4] == 1'b1 && A_upper == 4'b0 && B_upper == 4'b0)
//                Sum <= Sum;
//            else
//            begin
//                if(output_ready)
//                Sum <= Sum_latch;
//                else
//                Sum <= Sum;
//            end


//// Internal signals for pipeline stages
//    reg [4:0] sum_lower_stage1;
//    reg [3:0] A_upper_stage2, B_upper_stage2;
//    reg [4:0] sum_upper_with_carry_stage2;
//
//    // Stage 1: Add the lower 4 bits
//    always @(posedge clk) begin
//        sum_lower_stage1 <= A[3:0] + B[3:0];
//    end
//
//    // Stage 2: Add the upper 4 bits and propagate the carry
//    always @(posedge clk) begin
//        A_upper_stage2 <= A[7:4];
//        B_upper_stage2 <= B[7:4];
//        sum_upper_with_carry_stage2 <= A_upper_stage2 + B_upper_stage2 + sum_lower_stage1[4];
//        Sum <= {sum_upper_with_carry_stage2[4:0], sum_lower_stage1[3:0]};
//
//    end




//// Internal signals for pipeline stages
//    reg [4:0] sum_lower_stage1;
//    reg [3:0] A_upper_stage2, B_upper_stage2;
//    reg [4:0] sum_upper_with_carry_stage2;
//
//    // Stage 1: Add the lower 4 bits
//    always @(posedge clk) begin
//        sum_lower_stage1 <= A[3:0] + B[3:0];
//    end
//
//    // Stage 2: Add the upper 4 bits and propagate the carry
//    always @(posedge clk) begin
//        A_upper_stage2 <= A[7:4];
//        B_upper_stage2 <= B[7:4];
//        sum_upper_with_carry_stage2 <= A_upper_stage2 + B_upper_stage2 + sum_lower_stage1[4];
//        Sum <= {sum_upper_with_carry_stage2[4:0], sum_lower_stage1[3:0]};
//
//    end

//// Internal signals for pipeline stages
//    reg [3:0] A_lower, B_lower, A_upper, B_upper;
//    reg [4:0] sum_lower;
//    reg [4:0] sum_upper_with_carry;
//
//    // Stage 1: Add the lower 4 bits
//    always @(posedge clk) begin
//        A_lower <= A[3:0];
//        B_lower <= B[3:0];
//        sum_lower <= A[3:0] + B[3:0];
//    end
//
//    // Stage 2: Add the upper 4 bits and propagate the carry
//    always @(posedge clk) begin
//        A_upper <= A[7:4];
//        B_upper <= B[7:4];
//        sum_upper_with_carry <= A_upper + B_upper + sum_lower[4];
//        Sum <= {sum_upper_with_carry[4:0], sum_lower[3:0]};
//    end


//    // Internal signals for pipeline stages
//    reg [3:0] A_lower, B_lower, A_upper, B_upper;
//    reg [4:0] sum_lower;
//    reg [4:0] carry_and_sum_upper_stage1;
//    reg [4:0] carry_and_sum_upper_stage2;
//
//    // Pipeline Stage 1: Add the lower 4 bits and store the result
//    always @(posedge clk) begin
//        A_lower <= A[3:0]; 
//        B_lower <= B[3:0]; 
//        sum_lower <= A[3:0] + B[3:0];
//    end
//
//    // Pipeline Stage 2: Add the upper 4 bits with carry from the lower sum
//    always @(posedge clk) begin
//        A_upper <= A[7:4]; 
//        B_upper <= B[7:4]; 
//        carry_and_sum_upper_stage1 <= A_upper + B_upper + sum_lower[4];
//    end
//
//    // Pipeline Stage 3: Final sum computation and output
//    always @(posedge clk) begin
//        carry_and_sum_upper_stage2 <= carry_and_sum_upper_stage1;
//        Sum <= {carry_and_sum_upper_stage2, sum_lower[3:0]};
//    end




//    // Internal registers for pipelining
//    reg [4:0] stage1_sum;     // 5-bit to hold sum and carry from first stage (LSB + Carry)
//    reg [3:0] A_MSB, B_MSB;   // Most Significant Bits for the second stage
//    reg carry_out;            // Carry out from Stage 1
//
//    always @(posedge clk) begin
//        // Stage 1: Add the least significant 4-bit halves
//        {carry_out, stage1_sum[3:0]} <= A[3:0] + B[3:0]; // Sum of LSBs with carry
//        stage1_sum[4] <= carry_out;  // Store carry-out
//        A_MSB <= A[7:4]; // Register the MSB of A
//        B_MSB <= B[7:4]; // Register the MSB of B
//    end
//
//    always @(posedge clk) begin
//        // Stage 2: Add the most significant 4-bit halves with the carry from Stage 1
//        {Sum[8], Sum[7:4]} <= A_MSB + B_MSB + stage1_sum[4]; // Sum of MSBs with carry-in
//        Sum[3:0] <= stage1_sum[3:0]; // Least significant bits from stage 1
//    end