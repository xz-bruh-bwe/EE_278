`timescale 1ns / 1ps
module sequential_signed_mult4x4 (
    input         clk,
    input         St,
    input  signed [3:0]  Mplier,  // 4-bit signed multiplier
    input  signed [3:0]  Mcand,   // 4-bit signed multiplicand
    output reg signed [8:0]  Prod,  // 9-bit signed product
    output reg    done
);

//////////////////////////////////////////////////////////////////////////////
// Internal Registers: 
//////////////////////////////////////////////////////////////////////////////
reg [3:0] pstate, nstate;  // Present and next state registers
reg [7:0] ACC;             // 8-bit accumulator (7 bits for result + 1 sign bit)
reg signed [3:0] abs_Mplier, abs_Mcand; // Absolute values of inputs

wire sign;                 // Final product sign (XOR of multiplier and multiplicand signs)
wire M = ACC[0];           // Least significant bit of ACC for partial product decision

//////////////////////////////////////////////////////////////////////////////
// State Encoding: Assignments
//////////////////////////////////////////////////////////////////////////////
parameter s0 = 4'b0000, 
          s1 = 4'b0001, 
          s2 = 4'b0010, 
          s3 = 4'b0011, 
          s4 = 4'b0100, 
          s5 = 4'b0101, 
          s6 = 4'b0110, 
          s7 = 4'b0111, 
          s8 = 4'b1000, 
          s9 = 4'b1001;

//////////////////////////////////////////////////////////////////////////////
// Sign Calculation for Final Product
//////////////////////////////////////////////////////////////////////////////
assign sign = Mplier[3] ^ Mcand[3];  // XOR of sign bits (determines if result is negative)

//////////////////////////////////////////////////////////////////////////////
// State Machine for Control
//////////////////////////////////////////////////////////////////////////////
// State transition logic (separated)
always @(posedge clk or posedge St) begin
    if (St) begin
        pstate <= s0;
    end
    else begin
        pstate <= nstate;
    end
end

// Next state logic (separated)
always @(*) begin
    case (pstate)
        s0: nstate = s1;
        s1: nstate = s2;
        s2: nstate = s3;
        s3: nstate = s4;
        s4: nstate = s5;
        s5: nstate = s6;
        s6: nstate = s7;
        s7: nstate = s8;
        s8: nstate = s9;
        s9: nstate = s0;  // Go back to idle state after multiplication
        default: nstate = s0;
    endcase
end

//////////////////////////////////////////////////////////////////////////////
// Output Logic: Handles the actions for each state (separated)
//////////////////////////////////////////////////////////////////////////////
always @(pstate) begin
    if (St) begin
        // Reset logic on start signal
        abs_Mplier = Mplier[3] ? -Mplier : Mplier;  // Calculate absolute value of Mplier
        abs_Mcand = Mcand[3] ? -Mcand : Mcand;      // Calculate absolute value of Mcand
        ACC = {4'b0000, abs_Mplier};                // Initialize ACC with abs(Mplier)
        Prod = 9'b0;                                // Clear product
        done = 0;                                   // Reset done flag
    end
    else begin
        case (pstate)
            s0: begin
                ACC = {4'b0000, abs_Mplier};  // Initialize ACC with absolute multiplier
            end
            s1: begin
                if (M) 
                    ACC[7:4] = ACC[7:4] + abs_Mcand;  // Add absolute multiplicand if M is 1
            end
            s2: begin
                ACC = {1'b0, ACC[7:1]};  // Right shift ACC
            end
            s3: begin
                if (M) 
                    ACC[7:4] = ACC[7:4] + abs_Mcand;  // Add absolute multiplicand if M is 1
            end
            s4: begin
                ACC = {1'b0, ACC[7:1]};  // Right shift ACC
            end
            s5: begin
                if (M) 
                    ACC[7:4] = ACC[7:4] + abs_Mcand;  // Add absolute multiplicand if M is 1
            end
            s6: begin
                ACC = {1'b0, ACC[7:1]};  // Right shift ACC
            end
            s7: begin
                if (M) 
                    ACC[7:4] = ACC[7:4] + abs_Mcand;  // Add absolute multiplicand if M is 1
            end
            s8: begin
                ACC = {1'b0, ACC[7:1]};  // Final right shift
            end
            s9: begin
                Prod = sign ? -ACC : ACC;  // Assign the product with correct sign
                done = 1;    // Indicate completion
            end
        endcase
    end
end
endmodule
