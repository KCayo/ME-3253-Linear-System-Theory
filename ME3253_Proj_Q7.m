clear all; % clean all existing variables in working space
close all; % close all existing figures

% Part 3 : Question 7 a-e

N = 100;
start_t = 0;
stop_t = 20;
T = linspace(start_t, stop_t, N);

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

subplot(5,1,1)
    plot(T,x_a)
    title('Part 3 : Question 7a')
subplot(5,1,2)
    plot(T,x_b)
    title('Part 3 : Question 7b')
subplot(5,1,3)
    plot(T,x_c)
    title('Part 3 : Question 7c')
subplot(5,1,4)
    plot(T,x_d)
    title('Part 3 : Question 7d')
subplot(5,1,5)
    plot(T,x_e)
    title('Part 3 : Question 7e')

