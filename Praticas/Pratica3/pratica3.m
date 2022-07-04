clear all, close all
x = exp(-2*pi*0.1);%frequência de corte fc=0,1 Rad/s
a0 = (1-x); %coeficiente a0 
b1 = x; %coeficiente b1
d = [1 -x];
h = impz(a0,d,20); %armazena em h a resposta ao impulso do sistema no domínio do tempo 
impz(a0,d,20); %resposta ao impulso do sistema no domínio do tempo
figure
freqz(h); %resposta ao impulso do sistema no domínio da frequencia

