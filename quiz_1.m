% QUIZ ONE

%% QUESTION 1
%a)
A = [2 2; 3 4];
B = [2 -1; -1.5 1];
C = [0.5 0.5; 0.5 0.5];
D = [0.5 -0.5; -0.5 0.5];
E = [0 1 0; 0 0 1];

I = [1 0; 0 1];
A^2
0.5*A^2 - 3*A + I

%b)
A^-1

%d)
C*D
D*C

%e)
E = [[ 0 ; 0 ], 1/6 * A + 1/3 * B]


%% Question 2
%a)
x = [-3 6 -7 -12 -11 1 2 8 0 -5];
M = x(1);
for j = 1:length(x)
    if x(j)<M
        M = x(j);
    end
end
M % What is M?

%% b)
x = [-3 6 -7 8 0];
y = [3 -4 -3 8 -9];
z = [0 0 0 0 0];
for j = 1:length(x)
    if x(j) < y(j)
        z(j) = x(j)+y(j);
    else % If the previous condition is not satisfied, do the following instead.
        z(j) = x(j)*y(j);
    end
end
z % What is z?

%% c)
A = [0 1 1 1 1; 0 0 1 1 1; 0 0 0 1 1; 0 0 0 0 1; 0 0 0 0 0];
j = 0;
B = A;
while B(1,5) > 0
    j = j+1
    B = B*A
end
B % What is B?
j % What is j?

%% d)
A = [2 -2; 0 1];
B = [1 2; 0 2];
C = A*B
D = [B;B(2,:)]
E = (D*C) .^2;
E % What is E?

%% Question 4
T = [2 1 1; 1 2 1; 1 1 2];
x = [1; 1; 1];

%a)
T*x

%b)
f = [0; 0; 1]
B = f/x

%c) reduce
B = lu(B)

