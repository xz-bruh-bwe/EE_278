#include "lenet_support.h"

// Baron E. Student ID: 017495374

void lenet_predict(DATA_T input_74[IMG_WIDTH * IMG_HEIGHT],
                   int *predicted_class_74,
                   DATA_T conv1_filters_74[CONV1_FILTERS * 5 * 5],
                   DATA_T conv1_bias_74[CONV1_FILTERS],
                   DATA_T conv2_filters_74[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS],
                   DATA_T conv2_bias_74[CONV2_FILTERS],
                   DATA_T fc1_weights_74[FC1_UNITS * (5 * 5 * CONV2_FILTERS)],
                   DATA_T fc1_bias_74[FC1_UNITS],
                   DATA_T fc2_weights_74[FC2_UNITS * FC1_UNITS],
                   DATA_T fc2_bias_74[FC2_UNITS],
                   DATA_T fc3_weights_74[NUM_CLASSES * FC2_UNITS],
                   DATA_T fc3_bias_74[NUM_CLASSES]) {
    #pragma HLS INTERFACE m_axi port=input_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv1_filters_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv1_bias_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv2_filters_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv2_bias_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc1_weights_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc1_bias_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc2_weights_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc2_bias_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc3_weights_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=fc3_bias_74 offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=predicted_class_74 bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    //#pragma HLS pipeline II=1


    // Intermediate buffers
    DATA_T conv1_output[CONV1_FILTERS * 28 * 28];
    DATA_T pool1_output[CONV1_FILTERS * 14 * 14];
    DATA_T conv2_output[CONV2_FILTERS * 10 * 10];
    DATA_T pool2_output[CONV2_FILTERS * 5 * 5];
    DATA_T fc1_output[FC1_UNITS];
    DATA_T fc2_output[FC2_UNITS];
    DATA_T fc3_output[NUM_CLASSES];

    // Forward Pass
    conv2d(input_74, conv1_output, conv1_filters_74, conv1_bias_74, 32, 5, CONV1_FILTERS);
    maxpool2d(conv1_output, pool1_output, 28, 1);
    conv2d(pool1_output, conv2_output, conv2_filters_74, conv2_bias_74, 14, 5, CONV2_FILTERS);
    maxpool2d(conv2_output, pool2_output, 10, 1);
    fully_connected(pool2_output, fc1_output, fc1_weights_74, fc1_bias_74, 5 * 5 * CONV2_FILTERS, FC1_UNITS);
    fully_connected(fc1_output, fc2_output, fc2_weights_74, fc2_bias_74, FC1_UNITS, FC2_UNITS);
    fully_connected(fc2_output, fc3_output, fc3_weights_74, fc3_bias_74, FC2_UNITS, NUM_CLASSES);

    // Apply softmax
    softmax(fc3_output, NUM_CLASSES);

    *predicted_class_74 = 0;
    DATA_T max_prob = fc3_output[0];
    for (int i = 1; i < NUM_CLASSES; i++) {
        if (fc3_output[i] > max_prob) {
            max_prob = fc3_output[i];
            *predicted_class_74 = i;
        }
    }
}
