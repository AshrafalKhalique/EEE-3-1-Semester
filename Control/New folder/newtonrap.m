clc; 
clear all; 
close all; 
f=@(x) (x^3)-(2*x^2)-(6*x)+4; 
fd=@(x) (3*x^2)-(4*x)-6; 
xl=input('Enter Lower value xl: '); 
xu=input('Enter Upper value xu: '); 
Imax=input('Inter iteration no: '); 
Emax=input('Enter tolerance: '); 
fprintf('\nIter no\t   xl\t   f(xl)\t   fd(xl)\t   x(l+1)\t   Error\n') 
if f(xl)*f(xu)<0 
    for i=1:Imax 
        x=xl-(f(xl)/fd(xl)); 
        e=abs((x-xl)/x)*100; 
        xl=x; 
        if e<=Emax; 
            break 
        end
        fprintf('%d\t    %.4f\t  %.4f\t  %.4f\t  %.4f\t  %.4f\n',i,xl,f(xl),fd(xl),x,e) 
    end
end
fprintf('\n\nthe root is: %.4f\n',x);