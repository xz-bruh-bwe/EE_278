#ifndef FIR_H_
#define FIR_H_
#define N 11

#ifdef BIT_ACCURATE
#include "ap_cint.h"
typedef int8 coef_t;
typedef int8 data_t;
typedef int8 acc_t;
#else
// Integer data types for int-based FIR filter
typedef int coef_t;
typedef int data_t;
typedef int acc_t;
#endif

// Float-based data types for float-based FIR filter
typedef float coef_float_t;
typedef float data_float_t;
typedef float acc_float_t;

// Declaration for integer FIR filter function
void fir_int(data_t *y, data_t x);

// Declaration for floating-point FIR filter function
void fir_float(data_float_t *y, data_float_t x);

#endif