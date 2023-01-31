# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = 3*(s+1);
Den = s*(s-1)*(s+3);
G = Num/Den;

figure; nyquist(G,{1e-1 1e1})