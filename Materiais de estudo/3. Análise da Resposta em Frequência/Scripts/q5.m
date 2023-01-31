# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = 400*(s+2);
Den = s^2*(s^2+6.4*s+400);
G = Num/Den;

figure; bode(G,{1e-1 1e2})