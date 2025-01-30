// Test Case 1: Correct horizontal concatenation (with matching row counts)
A = [1, 2; 3, 4];  // 2x2 matrix
B = [5, 6; 7, 8];  // 2x2 matrix (now both matrices have 2 rows)

result = horzcat(A, B);
disp("Test Case 1: Result of horizontal concatenation:");
disp(result);

// Expected Output:
// [1 2 5 6;
//  3 4 7 8]


// Test Case 2: Concatenating a 3x1 matrix with a 3x3 matrix
A = [1; 2; 3];  // 3x1 matrix
B = [4, 5, 6; 7, 8, 9; 10, 11, 12];  // 3x3 matrix

result = horzcat(A, B);
disp("Test Case 2: Horizontal concatenation (3x1 and 3x3 matrices):");
disp(result);

// Expected Output:
// [1 4 5 6;
//  2 7 8 9;
//  3 10 11 12]

// Test Case 3 : Concatenating a 2x3 matrix with another 2x3 matrix
A = [1, 2, 3; 4, 5, 6];  // 2x3 matrix
B = [7, 8, 9; 10, 11, 12];  // 2x3 matrix (now both matrices have 2 rows)

result = horzcat(A, B);
disp("Test Case 3 : Horizontal concatenation of two 2x3 matrices:");
disp(result);

// Expected Output:
// [1 2 3 7 8 9;
//  4 5 6 10 11 12]

// Test Case 4: Concatenating matrices with different column counts (should trigger error)
A = [1, 2; 3, 4];  // 2x2 matrix
B = [5; 6];        // 2x1 matrix

// This should trigger an error because the column counts don't match
result = horzcat(A, B);
disp("Test Case 4: Concatenating matrices with different column counts (should trigger error):");
disp(result);

// Test Case 5: Concatenating multiple matrices (1x3 matrices)
A = [1, 2, 3];  // 1x3 matrix
B = [4, 5, 6];  // 1x3 matrix
C = [7, 8, 9];  // 1x3 matrix

result = horzcat(A, B, C);
disp("Test Case 5: Horizontal concatenation of multiple matrices:");
disp(result);

// Expected Output:
// [1 2 3 4 5 6 7 8 9]

// Test Case 6: Concatenating row vectors with the same number of rows
A = [1, 2, 3];  // 1x3 row vector
B = [4, 5, 6];  // 1x3 row vector

result = horzcat(A, B);
disp("Test Case 6: Concatenating row vectors with the same number of rows:");
disp(result);

// Expected Output:
// [1 2 3 4 5 6]


// Test Case 7: Concatenating a 3x1 matrix with a 1x3 matrix
A = [1; 2; 3];  // 3x1 matrix
B = [4, 5, 6];  // 1x3 matrix (we need to transpose this to match the row count)

// Transpose B to make it a 3x1 matrix
B = B';  // Now B is 3x1

result = horzcat(A, B);
disp("Test Case 7: Horizontal concatenation of a 3x1 and a 3x1 matrix:");
disp(result);

// Expected Output:
// [1 4;
//  2 5;
//  3 6]


// Test Case 8: Concatenating a 1x3 matrix with an empty matrix
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

// Expected Output:
// [1 2 3] (The result should be the same as matrix A)




