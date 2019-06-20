% Determing probabilty of getting a 7 in rollong two dies

y=ceil(6*rand(100,2));
x=zeros(100,1);
for i=1:100
    z=sum(y(i,1)+y(i,2));
    x(i,1)=z;
end
l=find(x==7);
p=length(l)/100