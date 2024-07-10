% Metode Numerik
% Yesaya Ananda Djaya
% 5002211156

% Metoda Newton Raphson untuk Akar-Akar Persamaan

clear 
clc 

format long 

batas_iterasi = 20;
iterasi = 0;
syms x 

x0 = 2;

while iterasi < batas_iterasi
    iterasi = iterasi + 1;

fx = x^4 - 2*x^2 + x - 2;
dfx = diff(fx);
fx1 = double(subs(fx,x,x0));
ddxfx = double(subs(dfx,x,x0));

    fprintf('x = %.6f\n',x0)
    fprintf('f(x) = %.6f\n', fx1)
    fprintf('d/dx f(x) = %.6f\n', ddxfx)
    fprintf('\n')

x0 = x0 - (fx1/ddxfx);

end

% Selesai