module pixel_control_signals (
    input wire clk,             // Clock signal
    input wire reset_n,         // Active-low reset
    input wire valid_in,        // External signal indicating when to process pixels
    output reg hStart,          // Asserted at the first pixel of the row
    output reg hEnd,            // Asserted at the last pixel of the row
    output reg vStart,          // Asserted at the first row of the frame
    output reg vEnd,            // Asserted at the last row of the frame
    output reg valid            // High when in valid pixel region
);

// Parameter definitions for screen size
parameter hMax = 9;  // Total number of horizontal pixels (columns)
parameter vMax = 9;  // Total number of vertical rows (rows)

// Internal counters
reg [4:0] hCounter;   // Horizontal pixel counter (4 bits to cover hMax)
reg [4:0] vCounter;   // Vertical row counter (4 bits to cover vMax)

// Horizontal counter block
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        hCounter <= 0;
    end else if (valid_in) begin
        if (hCounter < hMax - 1) begin
            hCounter <= hCounter + 1;
        end else begin
            hCounter <= 0;
        end
    end
end

// Vertical counter block
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        vCounter <= 0;
    end else if (valid_in) begin
        if (hCounter == hMax - 1) begin
            if (vCounter < vMax - 1) begin
                vCounter <= vCounter + 1;
            end else begin
                vCounter <= 0;
            end
        end
    end
end

// Combined pixel control signals block
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        hStart  <= 0;
        hEnd    <= 0;
        vStart  <= 0;
        vEnd    <= 0;
        valid   <= 0;
    end else begin
        // hStart is asserted at the first pixel of the row
        hStart <= (hCounter == 0);

        // hEnd is asserted at the last pixel of the row
        hEnd <= (hCounter == hMax - 1);

        // vStart is asserted at the first row of the frame
        vStart <= (vCounter == 0 && hCounter == 0);

        // vEnd is asserted at the last row of the frame (at the end of the last row)
        vEnd <= (vCounter == vMax - 1 && hCounter == hMax - 1);

        // Valid signal is asserted for every valid pixel in the frame
        if(valid_in)
            begin
                valid <= (hCounter < hMax && vCounter < vMax);
            end
        else
            valid <= 1'b0;
        //valid <= valid_in;
    end
end

endmodule