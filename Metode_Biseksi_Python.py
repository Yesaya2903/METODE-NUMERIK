# Numerical Method
# Yesaya Ananda Djaya
# 5002211156

# Bisection Method

# Kita akan belajar mengenai metode biseksi, yaitu mencari nilai dari titik tengah untuk suatu fungsi
# yang dibatasi oleh 2 titik, yaitu x dan y, kemudian menggunakan titik tengah tersebut untuk mencari
# nilai dari titik tengah baru menggunakan persetujuan tertentu dalam fungsinya

# Contoh :

# Kita mempunyai fungsi y = -2x^2 + 5x -10
# yang akan kita batasi pada titik x = 1 dan x = 2

a = 1
b = 2

fa = -2*a**2 + (5*a) - 10 
fb = -2*b**2 + (5*b) - 10 
# ** merupakan symbol untuk perpangkatan menggantikan ^

print(f'f(a) = {fa}') # disini seharusnya nilainya menjadi f(a) = -2*(1^2) + 5*1 - 10 => -7
print(f'f(b) = {fb}') # disini seharusnya nilainya menjadi f(b) = -2*(2^2) + 5*2 - 10 => -8

# Selanjutnya kita tentukan batas iterasi atau jumlah perhitungan dilakukan
# Jika iterasi sudah mencapai 20 kali, maka perhitungan akan dihentikan

batas_iterasi = 20
iterasi = 0

# Kita mulai perhitungannya

while iterasi < batas_iterasi:
    iterasi += 1
    # kemudian kita cari nilai tengahnya, kita anggap sebagai p

    p = (a + b) / 2 # disini seharusnya nilai p adalah 1,5

    print(f'p = {p}')

    # setelah itu kita cari juga nilai untuk f(p)
    fp = -2*p**2 + (5*p) - 10
    print(f'f(p) = {fp}')
    print()
    # Selanjutnya kita akan menentukan garis baru dengan menggunakan nilai p
    # Terdapat 2 syarat dalam penentuannya, yaitu :
    # 1. Jika f(a)*f(p) > 0, maka titik a akan diganti oleh p
    # 2. Jika f(b)*f(p) > 0, maka titik b akan diganti oleh p

    if fa * fp > 0:
        a = p
        print(f'a(baru) = {a}')
        print(f'b(baru) = {b}')
        fa = fp
    else:
        b = p
        print(f'a(baru) = {a}')
        print(f'b(baru) = {b}')
        fb = fp