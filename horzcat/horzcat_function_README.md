
# README for `horzcat` Function in Octave (Control Package)

## Overview

The `horzcat` function in Octave is used to concatenate matrices horizontally. This means that the matrices are combined by appending columns, ensuring that the number of rows in all matrices is the same. If the matrices have different row counts, the function will raise an error.

### Functionality

The `horzcat` function is primarily used for joining two or more matrices side by side. The key requirement for successful horizontal concatenation is that all matrices involved must have the same number of rows. If the number of rows in the matrices do not match, the function will throw an error.

### Calling Sequence

```octave
result = horzcat(A, B, C, ...);
```

Where:
- `A`, `B`, `C`, ... are the matrices to be concatenated.
- The matrices must have the same number of rows, but the number of columns can vary.

### Parameters

- **A, B, C, ... (Input matrices)**: These are the matrices to be concatenated horizontally. All matrices must have the same number of rows. The number of columns can vary.
  
  - **Type**: Numeric matrix or array.
  - **Dimensions**: The number of rows in all matrices must be the same. The number of columns can differ.
  
- **result (Output matrix)**: This is the resulting matrix after horizontal concatenation. It will have the same number of rows as the input matrices and the combined number of columns from all input matrices.

### Return Value

- The function returns a new matrix that is the horizontal concatenation of the input matrices.
- The number of rows in the resulting matrix will be the same as the number of rows in the input matrices, while the number of columns will be the sum of the columns of all input matrices.

## Test Cases

### Test Case 1: Correct Horizontal Concatenation (with matching row counts)

```octave
A = [1, 2; 3, 4];  // 2x2 matrix
B = [5, 6; 7, 8];  // 2x2 matrix (now both matrices have 2 rows)

result = horzcat(A, B);
disp("Test Case 1: Result of horizontal concatenation:");
disp(result);
```

**Expected Output:**
```
[1 2 5 6;
 3 4 7 8]
```

### Test Case 2: Concatenating a 3x1 Matrix with a 3x3 Matrix

```octave
A = [1; 2; 3];  // 3x1 matrix
B = [4, 5, 6; 7, 8, 9; 10, 11, 12];  // 3x3 matrix

result = horzcat(A, B);
disp("Test Case 2: Horizontal concatenation (3x1 and 3x3 matrices):");
disp(result);
```

**Expected Output:**
```
[1 4 5 6;
 2 7 8 9;
 3 10 11 12]
```

### Test Case 3: Concatenating Two 2x3 Matrices

```octave
A = [1, 2, 3; 4, 5, 6];  // 2x3 matrix
B = [7, 8, 9; 10, 11, 12];  // 2x3 matrix (now both matrices have 2 rows)

result = horzcat(A, B);
disp("Test Case 3: Horizontal concatenation of two 2x3 matrices:");
disp(result);
```

**Expected Output:**
```
[1 2 3 7 8 9;
 4 5 6 10 11 12]
```

### Test Case 4: Concatenating Matrices with Different Row Counts (should trigger error)

```octave
A = [1, 2; 3, 4];  // 2x2 matrix
B = [5; 6];        // 2x1 matrix

// This should trigger an error because the column counts don't match
result = horzcat(A, B);
disp("Test Case 4: Concatenating matrices with different column counts (should trigger error):");
disp(result);
```

**Expected Output:**
```
Error: All matrices must have the same number of rows.
```

### Test Case 5: Concatenating Multiple Matrices (1x3 Matrices)

```octave
A = [1, 2, 3];  // 1x3 matrix
B = [4, 5, 6];  // 1x3 matrix
C = [7, 8, 9];  // 1x3 matrix

result = horzcat(A, B, C);
disp("Test Case 5: Horizontal concatenation of multiple matrices:");
disp(result);
```

**Expected Output:**
```
[1 2 3 4 5 6 7 8 9]
```

### Test Case 6: Concatenating Row Vectors with the Same Number of Rows

```octave
A = [1, 2, 3];  // 1x3 row vector
B = [4, 5, 6];  // 1x3 row vector

result = horzcat(A, B);
disp("Test Case 6: Concatenating row vectors with the same number of rows:");
disp(result);
```

**Expected Output:**
```
[1 2 3 4 5 6]
```

### Test Case 7: Concatenating a 3x1 Matrix with a 1x3 Matrix

```octave
A = [1; 2; 3];  // 3x1 matrix
B = [4, 5, 6];  // 1x3 matrix (we need to transpose this to match the row count)

// Transpose B to make it a 3x1 matrix
B = B';  // Now B is 3x1

result = horzcat(A, B);
disp("Test Case 7: Horizontal concatenation of a 3x1 and a 3x1 matrix:");
disp(result);
```

**Expected Output:**
```
[1 4;
 2 5;
 3 6]
```

### Test Case 8: Concatenating a 1x3 Matrix with an Empty Matrix

```octave
A = [1, 2, 3];  // 1x3 matrix
B = [];         // Empty matrix

// Check if B is empty
if size(B, 1) > 0 then
    result = horzcat(A, B);
else
    result = A;  // If B is empty, just use A
end

disp("Test Case 8: Horizontal concatenation of a 1x3 matrix and an empty matrix:");
disp(result);
```

**Expected Output:**
```
[1 2 3]  // The result should be the same as matrix A
```

## Conclusion

The `horzcat` function is an essential tool in Octave for horizontally concatenating matrices. It is important to ensure that all matrices have the same number of rows before performing horizontal concatenation. The test cases provided verify the accuracy and robustness of the function in handling different scenarios, including edge cases such as empty matrices and matrices with mismatched row counts.
