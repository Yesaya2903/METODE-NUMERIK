% Metode Numerik
% Yesaya Ananda Djaya
% 5002211156

% Metoda Secant

clear 
clc 

batas_iterasi = 20;
iterasi = 0;

a = 2;
b = 3;

while iterasi < batas_iterasi
    iterasi = iterasi + 1;

fa = a^4 - 2*a^2 + a - 2;
fb = b^4 - 2*b^2 + b - 2;

    fprintf('a = %.6f\n',a)
    fprintf('b = %.6f\n',b)
    fprintf('f(a) = %.6f\n', fa)
    fprintf('f(b) = %.6f\n', fb)

xr = b - (fb*(a-b))/(fa-fb);
fx = xr^4 - 2*xr^2 + xr - 2;
a = b;
b = xr;

    fprintf('xr = %.6f\n', xr)
    fprintf('f(x) = %.6f\n', fx)
    fprintf('\n')

    if a == b
        fprintf('Iterasi selesai, akarnya adalah %.6f\n',a)
        break
    end
end

% Selesai