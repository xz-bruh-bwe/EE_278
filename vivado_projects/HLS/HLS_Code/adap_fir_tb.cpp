#include <iostream>
#include <cstdlib> // For rand()
#include <ctime>   // For seeding rand()
#include <cmath>   // For signal processing
#include "adap_fir.h"


// Function to generate a random signal
void generate_random_signal(data_t* signal, int num_samples, double amp) {
    for (int i = 0; i < num_samples; i++) {
        signal[i] = amp * ((std::rand() / (double)RAND_MAX) - 0.5); // Random signal centered around 0
    }
}

// Function to create a delayed version of the input signal
void create_delayed_signal(data_t* input, data_t* delayed, int num_samples, int delay) {
    for (int i = 0; i < num_samples; i++) {
        if (i >= delay) {
            delayed[i] = input[i - delay]; // Delayed version of the input
        } else {
            delayed[i] = 0; // Zero-padding for the initial samples
        }
    }
}


int main() {
    
    const int num_samples = 100; // Number of test samples
    const int num_taps = 31;     // Number of taps for FIR filter
    double fir_coeffs[num_taps]; // FIR filter coefficients
    const int delay = 10;         // Delay for creating the desired signal
    double amp = 0.5;             // Amplitude for the random signal

    // Seed random number generator
    std::srand(std::time(0));

    data_t x[num_samples];       // Input signal array
    data_t d[num_samples];       // Desired signal array
    data_t y;                    // Output of the filter
    data_t expected_output[num_samples]; // Expected output for verification

    // Generate the input signal
    generate_random_signal(x, num_samples, amp);

    // Create the desired signal as a delayed version of the input signal
    create_delayed_signal(x, d, num_samples, delay);

    // Print the input and desired signal for verification
    std::cout << "Filtered Input Signal (x):" << std::endl;
    for (int i = 0; i < num_samples; i++) {
        std::cout << x[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Desired Signal (d):" << std::endl;
    for (int i = 0; i < num_samples; i++) {
        std::cout << d[i] << " ";
    }
    std::cout << std::endl;

    // Expected output is initialized to a known pattern for comparison (optional)
    for (int i = 0; i < num_samples; i++) {
        expected_output[i] = d[i]; // For now, just use the desired signal
    }


    // Run the filter for each input sample and verify the output
    for (int i = 0; i < num_samples; i++) {
        adap_fir(&y, x[i], d[i]); // Run the adaptive FIR filter

        // Print output for verification
        std::cout << "Sample " << i << ": Input = " << x[i] 
                  << ", Desired = " << d[i] 
                  << ", Output = " << y 
                  << ", Expected = " << expected_output[i] << std::endl;

        // Print the current state of the coefficients
        printf("Coefficients at Sample %d: ", i);
        for (int j = 0; j < N; j++) {
            printf("%d ", coeffs[j]);
        }
        printf("\n");

        // Check validity
        if (y != expected_output[i]) {
            std::cerr << "Mismatch at sample " << i << ": Output " << y 
                      << " does not match expected " << expected_output[i] << std::endl;
        }
    }

    std::cout << "Testbench completed." << std::endl;
    return 0;
}