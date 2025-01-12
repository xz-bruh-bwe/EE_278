#ifndef LENET_SUPPORT_H
#define LENET_SUPPORT_H

// Baron E. Student ID: 017495374

#include <hls_math.h> // For HLS-specific math functions
#include <ap_fixed.h>

// Define constants
#define IMG_WIDTH     32
#define IMG_HEIGHT    32
#define NUM_CLASSES   10 // Because there are ten numbers
#define CONV1_FILTERS 6
#define CONV2_FILTERS 16
#define FC1_UNITS     120
#define FC2_UNITS     84

// Define data type for configurable precision
typedef float FP32;               // Full-precision
typedef ap_fixed<16, 8> FP16;     // 16-bit fixed-point
typedef ap_fixed<16, 5> BF16;     // BFloat16
typedef ap_int<8> INT8;           // 8-bit integer

typedef FP32 DATA_T;              // Current data type (change as needed)

// Function prototypes
void lenet_predict(DATA_T input_74[IMG_WIDTH * IMG_HEIGHT], int *predicted_class, 
                   DATA_T conv1_filters_74[CONV1_FILTERS * 5 * 5], 
                   DATA_T conv1_bias_74[CONV1_FILTERS],
                   DATA_T conv2_filters_74[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS],
                   DATA_T conv2_bias_74[CONV2_FILTERS],
                   DATA_T fc1_weights_74[FC1_UNITS * (5 * 5 * CONV2_FILTERS)],
                   DATA_T fc1_bias_74[FC1_UNITS],
                   DATA_T fc2_weights_74[FC2_UNITS * FC1_UNITS],
                   DATA_T fc2_bias_74[FC2_UNITS],
                   DATA_T fc3_weights_74[NUM_CLASSES * FC2_UNITS],
                   DATA_T fc3_bias_74[NUM_CLASSES]);

// Activation function (ReLU)
DATA_T relu(DATA_T x);

// Softmax activation
void softmax(DATA_T *input_74, int n);

// Convolution operation
void conv2d(DATA_T *input_74, DATA_T *output, DATA_T *filters, DATA_T *bias,
            int input_size, int filter_size, int num_filters);

// Max pooling operation
void maxpool2d(DATA_T *input_74, DATA_T *output, int input_size, int pool_size);

// Fully connected layer
void fully_connected(DATA_T *input_74, DATA_T *output, DATA_T *weights, DATA_T *bias,
                     int input_len, int output_len);

#endif // LENET_SUPPORT_H
