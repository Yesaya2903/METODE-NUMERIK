%Creator : Yesaya Ananda D.
%NRP : 5002211156
%Assisted by : Nathaniel Takeshi 
%NRP : 5002211175

%SPNL Newton Raphson System of Linear Equation

clear 
clc

syms x y

iterasi = 0;
batas_iterasi = 20;


xy = 3.4;
yx = 2.2;

fxy = x + 3*log10(x) - y^2;
gxy = 2*x^2 - x*y - 5*x + 1;

dfx = diff(fxy,x);
dfy = diff(fxy,y);
dgx = diff(gxy,x);
dgy = diff(gxy,y);

    fprintf('Ini adalah fungsi yang sudah diturunkan \n')
    fprintf('d/dx f(x,y) = %s\n',dfx)
    fprintf('d/dy f(x,y) = %s\n',dfy)
    fprintf('d/dx g(x,y) = %s\n',dgx)
    fprintf('d/dy g(x,y) = %s\n',dgy)
    fprintf('\n')

while iterasi < batas_iterasi

iterasi = iterasi + 1;

    fprintf('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n')

fx1 = double(subs(fxy, {x,y}, {xy,yx}));
fx2 = double(subs(gxy, {x,y}, {xy,yx}));
dfdx1 = double(subs(dfx, xy));
dfdy1 = double(subs(dfy, yx));
dgdx1 = double(subs(dgx, {x,y}, {xy,yx}));
dgdx2 = double(subs(dgy, xy));

    fprintf('Nilai masing-masing fungsi pada iterasi %d\n',iterasi)
    fprintf('f(x,y) = %.6f\n',-fx1)
    fprintf('g(x,y) = %.6f\n',-fx2)
    fprintf('\n')
    fprintf("f'(x) = %.6f\n",dfdx1)
    fprintf("f'(y) = %.6f\n",dfdy1)
    fprintf('\n')
    fprintf("g'(x) = %.6f\n",dgdx1)
    fprintf("g'(y) = %.6f\n",dgdx2)
    fprintf('\n')

ex = [-fx1,dfdy1;-fx2,dgdx2];
ey = [dfdx1,-fx1;dgdx1,fx2];
J = [dfdx1,dfdy1;dgdx1,dgdx2];

   [p, q] = size(ex);
            fprintf("e1(%d)\n",iterasi)
    for i = 1:p
        for j = 1:2:q
            fprintf('|%.6f ', ex(i, j))
        end
        for j = 2:2:q
            fprintf('%.6f| ', ex(i,j))
        end
            fprintf('\n')
    end   
            fprintf('\n')


   [r, s] = size(ey);
            fprintf("e2(%d)\n",iterasi)
    for i = 1:r
        for j = 1:2:s
            fprintf('|%.6f ', ey(i, j))
        end
        for j = 2:2:s
            fprintf('%.6f| ', ey(i,j))
        end
            fprintf('\n')
    end   
            fprintf('\n')


    [t, u] = size(J);
            fprintf("J(%d)\n",iterasi)
    for i = 1:t
        for j = 1:2:u
            fprintf('|%.6f ', J(i, j))
        end
        for j = 2:2:u
            fprintf('%.6f| ', J(i,j))
        end
            fprintf('\n')
    end   
            fprintf('\n')

e1 = det(ex/J);
e2 = det(ey/J);

    fprintf('e1 untuk iterasi ini = %.6f\n',e1)
    fprintf('e2 untuk iterasi ini = %.6f\n',e2)
    fprintf('\n')

xbaru = xy + e1;
ybaru = yx + e2;

    fprintf('nilai x baru = %.6f + %.6f = %.6f\n',xy,e1,xbaru)
    fprintf('nilai y baru = %.6f + %.6f = %.6f\n',yx,e2,ybaru)
    fprintf('\n')

xy = xbaru;
yx = ybaru;

end

%Selesai