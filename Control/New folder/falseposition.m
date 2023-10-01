clc;
clear all;
close all;
%%
f=@(x) x^3-6*x*x+11*x-1;
%%
xl=input('Lower value xl= ');
xu=input('Upper value xu= ');
Emax=input('Error= ');
Imax=input('Imax= ');
%%
i=1;
xm=xl-((xl-xu)) *f(xl)/(f(xl)-f(xu));
E = abs((xu-xm))/xm*100;
%%
variables={'Iter','xl','xu','xm','f(xl)','f(xu)','f(xm)','Error'};
M=[i xl xu xm f(xl) f(xu) f(xm) E];
%%
if (f(xl)*f(xu))<0
    while i<Imax 
        xold=xm;
        if f(xl)*f(xm)<0
            xu=xm;
        else
            xl=xm;
        end
        xm=xl-((xl-xu)) *f(xl)/(f(xl)-f(xu));
        E=abs((xm-xold))/xm*100;
        i=i+1;
        M=[M;i xl xu xm f(xl) f(xu) f(xm) E];
        if E<=Emax
            break;
        end
    end
end
%%
Result=array2table(M);  
Result.Properties.VariableNames(1:size(M,2))= variables
fprintf('\n\nroot is: %f\n',xm);
