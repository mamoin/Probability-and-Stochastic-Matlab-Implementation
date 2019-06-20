r = randi([0 9],100,8);  %sample space generation
z1 = zeros(100,5);
z2 = zeros(100,6);

check1=[1 1 1 1 1];
check2=[1 1 1 1 1 1];
count1=0;
count2=0;

for i=1:100
    x1=[r(i,1),r(i,2),r(i,3),r(i,4),r(i,5)];
    z1(i,:)=x1;
end

t=z1

for j=1:100
    y1=isequal(t(j,:),check1);
    count1=count1+y1;
end

for i=1:100
    x2=[r(i,1),r(i,2),r(i,3),r(i,4),r(i,5),r(i,6)];
    z2(i,:)=x2;
end

s=z2

for j=1:100
    y2=isequal(t(j,:),check2);
    count2=count2+y2;
end

success1=count2-count1;
 p1=1/success1