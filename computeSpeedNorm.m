function speedNorm = computeSpeedNorm(distances, k)
    %add infinite weight to self-distance
    I = eye(size(distances,1));
    I(I==1) = inf;
    tempDist = distances + I;
    
    %distance to closest point
    distValue = min(tempDist');
    
    %get avg distance to closest point
    avgDistToClosestNeighbor = mean(distValue);
    
    %get k fraction of that value
    speedNorm = avgDistToClosestNeighbor / k;
    
end