#include <stdio.h>

#define N 11
#define SAMPLES 600

// Define types for int-based FIR filter
typedef int data_t;
typedef int coef_t;
typedef int acc_t;

// Integer FIR filter implementation
void fir_int(data_t *y, data_t x) {
    const coef_t c[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
    static data_t shift_reg[N];
    acc_t acc = 0;
    int i;

    // Use HLS unrolling or pipeline to optimize the loop
    #pragma HLS PIPELINE
    for (i = N - 1; i >= 0; i--) {
        if (i == 0) {
            acc += x * c[0];
            shift_reg[0] = x;
        } else {
            shift_reg[i] = shift_reg[i - 1];
            acc += shift_reg[i] * c[i];
        }
    }
    *y = acc;
}

// Float-based FIR filter implementation
void fir_float(float *y, float x) {
    const float c[N] = {0.0, -10.0, -9.0, 23.0, 56.0, 63.0, 56.0, 23.0, -9.0, -10.0, 0.0};
    static float shift_reg[N];
    float acc = 0.0;
    int i;

    // Use HLS unrolling or pipeline to optimize the loop
    #pragma HLS PIPELINE
    for (i = N - 1; i >= 0; i--) {
        if (i == 0) {
            acc += x * c[0];
            shift_reg[0] = x;
        } else {
            shift_reg[i] = shift_reg[i - 1];
            acc += shift_reg[i] * c[i];
        }
    }
    *y = acc;
}