%hw8_msp.m

%% MultiStep Problem
format long;

%part c
p21 = 0.2;
p31 = 0.3;
p12 = 0.2;
p32 = 0.4;
p13 = 0.5;
p23 = 0.4;

P = [1-p21-p31, p12, p13;
    p21, 1-p12-p32, p23;
    p31, p32, 1-p13-p23]
x = [1;0;0];


%% part a
P*x
P^2 * x
P^5 * x
P^10 * x


%% part d
eig(P)

%% part e
[V,D] = eig(P)

%% part f
A = [1,0,0;0,0,0;0,0,0];
(V*A*inv(V))*x
