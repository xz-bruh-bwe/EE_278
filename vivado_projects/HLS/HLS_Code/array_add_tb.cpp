#include <stdio.h>

// Prototype of the function
void array_add(const int a[10], const int b[10], int result[10]);

int main() {
    // Initialize test input arrays
    int a[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int b[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
    int result[10] = {0};  // Array to store the results

    // Call the function (TOP)
    array_add(a, b, result);

    // Print and check results
    int pass = 1;
    for (int i = 0; i < 10; i++) {
        int expected = a[i] + b[i];
        printf("Result[%d] = %d (Expected: %d)\n", i, result[i], expected);
        if (result[i] != expected) {
            pass = 0;
            printf("Mismatch at index %d: got %d, expected %d\n", i, result[i], expected);
        }
    }

    if (pass) {
        printf("Test passed!\n");
    } else {
        printf("Test failed.\n");
    }

    return 0;
}