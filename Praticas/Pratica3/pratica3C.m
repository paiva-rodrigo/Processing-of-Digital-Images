clear all, close all

f = 0.2; %frequencia de corte superior fc=0.2 rad/s
BW = 0.03; %frequencia de corte inferior fc=0.03 rad/s
R = 1 - 3*BW ;
K = (1- 2*R*cos(2*pi*f) + R^2) / (2 - 2*cos(2*pi*f));
a0 = 1-K ; %coeficiente a0
a1 = 2*(K-R)*cos(2*pi*f) ; %coeficiente a1
a2 = R^2 - K; %coeficiente a2
b1 = 2*R*cos(2*pi*f) ; %termo b1
b2 = -R^2; %termo b2
vetorAs = [a0 a1 a2]; %vetor dos coeficientes
vetorBs = [b1 b2]; %coeficiente dos termos
d=[1 -vetorBs];
n=vetorAs;
h=impz(n,d,100);%armazena em h a resposta ao impulso do sistema no domínio do tempo
impz(n,d,100); %resposta ao impulso do sistema no domínio do tempo
figure
freqz(h); %resposta ao impulso do sistema no domínio da frequencia
