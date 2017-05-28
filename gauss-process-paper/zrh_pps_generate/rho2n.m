function y=rho2n(x3,debye3,pro3,c3)
%for zirconium part only, optical part excluded
%mirror option
co3=(1+c3).*pro3./debye3.^(1+c3);
y11=co3.*x3.^c3.*(x3<debye3&x3>=0);%./(2.*x3.*sinh(x3./2));
y12=co3.*abs(x3).^c3.*(x3<0&x3>-debye3);%./(2.*x3.*sinh(x3./2));
%y13=co3.*(x3-2.*debye3).^2.*(x3>=debye3&x3<=2.*debye3)./(2.*x3.*sinh(x3./2));
%y14=co3.*(x3+2.*debye3).^2.*(x3<=-debye3&x3>=-2.*debye3)./(2.*x3.*sinh(x3./2));
y13=(1+c3).*pro3./debye3.*exp(((1+c3).*pro3./(1-pro3)).*(1-x3./debye3)).*(x3>=debye3);%./(2.*x3.*sinh(x3./2));
y14=(1+c3).*pro3./debye3.*exp(((1+c3).*pro3./(1-pro3)).*(1+x3./debye3)).*(x3<=-debye3);%./(2.*x3.*sinh(x3./2));

y=y11+y12+y13+y14;

end
