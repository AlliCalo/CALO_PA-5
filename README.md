# CALO_PA-5
This repository focuses on introductory MATLAB programming for Programming Assignment 5 in ECE 2112. It covers real and complex matrix transpose operations and solves simultaneous linear systems using the inverse method and Cramer's Rule.

I. Intended Learning Outcomes
At the end of this laboratory activity, the student should be able to:
1. create real and complex matrices in MATLAB;
2. distinguish transpose from complex-conjugate transpose operations;
3. express a simultaneous linear system in matrix form; and
4. solve and check a linear system using the inverse method and Cramer’s Rule.


# Problem A: TRANSPOSE OPERATIONS
<img width="912" height="271" alt="image" src="https://github.com/user-attachments/assets/b624064d-2aca-4f83-9633-7a6ac7d8b959" />

## Code
<img width="648" height="443" alt="image" src="https://github.com/user-attachments/assets/071e301a-cae8-451c-84c0-0a8237b68fd4" />
<img width="652" height="272" alt="image" src="https://github.com/user-attachments/assets/361e3131-6a00-4479-99d2-1ee79beb7dc5" />
<img width="682" height="382" alt="image" src="https://github.com/user-attachments/assets/5052e831-5b75-4efb-b4b0-3cc2c82e9a86" />

## Code Explanation
This MATLAB script compares three ways of transposing a matrix: transpose(), the apostrophe operator ('), and the dot-apostrophe operator (.'). It uses both a real matrix \(R\) and a complex matrix \(Z\) to 
show how these operations work. For the real matrix, all three methods produce the same result because real numbers do not have imaginary parts. However, for the complex matrix, transpose(Z) and Z.' give the 
same result by simply switching the rows and columns. Meanwhile, the apostrophe operator (') also changes the signs of the imaginary parts, which is known as the complex conjugate transpose. Lastly, the 
script uses the isequal() function to check and confirm the results. This shows that all three methods work the same for real matrices, but the apostrophe operator produces a different result for 
complex matrices.


# Problem B: TWO METHODS FOR A LINEAR SYSTEM
<img width="932" height="387" alt="image" src="https://github.com/user-attachments/assets/8e66d1db-d8f5-4a68-92b5-afaeee985da9" />

## Code 
<img width="642" height="378" alt="image" src="https://github.com/user-attachments/assets/db1cec03-86fe-416a-ae83-4ff310fc9db6" />
<img width="571" height="426" alt="image" src="https://github.com/user-attachments/assets/e1dea0e1-157c-4c2c-98c7-a28577325852" />

## Code Explanation
This MATLAB script solves a \(4 \times 4\) system of linear equations using two methods: the matrix inverse method (inv(A) * b) and Cramer's Rule. For Cramer's Rule, the script uses a loop to replace each 
column of matrix \(A\) with vector \(b\) and calculates the solution using determinants. After displaying the results from both methods, the script checks if the determinant is not zero to confirm that a 
unique solution exists. It also compares the two solutions to make sure they are nearly identical and checks whether the calculated values satisfy the original equations. These checks help confirm that both 
methods produce consistent and accurate results.


