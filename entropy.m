function [epy] = entropy(Uin)
%El siguiente código calcula la entropía en cada estado
%En este for se divide la matriz de 100x100 en 10 pedazos
epy=0;
for c=1:10
    for r=1:10
        Upeq=Uin((c-1)*10+1:c*10,(r-1)*10+1:r*10);
        l=length(Upeq);
        %solo estoy cogiendo las diagonales

        particles=0;

        for i=1:l
            for j=1:l
                if Upeq(i,j)==1
                    particles=particles+1;
                end
            end
        end

        if particles~=0
            particles=particles/100;
            epy=epy-particles*log(particles);
        end
        
    end
end
end


