# Metode Numerik
# Yesaya Ananda Djaya
# 5002211156

# Metoda Secant

batas_iterasi = 20
iterasi = 0

a = 2.0
b = 3.0

def f(x):
    return x**4 - 2*x**2 + x - 2

while iterasi < batas_iterasi:
    iterasi += 1

    fa = f(a)
    fb = f(b)

    print(f'a = {a:.6f}')
    print(f'b = {b:.6f}')
    print(f'f(a) = {fa:.6f}')
    print(f'f(b) = {fb:.6f}')

    xr = b - (fb * (a - b)) / (fa - fb)
    fx = f(xr)
    a = b
    b = xr

    print(f'xr = {xr:.6f}')
    print(f'f(x) = {fx:.6f}')
    print()

    if a == b:
        print(f'Iterasi selesai, akarnya adalah {a:.6f}')
        break

# Selesai
