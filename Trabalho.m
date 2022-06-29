%Fazer um filtro passa alta que filtra imagens e os contornos das imagens
close all, clear all, clc;
A= imread('imagem2.png');
[m,n] = size(A,[1 2]);

%filtro de kernel
H= ones(m,n);
for i=101:156
    for j= 101:156
        H(i,j)=0;
    end
end

%mudar para o dominio da frequencia
H_f = fftshift(H);
A_f= fft2(A);

%Apply o filtro passa alta
B = A_f.*H_f;
C = abs(ifft2(B));
%Display the input e output imagens
subplot(2,1,1), imshow(A), title('Original Image');
subplot(2,1,2), imshow(uint8(C)), title('HPF frequency Image');