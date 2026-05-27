format short

%% 1. naloga

a = -3:2:5;
b = 10:-2:2;

skalarni_produkt = a * b';


%% 2. naloga

A = [ 1   2  -3   4;
    -1   0  -3/2   8;
    -2   2   2   1;
    0   2  -3   8/5 ];

% a)
drugi_stolpec = A(:,2);

% b)
povprecje = sum(A(:)) / numel(A);

% c)
A1 = (A + 2).^3;

% d)
B = A - (17/2) * eye(4);

detB = det(B);

najvecji = max(abs(B(:)));


%% 3a) Graf funkcije

x = linspace(-2, pi, 1000);

f = sin(3*x) + x.^9;

plot(x,f)

hold on

vrednost = sin(3*1) + 1^9;

plot(1, vrednost, 'o')

grid on


%% 3b) Anonimna funkcija

povprecje_fun = @(a,b) (a+b)/2;

rezultat = povprecje_fun(0.5,6);


%% 3c) Funkcija parabola
% V ločeni datoteki parabola.m

function y1 = parabola(a,b,c)

x = linspace(-5,5,1000);

y = a*x.^2 + b*x + c;

plot(x,y)

grid on

y1 = a*1^2 + b*1 + c;

end