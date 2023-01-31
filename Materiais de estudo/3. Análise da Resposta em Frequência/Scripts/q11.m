# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 2/(s^2*(s+3));
K=0.1;
C=18.76*(s+0.123)/(s+2.3085);

figure; bode(K*C*G);