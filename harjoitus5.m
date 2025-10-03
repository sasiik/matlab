% 1

syms a1(x) x;
a1(x) = piecewise(0 <= mod(x, 3) & mod(x, 3) <= 1.5, 5, 1.5 < mod(x,3) & mod(x,3) < 3, 1);

fplot(a1);
xlim([-10 10]);
ylim([-10 10]);
legend('f(x)');


% 2

syms a2(x)
a2(x) = 2*mod(x, 5) + 1;

figure();
fplot(a2);
xlim([-10 10]);
ylim([-10 10]);
legend('f(x)');

% 3

a = 0;
b = 3;
P=b-a;
w=2*pi/P;

syms k;

a3_a(k) = 2/P * vpaintegral(a1 * cos(k*w*x), x, 0, P);
a3_b(k) = 2/P * vpaintegral(a1 * sin(k*w*x), x, 0, P);
a3_a0 = 2/P * vpaintegral(a1, x, 0, P);

disp(round(double(a3_a(1))));
disp(round(double(a3_b(1))));
disp(round(double(a3_a0)));

% 4

a4_a(k) = 2/P * vpaintegral(a2 * cos(k*w*x), x, 0, P);
a4_b(k) = 2/P * vpaintegral(a2 * sin(k*w*x), x, 0, P);
a4_a0 = 2/P * vpaintegral(a2, x, 0, P);

disp(round(double(a4_a0)));
disp(round(double(a4_a(1))));
disp(round(double(a4_b(1))));
disp(round(double(a4_a(2))));
disp(round(double(a4_b(2))));


% 5

syms a5(x);

a5(x) = abs(sin(x));

a5fourier = Nfourier(a5, x, 5, 0, pi);

figure();
fplot([a5 a5fourier]);
xlim([-10 10]);
ylim([-10 10]);
legend('f(x)', 'f(x) approximation');



function [FN,a0,AK,BK] = Nfourier(f,x,N,a,b)
P=b-a;
w=2*pi/P;
a0=round(double(2/P*int(f,x,a,b)),5);
FN=a0/2;
syms k A(k) B(k)
A(k)=(2/P)*int(f(x)*cos(k*w*x),x,a,b);
B(k)=(2/P)*int(f(x)*sin(k*w*x),x,a,b);

AK=[];
BK=[];

for i=1:N
    ai=round(double(A(i)),5);
    bi=round(double(B(i)),5);
    AK(i)=ai;
    BK(i)=bi;
    FN=FN+ai*cos(i*w*x)+bi*sin(i*w*x);

end
end