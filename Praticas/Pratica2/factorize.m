function Factors = factorize(polyn)
    format long; Factors = [];
    THRESH = 1e-8;
    proots = roots(polyn); len = length(proots); while(len > 1)
        if(abs(imag(proots(1))) < THRESH)
        fac = [1 -real(proots(1))];
        Factors = [Factors;[fac 0]];
        else
        negimag = imag(proots)+imag(proots(1)); samereal = real(proots)-real(proots(1));
        index = find(abs(negimag) <THRESH & abs(samereal)<THRESH);
        if(index)
        fac = [1 -2*real(proots(1)) abs(proots(1))^2];
        Factors = [Factors;fac];
        else fac = [1 -proots(1)];
        Factors = [Factors;[fac 0]];
        end
        end
        polyn = deconv(polyn,fac);
        proots = roots(polyn);
        len = length(polyn);
    end
end