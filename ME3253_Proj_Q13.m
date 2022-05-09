clear all; % clean all existing variables in working space
close all; % close all existing figures

A = [0 1;-30 -12];
B = [0;1];
C = [1 0];
D = 0;
G = ss2tf(A,B,C,D)
[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)
minreal(G)
t = 0:0.1:20;
figure;
step(G,t);grid on;


