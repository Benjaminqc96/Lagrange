clear
close all
clc
syms x lp
fu=input('Ingrese la funcion: ');
cont=input('Cuantos nodos?: ');
for i=1:cont
    fprintf('Nodo %d: ',i)
    nod(i)=input('');
end
for i=1:cont
    for k=1:cont
        if i~=k
        lp(i,k)=(x-nod(k))/(nod(i)-nod(k));
        else
            lp(i,k)=1;
        end 
       
    end
end
lpp=prod(lp,2);
for j=1:cont
fnod(j)=input('puntos');
end
for q=1:cont
    p(q)=fnod(q)*lpp(q);
end
pp=sum(p);
%disp(pp)
%ezplot(fu)
%grid on
%hold on
%ezplot(pp)
pl=sym2poly(pp);
ppl=poly2sym(pl);
ezplot(ppl)
grid on
hold on
ezplot(fu)
for i=1:cont
    plot(nod(i),fnod(i),'o')
end
