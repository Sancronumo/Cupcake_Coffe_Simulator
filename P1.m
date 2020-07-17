%Aquí se establece la matriz inicial se rellena con 0's y se ponen los 1 en
%el centro en un cuadro de 10x10
Universe=zeros(102,102);
l=length(Universe);
for i=1:l
    for j=1:l
        if (i>=45&&i<=55&&j>=45&&j<=55)||(i==1||i==102||j==1||j==102)
            Universe(i,j)=1;
        end   
    end
end

t=input('Ingrese un tiempo t de ejecuciones \n');

et=[0;0];
%et es la entropía total de cada estado de cada vez que 'camina' se
%almacena la entropía en la fila 2 y la iteración en la fila 1 para luego
%graficarla

for i=1:t
plotear(Universe);
saveas(gcf,strcat('images/',num2str(i),'.jpg'));
UniEnth=Universe(2:101,2:101);

[epy]=entropy(UniEnth);
et(1,i)=i;
et(2,i)=epy;
[Universe] = walk(Universe);
end
plot(et(1,:),et(2,:))
hold on
title('Gráfica 1. Entropía vs iteraciones')
xlabel('Iteraciones')
ylabel('Entropía (J/K)')
hold off
saveas(gcf,'Gráfica de entropía vs iteraciones.png')
