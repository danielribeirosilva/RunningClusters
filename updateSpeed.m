function speed = updateSpeed (distances, positions, speed, speedNorm)
    
    %add infinite weight to self-distance
    I = eye(size(distances,1));
    I(I==1) = inf;
    tempDist = distances + I;
    
    [distValue, closestPointsIdx] = min(tempDist');
    closestPoint = positions(closestPointsIdx,:);
    
    %new direction: towards closet point
    newDirection = closestPoint - positions;
    %normalize
    newDirection = normr(newDirection);
    
    %new speed direction
    speed = speed + newDirection;
    %normalize
    speed = normr(speed);
    speed = sqrt(speedNorm)*speed;
    
end