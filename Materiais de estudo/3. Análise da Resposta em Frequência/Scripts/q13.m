# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s*(s+2));
K=1;
C=(s+0.001)/s;

figure; bode(K*C*G);

T = feedback(K*C*G,1);
figure; step(T,10);