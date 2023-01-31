# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; close;
Ts = 0.5;
z = tf('z', Ts);
G = 0.5/((z-1)*(z-0.75));
C = 1.625*(z-0.75)/(z+0.8);
Cat = (z-0.99)/(z-0.9986);

T = feedback(Cat*C*G,1)
figure 1; step(T,10);
figure 2; ramp(T,10);
