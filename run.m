[X,Y] = generatePoints(1);

sizeVector = 36*ones(size(X));
colorVector = repmat([0 0 0],size(X,1),1);
scatter(X,Y,sizeVector,colorVector);


totalPoints = size(X,1);
dimensions = size(X,2);
%initial positions
positions = [X Y];
%initial distances
distances = updateDistances(positions);
%speed norm
k = 5;
speedNorm = computeSpeedNorm(distances, k);
%initial speed
speed = zeros(totalPoints, dimensions);
speed = updateSpeed (distances, positions, speed, speedNorm);





