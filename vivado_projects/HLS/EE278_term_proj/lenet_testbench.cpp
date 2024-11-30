#include <iostream>
#include <fstream>
#include "lenet_support.h" // Include your synthesizable functions

#define IMG_WIDTH 32
#define IMG_HEIGHT 32


// Function to load weights from binary files
void load_binary_file(const char *file_name, float *buffer, int size) {
    std::ifstream file(file_name, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << file_name << std::endl;
        exit(1);
    }
    file.read(reinterpret_cast<char*>(buffer), size * sizeof(float));
    if (file.gcount() != size * sizeof(float)) {
        std::cerr << "Error: File size mismatch for " << file_name << std::endl;
        exit(1);
    }
    file.close();
}

int main() {
    // Allocate arrays for weights and biases
    // Input image and predicted class
    float input[IMG_WIDTH * IMG_HEIGHT] = {0};  // Example test image
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/img_5.bin", input, IMG_WIDTH * IMG_HEIGHT);
    int predicted_class;

    float conv1_filters[CONV1_FILTERS * 5 * 5];
    float conv1_bias[CONV1_FILTERS];
    float conv2_filters[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS];
    float conv2_bias[CONV2_FILTERS];
    float fc1_weights[FC1_UNITS * (5 * 5 * CONV2_FILTERS)];
    float fc1_bias[FC1_UNITS];
    float fc2_weights[FC2_UNITS * FC1_UNITS];
    float fc2_bias[FC2_UNITS];
    float fc3_weights[NUM_CLASSES * FC2_UNITS];
    float fc3_bias[NUM_CLASSES];

    // Load weights and biases from binary files
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_bias.bin", conv1_bias, CONV1_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_filters.bin", conv1_filters, CONV1_FILTERS * 5 * 5);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_filters.bin", conv2_filters, CONV2_FILTERS * 5 * 5 * CONV1_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_bias.bin", conv2_bias, CONV2_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_weights.bin", fc1_weights, FC1_UNITS * (5 * 5 * CONV2_FILTERS));
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_bias.bin", fc1_bias, FC1_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_weights.bin", fc2_weights, FC2_UNITS * FC1_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_bias.bin", fc2_bias, FC2_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_weights.bin", fc3_weights, NUM_CLASSES * FC2_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_bias.bin", fc3_bias, NUM_CLASSES);

    
    // Declare output buffer for Conv1 layer
    int conv1_output_size = IMG_WIDTH - 5 + 1; // Output size
    float conv1_output[CONV1_FILTERS * conv1_output_size * conv1_output_size];

    // Run Conv1
    conv2d(input, conv1_output, conv1_filters, conv1_bias, IMG_WIDTH, 5, CONV1_FILTERS);

    // Print the first 10 output values for debugging
    std::cout << "Conv1 output (first 10 values): ";
    for (int i = 0; i < 10; i++) {
        std::cout << conv1_output[i] << " ";
    }
    std::cout << std::endl;

    // Print Conv1 output values for the first filter across the first row
    std::cout << "Conv1 output (filter 0, first row): ";
    for (int i = 0; i < conv1_output_size; i++) {
        std::cout << conv1_output[i] << " ";
    }
    std::cout << std::endl;




    // Call the top-level function
    lenet_predict(input, &predicted_class, conv1_filters, conv1_bias,
                  conv2_filters, conv2_bias, fc1_weights, fc1_bias,
                  fc2_weights, fc2_bias, fc3_weights, fc3_bias);

    //// Output the predicted class
    //std::cout << "HLS input (first 20 values): ";
    //for (int i = 0; i < 20; i++) {
    //    std::cout << input[i] << " ";
    //}
    //std::cout << std::endl;
    //
    ////-------------------------------------------
    //std::cout << "HLS Conv1 weights (first 5): ";
    //for (int i = 0; i < 5; i++) {
    //    std::cout << conv1_filters[i] << " ";
    //}
    //std::cout << std::endl;
    //
    //std::cout << "HLS Conv1 bias (first 5): ";
    //for (int i = 0; i < 5; i++) {
    //    std::cout << conv1_bias[i] << " ";
    //}
    //std::cout << std::endl;
    //
    ////------------------------------------------
    //
    ////-------------------------------------------
    

    std::cout << "Predicted class: " << predicted_class << std::endl;

    return 0;
}
