%%HW 5 msp
format long;
A = [1, 1/2, 1/3, 1/4, 1/5;
    1/2, 1/3, 1/4, 1/5, 1/6;
    1/3, 1/4, 1/5, 1/6, 1/7;
    1/4, 1/5, 1/6, 1/7, 1/8;
    1/5, 1/6, 1/7, 1/8, 1/9];

%Code from Question.
[n,k] = size(A);
Q = zeros(n,k); % Allocate space for the new orthonormal column vectors.

for j = 1:k % Construct Q matrix column by column.
    v_j = A(:,j);
    for p = 1:j-1 % Construct v_j perpendicular to q_j.
        v_j = v_j - (transpose(Q(:,p))*A(:,j))*Q(:,p);
    end
    if norm(v_j,2)==0 % Check if two norm of v_j is zero.
        error('Matrix A is not full rank.');
    end
Q(:,j) = v_j/norm(v_j,2);
end
Q

%% PART B
I = [1,0,0,0,0;0,1,0,0,0;0,0,1,0,0;0,0,0,1,0;0,0,0,0,1];
E=(transpose(Q) * Q - I);
max(E,[],'all')

%% PART C
log10(cond(A))
