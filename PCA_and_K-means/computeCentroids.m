function centroids = computeCentroids(X, idx, K)

% Useful variables
[m n] = size(X);

centroids = zeros(K, n);


for i=1:K,
centroids(i,:) =(1/length(find(idx==i))) * sum(X(find(idx==i),:));
%centroids(i,:) = mean(X(idx=i,:));
end 


end

