# README: `damp` Function in Octave Control Package

## Overview
The `damp` function in the Octave control package analyzes the dynamic characteristics of poles in a linear system. It computes the damping ratio (`zeta`), natural frequency (`wn`), and time constant (`tau`) for each pole in the system. This analysis is essential for understanding system behavior, such as stability, oscillation, and settling time.

## Functionality
The `damp` function accepts a vector of poles and computes their respective damping characteristics. These poles may be real or complex, and the results provide insight into the system's dynamic response, whether it is underdamped, critically damped, overdamped, or oscillatory.

### Key Output Parameters:
1. **Damping Ratio (`zeta`)**: Describes the amount of damping in the system. It is dimensionless and typically ranges from 0 to 1 for stable systems:
   - `zeta = 0`: Purely oscillatory system.
   - `0 < zeta < 1`: Underdamped system.
   - `zeta = 1`: Critically damped system.
   - `zeta > 1`: Overdamped system.

2. **Natural Frequency (`wn`)**: The frequency (in rad/s) of oscillation in the absence of damping.

3. **Time Constant (`tau`)**: The reciprocal of the real part of the pole, representing the exponential decay rate.

---

## Calling Sequence
```octave
[zeta, wn, tau] = damp(poles)
```

### Parameters
1. **`poles`**: A vector of poles representing the roots of the system's characteristic equation. Poles can be real or complex.

### Outputs
- **`zeta`**: Vector of damping ratios, one for each pole.
- **`wn`**: Vector of natural frequencies corresponding to the poles.
- **`tau`**: Vector of time constants corresponding to the poles.

---

## Example Usage

### Example
```octave
disp("Example: Underdamped system with complex conjugate poles");
poles = [-2 + 3*%i, -2 - 3*%i];
[zeta, wn, tau] = damp(poles);

% Output results
disp("Damping Ratio (zeta):"), disp(zeta);
disp("Natural Frequency (wn):"), disp(wn);
disp("Time Constant (tau):"), disp(tau);
```

---

## Test Cases
Below are test cases to validate the accuracy and effectiveness of the `damp` function.

### Test Case 1: Complex Conjugate Poles with a Damping Ratio
```octave
disp("Test Case 1: Complex conjugate poles with a damping ratio");
poles = [-1 + 2*%i, -1 - 2*%i];
[zeta, wn, tau] = damp(poles);
```

### Test Case 2: Real Negative Poles (Underdamped System)
```octave
disp("Test Case 2: Real negative poles (underdamped system)");
poles = [-3, -3];
[zeta, wn, tau] = damp(poles);
```

### Test Case 3: Real Negative Poles (Critically Damped System)
```octave
disp("Test Case 3: Real negative poles (critically damped system)");
poles = [-4, -4];
[zeta, wn, tau] = damp(poles);
```

### Test Case 4: Complex Conjugate Poles with High Damping Ratio
```octave
disp("Test Case 4: Complex conjugate poles with high damping ratio");
poles = [-2 + %i, -2 - %i];
[zeta, wn, tau] = damp(poles);
```

### Test Case 5: Single Real Pole (Overdamped System)
```octave
disp("Test Case 5: Single real pole (overdamped system)");
poles = [-5];
[zeta, wn, tau] = damp(poles);
```

### Test Case 6: Poles at the Origin (Purely Integrating System)
```octave
disp("Test Case 6: Poles at the origin (purely integrating system)");
poles = [0, 0];
[zeta, wn, tau] = damp(poles);
```

### Test Case 7: Poles on the Imaginary Axis (Oscillatory System)
```octave
disp("Test Case 7: Poles on the imaginary axis (oscillatory system)");
poles = [0 + 3*%i, 0 - 3*%i];
[zeta, wn, tau] = damp(poles);
```

### Test Case 8: Complex Conjugate Poles with Negative Real Part
```octave
disp("Test Case 8: Complex conjugate poles with a negative real part");
poles = [-1 + 1.5*%i, -1 - 1.5*%i];
[zeta, wn, tau] = damp(poles);
```

---

## Conclusion
The `damp` function is a powerful tool for analyzing system dynamics in control theory. By providing detailed information about damping ratios, natural frequencies, and time constants, it allows engineers and researchers to characterize and design stable and efficient systems. Its ability to handle both real and complex poles makes it versatile for a wide range of applications.
