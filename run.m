[X,Y] = generatePoints(1);

sizeVector = 36*ones(size(X));
colorVector = repmat([0 0 0],size(X,1),1);
scatter(X,Y,sizeVector,colorVector);

Xdyn = X;
Ydyn = Y;

