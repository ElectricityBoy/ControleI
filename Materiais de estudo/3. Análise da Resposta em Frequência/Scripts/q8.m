# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');

G = 5/(s*(s^2+4*s+4));
K = 5;
C = 0.11*(s+0.061)/(s+0.00671);

T1=feedback(K*C*G,1);

figure; step(T1);
figure; bode(K*C*G);

% c) Projeta-se um PI pra erro = 0
%    Reduz o ganho para melhorar MG
C = 0.11*(s+0.061)/s;
K=2;
figure; nichols(K*C*G);

figure; step(feedback(K*C*G,1));
