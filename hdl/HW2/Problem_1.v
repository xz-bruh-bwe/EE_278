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
        s0: 
            if(St) 
                nstate = s1;
        s1: 
            if(M) 
                nstate = s2; 
            else 
                nstate = s3;
        s2: 
            nstate = s3;
        s3: 
            if(M) 
                nstate = s4; 
            else 
                nstate = s5;
        s4: 
            nstate = s5;
        s5: 
            if(M) 
                nstate = s6; 
            else 
                nstate = s7;
        s6: 
            nstate = s7;
        s7: 
            if(M) 
                nstate = s8; 
            else 
                nstate = s9;
        s8: 
            nstate = s9;
        s9: 
            nstate = s0;
    endcase

always @(pstate) //Output (Action)
    case (pstate)
        s0: begin
            ACC[8:4] = 5'b00000;
            ACC[3:0] = Mplier;
        end
    s1: 
        ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};
    s2: 
        ACC = {1'b0, ACC[8:1]};
    s3: 
        ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};
    s4: 
        ACC = {1'b0, ACC[8:1]};
    s5: 
        ACC[8:4] = {1'b0, ACC[7:4]} + {1'b0, Mcand};
    s6: 
        ACC = {1'b0, ACC[8:1]};
    endcase

endmodule