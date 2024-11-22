#include <iostream>
#include <fstream>
#include "lenet_support.h" // Include your synthesizable functions

#define IMG_WIDTH 32
#define IMG_HEIGHT 32

// Function to load binary data into a buffer
void load_binary_file(const std::string& file_path, float* buffer, int size) {
    std::ifstream file(file_path, std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open binary file " << file_path << std::endl;
        exit(1);
    }

    file.read(reinterpret_cast<char*>(buffer), size * sizeof(float));
    if (file.gcount() != size * sizeof(float)) {
        std::cerr << "Error: Binary file size does not match expected size." << std::endl;
        exit(1);
    }
    file.close();
}



int main() {
    const std::string binary_file = "C:/Users/Baron/Documents/Grad_School/EE_278/Projects/EE278_term_project/mnist_bin/testBin/preprocessed_image.bin";

    // Create input buffer
    float input[IMG_WIDTH * IMG_HEIGHT] = {0};

    // Load the preprocessed image fewrom the binary file
    load_binary_file(binary_file, input, IMG_WIDTH * IMG_HEIGHT);

    // Run the prediction
    int predicted_class;
    lenet_predict(input, &predicted_class);

    // Print the predicted class
    std::cout << "Predicted class: " << predicted_class << std::endl;

    return 0;
}
