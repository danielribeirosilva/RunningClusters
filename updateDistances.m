function distances = updateDistances(positions)
    
    distances = squareform(pdist(positions));
    
end