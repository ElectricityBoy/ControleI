# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;
s = tf('s');

G = (s+2)/((s+3)*(s^2+2*s+2));

C = 1; T = feedback(C*G,1);
figure;
step(T, 5);

Kp = 2;
Td = 1;

Tserie = feedback(Kp*(1+s*Td)*G,1);
Tparalela = feedback(G,Kp*(1+s*Td));
Tmista = feedback(Kp*feedback(G,s*Td),1);

figure;
step(Tserie, Tparalela, Tmista, 6);