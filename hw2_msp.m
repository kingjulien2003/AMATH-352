%% PART 1 Gaussian Elimination
format long;
A = [-2 1 0 0 0;1 -2 1 0 0; 0 1 -2 1 0; 0 0 1 -2 1; 0 0 0 1 -2];
b = (1/6^3) * [1;2;3;4;5];

M = [A,b];
[m,n] = size(M);
for j = 1:m
    if M(j,j)==0
        error('System cannot be solved by regular Gaussian elimination.');
    end
    for i = j+1:m
        l_ij = M(i,j)/M(j,j);
        M(i,j:n) = M(i,j:n) - l_ij * M(j,j:n);
    end
end
M

%{
M =

  Columns 1 through 5

  -2.000000000000000   1.000000000000000                   0                   0                   0
                   0  -1.500000000000000   1.000000000000000                   0                   0
                   0                   0  -1.333333333333333   1.000000000000000                   0
                   0                   0                   0  -1.250000000000000   1.000000000000000
                   0                   0                   0                   0  -1.200000000000000

  Column 6

   0.004629629629630
   0.011574074074074
   0.021604938271605
   0.034722222222222
   0.050925925925926
%}

%% PART 2 Back Substituion
[m,n] = size(M);
x = M(:,m+1); % Initialize column vector of unknowns (to be updated).
x(m) = M(m,m+1)/M(m,m); % Solve last equation of augmented matrix.
for i = m-1:-1:1 % i counts down from m-1 to 1 in intervals of 1.
    SUM = 0;
    for j = i+1:m
        SUM = SUM + M(i,j)*x(j);
    end
    x(i) = (M(i,n) - SUM)/M(i,i); % Updates the ith entry of x.
end
x

%{

x =

  -0.027006172839506
  -0.049382716049383
  -0.062500000000000
  -0.061728395061728
  -0.042438271604938
%}