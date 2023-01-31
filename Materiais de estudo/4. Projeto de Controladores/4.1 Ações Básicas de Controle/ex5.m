# No octave é necessário instalar "control"
# pkg install -forge control
# pkg load control
clc; clear; clc;
s = tf('s');

# Funções de malha aberta auxiliares
# Escolhendo valor de Ti
Ti = 1.0; G1 = (s+1/Ti)/(s*(s+2)*(s+3)) # Zero = -1.0
Ti = 0.4; G2 = (s+1/Ti)/(s*(s+2)*(s+3)) # Zero = -2.5
Ti = 0.2; G3 = (s+1/Ti)/(s*(s+2)*(s+3)) # Zero = -5.0


figure 1
subplot(1, 3, 1); rlocus(G1);
subplot(1, 3, 2); rlocus(G2);
subplot(1, 3, 3); rlocusx(G3);

figure 2
subplot(1,2,1);
T02 = feedback(0.2*G1,1);
T1 = feedback(1.0*G1,1);
step(T02, T1, 300);

subplot(1,2,2);
T1 = feedback(1.0*G2,1);
T4 = feedback(4.0*G2,1);
step(T1, T4, 12);