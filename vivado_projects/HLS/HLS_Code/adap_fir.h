#ifndef ADAP_FIR_H_
#define ADAP_FIR_H_

#define N 24 // Number of taps in the adaptive filter

#ifdef BIT_ACCURATE
#include "ap_cint.h"
typedef float coef_t; // Coefficient type
typedef float data_t; // Data type for input/output
typedef float acc_t;  // Accumulator type
#else
typedef float coef_t; // Coefficient type
typedef float data_t; // Data type for input/output
typedef float acc_t;  // Accumulator type
#endif

// Expose the coefficients array for external access (debugging)
extern coef_t coeffs[N]; 

// Ensure C linkage when included in C++ files
#ifdef __cplusplus
extern "C" {
#endif

// Function declaration for the adaptive FIR filter
void adap_fir(
  data_t *y,    // Pointer to output signal
  data_t x,     // Input signal
  data_t d      // Desired signal
);

#ifdef __cplusplus
}
#endif

#endif // ADAP_FIR_H_
