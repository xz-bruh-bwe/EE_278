#include <iostream>
#include <fstream>
#include "lenet_support_1.h" // Include your synthesizable functions

#define IMG_WIDTH 32
#define IMG_HEIGHT 32

// Function to load binary data from files
void load_binary_file(const char *file_name, float *buffer, int size) {
    std::ifstream file(file_name, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << file_name << std::endl;
        exit(1);
    }
    file.read(reinterpret_cast<char *>(buffer), size * sizeof(float));
    if (file.gcount() != size * sizeof(float)) {
        std::cerr << "Error: File size mismatch for " << file_name << std::endl;
        exit(1);
    }
    file.close();
}

int main() {
    // Paths to binary files (update paths as needed)
    const char *image_file         = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/img_0.bin";
    const char *conv1_weights_file = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_filters.bin";
    const char *conv1_bias_file    = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_bias.bin";
    const char *conv2_weights_file = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_filters.bin";
    const char *conv2_bias_file    = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_bias.bin";
    const char *fc1_weights_file   = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_weights.bin";
    const char *fc1_bias_file      = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_bias.bin";
    const char *fc2_weights_file   = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_weights.bin";
    const char *fc2_bias_file      = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_bias.bin";
    const char *fc3_weights_file   = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_weights.bin";
    const char *fc3_bias_file      = "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_bias.bin";

    // Allocate arrays for weights and biases
    float input[IMG_WIDTH * IMG_HEIGHT] = {0};  // Input image
    int predicted_class;                       // Predicted output class

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

    // Load input image, weights, and biases from binary files
    std::cout << "Loading binary files..." << std::endl;
    load_binary_file(image_file, input, IMG_WIDTH * IMG_HEIGHT);
    load_binary_file(conv1_weights_file, conv1_filters, CONV1_FILTERS * 5 * 5);
    load_binary_file(conv1_bias_file, conv1_bias, CONV1_FILTERS);
    load_binary_file(conv2_weights_file, conv2_filters, CONV2_FILTERS * 5 * 5 * CONV1_FILTERS);
    load_binary_file(conv2_bias_file, conv2_bias, CONV2_FILTERS);
    load_binary_file(fc1_weights_file, fc1_weights, FC1_UNITS * (5 * 5 * CONV2_FILTERS));
    load_binary_file(fc1_bias_file, fc1_bias, FC1_UNITS);
    load_binary_file(fc2_weights_file, fc2_weights, FC2_UNITS * FC1_UNITS);
    load_binary_file(fc2_bias_file, fc2_bias, FC2_UNITS);
    load_binary_file(fc3_weights_file, fc3_weights, NUM_CLASSES * FC2_UNITS);
    load_binary_file(fc3_bias_file, fc3_bias, NUM_CLASSES);

    // Debug: Print input data
        std::cout << "Input image (first 10 pixels): ";
        for (int i = 0; i < 10; i++) {
            std::cout << input[i] << " ";
        }
        std::cout << std::endl;

        // Debug: Print Conv1 weights and biases
        std::cout << "Conv1 filters (first 10 values): ";
        for (int i = 0; i < 10; i++) {
            std::cout << conv1_filters[i] << " ";
        }
        std::cout << std::endl;

        std::cout << "Conv1 biases (first 10 values): ";
        for (int i = 0; i < 10; i++) {
            std::cout << conv1_bias[i] << " ";
        }
        std::cout << std::endl;

        // Call the top-level LeNet prediction function
        std::cout << "Running lenet_predict..." << std::endl;
        lenet_predict(input, &predicted_class, conv1_filters, conv1_bias,
                      conv2_filters, conv2_bias, fc1_weights, fc1_bias,
                      fc2_weights, fc2_bias, fc3_weights, fc3_bias);

        // Debug: Print intermediate outputs for Conv1
        std::cout << "Conv1 output (first 10 values): ";
        for (int i = 0; i < 10; i++) {
            std::cout << input[i] << " "; // Replace with actual output buffer if available
        }
        std::cout << std::endl;

        // Debug: Print final output probabilities (Softmax output)
        std::cout << "Output probabilities: ";
        for (int i = 0; i < NUM_CLASSES; i++) {
            std::cout << "Class " << i << ": " << input[i] << " "; // Replace with actual output buffer if available
        }
        std::cout << std::endl;

        // Output the predicted class
        std::cout << "Predicted class: " << predicted_class << std::endl;
    return 0;
}
