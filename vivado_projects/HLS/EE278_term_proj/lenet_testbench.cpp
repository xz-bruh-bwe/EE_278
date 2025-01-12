#include <iostream>
#include <fstream>
#include "lenet_support.h" // Include your synthesizable functions

// Baron E. Student ID: 017495374

#define IMG_WIDTH 32
#define IMG_HEIGHT 32

// Function to load weights from binary files
void load_binary_file(const char *file_name, DATA_T *buffer, int size) {
    std::ifstream file(file_name, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << file_name << std::endl;
        exit(1);
    }
    file.read(reinterpret_cast<char*>(buffer), size * sizeof(DATA_T));
    if (file.gcount() != size * sizeof(DATA_T)) {
        std::cerr << "Error: File size mismatch for " << file_name << std::endl;
        exit(1);
    }
    file.close();
}

int main() {
    // Allocate arrays for weights and biases
    // Input image and predicted class
    DATA_T input_74[IMG_WIDTH * IMG_HEIGHT] = {0};  // Example test image
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/img_9.bin", input_74, IMG_WIDTH * IMG_HEIGHT);

    int predicted_class_74;

    DATA_T conv1_filters_74[CONV1_FILTERS * 5 * 5];
    DATA_T conv1_bias_74[CONV1_FILTERS];
    DATA_T conv2_filters_74[CONV2_FILTERS * 5 * 5 * CONV1_FILTERS];
    DATA_T conv2_bias_74[CONV2_FILTERS];
    DATA_T fc1_weights_74[FC1_UNITS * (5 * 5 * CONV2_FILTERS)];
    DATA_T fc1_bias_74[FC1_UNITS];
    DATA_T fc2_weights_74[FC2_UNITS * FC1_UNITS];
    DATA_T fc2_bias_74[FC2_UNITS];
    DATA_T fc3_weights_74[NUM_CLASSES * FC2_UNITS];
    DATA_T fc3_bias_74[NUM_CLASSES];

    // Load weights and biases from binary files
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_bias.bin", conv1_bias_74, CONV1_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv1_filters.bin", conv1_filters_74, CONV1_FILTERS * 5 * 5);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_filters.bin", conv2_filters_74, CONV2_FILTERS * 5 * 5 * CONV1_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/conv2_bias.bin", conv2_bias_74, CONV2_FILTERS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_weights.bin", fc1_weights_74, FC1_UNITS * (5 * 5 * CONV2_FILTERS));
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc1_bias.bin", fc1_bias_74, FC1_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_weights.bin", fc2_weights_74, FC2_UNITS * FC1_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc2_bias.bin", fc2_bias_74, FC2_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_weights.bin", fc3_weights_74, NUM_CLASSES * FC2_UNITS);
    load_binary_file("C:/Users/Baron/Desktop/EE_278_Repo/EE_278/%PATH_EE278%/EE278_env/bin_files/fc3_bias.bin", fc3_bias_74, NUM_CLASSES);

    // Call the top-level function
    lenet_predict(input_74, &predicted_class_74, conv1_filters_74, conv1_bias_74,
                  conv2_filters_74, conv2_bias_74, fc1_weights_74, fc1_bias_74,
                  fc2_weights_74, fc2_bias_74, fc3_weights_74, fc3_bias_74);

    // Output the predicted class
    std::cout << "Predicted class: " << predicted_class_74 << std::endl;

    // Debug outputs
    std::cout << "HLS input (first 20 values): ";
    for (int i = 0; i < 20; i++) {
        std::cout << input_74[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "HLS Conv1 weights (first 20): ";
    for (int i = 0; i < 20; i++) {
        std::cout << conv1_filters_74[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "HLS Conv1 bias (first 20): ";
    for (int i = 0; i < 20; i++) {
        std::cout << conv1_bias_74[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
