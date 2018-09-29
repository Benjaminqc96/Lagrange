function [lp]=lagranpol(nod)
syms x lp; 
con=length(nod);
for i=1:con
    for k=1:con
        if i~=k
        lp(i,k)=(x-nod(k))/(nod(i)-nod(k));
        else
            lp(i,k)=1;
        end 
       
    end
end

end