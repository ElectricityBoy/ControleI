# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
[num, den] = padecoef(0.5, 20)
G = 2/s * tf(num,den) ;
K = 0.3;
C = (s+0.001)/s;

figure; step(feedback(K*C*G,1))

figure; bode(K*C*G,{1e-5, 1e1});