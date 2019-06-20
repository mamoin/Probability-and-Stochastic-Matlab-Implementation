maincount=0;
no_experiment=10000;

test1=['h' 'h' 'h' 'h' 'h' 't'];
test2=['t' 'h' 'h' 'h' 'h' 'h' 't'];
test3=['h' 'h' 'h' 'h' 'h' 't'];

for i=1:no_experiment
    for j=1:9
        if(rand<=1/2)
            x(j)='h';
        else
            x(j)='t';
        end
    end
    
    count=0;
    
    if(length(find(x=='h'))<5)
        count=0;
    else
        true=isequal(x(1:6),test1)||isequal(x(1:7),test2)||isequal(x(2:8),test2)||isequal(x(3:9),test2)||isequal(x(4:9),test3);
        maincount=maincount+1;
        x;
    end
end

probab=maincount/no_experiment
        