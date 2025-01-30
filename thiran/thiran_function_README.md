
# `thiran_approximation` Function README

## Overview
The `thiran_approximation` function in Octave is used to approximate the frequency response of a transfer function, applying the Thiran method. This method is particularly useful in situations where you need to approximate a system's transfer function to a desired level of accuracy. It is commonly used in signal processing and control systems for filtering and stability analysis. The function takes the numerator and denominator coefficients of a system and computes the Thiran approximation, which can then be used for further analysis or as an input to other processes.

## Calling Sequence
```octave
thiran_approximation(b, a)
```

Where:
- `b`: Numerator coefficients of the transfer function (row vector).
- `a`: Denominator coefficients of the transfer function (row vector).

## Parameters

### `b` (Numerator Coefficients)
- **Type**: Row vector
- **Description**: Contains the coefficients of the transfer function’s numerator. These represent the zeros of the transfer function, which determine the frequency characteristics of the system.
- **Example**: For a system with transfer function \( H(s) = rac{b_0 + b_1 s}{a_0 + a_1 s + a_2 s^2} \), `b = [b_0, b_1]`.

### `a` (Denominator Coefficients)
- **Type**: Row vector
- **Description**: Contains the coefficients of the transfer function’s denominator. These represent the poles of the transfer function, which affect the stability and behavior of the system.
- **Example**: For the same system \( H(s) = rac{b_0 + b_1 s}{a_0 + a_1 s + a_2 s^2} \), `a = [a_0, a_1, a_2]`.

## Functionality
The `thiran_approximation` function approximates the transfer function of a given system using the Thiran method. This method provides an approximation that reduces computational complexity while preserving the key dynamics of the original system.

## Example Usage

```octave
b1 = [1]; 
a1 = [1, 1]; 
disp("Test Case 1: Single-Pole System");
disp(thiran_approximation(b1, a1));
```

## Test Cases

### Test Case 1: Single-Pole System
```octave
b1 = [1];  % Numerator coefficients
a1 = [1, 1];  % Denominator coefficients
disp("Test Case 1: Single-Pole System");
disp(thiran_approximation(b1, a1));
```

### Test Case 2: First and Second-Order Systems
```octave
disp("Test Case 2: First and Second Order Systems");
b1 = [0.5, 0.2];  % Numerator coefficients
a1 = [1, 0.4];  % Denominator coefficients
disp("First Order System");
disp(thiran_approximation(b1, a1));

b2 = [1, 0.5, 0.3];  % Numerator coefficients
a2 = [1, 0.7, 0.2];  % Denominator coefficients
disp("Second Order System");
disp(thiran_approximation(b2, a2));
```

### Test Case 3: Higher-Order System
```octave
b4 = [3, 2, 1];  % Numerator coefficients
a4 = [1, 0.5, 0.3];  % Denominator coefficients
disp("Test Case 3: Higher Order System");
disp(thiran_approximation(b4, a4));
```

### Test Case 4: Simple Low-Pass Filter
```octave
b5 = [1];  % Numerator coefficients
a5 = [1, 0.5];  % Denominator coefficients
disp("Test Case 4: Simple Low-Pass Filter");
disp(thiran_approximation(b5, a5));
```

### Test Case 5: Pure Delay Approximation
```octave
b3 = [0, 1];  % Numerator coefficients (delay numerator)
a3 = [1];  % Denominator coefficients
disp("Test Case 5: Pure Delay Approximation");
disp(thiran_approximation(b3, a3));
```

### Test Case 6: Unstable System
```octave
b5 = [1];  % Numerator coefficients
a5 = [1, -0.5];  % Denominator coefficients (pole at s = 0.5)
disp("Test Case 6: Unstable System");
disp(thiran_approximation(b5, a5));
```

### Test Case 7: Low-Gain System
```octave
b8 = [0.001, 0.002];  % Numerator coefficients
a8 = [1, 0.001];  % Denominator coefficients
disp("Test Case 7: Low-Gain System");
disp(thiran_approximation(b8, a8));
```

### Test Case 8: Critically Damped System
```octave
b7 = [1];  % Numerator coefficients
a7 = [1, 2, 1];  % Denominator coefficients (repeated real poles)
disp("Test Case 8: Critically Damped System");
disp(thiran_approximation(b7, a7));
```

## Conclusion
The `thiran_approximation` function is an efficient tool for approximating the transfer function of a system using the Thiran method. By using this function, you can easily analyze and approximate systems with varying levels of complexity, from simple low-pass filters to higher-order systems and unstable systems. The test cases provided demonstrate a wide range of system behaviors to ensure the robustness and accuracy of the approximation.
