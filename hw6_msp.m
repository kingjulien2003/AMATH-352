%% HW 6 msp
format long;

%% Excercise 2
I  =[
    1 0 0 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0 0 0;
    0 0 0 1 0 0 0 0 0 0;
    0 0 0 0 1 0 0 0 0 0;
    0 0 0 0 0 1 0 0 0 0;
    0 0 0 0 0 0 1 0 0 0;
    0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1];
i = 10^-8 * I;
A = [I; i];

b = [1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1];

%% (a)
%A^tAx = A^tb
%x = A^tb/A^ta
x = inv((transpose(A)*A)) * transpose(A) * b

%% (b)

[Q, R] = qr(A);
%q is the first 10 columns
q = Q(:, 1:10);
%r is the first 10 rows
r = R(1:10, :);
%rx = q^t b
%x = inv(r) q^t b
x = inv(r) * transpose(q) * b


%% MULTISTEP PROBLEM
%Part A
t = 0:5:60; % Time intervals over which data has been collected
z = [108.5 1482.5 2651.7 3476.1 4165.7 4562.9 4678.0 4604.3 4217.6 3632.9 2853.1 1805.4 503.4]; % Altitude of rocket at time intervals

figure(1);
scatter(t,z);

%% PART B Curve Fitting
t = 0:5:60;
V = vander(t);
A = V(:,end-2:end);
b = transpose(z);
% Normal Equation
%A^tAx = A^tb
%x = A^tb/A^ta
x = inv(transpose(A)*A) * transpose(A)*b

%% PART D
s = 0:0.001:60; % Create a "continuum” of time intervals between 0 and 60 in steps of 1e-3.
p = polyval(x,s); % Evaluates quadratic with coefficients given by least-squares solution x at times s
figure(2);
scatter(t,z); % Plots the data
hold on; % Allows other plots to be superimposed atop the scatter plot
plot(s,p); % Plots the best fit quadratic

