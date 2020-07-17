function [] = plotear(Uin)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
X=0;
Y=0;
a=1;
for i=2:101
    for j=2:101
        if Uin(i,j)==1
            X(a)=i-1;
            Y(a)=j-1;
            a=a+1;
        end   
    end
end
plot(X,Y,'.');
hold on 
xlim([0,100])
ylim([0,100])
hold off
end

