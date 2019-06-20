%Roll two fair six-sided dice. Let X 1 and X2 denote the number of dots that appear on die 1 and die 2, respectively. 
%Let A be the event X 1 ? 2. What is P[A]? Let B denote the event X2 > X1. What is P[B]? What is P[A|B]?

y=ceil(6*rand(100,2));
count=0;
for i=1:100
    if(y(i,1)>2)
        count=count+1;
    end
end
A=count;
pA=A/100
 
count1=0;
for j=1:100
    if(y(j,2)>y(j,1))
        count1=count1+1;
    end
end
B=count1;
pB=B/100

count2=0;
for k=1:100
    if( y(k,2)>y(k,1))
        if (y(k,1)>=2)
        count2=count2+1;
        end
    end
end

pAB=count2/100

p=pAB/pA
