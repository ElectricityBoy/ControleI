# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;
a=b=1;

s = tf('s');

G1 = 1/(s*(s-b)); A=-a*b/(a+b)
G2 = (1+b*s)/(s*(s-a)); B=C=-b/a
G3 = 1/(s*(a*s+1)*(b*s+1)); 

figure; nyquist(G1);
figure; nyquist(G2);
figure; nyquist(G3);