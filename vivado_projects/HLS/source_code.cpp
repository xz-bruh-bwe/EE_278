#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define IMG_WIDTH 32
#define IMG_HEIGHT 32
#define NUM_CLASSES 10
#define CONV1_FILTERS 6
#define CONV2_FILTERS 16
#define FC1_UNITS 120
#define FC2_UNITS 84

// Activation function (ReLU)
float relu(float x) {
    return x > 0 ? x : 0;
}


// Softmax activation for the output layer
void softmax(float* input, int n) {
    float max = input[0];
    for (int i = 1; i < n; i++) {
        if (input[i] > max) max = input[i];
    }
    float sum = 0;
    for (int i = 0; i < n; i++) {
        input[i] = exp(input[i] - max);
        sum += input[i];
    }
    for (int i = 0; i < n; i++) {
        input[i] /= sum;
    }
}


// Convolution operation
void conv2d(float* input, float* output, float* filters, float* bias,
            int input_size, int filter_size, int num_filters) 
{
    int output_size = input_size - filter_size + 1;
    for (int f = 0; f < num_filters; f++) {
        for (int i = 0; i < output_size; i++) {
            for (int j = 0; j < output_size; j++) {
                float sum = 0;
                for (int fi = 0; fi < filter_size; fi++) {
                    for (int fj = 0; fj < filter_size; fj++) {
                        sum += input[(i + fi) * input_size + (j + fj)] *
                               filters[f * filter_size * filter_size + fi * filter_size + fj];
                    }
                }
                output[f * output_size * output_size + i * output_size + j] =
                    relu(sum + bias[f]);
            }
        }
    }
}

// Max pooling operation
void maxpool2d(float* input, float* output, int input_size, int pool_size) 
{
    int output_size = input_size / pool_size;

    for (int i = 0; i < output_size; i++) {
        for (int j = 0; j < output_size; j++) {
            float max = -INFINITY;
            for (int pi = 0; pi < pool_size; pi++) {
                for (int pj = 0; pj < pool_size; pj++) {
                    float value = input[(i * pool_size + pi) * input_size + (j * pool_size + pj)];
                    if (value > max) max = value;
                }
            }
            output[i * output_size + j] = max;
        }
    }
}

// Fully connected layer
void fully_connected(float* input, float* output, float* weights, float* bias,
                     int input_len, int output_len) {
    for (int i = 0; i < output_len; i++) {
        float sum = 0;
        for (int j = 0; j < input_len; j++) {
            sum += input[j] * weights[i * input_len + j];
        }
        output[i] = relu(sum + bias[i]);
    }
}

// Initialize LeNet layers and predict
int lenet_predict(float* input) {
    // Define layer weights, biases (use pre-trained values for practical usage)
    
    float conv1_filters[CONV1_FILTERS * 5 * 5]; // initialize with pre-trained values
    float conv1_bias   [CONV1_FILTERS];
    float conv2_filters[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS];
    float conv2_bias   [CONV2_FILTERS];
    float fc1_weights  [FC1_UNITS * (5 * 5 * CONV2_FILTERS)];
    float fc1_bias     [FC1_UNITS];
    float fc2_weights  [FC2_UNITS * FC1_UNITS];
    float fc2_bias     [FC2_UNITS];
    float fc3_weights  [NUM_CLASSES * FC2_UNITS];
    float fc3_bias     [NUM_CLASSES];

    // Intermediate activations
    float conv1_output[CONV1_FILTERS * 28 * 28];
    float pool1_output[CONV1_FILTERS * 14 * 14];
    float conv2_output[CONV2_FILTERS * 10 * 10];
    float pool2_output[CONV2_FILTERS * 5 * 5];
    float fc1_output  [FC1_UNITS];
    float fc2_output  [FC2_UNITS];
    float fc3_output  [NUM_CLASSES];



     // Forward pass
    conv2d         (input, conv1_output, conv1_filters, conv1_bias, 32, 5, CONV1_FILTERS);
    maxpool2d      (conv1_output, pool1_output, 28, 2);
    conv2d         (pool1_output, conv2_output, conv2_filters, conv2_bias, 14, 5, CONV2_FILTERS);
    maxpool2d      (conv2_output, pool2_output, 10, 2);
    fully_connected(pool2_output, fc1_output, fc1_weights, fc1_bias, 5 * 5 * CONV2_FILTERS, FC1_UNITS);
    fully_connected(fc1_output, fc2_output, fc2_weights, fc2_bias, FC1_UNITS, FC2_UNITS);
    fully_connected(fc2_output, fc3_output, fc3_weights, fc3_bias, FC2_UNITS, NUM_CLASSES);

    // Apply softmax to get probabilities
    softmax(fc3_output, NUM_CLASSES);

    // Find the class with the highest probability
    int predicted_class = 0;
    float max_prob = fc3_output[0];
    for (int i = 1; i < NUM_CLASSES; i++) {
        if (fc3_output[i] > max_prob) {
            max_prob = fc3_output[i];
            predicted_class = i;
        }
    }
    return predicted_class;
}


int main() {
    float input[IMG_WIDTH * IMG_HEIGHT]; // Load your MNIST image here
    int prediction = lenet_predict(input);
    printf("Predicted digit: %d\n", prediction);
    return 0;
}