%HW 2
%% Excercise 1 part a
x = [0 -1 2 -3 4 5];
m = length(x);
SUM = 0;
for j=m-1:-1:1
    if x(j) > 1
        SUM = SUM + 1;
    end
end
SUM

%% Excercise 1 part b

x = [1,2,-3,4,4,-5,-8,9,9,1];
j = 1;
PROD = 1;
while abs(x(j)) < abs(x(j+1))   
    PROD = PROD*x(j);
    j = j +1;
end
PROD

%% Excercise 1 part c
A = [1,7,-3, 4; 2,-5,-8, 6; 3,9,9,6];
[m n] = size(A);
SUM = 0;
for i = 1:m
    for j = i:n
        SUM = SUM + A(i,j);
    end
end
SUM % What is the value of SUM?

%% Excercise 1 part d
 
A = [1,7,0,4;2,-5,-8,0;3,0,9,2];
B = [1, 2; 3, 0; 0, 8];
C = [B,B(:,2)];
D = C*A;
E = D(2:end,1:end);
F = E.^2 % What are the dimensions of F? What are its entries?

clear all
%% Excercise 2

A = [8 -7 10;3 2 -4; 12 4 4; 1 -1 3];

%a max
[m, n] = size(A);
max = A(1, 1);
for i = 1:m
    for j = 1:n
        if A(i, j) > max
            max = A(i, j);
        end
    end
end
max

%b min
[m, n] = size(A);
min = A(1, 1);
for i = 1:m
    for j = 1:n
        if A(i, j) < min
            min = A(i, j);
        end
    end
end
min

clear all

%% Excercise 3 
U = [1 2;0 1]

[m,n] = size(U);
x = U(:,m+1); % Initialize column vector of unknowns (to be updated).
x(m) = U(m,m+1)/U(m,m); % Solve last equation of augmented matrix.
for i = m-1:-1:1 % i counts down from m-1 to 1 in intervals of 1.
    SUM = 0;
    for j = i+1:m
        SUM = SUM + U(i,j)*x(j);
    end
    x(i) = (U(i,n) - SUM)/U(i,i); % Updates the ith entry of x.
end
x % x is the solution of the linear system.



%% 
%% 
C = [1 0; 0 3]
D = [1 -2; 0 1]
F = [1 0; 3 1]


