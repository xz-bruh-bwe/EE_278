#include "lenet_support.h"


void lenet_predict(float input[IMG_WIDTH * IMG_HEIGHT],
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
                   float fc3_bias[NUM_CLASSES]) {
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv1_filters offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv1_bias offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv2_filters offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv2_bias offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc1_weights offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc1_bias offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc2_weights offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc2_bias offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc3_weights offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc3_bias offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=predicted_class bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    //#pragma HLS pipeline II=1


// Intermediate buffers
    float conv1_output[CONV1_FILTERS * 28 * 28];
    float pool1_output[CONV1_FILTERS * 14 * 14];
    float conv2_output[CONV2_FILTERS * 10 * 10];
    float pool2_output[CONV2_FILTERS * 5 * 5];
    float fc1_output[FC1_UNITS];
    float fc2_output[FC2_UNITS];
    float fc3_output[NUM_CLASSES];


// Forward Pass
    conv2d(input, conv1_output, conv1_filters, conv1_bias, 32, 5, CONV1_FILTERS);
    maxpool2d(conv1_output, pool1_output, 28, 2);
    conv2d(pool1_output, conv2_output, conv2_filters, conv2_bias, 14, 5, CONV2_FILTERS);
    maxpool2d(conv2_output, pool2_output, 10, 2);
    fully_connected(pool2_output, fc1_output, fc1_weights, fc1_bias, 5 * 5 * CONV2_FILTERS, FC1_UNITS);
    fully_connected(fc1_output, fc2_output, fc2_weights, fc2_bias, FC1_UNITS, FC2_UNITS);
    fully_connected(fc2_output, fc3_output, fc3_weights, fc3_bias, FC2_UNITS, NUM_CLASSES);

    // The apply softmax
    softmax(fc3_output, NUM_CLASSES);

    *predicted_class = 0;
    float max_prob = fc3_output[0];
    for (int i = 1; i < NUM_CLASSES; i++) {
        if (fc3_output[i]*.9 > max_prob) {
            max_prob = fc3_output[i];
            *predicted_class = i;
        }
    }
}
