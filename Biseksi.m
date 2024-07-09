% Numerical Method
% Yesaya Ananda Djaya
% 5002211156

% Metoda Biseksi

clear 
clc 

format long 

batas_iterasi = 20;
iterasi = 0;

a = 1;
b = 2;

fa = -2*a^2 + 5*a - 10;
fb = -2*b^2 + 5*b - 10;

    fprintf('f(a) = %d\n', fa)
    fprintf('f(b) = %d\n', fb)

while iterasi < batas_iterasi
    iterasi = iterasi + 1; 
    
p = (a+b)/2;
fp = -2*p^2 + 5*p - 10;

    fprintf('p = %d\n', p)
    fprintf('f(p) = %d\n', fp)
    
        if fa*fp > 0
        a = p;
            fprintf('a berubah menjadi p baru \n')
            fprintf('\n')
        else
        b = p;
            fprintf('b berubah menjadi p baru \n')
            fprintf('\n')
        end
end

% Selesai