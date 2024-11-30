#include <iostream>       // For standard I/O (optional, mostly for debugging)
#include <hls_math.h>     // For synthesizable math functions like expf
#include <cfloat>         // For FLT_MAX, FLT_MIN (floating-point limits)
#include "lenet_support_1.h" // For constants and function prototypes

void conv2d(float input[IMG_WIDTH * IMG_HEIGHT], 
            float output[CONV1_FILTERS * OUT_WIDTH * OUT_HEIGHT], 
            float filters[CONV1_FILTERS * FILTER_SIZE * FILTER_SIZE], 
            float bias[CONV1_FILTERS], 
            int in_width, int filter_size, int num_filters) {
    #pragma HLS inline off
    for (int f = 0; f < num_filters; f++) {
        for (int i = 0; i < in_width - filter_size + 1; i++) {
            for (int j = 0; j < in_width - filter_size + 1; j++) {
                float sum = bias[f];
                for (int k = 0; k < filter_size; k++) {
                    for (int l = 0; l < filter_size; l++) {
                        sum += input[(i + k) * in_width + (j + l)] * filters[f * filter_size * filter_size + k * filter_size + l];
                    }
                }
                output[f * (in_width - filter_size + 1) * (in_width - filter_size + 1) + i * (in_width - filter_size + 1) + j] = sum;
            }
        }
    }
}

void maxpool2d(float input[CONV1_FILTERS * IN_WIDTH * IN_HEIGHT], 
               float output[CONV1_FILTERS * OUT_WIDTH * OUT_HEIGHT], 
               int in_width, int pool_size) {
    #pragma HLS inline off
    int out_width = in_width / pool_size;
    for (int f = 0; f < CONV1_FILTERS; f++) {
        for (int i = 0; i < out_width; i++) {
            for (int j = 0; j < out_width; j++) {
                float max_val = -FLT_MAX;
                for (int k = 0; k < pool_size; k++) {
                    for (int l = 0; l < pool_size; l++) {
                        float val = input[f * in_width * in_width + (i * pool_size + k) * in_width + (j * pool_size + l)];
                        if (val > max_val) {
                            max_val = val;
                        }
                    }
                }
                output[f * out_width * out_width + i * out_width + j] = max_val;
            }
        }
    }
}

void fully_connected(float input[INPUT_SIZE], 
                     float output[OUTPUT_SIZE], 
                     float weights[OUTPUT_SIZE * INPUT_SIZE], 
                     float bias[OUTPUT_SIZE], 
                     int input_size, int output_size) {
    #pragma HLS inline off
    for (int i = 0; i < output_size; i++) {
        float sum = bias[i];
        for (int j = 0; j < input_size; j++) {
            sum += input[j] * weights[i * input_size + j];
        }
        output[i] = sum;
    }
}

void softmax(float input[NUM_CLASSES], int num_classes) {
    #pragma HLS inline off
    float max_val = -FLT_MAX;
    for (int i = 0; i < num_classes; i++) {
        if (input[i] > max_val) {
            max_val = input[i];
        }
    }
    
    float sum_exp = 0.0f;
    for (int i = 0; i < num_classes; i++) {
        input[i] = hls::expf(input[i] - max_val); // Normalize to avoid overflow
        sum_exp += input[i];
    }

    for (int i = 0; i < num_classes; i++) {
        input[i] /= sum_exp;
    }
}

void relu(float input[], int size) {
    #pragma HLS inline off
    for (int i = 0; i < size; i++) {
        #pragma HLS pipeline
        input[i] = (input[i] > 0) ? input[i] : 0;
    }
}
