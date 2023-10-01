clc;
close all;
A = [10 2 -1;-3 -6 2;1 1 5];
B = [27;-61.5;-21.5];
N = length(B);
x=zeros(N,1);
Aug = [ A  B ]; 
for j = 1: N-1
        for i= j+1 : N
            m = Aug(i, j)/Aug(j, j) ;
            Aug (i, :)= Aug(i,:) - m*Aug(j,:);
       
        end
end
 Aug;
x(N) = Aug(N, N+1)/Aug(N, N);
for k = N-1:-1:1
    x(k) = (Aug(k, N+1) - Aug(k, k+1:N)*x(k+1:N))/Aug(k, k);
end
x