%%HW 3
%% Excercise 1 
%Find the LU factorization of the following matrices:
% e)
E = [-1 0 0; 2 -3 0; 1 3 2];
[L, U]  = lu(E)
% Excercise 1 f)
 
F = [1 0 -1; 2 3 2; -3 1 0];
[L, U]=lu(F)
%% Excercise 2
A = [2 -1 0 0 0;-1 2 -1 0 0; 0 -1 2 -1 0; 0 0 -1 2 -1; 0 0 0 -1 2];
L = [1 0 0 0 0; 0 1 0 0 0; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1];

U = A;
[m,n] = size(U);
for j = 1:m
    if U(j,j)==0
        error('System cannot be solved by regular Gaussian elimination.');
    end
    for i = j+1:m
        l_ij = U(i,j)/U(j,j);
        U(i,j:n) = U(i,j:n) - l_ij * U(j,j:n);

        L(i,j:n) = L(i,j:n) + l_ij * L(j,j:n); %code added
    end
end
U %Upper Triangular Matrix
L %Lower Triangular Matrix

%% Excercise 3

%For each of the listed matrices A and vectors b, find a permuted LU factorization of
%the matrix, and use your factorization to solve the system A x = b.


%b
A = [0 0 -4; 1 2 3; 0 1 7];
b = [1; 2; -1];

[L U P] = lu(A);
inv(U) * inv(L) * inv(P) * b
linsolve(A, b)

%c
C = [0 1 3; 0 2 3; 1 0 2;];
d = [1; 2; -1];
[L U P] = lu(C);

inv(U) * inv(L) * inv(P) * d
linsolve(C, d)
%% Excercise 4
