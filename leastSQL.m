%George Mendez
function comp = leastSQL(X,Y)
%use these points to plot
%X = [1 2 3 4];
%Y = [1.5 1.6 2.1 3];

%Vectorization
[m,n] = size(Y);
sumxy = X*Y';
sumx = sum(X);
sumx2 = 0;
sumy = sum(Y);

%finding the sum of x squared
for i = 1:n
    sumx2 = sumx2 + (X(1,i)*X(1,i));
end

%defining our line
m = ((n*sumxy)-(sumx)*(sumy))/((n*sumx2)-(sumx*sumx));

b = (sumy-(m*sumx))/n;

f=@(x)m*x+b;

%creating list for line
X1 = [];
Y1 = [];

%plotting pur points 
for i = 1:n
    plot(X(1,i),Y(1,i),'r*')
    hold on
end

%Creating a list of points to plot
for i = -(n.^2):.1:n.^2
    X1 = [X1 i];
    Y1 = [Y1 f(i)];
end

%plotting our data
xlabel('X-Data points')
ylabel('Y-Data points')
title('linear regression')
grid on
plot(X1,Y1)