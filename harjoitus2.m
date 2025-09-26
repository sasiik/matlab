% 1

a1 = 5*(1:15) - 2;
disp(sum(a1));

b1 = 4*(1:15) + 3;
disp(sum(b1));

c1 = -3*(1:15) + 5;
disp(sum(c1));

% 2

syms n a1(n);
a1(n) = 5*n - 2;
Sa1 = 0;

for i=1:15
    Sa1 = Sa1+a1(i);
end

disp(Sa1);


syms n b1(n);
b1(n) = 4*n + 3;
Sb1 = 0;

for i=1:15
    Sb1 = Sb1 + b1(i);
end

disp(Sb1);

syms n c1(n);
c1(n) = -3*n + 5;
Sc1 = 0;

for i=1:15
    Sc1 = Sc1 + c1(i);
end

disp(Sc1);
 

% 3

a3 = 3 + 5*(1:40);
disp(sum(a3));

syms n a3(n)
a3(n) = 3 + 5*n;
Sa3 = 0;

for i=1:40
    Sa3 = Sa3 + a3(i);
end

disp(Sa3);

% 4

a4 = 3*4.^(1:10);
disp(sum(a4));

syms n a4(n)
a4(n) = 3*4.^n;
Sa4 = 0;

for i=1:10
    Sa4 = Sa4 + a4(i);
end

disp(Sa4);


% 5

Sa5 = (a3(1) + a3(40)) / 2 * 40;
disp(Sa5);


Sa5_2 = a4(1) * (1-4.^10) / (1-4);

disp(Sa5_2);

% 6

a6 = 25 + 4*(0:12);
disp(sum(a6));

% 7

a7 = 16 * 1.5 .^ (0:4);
disp(sum(a7));


% 8

syms n a(n)
a(n) = 100 * 0.9 .^ (n-1);

disp(round(sum(a(10:25))));

% 9

syms n a9(n)
a9(n) = 10000 + (150000 - 10000*(n-1)) * 0.009;

disp(round(sum(a9(1:15))));

% 10

P = 150000; i = 0.009; n = 15;
A = P * (i) / (1 - (1+i)^(-n));  
summa = n * A;                   
korko = summa - P;    

disp(round(A));
disp(round(summa));
disp(round(korko));

