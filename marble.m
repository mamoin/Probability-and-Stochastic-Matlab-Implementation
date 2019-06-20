r1= rand(100,1);
r2= rand(100,1);

z1 = zeros(100,1);
z2 = zeros(100,1);

for i=1:100
    x1=1.*(r1(i)<=.33)+ 2.*(r1(i)>.33 && r1(i)<=.66) + 3.*(r1(i)>=.66 && r1(i)<1);
    z1(i,:)=x1;
end

for j=1:100
    x2=1.*(r2(j)<=.33)+ 2.*(r2(j)>.33 && r2(j)<=.66) + 3.*(r2(j)>=.66 && r2(j)<1);
    z2(j,:)=x2;
end

z= [z1 z2];

red   = [1 1];
green = [2 2];
blue  = [3 3];

redc = 0;
greenc = 0;
bluec = 0;

for k=1:100
    m= isequal(z(k,:),red);
    redc=redc+m;
    n= isequal(z(k,:),green);
    greenc= greenc+n;
    p= isequal(z(k,:),blue);
    bluec= bluec+p;
end

success=redc+greenc+bluec;
probability=success/100

