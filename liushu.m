
b=[1,1];
a=[1,-1/3,-1/4];
% [r,p,k]=residue(b,a)%���ַ�ʽ
% [s,g]=tf2sos(b,a)%δ�ֽ���ʽ�ļ�����
% [z,p,k]=tf2zpk(b,a)%������
[z,p,k]=residuez(b,a)%������