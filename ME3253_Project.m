clear all; % clean all existing variables in working space
close all; % close all existing figures

% Part 1 : Question 2 & Question 3

N = 100;
start_t = 0;
stop_t = 20;
T = linspace(start_t, stop_t, N);

x_2 = zeros(N, 1);
x_3 = zeros(N, 1);

for i = 1:N
    t = T(i);
    x_2(i) = (1/30) - (((1/30)*exp(-3*t))*cos(sqrt(6)*t)) - (((1/(10*sqrt(6)))*exp(-3*t))*sin(sqrt(6)*t));
    x_3(i) = ((1/14)*exp(-2*t)) - (((1/14)*exp(-3*t))*cos(sqrt(6)*t)) - (((1/(14*sqrt(6)))*exp(-3*t))*sin(sqrt(6)*t));
end

% Plot 
subplot(9,1,1)
    plot(T,x_2)
    title('Part 1 : Question 2')
subplot(9,1,2)
    plot(T,x_3)
    title('Part 1 : Question 3')


% Part 3 : Question 7 a-e

x_a = zeros(N, 1);
x_b = zeros(N, 1);
x_c = zeros(N, 1);
x_d = zeros(N, 1);
x_e = zeros(N, 1);


for i = 1:N
    t = T(i);
    x_a(i) = (exp(-3*t)*cos(sqrt(6)*t)) + ((1/sqrt(6))*(exp(-3*t))*sin(sqrt(6)*t));
    x_b(i) = (1/30) - ((1/30)*(exp(-3*t))*(cos(sqrt(6)*t))) - ((1/(10*sqrt(6)))*(exp(-3*t))*sin(sqrt(6)*t));
    x_c(i) = (1/30) + ((29/30)*exp(-3*t)*cos(sqrt(6)*t)) + (((3*sqrt(3)*exp(-3*t)*sin(sqrt(6)*t)))/(10*sqrt(2)));
    x_d(i) = ((3/200)*exp(-3*t)*cos(sqrt(6)*t)) + ((7/(100*sqrt(6)))*exp(-3*t)*sin(sqrt(6)*t)) - ((3*cos(5*t))/200) - (sin(5*t)/200);
    x_e(i) = ((203/200)*exp(-3*t)*cos(sqrt(6)*t)) + ((107/(100*sqrt(6)))*exp(-3*t)*sin(sqrt(6)*t)) - ((3*cos(5*t))/200) - (sin(5*t)/200);
end

% Plot 
subplot(9,1,3)
    plot(T,x_a)
    title('Part 3 : Question 7a')
subplot(9,1,4)
    plot(T,x_b)
    title('Part 3 : Question 7b')
subplot(9,1,5)
    plot(T,x_c)
    title('Part 3 : Question 7c')
subplot(9,1,6)
    plot(T,x_d)
    title('Part 3 : Question 7d')
subplot(9,1,7)
    plot(T,x_e)
    title('Part 3 : Question 7e')
    
% Part 3 : Question 8

for i = 1:N
    t = T(i);
    C = x_a + x_b;
    E = x_a + x_d;
end

% Plot 
subplot(9,1,8)
    plot(T,C)
    title('Part 3 : Question 8 : (c) = (a) + (b)' )
subplot(9,1,9)
    plot(T,E)
    title('Part 3 : Question 8 : (e) = (a) + (d)')
    
    
% Part 5 : Question 13

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
