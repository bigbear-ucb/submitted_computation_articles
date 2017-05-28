function y=rho1(x,bound1,debye1,cc1,peak1,cc2)

%for H part, including both the acoustic and optical part

%first, construct rho(omega)
%1st part, debye
%tem=25.261729meV
%cc1=0.02508438;
debye2=debye1.*2;

%cc1=0.01254219;
yy1=cc1*x.^2;
yy4=cc1*(x-debye2).^2;
yy5=cc1*(x+debye2).^2;

%cc2=0.8440486;
yy2=cc2*exp(-2.2568129*(x-peak1).^2);
yy3=cc2*exp(-2.2568129*(x+peak1).^2);

y=yy1.*(x<debye1&x>0);
y=y+yy1.*(x<0&x>-1*debye1);
y=y+0.*(x==0);
y=y+yy2.*(x>debye2&x<bound1);
y=y+yy3.*(x<-1*debye2&x>-1*bound1);
y=y+yy4.*(x<=debye2&x>=debye1);
y=y+yy5.*(x>=-1*debye2&x<=-1*debye1);



end

