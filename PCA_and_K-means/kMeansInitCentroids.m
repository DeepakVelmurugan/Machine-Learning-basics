function centroids = kMeansInitCentroids(X, K)
centroids = zeros(K, size(X, 2));

X_unq = unique(X, 'rows');

% create a random permutation of the rows  
randidx = randperm(size(X_unq, 1));

% take the first K rows as centroids
centroids = X_unq(randidx(1:K), :);

end

