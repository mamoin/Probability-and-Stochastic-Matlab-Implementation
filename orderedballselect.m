red=input('Give Number of RED Balls: ');
green=input('Give Number of GREEN Balls: ');
black=input('Give Number of BLACK Balls: ');

for i=1:1:red
    r(i)=1;
end

for j=1:1:green
    g(i)=2;
end

for k=1:1:black
    b(i)=3;
end

ball=[r g b]

n=input('Press 1 for with replacement and 2 for without: ');
count=0;
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

A=count;

probab=A/1000

            