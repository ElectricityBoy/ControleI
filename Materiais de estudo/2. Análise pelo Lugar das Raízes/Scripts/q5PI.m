# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s^2+4*s+3);
z = 1;
C = 5*(s+z)/s;

T = feedback(C*G,1)

figure 1; step(T,10);
#figure 2; ramp(T,10);
