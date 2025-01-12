#include "lenet_support.h"

// Baron E. Student ID: 017495374

// Activation function (ReLU)
DATA_T relu(DATA_T x) {
    return x > 0 ? x : 0;
}

// Softmax activation
void softmax(DATA_T *input, int n) {
    DATA_T max = input[0];
    for (int i = 1; i < n; i++) {
        if (input[i] > max) max = input[i];
    }
    DATA_T sum = 0;
    for (int i = 0; i < n; i++) {
        input[i] = hls::expf(input[i] - max);
        sum += input[i];
    }
    for (int i = 0; i < n; i++) {
        input[i] /= sum;
    }
}

//----------------------------------------------------------
// Convolution operation
void conv2d(DATA_T *input, DATA_T *output, DATA_T *filters, DATA_T *bias,
            int input_size, int filter_size, int num_filters) {
    int output_size = input_size - filter_size + 1;

    for (int f = 0; f < num_filters; f++) {
        for (int i = 0; i < output_size; i++) {
            for (int j = 0; j < output_size; j++) {
                #pragma HLS unroll factor=2
                DATA_T sum = 0;

                for (int fi = 0; fi < filter_size; fi++) {
                    #pragma HLS unroll factor=2
                    for (int fj = 0; fj < filter_size; fj++) {
                        sum += input[(i + fi) * input_size + (j + fj)] *
                               filters[f * filter_size * filter_size + fi * filter_size + fj];
                    }
                }

                // Add bias and apply ReLU activation
                output[f * output_size * output_size + i * output_size + j] = relu(sum);
            }
        }
    }
}
//----------------------------------------------------------

// Max pooling operation
void maxpool2d(DATA_T *input, DATA_T *output, int input_size, int pool_size) {
    int output_size = input_size / pool_size;

    for (int i = 0; i < output_size; i++) {
        for (int j = 0; j < output_size; j++) {
            DATA_T max = -INFINITY;
            for (int pi = 0; pi < pool_size; pi++) {
                #pragma HLS unroll factor=2
                for (int pj = 0; pj < pool_size; pj++) {
                    DATA_T value = input[(i * pool_size + pi) * input_size + (j * pool_size + pj)];
                    if (value > max) max = value;
                }
            }
            output[i * output_size + j] = max;
        }
    }
}

// Fully connected layer
void fully_connected(DATA_T *input, DATA_T *output, DATA_T *weights, DATA_T *bias,
                     int input_len, int output_len) {
    for (int i = 0; i < output_len; i++) {
        DATA_T sum = 0;

        for (int j = 0; j < input_len; j++) {
            #pragma HLS unroll factor=2
            sum += input[j] * weights[i * input_len + j];
        }

        output[i] = relu(sum);
    }
}
