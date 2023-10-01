clc;
clear all;
close all;
%%
f=@(x) x^3-2*x*x-6*x+4;
fd=@(x)3*x^2-4*x-6;
%%
xl=input('Lower value xl= ');
xu=input('Upper value xu= ');
Emax=input('Error= ');
Imax=input('Imax= ');
%%
for i=1:Imax 
        xm=xl-(f(xl)/fd(xl));
        e=abs(xm-xl);
        break
        xl=x
        fprintf('%d\t   %.4f\t   %.4f\t   %.6f\t   %.4f\t\n',i,xl,f(xl),fd(xl),xm);
end
      fprintf('\n\nroot is: %f\n',xm);

