# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

G = 1/(s*(s+1));
K = 12;
C = 9.0578*(s+2.01)/(s+18.21);

figure; bode(K*C*G);