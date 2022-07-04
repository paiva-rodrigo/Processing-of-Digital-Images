clear all, close all
x = exp(-2*pi*0.05); %frequência de corte fc=0,05 Rad/s
a0 = (1+x)/2; %coeficiente a0
a1 = -(1+x)/2; %coeficiente a1
b1 = x; %coeficiente b1
d=[1 -b1];
n=[a0 a1];
impz(n,d,40); %resposta ao impulso do sistema no domínio do tempo
figure
freqz(impz(n,d,40)); 
