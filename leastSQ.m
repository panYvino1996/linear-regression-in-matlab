%Algorithm for least squar line
%Construct the least square line Y=Ax+B that fits the n data points
%(x,y),(x2,y2),....

function [A,B] = leastSQ(X,Y)
%x=()nx1 y=()nx1
xmean = mean(X);
ymean = mean(Y);
sumx2 = (X-xmean)*(X-xmean)';
sumxy = (Y-ymean)*(X-xmean)';
A = sumxy/sumx2;
B = ymean - A*xmean;
f=@(x) A*x + B;
[a,b] = size(X);
c = 0;
H = [];
I = [];
Z = [];
l = min(X);
p = max(X);
for i=l:1:p
    H = [H i];
    I = [I f(i)];
end

plot(H,I)
hold on
for i = 1:1:b
    plot(X(1,i),Y(1,i),'r*')
    hold on
end

end