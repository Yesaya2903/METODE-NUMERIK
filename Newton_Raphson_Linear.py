# Creator : Yesaya Ananda D.
# NRP : 5002211156
# Assisted by : Nathaniel Takeshi
# NRP : 5002211175

# SPNL Newton Raphson System of Linear Equation

import sympy as sp

x, y = sp.symbols('x y')

iterasi = 0
batas_iterasi = 20

xy = 3.4
yx = 2.2

fxy = x + 3 * sp.log(x, 10) - y**2
gxy = 2 * x**2 - x * y - 5 * x + 1

dfx = sp.diff(fxy, x)
dfy = sp.diff(fxy, y)
dgx = sp.diff(gxy, x)
dgy = sp.diff(gxy, y)

print('Ini adalah fungsi yang sudah diturunkan')
print(f'd/dx f(x,y) = {dfx}')
print(f'd/dy f(x,y) = {dfy}')
print(f'd/dx g(x,y) = {dgx}')
print(f'd/dy g(x,y) = {dgy}')
print()

while iterasi < batas_iterasi:
    iterasi += 1

    print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')

    fx1 = float(fxy.subs({x: xy, y: yx}))
    fx2 = float(gxy.subs({x: xy, y: yx}))
    dfdx1 = float(dfx.subs(x, xy))
    dfdy1 = float(dfy.subs(y, yx))
    dgdx1 = float(dgx.subs({x: xy, y: yx}))
    dgdx2 = float(dgy.subs(x, xy))

    print(f'Nilai masing-masing fungsi pada iterasi {iterasi}')
    print(f'f(x,y) = {-fx1:.6f}')
    print(f'g(x,y) = {-fx2:.6f}')
    print()
    print(f"f'(x) = {dfdx1:.6f}")
    print(f"f'(y) = {dfdy1:.6f}")
    print()
    print(f"g'(x) = {dgdx1:.6f}")
    print(f"g'(y) = {dgdx2:.6f}")
    print()

    ex = [[-fx1, dfdy1], [-fx2, dgdx2]]
    ey = [[dfdx1, -fx1], [dgdx1, fx2]]
    J = [[dfdx1, dfdy1], [dgdx1, dgdx2]]

    print(f"e1({iterasi})")
    for row in ex:
        print(f"|{row[0]:.6f} {row[1]:.6f}|")
    print()

    print(f"e2({iterasi})")
    for row in ey:
        print(f"|{row[0]:.6f} {row[1]:.6f}|")
    print()

    print(f"J({iterasi})")
    for row in J:
        print(f"|{row[0]:.6f} {row[1]:.6f}|")
    print()

    ex_det = sp.Matrix(ex).det()
    ey_det = sp.Matrix(ey).det()
    J_det = sp.Matrix(J).det()

    e1 = ex_det / J_det
    e2 = ey_det / J_det

    print(f'e1 untuk iterasi ini = {e1:.6f}')
    print(f'e2 untuk iterasi ini = {e2:.6f}')
    print()

    xbaru = xy + e1
    ybaru = yx + e2

    print(f'nilai x baru = {xy:.6f} + {e1:.6f} = {xbaru:.6f}')
    print(f'nilai y baru = {yx:.6f} + {e2:.6f} = {ybaru:.6f}')
    print()

    xy = xbaru
    yx = ybaru

# Selesai
