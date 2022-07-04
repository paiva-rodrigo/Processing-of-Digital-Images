fbp = [15*50/45 45]*2*pi;
fbr = [15 50]*2*pi;
Rp = 0.25;
Rs = 50;
 
[N,Wn] = ellipord(fbp, fbr, Rp, Rs,'s')
 
[num,den]=ellip(N, Rp, Rs, Wn, 's'); 
omega = [0:1:100*pi]; 
h = freqs(num,den,omega); 
plot (omega/(2*pi),20*log10(abs(h)),'r','linewidth',1.5); 
xlabel('Frequencia, Hz'); 
ylabel('Ganho, dB');
