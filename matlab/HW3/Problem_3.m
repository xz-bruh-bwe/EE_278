% Step 1: Define the floating-point matrix
A = [ 0.945, -0.283, -0.853;
     -0.687,  0.735, -0.485;
     -0.383, -0.541,  0.123 ];

% Step 2: Define the fixed-point format
% 16-bit fixed-point representation
wordLength = 10;     % Total number of bits (16-bit fixed point)
fractionLength = 5;  % Number of bits allocated to the fractional part

% Convert to 16-bit fixed-point format
A_fixed = fi(A, 1, wordLength, fractionLength);

% Step 3: Display the fixed-point values and their corresponding decimal numbers
disp('Fixed-point matrix representation (16-bit):');
disp(A_fixed);

% Step 4: Retrieve the decimal equivalents of the fixed-point numbers
A_fixed_decimal = double(A_fixed);

disp('Decimal equivalents of the fixed-point representation:');
disp(A_fixed_decimal);