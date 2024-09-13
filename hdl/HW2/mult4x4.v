`timescale 1ns / 1ps
module mult4x4 (
    clk,
    St,
    Mplier,
    Mcand,
    Prod,
    done
    );

//////////////////////////////////////////////////////////////////////////////
// Inputs / Outputs
//////////////////////////////////////////////////////////////////////////////
input         clk;
input         St;
input  [3:0]  Mplier;
input  [3:0]  Mcand;
output [8:0]  Prod; //added
output        done;

//////////////////////////////////////////////////////////////////////////////
// Internal Registers: 
//////////////////////////////////////////////////////////////////////////////
reg done;
reg [3:0] pstate, nstate;
reg [8:0] Prod;


//////////////////////////////////////////////////////////////////////////////
// State Encoding: Assignments
//////////////////////////////////////////////////////////////////////////////
parameter s0      =   4'b0000; 
parameter s1      =   4'b0001; 
parameter s2      =   4'b0010; 
parameter s3      =   4'b0011;
parameter s4      =   4'b0100; 
parameter s5      =   4'b0101; 
parameter s6      =   4'b0110; 
parameter s7      =   4'b0111;
parameter s8      =   4'b1000; 
parameter s9      =   4'b1001;


//////////////////////////////////////////////////////////////////////////////
// Misc
//////////////////////////////////////////////////////////////////////////////
reg [8:0] ACC; //accumulator
//reg M = ACC[0]; //M is bit 0 of ACC; could use 'define
wire M;
assign M = ACC[0];

//////////////////////////////////////////////////////////////////////////////
// Misc
//////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge St)
    if (St) 
        pstate = s0;
    else 
        pstate = nstate;

always @(pstate) //state transition
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

always @(pstate) begin
    if (St) begin
        ACC = {5'b00000, Mplier};  // Initialize the ACC with the Mplier
        Prod = 9'b0;               // Clear product output
        done = 1'b0;               // Added to delatch the 
    end
    else begin
        case (pstate)
            s0: begin
                ACC = {5'b00000, Mplier};  // Initialize ACC with multiplier

            end
            s1: begin
                if (M) 
                    ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};  // Add Mcand if M is 1
            end
            s2: begin
                ACC = {1'b0, ACC[8:1]};  // Right shift ACC
            end
            s3: begin
                if (M) 
                    ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};  // Add Mcand if M is 1
            end
            s4: begin
                ACC = {1'b0, ACC[8:1]};  // Right shift ACC
            end
            s5: begin
                if (M) 
                    ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};  // Add Mcand if M is 1
            end
            s6: begin
                ACC = {1'b0, ACC[8:1]};  // Right shift ACC
            end
            s7: begin
                if (M) 
                    ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};  // Add Mcand if M is 1
            end
            s8: begin
                ACC = {1'b0, ACC[8:1]};  // Final right shift
            end
            s9: begin
                Prod = ACC;  // Output the product
                done = 1;    // Indicate completion
            end
        endcase
    end
end
endmodule