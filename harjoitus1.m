% 1.

a1 = 5*(1:15) - 2;
disp(a1);

% 2.
syms n a2(n)
a2(n) = 4*n + 3;
x = a2(1:15);
disp(x);

% 3

a3 = zeros(1,10);
for n = 1:10
    a3(n) = 3*n+1;
end
disp(a3);

% 4

a4 = 3*(-2).^((1:15)-1);
disp(a4);

% 5

syms n an(n) bn(n) cn(n)
an(n) = 3 - 0.8 .^ (n-1);
bn(n) = 2 + 3/n;
cn(n) = 1/n;

alim = limit(an, n, inf);
blim = limit(bn, n, inf);
clim = limit(cn, n, inf);

disp(alim);
disp(blim);
disp(clim);

% 6

a6 = 1 + 3*(1:20);
disp(a6)

% 7

a7 = 3*2.^(0:19);
disp(a7);

% 8

a8 = 25 + 4 * 12;
disp(a8);

% 9

a9 = 16 * 1.5 .^ 4;
disp(a9);


% 10

d = (9-3) / (5-2);
