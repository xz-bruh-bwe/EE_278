#ifndef LENET_SUPPORT_1_H
#define LENET_SUPPORT_1_H

#include <iostream>
#include <hls_math.h> // For synthesizable mathematical functions like expf
#include <cfloat>     // For FLT_MAX

// Model Constants
#define IMG_WIDTH 32
#define IMG_HEIGHT 32
#define CONV1_FILTERS 6
#define CONV2_FILTERS 16
#define FC1_UNITS 120
#define FC2_UNITS 84
#define NUM_CLASSES 10


// Layer 1 (Conv1) dimensions
#define IN_WIDTH 32
#define IN_HEIGHT 32
#define FILTER_SIZE 5
#define OUT_WIDTH (IN_WIDTH - FILTER_SIZE + 1) // 28
#define OUT_HEIGHT (IN_HEIGHT - FILTER_SIZE + 1) // 28

// Layer 2 (MaxPool1)
#define POOL1_SIZE 2
#define POOL1_OUT_WIDTH (OUT_WIDTH / POOL1_SIZE) // 14
#define POOL1_OUT_HEIGHT (OUT_HEIGHT / POOL1_SIZE) // 14

// Layer 3 (Conv2)
#define CONV2_FILTER_SIZE 5
#define CONV2_OUT_WIDTH (POOL1_OUT_WIDTH - CONV2_FILTER_SIZE + 1) // 10
#define CONV2_OUT_HEIGHT (POOL1_OUT_HEIGHT - CONV2_FILTER_SIZE + 1) // 10

// Layer 4 (MaxPool2)
#define POOL2_SIZE 2
#define POOL2_OUT_WIDTH (CONV2_OUT_WIDTH / POOL2_SIZE) // 5
#define POOL2_OUT_HEIGHT (CONV2_OUT_HEIGHT / POOL2_SIZE) // 5

// Flattened input size for fully connected layers
#define INPUT_SIZE (POOL2_OUT_WIDTH * POOL2_OUT_HEIGHT * CONV2_FILTERS) // 400
#define OUTPUT_SIZE NUM_CLASSES

// Function Prototypes
// Top-level function
void lenet_predict(
    float input[IMG_WIDTH * IMG_HEIGHT], 
    int *predicted_class,
    float conv1_filters[CONV1_FILTERS * 5 * 5],
    float conv1_bias[CONV1_FILTERS],
    float conv2_filters[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS],
    float conv2_bias[CONV2_FILTERS],
    float fc1_weights[FC1_UNITS * (5 * 5 * CONV2_FILTERS)],
    float fc1_bias[FC1_UNITS],
    float fc2_weights[FC2_UNITS * FC1_UNITS],
    float fc2_bias[FC2_UNITS],
    float fc3_weights[NUM_CLASSES * FC2_UNITS],
    float fc3_bias[NUM_CLASSES]
);

// Convolutional layer
void conv2d(
    float input[IMG_WIDTH * IMG_HEIGHT], 
    float output[CONV1_FILTERS * 28 * 28], 
    float filters[CONV1_FILTERS * 5 * 5], 
    float bias[CONV1_FILTERS], 
    int in_width, 
    int filter_size, 
    int num_filters
);

// Max pooling layer
void maxpool2d(
    float input[CONV1_FILTERS * 28 * 28], 
    float output[CONV1_FILTERS * 14 * 14], 
    int in_width, 
    int pool_size
);

// Fully connected layer
void fully_connected(
    float input[], 
    float output[], 
    float weights[], 
    float bias[], 
    int input_size, 
    int output_size
);

// ReLU activation layer
void relu(float input[], int size); // Newly added prototype

// Softmax layer
void softmax(float input[NUM_CLASSES], int num_classes);

#endif // LENET_SUPPORT_1_H
