# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s*(s+1)*(s+5));
C = 105*(s+1)/(s+19);
Cat = (s+0.001)/(s+0.000052);

T = feedback(C*Cat*G,1)

figure 1; step(T,10);
