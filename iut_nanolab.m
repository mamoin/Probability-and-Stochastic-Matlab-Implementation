%In the nano-lab of IUT, an ASML machine produces Op-amp in pairs. It is observed that the ?rst Op-amp is produced correctly with 
%a probability 0.75. When the ?rst Op-amp is produced correctly, the second Op-amp is produced correctly with probability 0.95. 
%If the ?rst Op-amp is defective, the second Op-amp is produced correctly with probability 0.35.
%(a) What is the probability that exactly one Op-amp of a pair is produced correctly?
%(b) What is the probability that both Op-amps in a pair are defective?


r1=rand(100,1);
r2=rand(100,1);

count1=0;
for i=1:100
if (r1(i,1)<.75 && r2(i,1)>.95)
    count1=count1+1;
end
end

count2=0;
for j=1:100
if (r1(j,1)>.75 && r2(j,1)<.35)
    count2=count2+1;
end
end

s=count1+count2;

pe1=s/100

count3=0;
for k=1:100
if (r1(k,1)<.25 && r2(k,1)<.65)
    count3=count3+1;
end
end

pb=count3/100



