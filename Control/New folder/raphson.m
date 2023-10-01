clc;
clear all;
close all;
%%
f=@(x) x^3-2*x*x-6*x+4;
%%
xn=input('Lower value xn= ');
Emax=input('Error= ');
Imax=input('Imax= ');
%%
i=1;
f=inline(xn);
dif=diff(sym(xn));
f1(xn)=inline(dif);
x(n+1)=xn-(f(xn)/f1(xn));
E = abs((xu-xm))/xm*100;

%%
if (f(xn)*f(xu))<0
    while i<Imax 
        xold=xm;
        if f(xn)*f(xm)<0
            xu=xm;
        else
            xn=xm;
        end
        x(n+1)=xn-(f(xn)/f1(xn));
        E=abs((xm-xold))/xm*100;
        i=i+1;
        if E<=Emax
            break;
        end
    end
end
