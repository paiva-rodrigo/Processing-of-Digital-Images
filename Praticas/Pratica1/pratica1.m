fs = 10000;
t = [0:1/fs:0.1];
y1 = sin(2*pi*80*t);
y2 = sin(2*pi*250*t);
y3 = sin(2*pi*850*t);
y4 = y1+y2+y3;
plot(t,y4,'r');
title('Soma dos senos com f=80Hz,250Hz,850Hz');
xlabel('Tempo (S)');
ylabel('Amplitude');


%na questão 2 pra fazer comparação do 1° com 2°
clear all
fs = 500;
t = [0:1/fs:0.1];
y1 = sin(2*pi*80*t);
y2 = sin(2*pi*250*t);
y3 = sin(2*pi*850*t);
y4 = y1+y2+y3;
hold on
plot(t,y4,'k');
title('Soma dos senos com f=80Hz,250Hz,850Hz');
xlabel('Tempo (S)');
ylabel('Amplitude');

%na questão 3 pra fazer comparação do 2° com 3°
clear all
fs = 2000;
t = [0:1/fs:0.1];
y1 = sin(2*pi*80*t);
y2 = sin(2*pi*250*t);
y3 = sin(2*pi*850*t);
y4 = y1+y2+y3;
hold on
plot(t,y4,'m');
title('Soma dos senos com f=80Hz,250Hz,850Hz');
xlabel('Tempo (S)');
ylabel('Amplitude');