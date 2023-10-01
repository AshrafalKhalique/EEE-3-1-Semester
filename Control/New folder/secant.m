clc; 
clear all; 
close all; 
f=@(x) (x^3)-(2*x^2)-(6*x)+4; 
x0=input('Enter value of x0: '); 
x1=input('Enter value of x1: '); 
n=input('Inter iteration no: '); 
Emax=input('Enter tolerance: '); 
fprintf('\nIter no\t x0\t      f(x0)\t      x1\t      f(x1)\t       x2\t       f(x2)\t     Error\n') 
if f(x0)*f(x1)<0 
    for i=1:n 
        x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0)); 
        e1=abs((x2-x1)/x2)*100; 
        fprintf(' %d\t   %.4f\t  %.4f\t  %.4f\t  %.4f\t  %.4f\t  %.4f\t  %.4f\n',i,x0,f(x0),x1,f(x1),x2,f(x2),e1) 
        if e1<=Emax; 
            break 
        end
        x0=x1; 
        x1=x2; 
    end
end
fprintf('\nThe root is: %.4f\n',x2);