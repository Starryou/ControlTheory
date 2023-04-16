clear;
clc;
x = 0:0.01:30;
n=length(x);
y = sin(x);
plot(x,y);
hold on;
cof=0.5;
k=1;
prey=0;
for i = 1:n
    yy(i)=FRICITION(y(i), cof, k, prey);
    prey=yy(i);
end
plot(x,yy,'r');

function [y] = FRICITION(insignal, cof, k, prey)
    if insignal>0
        y=k*insignal+cof;
    elseif insignal<0
        y=k*insignal-cof;
    else
        y=prey;
    end
end