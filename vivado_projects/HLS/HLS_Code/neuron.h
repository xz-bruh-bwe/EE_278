#ifndef NEURON_H_
#define NEURON_H_

#define NUM_INPUTS 6  // Number of inputs for the neuron

#ifdef BIT_ACCURATE
#include "ap_cint.h"
typedef int8  coef_t;  // Type for the neuron weights
typedef int8  data_t;  // Type for the inputs
typedef int8  acc_t;   // Type for the accumulator
#else
typedef float coef_t;  // Use float for weights, as neural networks often use real numbers
typedef float data_t;  // Use float for inputs to allow fractional inputs
typedef float acc_t;   // Accumulator for summing the results
#endif

// Neuron function prototype
void neuron (
  data_t *y,    // Pointer to the output value
  data_t x[NUM_INPUTS]  // Array of inputs
  );

#endif
