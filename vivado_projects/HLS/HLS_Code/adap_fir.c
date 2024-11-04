#include "adap_fir.h"


coef_t coeffs[N] = {0, -10, -9, 23, 56, 63, 56, 23, -9, -10, 0}; // Initial filter coefficients

void adap_fir(
  data_t *y,        // Pointer to the output signal
  data_t x,         // Input signal
  data_t d          // Desired signal
) {
#pragma HLS INTERFACE s_axilite bundle=fir_io port=return
#pragma HLS INTERFACE s_axilite bundle=fir_io port=y
#pragma HLS INTERFACE s_axilite bundle=fir_io port=x
#pragma HLS INTERFACE s_axilite bundle=fir_io port=d

  //const coef_t learning_rate_shift = 8; // Learning rate (step size) for coefficient adaptation
  const coef_t learning_rate = 256; // Learning rate (step size) for coefficient adaptation
   
  static data_t shift_reg[N] = {0}; // Shift register for input samples

  acc_t acc = 0;
  int i;

  // Shift and accumulate for FIR output
  Shift_Accum_Loop: for (i = N - 1; i >= 0; i--) {
    if (i == 0) {
      acc += x * coeffs[0];
      shift_reg[0] = x;
    } else {
      shift_reg[i] = shift_reg[i - 1];
      acc += shift_reg[i] * coeffs[i];
    }
  }

  // Set the output value
  *y = acc;

  // Calculate the error signal
  data_t error = d - acc;

  // Update the filter coefficients using the LMS adaptation rule
  Coeff_Update_Loop: for (i = 0; i < N; i++) {
    coeffs[i] += (error * shift_reg[i]) / learning_rate;  
  }
}