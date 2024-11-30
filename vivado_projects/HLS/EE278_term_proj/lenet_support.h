#ifndef LENET_SUPPORT_H
#define LENET_SUPPORT_H

#include <hls_math.h> // For HLS-specific math functions

#define IMG_WIDTH     32
#define IMG_HEIGHT    32
#define NUM_CLASSES   10 // Because there are ten numbers
#define CONV1_FILTERS 6
#define CONV2_FILTERS 16
#define FC1_UNITS     120
#define FC2_UNITS     84


// Function prototypes
void lenet_predict(float input[IMG_WIDTH * IMG_HEIGHT], int *predicted_class, 
                   float conv1_filters[CONV1_FILTERS * 5 * 5], 
                   float conv1_bias[CONV1_FILTERS],
                   float conv2_filters[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS],
                   float conv2_bias[CONV2_FILTERS],
                   float fc1_weights[FC1_UNITS * (5 * 5 * CONV2_FILTERS)],
                   float fc1_bias[FC1_UNITS],
                   float fc2_weights[FC2_UNITS * FC1_UNITS],
                   float fc2_bias[FC2_UNITS],
                   float fc3_weights[NUM_CLASSES * FC2_UNITS],
                   float fc3_bias[NUM_CLASSES]);

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