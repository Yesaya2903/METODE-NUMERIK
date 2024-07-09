# Metode Numerik
# Yesaya Ananda Djaya
# 5002211156

# Metoda Regula Falsi

batas_iterasi = 20
iterasi = 0

a = 1
b = 2

while iterasi < batas_iterasi:
    iterasi += 1

    fa = a**4 - 2*a**2 + a - 2
    fb = b**4 - 2*b**2 + b - 2

    print(f'a = {a}')
    print(f'b = {b}')
    print(f'f(a) = {fa}')
    print(f'f(b) = {fb}')

    xr = b - (fb * (a - b)) / (fa - fb)
    fx = xr**4 - 2*xr**2 + xr - 2

    print(f'xr = {xr}')
    print(f'f(x) = {fx}')

    if fa * fx < 0:
        print('fa*fx<0\n')
        b = xr
    else:
        print('fa*fx>0\n')
        a = xr

    if fa * fx == 0:
        print(f'x = {xr} merupakan akar sejati')
        break

# Selesai
