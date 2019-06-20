clear all
close all
red=input('no of red balls:'); %1
blue=input('no of blue balls:');%2
black=input('no of black balls:');%3
count=0;
for i=1:1:red;
    r(i)=1;
end
for i=1:1:blue;
    bl(i)=2;
end
for i=1:1:black;
    b(i)=1;
end
ball=[r bl b];

n=input('press 1 if with replacement and 2 if not');
%without replacement:
if n==2
for i=1:1:1000
    indx=randperm(length(ball));
    ball=ball(indx);
    pick=randi(numel(ball));
    first=ball(pick);
    if first==1
        ball(pick)=0;
        t=find(ball>0);
        ball=ball(t);
         indx=randperm(length(ball));
    ball=ball(indx);
    pick=randi(numel(ball));
     second=ball(pick);
      if second==2
          count=count+1;
      end
    end
end
end
if n==1
    %with replacement
    
for i=1:1:1000
    indx=randperm(length(ball));
    ball=ball(indx);
    pick=randi(numel(ball));
    first=ball(pick);
    if first==1
         indx=randperm(length(ball));
    ball=ball(indx);
    pick=randi(numel(ball));
     second=ball(pick);
      if second==2
          count=count+1;
      end
    end
end
end    
probability=count/1000
        
    
    
