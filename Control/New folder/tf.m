clc;
num=[1 1];
den=[1 2 5];
G=tf(num, den)
A=[1 -2;3 -1]
B=[0;1]
C=[1 0]
D=[0]
sys=ss(A,B,C,D)