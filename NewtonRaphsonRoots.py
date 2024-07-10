# Metode Numerik
# Yesaya Ananda Djaya
# 5002211156

# Metoda Newton Raphson untuk Akar-Akar Persamaan

import sympy as sp

x = sp.symbols('x')
x0 = 2.0
batas_iterasi = 20
iterasi = 0

while iterasi < batas_iterasi:
    iterasi += 1
    
    fx = x**4 - 2*x**2 + x - 2
    dfx = sp.diff(fx, x)
    fx1 = fx.subs(x, x0).evalf()
    ddxfx = dfx.subs(x, x0).evalf()
    
    print(f'x = {x0:.6f}')
    print(f'f(x) = {fx1:.6f}')
    print(f'd/dx f(x) = {ddxfx:.6f}')
    print()
    
    x0 = x0 - (fx1 / ddxfx)

# Selesai
