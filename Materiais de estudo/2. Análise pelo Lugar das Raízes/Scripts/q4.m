# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 25*(4-s)/(s*(s+4));
#rlocusx(G);
C = 0.13*(s+4)/(s+9.25);
Cat = (s+0.001)/(s+0.0001405);

T = feedback(C*Cat*G,1)

figure 1; step(T,10);
t=0:0.001:10;
figure 2; lsim(T, t, t);
