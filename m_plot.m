
clear all; % clean all existing variables in working space
close all; %close all existing figures

N=100;
start_t=0;
stop_t=10;
T=linspace(start_t,stop_t,N);

Y=zeros(N,1);
Z=zeros(N,1);
for i=1:N
    temp_t=T(i);
    Y(i)=temp_t^2+2*sin(3*temp_t);
    Z(i)=exp(0.1*temp_t);
end

% Belw is to draw signals in different figures
% figure
% plot(T,Y);
% 
% figure
% plot(T,Z);
% 

% Below is to draw multiple singals on the same figure
figure
plot(T,Y,'r');
hold on
plot(T,Z,'b');
title("Plot signals");
xlabel("Time t");
ylabel("Signal Y(t),Z(t)");
legend("Y(t)","Z(t)");
