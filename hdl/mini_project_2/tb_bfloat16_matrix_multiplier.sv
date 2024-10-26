module tb_bfloat16_matrix_multiplier;

    `timescale 1ns/1ps

////////////////////////////////////////////////////////////////////////
//System Definitions
////////////////////////////////////////////////////////////////////////
    `define SYS_CLOCK 10.0 // Clock period in nanoseconds


    logic              clk                            ;
    logic              rst_n                          ;
    logic      [N-1:0] A         [SIZE-1:0][SIZE-1:0] ; // 4x4 matrix A (16-bit bfloat16 elements)
    logic      [N-1:0] B         [SIZE-1:0][SIZE-1:0] ; // 4x4 matrix B (16-bit bfloat16 elements)
    logic              OP_START  [SIZE*SIZE*SIZE-1:0] ; // OP FINISH size is SIZE*SIZE
    logic              OP_FINISH [SIZE*SIZE-1:0]      ;
    logic      [N-1:0] C         [SIZE-1:0][SIZE-1:0] ; // 4x4 matrix C (16-bit bfloat16 results)

    parameter   N     = 5'd16;
    parameter   SIZE  = 4'd4;

////////////////////////////////////////////////////////////////////////
// Module Instantiation
////////////////////////////////////////////////////////////////////////
bfloat16_matrix_multiplier #(.N   (N),
                             .SIZE(SIZE))
    bfloat16_matrix_multiplier(
        .clk      (clk) ,
        .rst_n    (rst_n) ,
        .A        (A) , // 4x4 matrix A (16-bit bfloat16 elements)
        .B        (B) , // 4x4 matrix B (16-bit bfloat16 elements)
        .OP_START (OP_START) , // OP FINISH size is SIZE*SIZE
        .OP_FINISH(OP_FINISH) ,
        .C        (C) // 4x4 matrix C (16-bit bfloat16 results)
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
logic [N-1:0] temp_a [SIZE-1:0][SIZE-1:0] = '{
        '{1, 2, 3, 4},
        '{1, 2, 3, 4},
        '{1, 2, 3, 4},
        '{1, 2, 3, 4}
    };
logic [N-1:0] temp_b [SIZE-1:0][SIZE-1:0] = '{
        '{1, 2, 3, 4},
        '{1, 2, 3, 4},
        '{1, 2, 3, 4},
        '{1, 2, 3, 4}
    };

////////////////////////////////////////////////////////////////////////
// Initial Begin and Stimulus
////////////////////////////////////////////////////////////////////////   
initial begin
clk = 1'b0;
rst_n = 1'b0;

initialize_zero();

repeat_clocks(3);

assert_reset();

repeat_clocks(2);

initialize_array();



end

////////////////////////////////////////////////////////////////////////
// Tasks
////////////////////////////////////////////////////////////////////////
task initialize_zero;
integer i, j;
    begin
        // Iterate through the 2D arrays and set each element to zero.
        for (i = 0; i < SIZE; i++) begin
            for (j = 0; j < SIZE; j++) begin
                A       [i][j] = 0;
                B       [i][j] = 0;
                OP_START[i*SIZE+j] = 0;
            end
        end
    end
endtask

task initialize_array;
    begin 
    simple_clock();
    assert_all_op_start();
    A = temp_a;
    B = temp_b;
    simple_clock();
    deassert_all_op_start();
    end

endtask

task assert_all_op_start;
begin
    integer a;
    for(a = 0; a < SIZE*SIZE*SIZE; a++)
        begin   
            OP_START[a] <= 1;
        end
end
endtask 

task deassert_all_op_start();
begin
    integer b;
    for(b = 0; b < SIZE*SIZE*SIZE; b++)
        begin   
            OP_START[b] <= 0;
        end
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