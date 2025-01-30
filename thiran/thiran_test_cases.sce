// Test Case 1: Single-Pole System
b1 = [1]; // Numerator coefficients
a1 = [1, 1]; // Denominator coefficients
disp("Test Case 1: Single-Pole System");
disp(thiran_approximation(b1, a1));

// Test Case 2: Order system
disp("Test Case 2: Order System");
b1 = [0.5, 0.2]; // Numerator coefficients
a1 = [1, 0.4]; // Denominator coefficients
disp("First Order System");
disp(thiran_approximation(b1, a1));
b2 = [1, 0.5, 0.3]; // Numerator coefficients
a2 = [1, 0.7, 0.2]; // Denominator coefficients
disp("Second Order System");
disp(thiran_approximation(b2, a2));
b3 = [2, 1.5, 0.8, 0.3]; // Numerator coefficients
a3 = [1, 0.9, 0.6, 0.2]; // Denominator coefficients
disp("Third Order System");
disp(thiran_approximation(b3, a3));

// Test Case 3: Higher-order system
b4 = [3, 2, 1]; // Numerator coefficients
a4 = [1, 0.5, 0.3]; // Denominator coefficients
disp("Test Case 3: Higher Order System");
disp(thiran_approximation(b4, a4));

// Test Case 4: Simple low-pass filter
b5 = [1]; // Numerator coefficients
a5 = [1, 0.5]; // Denominator coefficients
disp("Test Case 4: Simple low-pass filter");
disp(thiran_approximation(b5, a5));

// Test Case 5: Pure Delay Approximation
b3 = [0, 1]; // Numerator coefficients (delay numerator)
a3 = [1]; // Denominator coefficients
disp("Test Case 5: Pure Delay Approximation");
disp(thiran_approximation(b3, a3));

// Test Case 6: Unstable System
b5 = [1]; // Numerator coefficients
a5 = [1, -0.5]; // Denominator coefficients (pole at s = 0.5)
disp("Test Case 6: Unstable System");
disp(thiran_approximation(b5, a5));

// Test Case 7: Low-Gain System
b8 = [0.001, 0.002]; // Numerator coefficients
a8 = [1, 0.001]; // Denominator coefficients
disp("Test Case 7: Low-Gain System");
disp(thiran_approximation(b8, a8));

// Test Case 8: Critically Damped
b7 = [1]; // Numerator coefficients
a7 = [1, 2, 1]; // Denominator coefficients (repeated real poles)
disp("Test Case 8: Critically Damped System");
disp(thiran_approximation(b7, a7));


