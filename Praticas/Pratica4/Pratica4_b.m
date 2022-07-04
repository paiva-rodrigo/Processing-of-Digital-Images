clear; close all; clc;
w1 = 0.2;w2 = 0.9;

A = [2*cos(w1) 1 ; 2*cos(w2) 1];
B = [1 ; 0];
X = linsolve(A,B);

b = [X(1) X(2) X(1)];
zi = [0 0];
n = 0:99;
x1 = cos(w1*n);
x2 = cos(w2*n);
y = filter(b, 1, x1+x2, zi);
plot(n,y,'k',n,x1+x2,'g',n,x2,'m',n,x1,'c');
legend('Filtro(cos(0.2*n)+cos(0.9*n))','cos(0.2*n)+cos(0.9*n)','cos(0.2*n)','cos(0.9*n)');