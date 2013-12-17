function [X,Y] = generatePoints(distributionType)
    X=[];
    Y=[];
    
    if( distributionType == 1 )
       X1 = normrnd(0,0.25,[50,1]);
       Y1 = normrnd(0,0.5,[50,1]);
       X2 = normrnd(3,1,[50,1]);
       Y2 = normrnd(8,0.8,[50,1]);
       X3 = normrnd(4,0.5,[50,1]);
       Y3 = normrnd(0,0.5,[50,1]);
       X = [X1;X2;X3];
       Y = [Y1;Y2;Y3];
    end
    
    if( distributionType == 2 )
       X1 = normrnd(0,1,[500,1]);
       Y1 = normrnd(0,1,[500,1]);
       X2 = normrnd(5,1,[500,1]);
       Y2 = normrnd(5,1,[500,1]);
       X3 = normrnd(4,0.5,[500,1]);
       Y3 = normrnd(0,0.5,[500,1]);
       X = [X1;X2;X3];
       Y = [Y1;Y2;Y3];
    end

end