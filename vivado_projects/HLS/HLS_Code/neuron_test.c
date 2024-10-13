#include <stdio.h>
#include <math.h>
#include "neuron.h"

int main () {
  const int    SAMPLES=9;  // There are 9 input sets in the problem
  FILE         *fp;

  // Define the 9 sets of inputs (each with 6 inputs)
  data_t inputs[9][NUM_INPUTS] = {
    {0.5949, 0.1, 0.0010, -0.0076, -0.0419, -0.0413},
    {0.0514, 0, 0.0006, -0.0189, 0.1693, 0.8295},
    {0.0002, 0.3, 0.0007, -0.0049, -0.0324, 0.0219},
    {0.0000, 0.5, 0.0000, -0.0004, -0.0091, 0.1157},
    {0.0004, 0.5, -0.0006, -0.0176, 0.4083, 0.3129},
    {0.0000, 0.3, 0.0001, -0.0013, -0.0164, 0.4042},
    {0.0197, 0, -0.0005, -0.0144, 0.1278, 0.5787},
    {0.0000, 0.5, 0.0001, -0.0022, 0.0081, 0.1616},
    {0.0000, 0.1, -0.0002, 0.0000, -0.0025, 0.0186}
  };

  data_t output;
  int i;

  fp = fopen("out.dat", "w");

  // Loop over the 9 input sets
  for (i = 0; i < SAMPLES; i++) {
    // Call the neuron function with the current set of inputs
    neuron(&output, inputs[i]);

    // Save the results for each input set
    fprintf(fp, "Input set %i: ", i + 1);
    for (int j = 0; j < NUM_INPUTS; j++) {
      fprintf(fp, "%f ", inputs[i][j]);
    }
    fprintf(fp, " Output: %f\n", output);
  }

  fclose(fp);

  // Output comparison (similar to previous test)
#ifdef BIT_ACCURATE
  printf ("Comparing against bit-accurate data \n");
  if (system("diff -w out.dat out_gold.8.dat")) {
#else
  printf ("Comparing against output data \n");
  if (system("diff -w out.dat out_gold.dat")) {
#endif
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
    fprintf(stdout, "*******************************************\n");
    return 1;
  } else {
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "PASS: The output matches the golden output!\n");
    fprintf(stdout, "*******************************************\n");
    return 0;
  }
}