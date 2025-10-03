% 1

syms a1(n) n
a1(n) = cos(n);
tf1(n) = taylor(a1, n);

disp(tf1(0));
disp(double(tf1(3)));
disp(double(tf1(-5)));

% 2

syms a2(n)
a2(n) = 2.^n;
tf2(n) = taylor(a2, n, 2);

disp(double(tf2(2)));
disp(double(tf2(3)));
disp(double(tf2(-5)));

% 3

syms a3(n);
a3(n) = sin(n);
tf3(n) = taylor(a3, n, 2, "Order", 8);

disp(tf3);

% 4

syms a4(n) x;
a4(n) = sin(n);
da4_1(n) = diff(a4, n, 1);
da4_2(n) = diff(a4, n, 2);
da4_3(n) = diff(a4, n, 3);

a=2;

tf4(n) = a4(a) + da4_1(a)*(n-a) + da4_2(a)/factorial(2)*(n-a).^2 + da4_3(a)/factorial(3)*(n-a).^3;
tf4_2(n) = taylor(a4, n, 2, "Order", 4, "OrderMode", "Relative");

disp(tf4);
disp(tf4_2);


% 5

syms a5(n)

a5(n) = 4.^n + cos(n);

tf5_4 = taylor(a5, n, 0, "Order", 4);
tf5_6 = taylor(a5, n, 0, "Order", 6);
tf5_8 = taylor(a5, n, 0, "Order", 8);
tf5_10 = taylor(a5, n, 0, "Order", 10);

% fplot([a5, tf5_4, tf5_6, tf5_8, tf5_10]);
% xlim([-15 10]);
% ylim([-3 10]);
% legend('f(x)', 'T1', 'T2', 'T3', 'T4');

% 6

syms n
a6(n) = cos(n);
maxdeg = 10;

tf6 = sym(0);
df  = a6;
for k = 0:maxdeg
    tf6 = tf6 + subs(df, n, 0) * n^k / factorial(k);
    df  = diff(df, n);
end

tf6_2(n) = taylor(a6, n, 0, "Order", 11);
disp(vpa(tf6(2)));
disp(vpa(tf6_2(2)));
disp(vpa(cos(2)));

% 7

syms a7(n) k;

a7(n) = log(1 + n);
tf7(n) = taylor(a7, n, 1, "Order", 58);

disp(round(a7(3), 2));
disp(round(tf7(3), 2));


% 8

syms a8(n);

a8(n) = sin(n)/n;

tf8_6(n) = taylor(a8, n, 2, "Order", 6);
tf8_8(n) = taylor(a8, n, 2, "Order", 8);
tf8_10(n) = taylor(a8, n, 2, "Order", 10);

% fplot([a8, tf8_6, tf8_8, tf8_10]);
% xlim([-10 10]);
% ylim([-10 10]);
% legend("f(x)", "T6", "T8", "T10");


% 9

tf8_1_4(n) = taylor(a8, n, 1);
tf8_1_4_int = int(tf8_1_4, n, 0, 2);
disp(double(tf8_1_4_int));
disp(double(vpaintegral(a8, 0, 2)))

% 10

syms a10(n);

a10(n) = cos(n.^2);

tf10 = taylor(a10, n, 0, "Order", 100);
tf10_int = int(tf10, n, -3, 3);

disp(vpa(tf10_int));
disp(vpaintegral(a10, -3, 3));






