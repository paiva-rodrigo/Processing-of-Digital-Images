Rp = 0.25;
fc = 1.5e3;
Rs = 25;
f = 6e3;
Wp = 2*pi*fc;
Ws = 2*pi*f;
 
[N,Wn] = ellipord(Wp, Ws, Rp, Rs, 's')
 
[num, den] = ellip(N, Rp, Rs, Wp, 's');
omega = [0: 200: 12000*pi]; 
h = freqs(num,den,omega); 
plot (omega/(2*pi),20*log10(abs(h)),'r','linewidth',1.5); 
xlabel('Frequencia, Hz'); 
ylabel('Ganho, dB');
