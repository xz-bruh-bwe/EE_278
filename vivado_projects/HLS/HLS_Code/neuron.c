#include "neuron.h"

void neuron (
  data_t *y,
  data_t x[6]  // 6 inputs to the neuron
  ) {
#pragma HLS INTERFACE s_axilite bundle=neuron_io port=return

  // Define the neuron weights
  const coef_t weights[6] = {0.2890, 0.0077, -0.0003, -0.0840, -0.3052, -0.2209};

  acc_t acc = 0;  // Accumulator for the weighted sum
  int i;

  // Compute the weighted sum of the inputs
  Weight_Sum_Loop: for (i = 0; i < 6; i++) {
     acc += x[i] * weights[i];  // Multiply input by its corresponding weight and accumulate
  }

  // Store the result in y
  *y = acc;
}