% 1

syms n k;
a1 = 3*0.8.^(n-1);
a11 = 2 + 3/n;
a111 = 1/n;

Sk1 = symsum(a1, n, 1, k);
Sk11 = symsum(a11, n, 1, k);
Sk111 = symsum(a111, n, 1, k);

S1 = limit(Sk1, k, inf);
S11 = limit(Sk11, k, inf);
S111 = limit(Sk111, k, inf);

disp(S1);
disp(S11);
disp(S111);

Sk1 = symsum(a1, n, 1, inf);
Sk11 = symsum(a11, n, 1, inf);
Sk111 = symsum(a111, n, 1, inf);

disp(S1);
disp(S11);
disp(S111);


% 2

syms a2(n) k;

a2(n) = 5*0.7.^(n-1);

a2to15 = a2(1:15);
a2to30 = a2(1:30);

disp(double(sum(a2to15)));
disp(double(sum(a2to30)));

% 3

Sk2 = symsum(a2(n), n, 1, k);

disp(double(limit(Sk2, k, 15)));
disp(double(limit(Sk2, k, 30)));


S2geometric15 = a2(1) * (1-0.7.^15) / (1-0.7);
S2geometric30 = a2(1) * (1-0.7.^30) / (1-0.7);
disp(double(S2geometric15));
disp(double(S2geometric30));

% 4

disp(double(limit(Sk2, k, inf)));

S2geometricINF = a2(1) / (1-0.7);
disp(double(S2geometricINF));

% 5

syms a51(n) a52(n);

a51(n) = 5 * 1.2.^(n-1);
a52(n) = 3 * (-2.4).^(n-1);

Sa52 = symsum(a51(n), n, 1, inf);
Sa53 = symsum(a52(n), n, 1, inf);

disp(Sa52);
disp(Sa53);

% 6

syms a6(n);
a6(n) = 4*0.6.^(n-1);
disp(symsum(a6(n), n, 1, inf))

% 7

syms x a7(n);
a7(n) = (3*x).^(n-1);

disp(symsum(a7(n), n, 1, inf));

% 8

syms a8(n);

a8(n) = 250 * 0.5.^(n-1);
Sa8 = symsum(a8(n), n, 1, k);
disp(round(solve(Sa8 == 480, k)));
disp(round(limit(Sa8, k, inf)));
fprintf('ei pääse\n\n');

% 9

syms a9(n);
a9(n) = 10 * 0.95.^(n-1);
disp(double(symsum(a9(n), n, 10, inf)));

% 10

syms x n q a10(n);

assume(abs(q) < 1);

a10(n) = x * q.^(n-1);
eqns = [a10(2) == 5, symsum(a10(n), n, 1, inf) == 40];
sol = solve(eqns, [x, q]);

disp(double(sol.q))


















