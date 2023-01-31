# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s'); K=1;
G = 1/((s+2)*(s+3));

[rldata, k] = rlocus(G);

T1 = feedback(G*1,1);
T5 = feedback(G*5,1);
T10 = feedback(G*10,1);
T20 = feedback(G*20,1);

step(T1, T5, T10, T20, 3);
