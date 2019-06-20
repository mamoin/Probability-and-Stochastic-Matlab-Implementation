Y=rand(1000,3)<0.5;

test1=[1 1 0];
test2=[0 1 1];
count=0;
for i=1:1000
    if(isequal(Y(i,(1:3)),test1)||isequal(Y(i,(1:3)),test2))
        count=count+1;
    end
    
end
A=count;
E1=count/1000;

X=ceil(6*rand(1000,3);
d=zeros(1000,1);
for j=1:1000
    z=sum(x(i,1)+x(i,2)+x(i,3));
    d(i)=z;    
end

l=find(d==12);
m=length(l);
E2=m/1000;

C1=1:1:13;
C2=1:1:13;
C3=1:1:13;
C4=1:1:13;

D=numel(C1);
F=D*4;
E3=3/F

probab=

