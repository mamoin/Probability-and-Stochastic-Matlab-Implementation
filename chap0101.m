r1 = rand(50,1);
r2 = rand(50,1);
c = zeros(50,1);
h = zeros(50,1);


for i=1:50
    
    if(r1(i) < .5)
    x=1;
    c(i,:)=x;
    if (r2(i)<.75)
        x1=1;
        h(i,:)=x1;
    else x1=0;
        h(i,:)=x1;
    end
else
    x=2;
    c(i,:)=x;
    if (r2(i)<.5)
        x1=1;
        h(i,:)=x1;
    else x1=0;
        h(i,:)=x1;
    end
    end
end

C=c
H=h




    
