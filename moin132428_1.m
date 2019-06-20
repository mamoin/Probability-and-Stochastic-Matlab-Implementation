%%
clear all
close all

maincount=0;
runs=10000;
test1=['h' 'h' 'h' 't' 't'];
test2=['t' 'h' 'h' 'h' 't' 't'];

for i=1:runs
    for j=1:10
    if(rand<=1/2)
        x(j)='h';
    else
        x(j)='t';
    end
    end
    count=0;
    if(length(find(x=='h')<3))&&(length(find(x=='t'))<2)
        count=0;
    else
        true=isequal(x(1:5),test1)||isequal(x(1:6),test2)||isequal(x(2:7),test2)||isequal(x(3:8),test2)||isequal(x(4:9),test2)||isequal(x(5:10),test2);
        maincount=maincount+true;
        x;
    end
end

E=(maincount/runs)

%%

runs=1000;
for i=1:runs
    for j=1:10
    if(rand<=1/2)
        x(j)='h';
    else
        x(j)='t';
    end
    end
    
    X
    for k=1:10
    A=find(X=='h')
    B=find(X=='t')
    count=0;
    if(A-B>5)
        count=0
    else
        count=count+1
    end
    
    probab=count/1000


