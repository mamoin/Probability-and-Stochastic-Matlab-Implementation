%Determination of empherical probability of getting heads in coin-toss problem

y=rand(1000,1);
z=find(y<.5);
x=length(z);    
p=x/1000