# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/((s+1)*(s+2)*(s+3)); # Tipo 0
Ti = 1;
C = 1/(Ti*s);

W = Ti*s*G/(Ti*s+G)
step(W,100); # Tempo muito grande