
b=[1,1];
a=[1,-1/3,-1/4];
% [r,p,k]=residue(b,a)%部分分式
% [s,g]=tf2sos(b,a)%未分解因式的级联型
% [z,p,k]=tf2zpk(b,a)%级联型
[z,p,k]=residuez(b,a)%并联型