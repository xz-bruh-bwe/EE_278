module tb_bfloat16_matrix_multiplier_4x4;
    `timescale 1ns/1ps
    `define SYS_CLOCK 10.0 // Clock period in nanoseconds
////////////////////////////////////////////////////////////////////////
//Parameter
////////////////////////////////////////////////////////////////////////

parameter   N     = 5'd16;
parameter   SIZE  = 4'd4;

////////////////////////////////////////////////////////////////////////
//System Definitions
////////////////////////////////////////////////////////////////////////
logic            clk                            ;
logic            rst_n                          ;
logic    [N-1:0] A_in         [SIZE-1:0]        ; // 4x4 matrix A (16-bit bfloat16 elements)
logic    [N-1:0] B_in         [SIZE-1:0]        ; // 4x4 matrix B (16-bit bfloat16 elements)
logic            OP_START_in  [SIZE*2-1:0]      ; // OP FINISH size is SIZE*2
logic           OP_FINISH    [SIZE*SIZE-1:0]    ;
logic   [N-1:0] C            [SIZE-1:0][SIZE-1:0];   // 4x4 matrix C (16-bit bfloat16 results)

logic [N-1:0] temp_a [SIZE-1:0][SIZE-1:0];
logic [N-1:0] temp_b [SIZE-1:0][SIZE-1:0];


////////////////////////////////////////////////////////////////////////
// Module Instantiation
////////////////////////////////////////////////////////////////////////

bfloat16_matrix_multiplier_4x4 #( .N   (N),
                                  .SIZE(SIZE) )
    bfloat16_matrix_multiplier_4x4(
    .clk        (clk),                  
    .rst_n      (rst_n),       
    .A_in       (A_in),         // 4x4 matrix A (16-bit bfloat16 elements)
    .B_in       (B_in),         // 4x4 matrix B (16-bit bfloat16 elements)
    .OP_START_in(OP_START_in),  // OP FINISH size is SIZE*2
    .OP_FINISH  (OP_FINISH),    
    .C          (C)             // 4x4 matrix C (16-bit bfloat16 results)
);


////////////////////////////////////////////////////////////////////////
// Clock Period
////////////////////////////////////////////////////////////////////////
    // Clock generation
    always begin
        #(`SYS_CLOCK/2) clk = ~clk;  // Clock period of 10 time units
    end

////////////////////////////////////////////////////////////////////////
// Predefined Arrays
////////////////////////////////////////////////////////////////////////
initial begin

temp_a = '{
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000}
    };

temp_b = '{
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000},
        '{16'b0011_1111_1000_0000, 16'b0100_0000_0000_0000, 16'b0100_0000_0100_0000, 16'b0100_0000_1000_0000}
    };
end

////////////////////////////////////////////////////////////////////////
// Initial Begin and Stimulus
////////////////////////////////////////////////////////////////////////   
initial begin
clk = 1'b0;
rst_n = 1'b0;
OP_START_in[0] = 1'b0;
OP_START_in[1] = 1'b0;
OP_START_in[2] = 1'b0;
OP_START_in[3] = 1'b0;
OP_START_in[4] = 1'b0;
OP_START_in[5] = 1'b0;
OP_START_in[6] = 1'b0;
OP_START_in[7] = 1'b0;

initialize_inputs();

repeat_clocks(2); 

assert_reset();

repeat_clocks(10);

row_col_0();

$finish;

end

////////////////////////////////////////////////////////////////////////
// Tasks
////////////////////////////////////////////////////////////////////////

task initialize_inputs;
integer i;
    begin 
        //
        for (i = 0; i < SIZE; i++) begin
                A_in[i] = 16'b0;
                B_in[i] = 16'b0;
            end
    end
endtask

task row_col_0;
    integer a;
        begin
            simple_clock();
            for(a = 0; a < SIZE; a = a + 1) begin
                simple_clock();
                A_in[0] = temp_a[0][a]; 
                B_in[0] = temp_b[a][0]; 
                OP_START_in[0] = 1'b1;
                OP_START_in[0] = 1'b1;
                simple_clock();
                
                OP_START_in[0] = 1'b0;
                OP_START_in[0] = 1'b0;
            end
             //simple_clock();
             //OP_START_in[0] = 1'b1;
             //OP_START_in[0] = 1'b1;
             //simple_clock();
             //OP_START_in[0] = 1'b0;
             //OP_START_in[0] = 1'b0;
        end
endtask

task simple_clock;
    begin
        #`SYS_CLOCK;
        @(posedge clk);
    end
endtask

task assert_reset;
    begin
        simple_clock();
        rst_n = 0;
        simple_clock();
        rst_n = 1;
    end
endtask

task repeat_clocks(input int a);
    begin
        for(int x = 0; x < a; x = x + 1)
            begin
                simple_clock();
            end
    end

endtask

endmodule