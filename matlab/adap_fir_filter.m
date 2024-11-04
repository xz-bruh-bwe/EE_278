% Parameters
ntaps = 24;
nsamp = 1000;
ibeta = 8;  % Equivalent to 2^8 (step size scaling factor)
amp = 1;

% Generate reference signal (refsig)
refsig = amp * rand(1, nsamp) - (amp / 2);

% Generate input signal x(t)
Wn = 0.47;
B = fir1(30, Wn);  % FIR filter design
x = filter(B, 1, refsig);
x = x';  % Transpose to make it a column vector

% Generate desired signal d(t)
Coeff = fir1(ntaps, 0.5);  % FIR filter design for desired signal
d = filter(Coeff, 1, x);  % Filter x to get d

% Initialize arrays
y = zeros(1, nsamp);
e = zeros(1, nsamp);
h = zeros(1, ntaps);

% Adaptive filtering loop
for n = 1:nsamp
    if n < ntaps
        x1 = [x(n:-1:1)' zeros(1, ntaps - n)];  % Reverse segment with zero-padding
    else
        x1 = x(n:-1:n-ntaps+1)';  % Extract ntaps elements in reverse order
    end
    
    % Update y, e, h as per the algorithm
    y(n) = h * x1';  % Dot product to simulate y(n) = h * x1'
    e(n) = d(n) - y(n);  % Calculate error e(n)
    hh = e(n) * x1 / ibeta;  % Update term hh
    h = h + hh;  % Update filter coefficients h
end

% Plot the results
figure;
subplot(5, 1, 1);
plot(refsig);
title('Reference Signal (refsig)');
xlabel('Sample');
ylabel('Amplitude');
grid on;

subplot(5, 1, 2);
plot(x);
title('Filtered Input Signal (x)');
xlabel('Sample');
ylabel('Amplitude');
grid on;

subplot(5, 1, 3);
plot(d);
title('Desired Signal (d)');
xlabel('Sample');
ylabel('Amplitude');
grid on;

subplot(5, 1, 4);
plot(y);
title('Adaptive Filter Output (y)');
xlabel('Sample');
ylabel('Amplitude');
grid on;

subplot(5, 1, 5);
plot(e);
title('Error Signal (e)');
xlabel('Sample');
ylabel('Amplitude');
grid on;
