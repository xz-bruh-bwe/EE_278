% MATLAB script to simulate the neuron and generate a values-only .dat file
% Define the weights for the neuron (same as given in the problem)
weights = [0.2890, 0.0077, -0.0003, -0.0840, -0.3052, -0.2209];

% Define the 9 sets of input data (same as provided in the problem)
inputs = [
    0.5949, 0.1, 0.0010, -0.0076, -0.0419, -0.0413;
    0.0514, 0, 0.0006, -0.0189, 0.1693, 0.8295;
    0.0002, 0.3, 0.0007, -0.0049, -0.0324, 0.0219;
    0.0000, 0.5, 0.0000, -0.0004, -0.0091, 0.1157;
    0.0004, 0.5, -0.0006, -0.0176, 0.4083, 0.3129;
    0.0000, 0.3, 0.0001, -0.0013, -0.0164, 0.4042;
    0.0197, 0, -0.0005, -0.0144, 0.1278, 0.5787;
    0.0000, 0.5, 0.0001, -0.0022, 0.0081, 0.1616;
    0.0000, 0.1, -0.0002, 0.0000, -0.0025, 0.0186
];

% Open a .dat file to write the results (values only)
fileID = fopen('expected_output_values.dat', 'w');

% Loop over each set of inputs
for i = 1:size(inputs, 1)
    % Calculate the weighted sum (neuron output)
    output = sum(inputs(i, :) .* weights);
    
    % Write the input values and the output to the .dat file
    fprintf(fileID, '%f %f %f %f %f %f %f\n', inputs(i, :), output);  % inputs + output
end

% Close the file
fclose(fileID);

disp('Expected output written to expected_output_values.dat');