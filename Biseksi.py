# Numerical Method
# Yesaya Ananda Djaya
# 5002211156

# Metode Biseksi

batas_iterasi = 20
iterasi = 0

a = 1
b = 2

fa = -2*a**2 + (5*a) - 10 
fb = -2*b**2 + (5*b) - 10 


print(f'f(a) = {fa}')
print(f'f(b) = {fb}') 

while iterasi < batas_iterasi:
    iterasi += 1

    p = (a + b) / 2 

    print(f'p = {p}')

    
    fp = -2*p**2 + (5*p) - 10
    print(f'f(p) = {fp}')
    print()


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

# Selesai