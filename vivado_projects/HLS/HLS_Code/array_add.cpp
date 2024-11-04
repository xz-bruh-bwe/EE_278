// File: array_add.cpp
#include <ap_int.h>

// Function to add two arrays
void array_add(const int a[10], const int b[10], int result[10]) {
    #pragma HLS INTERFACE s_axilite port=a bundle=AXI_LITE
    #pragma HLS INTERFACE s_axilite port=b bundle=AXI_LITE
    #pragma HLS INTERFACE s_axilite port=result bundle=AXI_LITE
    #pragma HLS INTERFACE s_axilite port=return bundle=AXI_LITE

    #pragma HLS PIPELINE II=1
    
    for (int i = 0; i < 10; i++) {
        result[i] = a[i] + b[i];
    }
}

//--------------------------//--------------------------//--------------------------
        //1.
    /*The directive #pragma HLS PIPELINE II=1 is a very powerful command in 
    Vivado HLS that instructs the synthesis tool to pipeline the operations 
    within a loop. Pipelining is an optimization technique that allows multiple iterations 
    of a loop to overlap in execution, improving performance by maximizing 
    the use of FPGA resources. */
        //2.
    /*II=1 (Initiation Interval = 1):
    Initiation Interval (II) is the number of clock cycles between the start of consecutive 
    loop iterations. Setting II=1 means that a new iteration of the loop will 
    start every clock cycle, even though previous iterations might still be executing.*/
    //--------------------------//--------------------------//--------------------------