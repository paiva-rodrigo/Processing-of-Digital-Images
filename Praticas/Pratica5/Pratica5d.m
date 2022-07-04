fbp = 6.5e3;
fbr = 1.5e3;
Rp = 0.5;
Rs = 40;
 
[N,Wn]=buttord(13000*pi, 3000*pi, Rp, Rs,'s')
 
[num,den]=butter(N,Wn,'high','s'); 
omega = [0: 200: 16000*pi]; 
h = freqs(num,den,omega); 
plot (omega/(2*pi),20*log10(abs(h)),'r','linewidth',1.5); 
xlabel('Frequencia, Hz'); 
ylabel('Ganho, dB');
