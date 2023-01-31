# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = 5*(2-20*s);
Den = s*(2+20*s)*(s^2+s+100);
G = Num/Den;

figure; bode(G,{1e-2 1e2})

figure; nichols(G, {1e-2 1e2})