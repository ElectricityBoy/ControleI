# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;
Ts = 0.5;
z = tf('z', Ts);
G = 0.2/((z-1)*(z-0.8));
C = 1.254*(z-0.799)/(z+0);
Cat = (z-0.999)/(z-0.99996);

rlocusx(C*G*Cat/1.254);

T = feedback(C*G*Cat,1)
figure 1; step(T,10);
figure 2; ramp(T,10);
