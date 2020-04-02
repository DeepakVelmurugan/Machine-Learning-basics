function idx = findClosestCentroids(X, centroids)

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

m = size(X,1);
%distance = zeros(m,K);
for i=1:m,
  distance = zeros(1,K);
  for j = 1:K,
  D = bsxfun(@minus, X(i,:),centroids(j,:));
  distance(1,j) = sqrt(sum(D.^2,2));
 end
 %disp(distance);
[min_value, min_index] = min(distance);
idx(i) = min_index;

end

%disp(distance);

end

