clear
clc
A=1;B=1;
f1=100;f2=120;
fs=240;
N=2048;                          %设置短时傅里叶变换的长度，同时也是汉明窗的长度
n=0:N-1;
t=n/fs;
df=fs/(N-1);%分辨率
f=(0:N-1)*df;%其中每点的频率

x=A*cos(2*pi*f1*t)+B*cos(2*pi*f2*t);
h=hamming(N);                   %设置汉明窗
for m=1:N                       %用汉明窗截取信号，长度为N
b(m)=x(m)*h(m);
end
% y=20*log(abs(fft(b)))           %做傅里叶变换，取其模值，即幅频特性，然后用分贝（dB）表示

y=fft(x)/N*2;%真实的幅值
figure
plot(f,abs(y));

