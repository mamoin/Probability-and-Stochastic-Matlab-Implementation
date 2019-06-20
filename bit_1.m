%Consider a binary code with 6 bits (0 or 1) in each code word. 

%   (a)	How many code words have  three successive 0’s?
%   (b)	What is the probability of the code word 000111?


y=rand(1000,6)<.5;

s1=[ 0 0 0 1];
s2=[ 1 0 0 0 1];
s3=[ 1 0 0 0];
s4=[ 0 0 0 0];
s5=[ 0 0 0 1 1 1];

c1=0;c2=0;c3=0;c4=0;c5=0;c6=0;c7=0;
for i=1:1000
    if( sum(y(i,1:6))<=3 )
        t1=isequal(y(i,1:4),s1);
        c1=c1+t1;
        t2=isequal(y(i,1:5),s2);
        c2=c2+t2;
        t3=isequal(y(i,2:6),s2);
        c3=c3+t3;
        t4=isequal(y(i,3:6),s1);
        c4=c4+t4;
        %t5=isequal(y(i,1:4),s4);
        %c5=c5+t5;
        %t6=isequal(y(i,2:5),s4);
        %c6=c6+t6;
        %t7=isequal(y(i,3:6),s4);
        %c7=c7+t7;
    end
end

success=c1+c2+c3+c4+c5+c6+c7;

pa=success/1000

for i=1:1000
    
        z=isequal(y(i,1:6),s5);
end

pb= z/1000


