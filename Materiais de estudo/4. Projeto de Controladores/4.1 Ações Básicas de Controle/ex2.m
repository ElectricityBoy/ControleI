# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s*(s+1)*(s+2)*(s+3));

figure 1
rlocus(G, 0.1, 0, 10); # Região estável

T05 = feedback(G*0.5,1);
T1 = feedback(G*1,1);
T2 = feedback(G*2,1);
T5 = feedback(G*5,1);

figure 2
step(T05, T1, T2, T5, 70);