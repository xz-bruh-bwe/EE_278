#ifndef LENET_SUPPORT_H
#define LENET_SUPPORT_H

#include <hls_math.h> // For HLS-specific math functions


//# These are the function prototypes
// Activation function (ReLU)
float relu(float x);

// Softmax activation
void softmax(float *input, int n);

// Convolution operation
void conv2d(float *input, float *output, float *filters, float *bias,
            int input_size, int filter_size, int num_filters);

// Max pooling operation
void maxpool2d(float *input, float *output, int input_size, int pool_size);

// Fully connected layer
void fully_connected(float *input, float *output, float *weights, float *bias,
                     int input_len, int output_len);

#endif // LENET_SUPPORT_H