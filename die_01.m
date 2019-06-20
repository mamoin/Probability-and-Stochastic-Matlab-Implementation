% Probability of getting a 6 in die simulation
y=ceil(6*(rand(1,1000)));
z=find(y==6);
x=length(z);
p=x/1000