conh=const(300,20,1/241,28,137);
%y=[kt1;bound1;debye1;cc;peak2;dd1];
conz=constzr(300,17);
%y=[kt1;bound1;debye1;co];
x1=(0:1/conh(1):200/conh(1))';
y1=1e3.*rho1(x1,8.01,conh(3),conh(4),conh(5),conh(6))./conh(1);
x2=(0:8/200:4)';
y2=1e3.*rho2n(x2,conz(3),0.646,2.0214)./conh(1);
x3=x1.*conh(1)./1e3;
x4=x2.*conh(1)./1e3;
plot(x3,y1);
hold on;
plot(x4,y2);
hold off;

