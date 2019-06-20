A=input('Provide a word :','s');
A
B=input('State the number of letters in the word');
count=0;
for i=1:B
    x=A(i);
    x1=num2str(x);
    if x1(i)=='U'||x1(i)=='S'
        count=count+1;
        y(count)=x;
    end
end
count
        