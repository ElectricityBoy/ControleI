# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s^2+s-2);
K=25;
C=5.828*(s+3.151)/(s+18.36);

figure; bode(K*C*G);
T = feedback(K*C*G,1);
step(T);