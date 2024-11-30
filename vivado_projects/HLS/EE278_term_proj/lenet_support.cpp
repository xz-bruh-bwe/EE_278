#include "lenet_support.h"


// Activation function (ReLU)
float relu(float x) {
    return x > 0 ? x : 0;
}

// Softmax activation
void softmax(float *input, int n) {
    float max = input[0];
    for (int i = 1; i < n; i++) {
        if (input[i] > max) max = input[i];
    }
    float sum = 0;
    for (int i = 0; i < n; i++) {
        input[i] = hls::expf(input[i] - max);
        sum += input[i];
    }
    for (int i = 0; i < n; i++) {
        input[i] /= sum;
    }
}

// Convolution operation
void conv2d(float *input, float *output, float *filters, float *bias,
            int input_size, int filter_size, int num_filters) {
    int output_size = input_size - filter_size + 1;

    for (int f = 0; f < num_filters; f++) {
        for (int i = 0; i < output_size; i++) {
            for (int j = 0; j < output_size; j++) {
                #pragma HLS unroll factor=2
                float sum = 0;
                for (int fi = 0; fi < filter_size; fi++) {
                    #pragma HLS unroll factor=2
                    for (int fj = 0; fj < filter_size; fj++) {
                        sum += input[(i + fi) * input_size + (j + fj)] *
                               filters[f * filter_size * filter_size + fi * filter_size + fj];
                    }
                }
                sum += bias[f];
                output[f * output_size * output_size + i * output_size + j] = relu(sum + bias[f]);
                
            }
        }
    }
}

// Max pooling operation
void maxpool2d(float *input, float *output, int input_size, int pool_size) {
    int output_size = input_size / pool_size;

    for (int i = 0; i < output_size; i++) {
        for (int j = 0; j < output_size; j++) {
            float max = -INFINITY;
            for (int pi = 0; pi < pool_size; pi++) {
                #pragma HLS unroll factor=2
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
void fully_connected(float *input, float *output, float *weights, float *bias,
                     int input_len, int output_len) {
    for (int i = 0; i < output_len; i++) {
        float sum = 0;
        for (int j = 0; j < input_len; j++) {
            #pragma HLS unroll factor=2
            sum += input[j] * weights[i * input_len + j];
        }
        output[i] = relu(sum + bias[i]);
    }
}
