# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/((s+2)*(s+3));
C = 1/s;

figure 1
rlocusx(G*C, 0.1, 0, 30); # Região estável

figure 2
T1 = feedback(G*C*1,1);
T5 = feedback(G*C*5,1);
T10 = feedback(G*C*10,1);
step(T1, T5, T10, 30);