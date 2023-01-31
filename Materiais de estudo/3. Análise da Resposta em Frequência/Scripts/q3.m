# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = 0.1*(s+1)^2;
Den = s^3;
G = Num/Den;

figure; 
nyquist(G,[0.0001 100]);
