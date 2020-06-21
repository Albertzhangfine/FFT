syms n
xn=2^n*heaviside(-n-1);
hn=0.5^n*heaviside(n);
f_xn=fourier(xn);
f_hn=fourier(hn);
result = ifourier(f_xn * f_hn)
