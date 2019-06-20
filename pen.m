%A teacher is picking pen from his pocket. There are four pen in his pocket; Red, Green, Black and Blue.  
%The teacher is picking up 3 pen, first picking up one then returning it and pick the second then returning 
%it back and do the same for the third one . Simulate the situation to show the probability of getting exactly 3 pen of same colors.


run=1e6;
y=ceil(4*rand(run,3));

red   = [ 1 1 1];
green = [ 2 2 2];
black = [ 3 3 3];
blue  = [ 4 4 4];

redc=0;
greenc=0;
blackc=0;
bluec=0;

for i=1:run
    m= isequal(y(i,:),red);
    redc=redc+m;
    n= isequal(y(i,:),green);
    greenc=greenc+n;
    p= isequal(y(i,:),black);
    blackc=blackc+p;
    q= isequal(y(i,:),blue);
    bluec=bluec+q;
end

s=redc+greenc+blackc+bluec;

p=s/run
    
    
    
    
    
    
    
