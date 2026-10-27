%% Allisson V. Calo
%% 2ECE-A


%% Problem A. TRANSPOSE OPERATIONS
% Real matrix R (3x4)
R = [ 5, -2,  0,  7;
      1,  3, -4,  2;
      6,  0,  8, -1 ];

% Complex matrix Z (2x3)
Z = [ 2+3i, -1+4i, 5-2i;
     -3+1i,     6, 2+5i ];

%% Transpose operation on Matrix R
disp('Matrix R:');
disp(R);

disp('transpose(R):');
R_transpose = transpose(R);
disp(R_transpose);

disp("R' (Complex Conjugate Transpose):");
R_ctranspose = R';
disp(R_ctranspose);

disp("R.' (Non-Conjugate Transpose):");
R_dot_transpose = R.';
disp(R_dot_transpose);

%% Transpose operation on Matrix Z
disp('Matrix Z:');
disp(Z);

disp('transpose(Z):');
Z_transpose = transpose(Z);
disp(Z_transpose);

disp("Z' (Complex Conjugate Transpose):");
Z_ctranspose = Z';
disp(Z_ctranspose);

disp("Z.' (Non-Conjugate Transpose):");
Z_dot_transpose = Z.';
disp(Z_dot_transpose);

%% Numerical Checks / Verifications
disp('Is transpose(R) equal to R''?');
disp(isequal(R_transpose, R_ctranspose));

disp('Is transpose(R) equal to R.''?');
disp(isequal(R_transpose, R_dot_transpose));

disp('Is transpose(Z) equal to Z.''?');
disp(isequal(Z_transpose, Z_dot_transpose));

disp('Is transpose(Z) equal to Z''?');
disp(isequal(Z_transpose, Z_ctranspose));

% a. All three operations give identical results because the 
% complex conjugate of a real number is equal to itself.

% b. Both transpose(Z) and Z.' give identical results. Itperforms a standard 
% non-conjugate transpose 

% c. The apostrophe operator (') performs the complex conjugate 
% transpose. In addition to swapping the rows and columns, it takes the 
% complex conjugate of each entry



%% Problem B. TWO METHODS FOR A LINEAR SYSTEM

%% Define Coefficient Matrix A and Vector B
A = [  2, -1,  3,  2;
       1,  4, -2,  1;
       3,  2,  1, -1;
      -2,  3,  4,  2 ]

b = [ 16;
      -7;
       6;
       7 ]

%% Inverse Method
% Compute x_inv using the matrix inverse of A
x_inv = inv(A) * b;

%% Cramer's Rule
% Compute the determinant of A
det_A = det(A)

% Preallocate x_cramer
n = length(b);
x_cramer = zeros(n, 1)

% Replace each column of A with b to compute each variable
for i = 1:n
    A_temp = A;
    A_temp(:, i) = b
    x_cramer(i) = det(A_temp) / det_A
end

%% Display Outputs and Required Checks
disp('Solution via Inverse Method (x_inv):')
disp(x_inv);

disp("Solution via Cramer's Rule (x_cramer):")
disp(x_cramer);


%% For checking
disp('Determinant of A, det(A):')
disp(det_A);

disp('Difference norm, norm(x_inv - x_cramer):')
disp(norm(x_inv - x_cramer));

disp('Residual norm, norm(A * x_inv - b):')
disp(norm(A * x_inv - b));