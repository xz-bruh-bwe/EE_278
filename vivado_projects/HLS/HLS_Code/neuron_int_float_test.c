#include <stdio.h>
#include "fir.h"  // Assuming fir_int and fir_float are declared in this header

#define N 11
#define SAMPLES 600

// Integer FIR filter function declaration (if fir.h doesn't exist)
void fir_int(data_t *y, data_t x);

// Float-based FIR filter function declaration (if fir.h doesn't exist)
void fir_float(float *y, float x);

// Custom square root function for RMSE calculation (avoiding math.h for HLS compatibility)
float hls_sqrt(float number) {
    float x = number;
    float y = 1.0;
    float e = 0.00001;  // Tolerance level
    while (x - y > e) {
        x = (x + y) / 2;
        y = number / x;
    }
    return x;
}

// RMSE calculation between int and float outputs
float compute_rmse(int *int_output, float *float_output, int length) {
    float rmse = 0.0;
    for (int i = 0; i < length; i++) {
        float diff = int_output[i] - float_output[i];
        rmse += diff * diff;
    }
    rmse = hls_sqrt(rmse / length);
    return rmse;
}

int main() {
    int int_output[SAMPLES];
    float float_output[SAMPLES];

    data_t signal = 0;
    int ramp_up = 1;

    // Generate FIR outputs for both int and float filters
    for (int i = 0; i < SAMPLES; i++) {
        // Simulate some input signal behavior
        if (ramp_up == 1)
            signal = signal + 1;
        else
            signal = signal - 1;

        // Process the signal with the int-based FIR filter
        fir_int(&int_output[i], signal);

        // Process the same signal with the float-based FIR filter
        fir_float(&float_output[i], (float)signal);

        // Switch ramp direction at 75 and -75
        if (ramp_up == 1 && signal >= 75)
            ramp_up = 0;
        else if (ramp_up == 0 && signal <= -75)
            ramp_up = 1;
    }

    // Calculate RMSE between integer and floating-point FIR outputs
    float rmse_value = compute_rmse(int_output, float_output, SAMPLES);
    
    // Print out the RMSE result
    printf("RMSE between int and float outputs: %f\n", rmse_value);

    // Print some output values to verify
    for (int i = 0; i < 10; i++) {
        printf("int_output[%d] = %d, float_output[%d] = %f\n", i, int_output[i], i, float_output[i]);
    }

    // Optional: Pass/Fail condition based on a predefined RMSE tolerance
    if (rmse_value < 0.05) {  // Set a tolerance for passing
        printf("TEST PASSED: RMSE is within acceptable range.\n");
    } else {
        printf("TEST FAILED: RMSE exceeds acceptable range.\n");
    }

    return 0;
}