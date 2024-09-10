% Numerical Method
% Yesaya Ananda Djaya
% 5002211156

% Metoda Biseksi

clear 
clc 

batas_iterasi = 20;
iterasi = 0;
batas_galat = 10^-5;

a = 1;
b = 2;

plama = 0;

while iterasi < batas_iterasi
    iterasi = iterasi + 1;

    fprintf('Iterasi ke-%d\n', iterasi)
    fprintf('a = %.6f\n',a)
    fprintf('b = %.6f\n',b)

    fa = a^4 - 8*a^3 + 23*a^2 + 16*a - 50;
    fb = b^4 - 8*b^3 + 23*b^2 + 16*b - 50;

    p = (a+b)/2;

    fprintf('p = %.6f\n', p)

    fp = p^4 - 8*p^3 + 23*p^2 + 16*p - 50;

    fprintf('f(a) = %.6f\n', fa)
    fprintf('f(b) = %.6f\n', fb)
    fprintf('f(p) = %.6f\n', fp)
    
    if fa * fp > 0
        a = p;
        fprintf('p berubah menjadi a baru \n')
    else
        b = p;
        fprintf('p berubah menjadi b baru \n')
    end

    if iterasi > 1
        galat = abs((p - plama) / p) * 100;
        fprintf('Galat = %.6f%%\n', galat)

        if galat < batas_galat * 100
            fprintf('Galat sudah di bawah batas. Proses berhenti.\n')
            break
        end
    end

    plama = p;
    
    fprintf('\n')
end

