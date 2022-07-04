fbp = [20*45/70 70]*2*pi;
fbr = [20 45]*2*pi;
Rp = 0.5;
Rs = 30;
 
[N,Wn] = cheb1ord(fbp, fbr, Rp, Rs,'s')
 
[num,den]=cheby1(N, Rp, Wn, 's'); 
omega = [0:1:100*pi]; 
h = freqs(num,den,omega); 
plot (omega/(2*pi),20*log10(abs(h)),'r','linewidth',1.5); 
xlabel('Frequencia, Hz'); 
ylabel('Ganho, dB');
 
