% Numerical Method
% Yesaya Ananda Djaya
% 5002211156

% Bisection Method

% Kita akan belajar mengenai metode biseksi, yaitu mencari nilai dari titik tengah untuk suatu fungsi
% yang dibatasi oleh 2 titik, yaitu x dan y, kemudian menggunakan titik tengah tersebut untuk mencari
% nilai dari titik tengah baru menggunakan persetujuan tertentu dalam fungsinya

% Contoh :

% Kita mempunyai fungsi y = -2x^2 + 5x -10
% yang akan kita batasi pada titik x = 1 dan x = 2

clear %untuk menghapus data workspace
clc %untuk menghapus isi command window

format long % Format output di matlab bisa diatur lho

a = 1;
b = 2;

fa = -2*a^2 + 5*a - 10;
fb = -2*b^2 + 5*b - 10;

fprintf('f(a) = %d\n', fa);
fprintf('f(b) = %d\n', fb);

% Selanjutnya kita tentukan batas iterasi atau jumlah perhitungan dilakukan
% Jika iterasi sudah mencapai 20 kali, maka perhitungan akan dihentikan

batas_iterasi = 20;
iterasi = 0;

%Kita mulai perhitungannya

while iterasi < batas_iterasi
    iterasi = iterasi + 1; % Di Java mungkin kalian tahunya i = i++
    
    % Kemudian kita cari nilai tengahnya, kita gunakan variabel p
    p = (a+b)/2;
    fprintf('p = %d\n', p);
    % Kita cari nilai fungsi p
    fp = -2*p^2 + 5*p - 10;
    fprintf('f(p) = %d\n', fp);

% Selanjutnya kita akan menentukan garis baru dengan menggunakan nilai p
% Terdapat 2 syarat dalam penentuannya, yaitu :
% 1. Jika f(a)*f(p) > 0, maka titik a akan diganti oleh p
% 2. Jika f(b)*f(p) > 0, maka titik b akan diganti oleh p
    
    if fa*fp > 0
        a = p;
        fprintf('a berubah menjadi p baru \n');
    else
        b = p;
        fprintf('b berubah menjadi p baru \n'); % Tebak fungsi \n apa?
    end
end

% Selesai

% Kelemahan koding ini adalah sistemnya masih manual
% Ketika masukkin nilai, fungsinya juga harus input manual, gabisa auto
% Gabisa fungsi f(x), diberi nilai a dan b nanti dicari langsung 
% Masih belum bisa, harus naro f(a) dan f(b) masing-masing