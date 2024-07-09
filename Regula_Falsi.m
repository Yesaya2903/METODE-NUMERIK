% Metode Numerik
% Yesaya Ananda Djaya
% 5002211156

% Metoda Regula Falsi

clear 
clc 

format long 

batas_iterasi = 20;
iterasi = 0;

a = 1;
b = 2;

while iterasi < batas_iterasi
    iterasi = iterasi + 1;

fa = a^4 - 2*a^2 + a - 2;
fb = b^4 - 2*b^2 + b - 2;

    fprintf('a = %d\n',a)
    fprintf('b = %d\n',b)
    fprintf('f(a) = %d\n', fa)
    fprintf('f(b) = %d\n', fb)

xr = b - (fb*(a-b))/(fa-fb);
fx = xr^4 - 2*xr^2 + xr - 2;

    fprintf('xr = %d\n', xr)
    fprintf('f(x) = %d\n', fx)

        if fa * fx < 0
            fprintf('fa*fx<0\n')
            fprintf('\n')
            b = xr;
        else
            fprintf('fa*fx>0\n')
            fprintf('\n')
            a = xr;
        end
        
        if fa*fx == 0
            fprintf('x = %d merupakan akar sejati', xr)
            break
        end
end

% Selesai