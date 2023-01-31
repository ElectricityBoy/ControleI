# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;

s = tf('s');
G = 1/(s*s-s-2);
C = (s+1)/(s+8);
z = 0.001;
a = 0.1574;
Cat = (s+z)/(s+a*z);

T = feedback(34*C*Cat*G,1)
#rlocusx(C*Cat*G);

figure 1; step(T,100);
