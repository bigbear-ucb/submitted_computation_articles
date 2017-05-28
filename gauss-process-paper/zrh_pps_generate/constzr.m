function y=constzr(temp1,debye1)

%k=8.6173324e-2; 
kt1=8.6173324e-2*temp1;
bound1=1e3/kt1; debye1=debye1./kt1;

co=1.5/debye1.^3;


y=[kt1;bound1;debye1;co];

end