function leastsquares()
x = input('Input a value of x, x = ');

%INITIALIZE/SET DATA POINTS
X = [1 2 3 4];
Y = [1 -2 2 3];

%TABLE
n = length(X);
sumx = sum(X); sumy = sum(Y);
x2 = X.^2; x3 = X.^3; x4 = X.^4; x5 = X.^5; x6 = X.^6; xy = X.*Y; x2y = ((X.^2).*Y); x3y = ((X.^3).*Y);
sumx2 = sum(x2); sumx3 = sum(x3); sumx4 = sum(x4); sumx5 = sum(x5); sumx6 = sum(x6); sumxy = sum(xy); sumx2y = sum(x2y); sumx3y = sum(x3y);

%LINEAR
la = [sumx n;sumx2 sumx];
lb = [sumy;sumxy];
lc = linsolve(la,lb);
a = lc(1);
b = lc(2);
linear = a*x + b;
fprintf('The value of f(%.3f) using Linear Approximation is: %.3f \n', x, linear)

%QUADRATIC
qa = [sumx2 sumx n;sumx3 sumx2 sumx;sumx4 sumx3 sumx2];
qb = [sumy;sumxy;sumx2y];
qc = linsolve(qa,qb);
a1 = qc(1);
b1 = qc(2);
c1 = qc(3);
quadratic = a1*(x^2) + b1*x + c1;
fprintf('The value of f(%.3f) using Quadratic Approximation is: %.3f \n', x, quadratic)

%CUBIC
ca = [sumx3 sumx2 sumx n;sumx4 sumx3 sumx2 sumx;sumx5 sumx4 sumx3 sumx2;sumx6 sumx5 sumx4 sumx3];
cb = [sumy;sumxy;sumx2y;sumx3y];
cc = linsolve(ca,cb);
a2 = cc(1);
b2 = cc(2);
c2 = cc(3);
d2 = cc(4);
cubic = a2*(x^3) + b2*(x^2) + c2*(x) + d2; 
fprintf('The value of f(%.3f) using Cubic Approximation is: %.3f \n', x, cubic) 

end