# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

Num = s+2;
Den = (1-s)*((s+1)^2+1);
G = Num/Den;

figure; 
subplot(2,1,1);
nyquist(G, {1e-2 1e2});
% https://www.desmos.com/calculator/genfqrok6a

K=-1.95;
T = feedback(K*G,1)
subplot(2,1,2);
step(T);

