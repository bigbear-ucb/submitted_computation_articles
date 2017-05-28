function y=const(temp1,debye1,branch1,fwhm1,peak2)

k=8.6173324e-2; kt1=k*temp1;
bound1=2e3/kt1; debye1=debye1./kt1;
pro1=branch1./(1+branch1);
cc=pro1*1.5/debye1.^3;
peak2=peak2./kt1; 
fwhm1=fwhm1./kt1;
sigma2=fwhm1./2.35482;
dd=(1/(branch1+1))./quadgk(@(x)((1/(sqrt(2*pi)*sigma2)).*exp(-(x-peak2).^2./(2.*sigma2.^2))),2.*debye1,bound1,'RelTol',1e-12,'AbsTol',1e-12);
dd1=dd*(1/(sqrt(2*pi)*sigma2));

y=[kt1;bound1;debye1;cc;peak2;dd1];
clear dd sigma2 fwhm1 pro1

end