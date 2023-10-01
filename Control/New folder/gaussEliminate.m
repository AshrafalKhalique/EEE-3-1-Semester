clc;
close all;
b=[10 2 -1; -3 -6 2; 1 1 5];
c=[27; -61.5; -21.5];
n=length(c);

    for k=1:n-i
        for i=k+1:n
        xmulcoeff=b(i,i)/b(k,k);
        for j=k+1:n
            b(i,k)=b(i,k)-xmulcoeff*b(k,i);
        end
        c(i)=c(i)-xmulcoeff*c(k);
        end
    end
        
% back substituition
        for i=n-1:1
            sum=c(i);
            for j=i+1:n
                sum=sum-b(i,j)*x(j);
            end
            x(i)=sum/b(i,i);
        end