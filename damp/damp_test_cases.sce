// Test Case 1: 
disp("Test Case 1: Complex conjugate poles with a damping ratio");
poles = [-1 + 2*%i, -1 - 2*%i];
[zeta, wn, tau] = damp(poles);
disp("----");


// Test Case 2: 
disp("Test Case 2: Real negative poles (underdamped system");
poles = [-3, -3];
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 3; 
disp("Test Case 3: Real negative poles (critically damped system)");
poles = [-4, -4];  // Critically damped system
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 4: 
disp("Test Case 4: Complex conjugate poles with high damping ratio");
poles = [-2 + %i, -2 - %i];
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 5: 
disp("Test Case 5: Single real pole (overdamped system)");
poles = [-5];
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 6:
disp("Test Case 8: Poles at the origin (purely integrating system)");
poles = [0, 0];  // Poles at the origin
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 7:
disp("Test Case 10: Poles on the imaginary axis (oscillatory system)");
poles = [0 + 3*%i, 0 - 3*%i];  // Purely oscillatory system
[zeta, wn, tau] = damp(poles);
disp("-----");


// Test Case 8:
disp("Test Case 9: Complex conjugate poles with a negative real part");
poles = [-1 + 1.5*%i, -1 - 1.5*%i];  // Negative real part, underdamped
[zeta, wn, tau] = damp(poles);
disp("-----");


