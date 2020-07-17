function [Uout] = walk(Uin)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for i=2:101
    for j=2:101
        if Uin(i,j)==1
            f=randi([0,1]);
            c=[-1,1];
            m=randi([1,2]);
            if f==0
                x=i+c(m);
                y=j;
            elseif f==1
                x=i;
                y=j+c(m);
            end
            
            if Uin(x,y)==0
                Uin(i,j)=0;
                Uin(x,y)=1;
            end
        end   
    end
end
Uout=Uin;
end

