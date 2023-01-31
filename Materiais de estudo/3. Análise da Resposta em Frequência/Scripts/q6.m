# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = 4*(s+1)^2;
Den = s*(s^2+36);
G = Num/Den;

figure; bode(G,{1e-1 1e2})