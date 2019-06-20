%Taking 100 runs
Y=ceil(15*rand(100,1))

%For greater than equal to 10
count=0;
for i=1:100
    if(Y(i,1)>=10)
        count=count+1;
    end
end

A=count;
probab1=(A/100)

%For fail

count1=0;
for j=1:100
    if(Y(j,1)<5)
        count1=count1+1;
    end
end
B=count1;
probab2=(B/100)

