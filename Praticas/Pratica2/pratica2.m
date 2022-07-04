clc,clear all, close all;
addpath('C:\Users\rodri\OneDrive\Área de Trabalho\7PERIODO\PDS\Praticas\Pratica2\factorize.m');

num=[2 -5 13.48 -7.78 9]; 
Factors = factorize(num); 
den=[4 7.2 20 -0.8 8]; 
Factors2 = factorize(den); 
[r,p,k]=residuez(num, den);
%letra a
zplane(num,den);

